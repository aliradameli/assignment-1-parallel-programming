/**
 * simulation_cpu.cpp
 * ----------------------------------------------------------------------------
 * CPU implementations of the N-body bullet-impact simulation.
 */
#include "simulation.h"

#include <math.h>
#include <stdlib.h>
#include "x86intrin.h"

#ifdef _OPENMP
#  include <omp.h>
#endif

// ===========================================================================
// Helpers
// ===========================================================================

const char* mode_name(ComputeMode mode)
{
    switch (mode) {
        case ComputeMode::SCALAR: return "SCALAR";
        case ComputeMode::SIMD:   return "SIMD (AVX2)";
        case ComputeMode::OPENMP: return "OpenMP";
#ifdef SIMULATION_CPU_ONLY
        case ComputeMode::CUDA:   return "CUDA (CPU fallback)";
#else
        case ComputeMode::CUDA:   return "CUDA";
#endif
    }
    return "UNKNOWN";
}

static float rand_range(float lo, float hi)
{
    return lo + (float)rand() / (float)RAND_MAX * (hi - lo);
}

void init_particles(Particle* p, int count,
                    float cx, float cy, float power)
{
    for (int i = 0; i < count; ++i) {
        float angle = rand_range(0.0f, 6.2831853f);
        float speed = rand_range(0.0001f, power);

        p[i].x        = cx;
        p[i].y        = cy;
        p[i].vx       = speed * cosf(angle);
        p[i].vy       = speed * sinf(angle);

        p[i].mass     = rand_range(0.5f, 250.0f);
        
       
        p[i].lifetime = rand_range(4.0f, MAX_LIFE);
        p[i].r = p[i].g = p[i].b = 100.0f;
    }
}

// ===========================================================================
// Per-frame N-body update helpers
// ===========================================================================

/// Process one particle's N-body forces (inner loop over all j).
/// Called by every backend so physics is identical.
static inline void nbody_forces(Particle* p, int count, float dt, int i)
{
    float ax = 0.0f;
    float ay = 0.0f;
    float xi = p[i].x;
    float yi = p[i].y;

    for (int j = 0; j < count; ++j) {
        if (i == j) continue;

        float dx = p[j].x - xi;
        float dy = p[j].y - yi;
        float dist_sq = (dx * dx) + (dy * dy) + SOFTENING;

        // 1.0f / (r^2 + SOFTENING)^(3/2)
        float inv_dist  = 1.0f / sqrtf(dist_sq);
        float inv_dist3 = inv_dist * inv_dist * inv_dist;
        float F         = G_CONST * p[j].mass * inv_dist3;

        ax += dx * F;
        ay += dy * F;
    }

    p[i].vx += ax * dt;
    p[i].vy += ay * dt;
}
static constexpr float MAX_SPEED    = 900.0f;   // max initial shrapnel speed

/// Apply gravity, drag, position, bounds, lifetime, colour to one particle.
static inline void apply_physics(Particle* p, float dt,
                                 int width, int height, int i)
{
    // 1. Apply downward gravity
    p[i].vy += GRAVITY * dt;

    // 2. Apply air drag (dampens velocity)
    
    p[i].vx -= p[i].vx * DRAG * 1/p[i].mass * dt;
    p[i].vy -= p[i].vy * DRAG * 1/p[i].mass * dt;

    // 3. Update position based on velocity
    p[i].x += p[i].vx * dt;
    p[i].y += p[i].vy * dt;

    // 4. Bounce off walls / ground with energy loss
    if (p[i].x < 0.0f) {
        p[i].x  = 0.0f;
        p[i].vx = -p[i].vx * BOUNCE;
    } else if (p[i].x >= (float)width) {
        p[i].x  = (float)width - 1.0f;
        p[i].vx = -p[i].vx * BOUNCE;
    }

    float ground_y = (float)(height - 8);
    if (p[i].y < 0.0f) {
        p[i].y  = 0.0f;
        p[i].vy = -p[i].vy * BOUNCE;
    } else if (p[i].y >= ground_y) {
        p[i].y  = ground_y;
        p[i].vy = -p[i].vy * BOUNCE;
    }

    // 5. Lifetime decay
    p[i].lifetime -= dt;
    if (p[i].lifetime < 0.0f) p[i].lifetime = 0.0f;

    // 6. Colour: rainbow mapped by speed, fades with lifetime
    // Fast particles = blue/violet, medium = green/yellow, slow = red/orange
    float spd2 = p[i].vx * p[i].vx + p[i].vy * p[i].vy;
    const float t = fminf(1.0f, spd2 / (MAX_SPEED * MAX_SPEED));

    const float fading_scale = 12*fmaxf(
        0.0f, fminf(1.0f, p[i].lifetime / MAX_LIFE));

    float r = 0.0f, g = 0.0f, b = 0.0f;
    if (t < 0.25f) {
        float u = t * 4.0f;               // 0..1
        r = 1.0f;
        g = u;                            // Red -> Yellow
        b = 0.0f;
    } else if (t < 0.5f) {
        float u = (t - 0.25f) * 4.0f;     // 0..1
        r = 1.0f - u;                     // Yellow -> Green
        g = 1.0f;
        b = 0.0f;
    } else if (t < 0.75f) {
        float u = (t - 0.5f) * 4.0f;      // 0..1
        r = 0.0f;
        g = 1.0f - 0.5f * u;              // Green -> Blue/Cyan
        b = u;
    } else {
        float u = (t - 0.75f) * 4.0f;     // 0..1
        r = 0.8f * u;                     // Blue -> Violet
        g = 0.5f * (1.0f - u);
        b = 1.0f;
    }

    // Add per-particle hue variation based on index (rainbow explosion!)
    float hueShift = 0.002f;  // golden ratio offset
    float cs = cosf(hueShift);
    float sn = sinf(hueShift);
    // Rotate hue slightly based on particle index
    float rr = r * cs - g * sn;
    float gg = r * sn + g * cs;
    if (rr < 0.0f) rr = 0.0f;
    if (gg < 0.0f) gg = 0.0f;

    p[i].r = rr * fading_scale;
    p[i].g = gg * fading_scale;
    p[i].b = b  * fading_scale;
          
}

// ===========================================================================
// 1. SCALAR  (reference baseline)
// ===========================================================================

void update_scalar(Particle* p, int count, float dt, int width, int height)
{
    // N-body  (O(n^2) — the heavy part)
    for (int i = 0; i < count; ++i)
        nbody_forces(p, count, dt, i);

    // Per-particle physics
    for (int i = 0; i < count; ++i)
        apply_physics(p, dt, width, height, i);
}

// ===========================================================================
// 2. SIMD  (STUB — students implement AVX2 vectorization of inner loop)
// ===========================================================================


static inline void nbody_forces_simd(Particle* p, int count, float dt, int i){

    float ax = 0.0f;
    float ay = 0.0f;
    float xi = p[i].x;
    float yi = p[i].y;

    float dx,dy,dist_sq,inv_dist,inv_dist3,F;
    int j; 

    __m128 xi_vec = _mm_set_ps1(xi);
    __m128 yi_vec = _mm_set_ps1(yi);

    __m128 ax_vec = _mm_setzero_ps();
    __m128 ay_vec = _mm_setzero_ps();

    // removing the i==j case because xi - xj and yi - yj will be 0 and will not contribute to the sum
    for (j = 0; j + 4 <= count; j+=4) {

        __m128 x_vec = _mm_set_ps(p[j+3].x, p[j+2].x, p[j+1].x, p[j].x);
        __m128 y_vec = _mm_set_ps(p[j+3].y, p[j+2].y, p[j+1].y, p[j].y);

        __m128 dx_vec = _mm_sub_ps(x_vec, xi_vec);
        __m128 dy_vec = _mm_sub_ps(y_vec, yi_vec);

        __m128 dist_sq_vec = _mm_add_ps(_mm_add_ps(_mm_mul_ps(dx_vec, dx_vec), _mm_mul_ps(dy_vec, dy_vec)), _mm_set_ps1(SOFTENING));

        // 1.0f / (r^2 + SOFTENING)^(3/2)
        __m128 inv_dist_vec  = _mm_rsqrt_ps(dist_sq_vec);
        __m128 inv_dist3_vec = _mm_mul_ps(_mm_mul_ps(inv_dist_vec, inv_dist_vec), inv_dist_vec);

        __m128 mass_vec = _mm_set_ps(p[j+3].mass, p[j+2].mass, p[j+1].mass, p[j].mass);
        __m128 F_vec    = _mm_mul_ps(_mm_set_ps1(G_CONST), _mm_mul_ps(mass_vec, inv_dist3_vec));



        ax_vec = _mm_add_ps(ax_vec, _mm_mul_ps(dx_vec, F_vec));
        ay_vec = _mm_add_ps(ay_vec, _mm_mul_ps(dy_vec, F_vec));
    }

    ax_vec = _mm_hadd_ps(ax_vec, ax_vec);
    ax_vec = _mm_hadd_ps(ax_vec, ax_vec);

    ay_vec = _mm_hadd_ps(ay_vec, ay_vec);
    ay_vec = _mm_hadd_ps(ay_vec, ay_vec);

    ax = _mm_cvtss_f32(ax_vec);
    ay = _mm_cvtss_f32(ay_vec);

    // tail: remaining 0-3 elements
    for (; j < count; j++){
        
        dx = p[j].x - xi;
        dy = p[j].y - yi;
        dist_sq = (dx * dx) + (dy * dy) + SOFTENING;

        // 1.0f / (r^2 + SOFTENING)^(3/2)
        inv_dist  = 1.0f / sqrtf(dist_sq);
        inv_dist3 = inv_dist * inv_dist * inv_dist;
        F         = G_CONST * p[j].mass * inv_dist3;

        ax += dx * F;
        ay += dy * F;
    }

  


    p[i].vx += ax * dt;
    p[i].vy += ay * dt;
}


void update_simd(Particle* p, int count, float dt, int width, int height)
{
    // TODO: vectorize nbody_forces() with _mm256_rsqrt_ps() dsf.
    for (int i = 0; i < count; ++i)
        nbody_forces_simd(p, count, dt, i);
    for (int i = 0; i < count; ++i)
        apply_physics(p, dt, width, height, i);
}

// ===========================================================================
// 3. OPENMP  (parallel outer loop)
// ===========================================================================

void update_openmp(Particle* p, int count, float dt, int width, int height)
{
    // N-body: parallel outer loop. Each thread writes only to p[i],
    // so no race conditions. Inner loop reads all p[j] (read-only).
    update_scalar(p, count, dt, width, height);
}

// ===========================================================================
// Dispatch
// ===========================================================================

void update_particles(Particle* particles, int count, float dt,
                      int width, int height, ComputeMode mode)
{
    switch (mode) {
        case ComputeMode::SCALAR: update_scalar(particles, count, dt, width, height); break;
        case ComputeMode::SIMD:   update_simd  (particles, count, dt, width, height); break;
        case ComputeMode::OPENMP: update_openmp(particles, count, dt, width, height); break;
        case ComputeMode::CUDA:   update_cuda  (particles, count, dt, width, height); break;
    }
}
