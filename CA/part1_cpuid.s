	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 1
	.intel_syntax noprefix
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.file	2 "/Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include" "emmintrin.h"
	.globl	_extract_cpu_details            ## -- Begin function extract_cpu_details
	.p2align	4, 0x90
_extract_cpu_details:                   ## @extract_cpu_details
Lfunc_begin0:
	.file	3 "/Users/user/Fuckin_Everythin/4056_1/Parallel_Programing/CAs/untitled folder/assignment-1-parallel-programming/CA" "part1_cpuid.c"
	.loc	3 11 0                          ## part1_cpuid.c:11:0
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
	sub	rsp, 528
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 24], rax
Ltmp0:
	.loc	3 14 33 prologue_end            ## part1_cpuid.c:14:33
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	___get_cpuid_max
	.loc	3 14 18 is_stmt 0               ## part1_cpuid.c:14:18
	mov	dword ptr [rbp - 100], eax
	.loc	3 15 33 is_stmt 1               ## part1_cpuid.c:15:33
	mov	edi, 2147483648
	xor	eax, eax
	mov	esi, eax
	call	___get_cpuid_max
	.loc	3 15 18 is_stmt 0               ## part1_cpuid.c:15:18
	mov	dword ptr [rbp - 104], eax
	.loc	3 17 5 is_stmt 1                ## part1_cpuid.c:17:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	.loc	3 18 5                          ## part1_cpuid.c:18:5
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	.loc	3 19 5                          ## part1_cpuid.c:19:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
Ltmp1:
	.loc	3 21 22                         ## part1_cpuid.c:21:22
	cmp	dword ptr [rbp - 104], -2147483644
Ltmp2:
	.loc	3 21 9 is_stmt 0                ## part1_cpuid.c:21:9
	jb	LBB0_2
## %bb.1:
Ltmp3:
	.loc	3 23 42 is_stmt 1               ## part1_cpuid.c:23:42
	lea	rax, [rbp - 80]
	.loc	3 23 23 is_stmt 0               ## part1_cpuid.c:23:23
	mov	qword ptr [rbp - 112], rax
	.loc	3 24 9 is_stmt 1                ## part1_cpuid.c:24:9
	mov	r9, qword ptr [rbp - 112]
	mov	rdi, qword ptr [rbp - 112]
	mov	rax, qword ptr [rbp - 112]
	mov	qword ptr [rbp - 416], rax      ## 8-byte Spill
	mov	rax, qword ptr [rbp - 112]
	mov	qword ptr [rbp - 424], rax      ## 8-byte Spill
	mov	eax, -2147483646
	## InlineAsm Start
	xchg	r8, rbx
	cpuid
	xchg	r8, rbx
	## InlineAsm End
	mov	r10d, eax
	mov	rax, qword ptr [rbp - 424]      ## 8-byte Reload
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 416]      ## 8-byte Reload
	mov	dword ptr [r9], r10d
	mov	dword ptr [rdi + 4], r8d
	mov	dword ptr [rcx + 8], esi
	mov	dword ptr [rax + 12], edx
	.loc	3 25 9                          ## part1_cpuid.c:25:9
	mov	r9, qword ptr [rbp - 112]
	mov	rdi, qword ptr [rbp - 112]
	mov	rax, qword ptr [rbp - 112]
	mov	qword ptr [rbp - 400], rax      ## 8-byte Spill
	mov	rax, qword ptr [rbp - 112]
	mov	qword ptr [rbp - 408], rax      ## 8-byte Spill
	mov	eax, -2147483645
	## InlineAsm Start
	xchg	r8, rbx
	cpuid
	xchg	r8, rbx
	## InlineAsm End
	mov	r10d, eax
	mov	rax, qword ptr [rbp - 408]      ## 8-byte Reload
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 400]      ## 8-byte Reload
	mov	dword ptr [r9 + 16], r10d
	mov	dword ptr [rdi + 20], r8d
	mov	dword ptr [rcx + 24], esi
	mov	dword ptr [rax + 28], edx
	.loc	3 26 9                          ## part1_cpuid.c:26:9
	mov	r9, qword ptr [rbp - 112]
	mov	rdi, qword ptr [rbp - 112]
	mov	rax, qword ptr [rbp - 112]
	mov	qword ptr [rbp - 384], rax      ## 8-byte Spill
	mov	rax, qword ptr [rbp - 112]
	mov	qword ptr [rbp - 392], rax      ## 8-byte Spill
	mov	eax, -2147483644
	## InlineAsm Start
	xchg	r8, rbx
	cpuid
	xchg	r8, rbx
	## InlineAsm End
	mov	r10d, eax
	mov	rax, qword ptr [rbp - 392]      ## 8-byte Reload
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 384]      ## 8-byte Reload
	mov	dword ptr [r9 + 32], r10d
	mov	dword ptr [rdi + 36], r8d
	mov	dword ptr [rcx + 40], esi
	mov	dword ptr [rax + 44], edx
	.loc	3 27 19                         ## part1_cpuid.c:27:19
	mov	byte ptr [rbp - 32], 0
	.loc	3 28 41                         ## part1_cpuid.c:28:41
	lea	rsi, [rbp - 80]
	.loc	3 28 9 is_stmt 0                ## part1_cpuid.c:28:9
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
Ltmp4:
LBB0_2:
	.loc	3 0 9                           ## part1_cpuid.c:0:9
	mov	eax, 1
	.loc	3 31 5 is_stmt 1                ## part1_cpuid.c:31:5
	## InlineAsm Start
	xchg	rsi, rbx
	cpuid
	xchg	rsi, rbx
	## InlineAsm End
	mov	dword ptr [rbp - 428], esi      ## 4-byte Spill
	mov	esi, eax
	mov	eax, dword ptr [rbp - 428]      ## 4-byte Reload
	mov	dword ptr [rbp - 84], esi
	mov	dword ptr [rbp - 88], eax
	mov	dword ptr [rbp - 92], ecx
	mov	dword ptr [rbp - 96], edx
	.loc	3 32 31                         ## part1_cpuid.c:32:31
	mov	eax, dword ptr [rbp - 84]
	.loc	3 32 35 is_stmt 0               ## part1_cpuid.c:32:35
	and	eax, 15
	.loc	3 32 18                         ## part1_cpuid.c:32:18
	mov	dword ptr [rbp - 116], eax
	.loc	3 33 32 is_stmt 1               ## part1_cpuid.c:33:32
	mov	eax, dword ptr [rbp - 84]
	.loc	3 33 36 is_stmt 0               ## part1_cpuid.c:33:36
	shr	eax, 4
	.loc	3 33 42                         ## part1_cpuid.c:33:42
	and	eax, 15
	.loc	3 33 18                         ## part1_cpuid.c:33:18
	mov	dword ptr [rbp - 120], eax
	.loc	3 34 32 is_stmt 1               ## part1_cpuid.c:34:32
	mov	eax, dword ptr [rbp - 84]
	.loc	3 34 36 is_stmt 0               ## part1_cpuid.c:34:36
	shr	eax, 8
	.loc	3 34 42                         ## part1_cpuid.c:34:42
	and	eax, 15
	.loc	3 34 18                         ## part1_cpuid.c:34:18
	mov	dword ptr [rbp - 124], eax
	.loc	3 35 32 is_stmt 1               ## part1_cpuid.c:35:32
	mov	eax, dword ptr [rbp - 84]
	.loc	3 35 36 is_stmt 0               ## part1_cpuid.c:35:36
	shr	eax, 16
	.loc	3 35 43                         ## part1_cpuid.c:35:43
	and	eax, 15
	.loc	3 35 18                         ## part1_cpuid.c:35:18
	mov	dword ptr [rbp - 128], eax
	.loc	3 36 32 is_stmt 1               ## part1_cpuid.c:36:32
	mov	eax, dword ptr [rbp - 84]
	.loc	3 36 36 is_stmt 0               ## part1_cpuid.c:36:36
	shr	eax, 20
	.loc	3 36 43                         ## part1_cpuid.c:36:43
	and	eax, 255
	.loc	3 36 18                         ## part1_cpuid.c:36:18
	mov	dword ptr [rbp - 132], eax
	.loc	3 38 45 is_stmt 1               ## part1_cpuid.c:38:45
	cmp	dword ptr [rbp - 124], 15
	.loc	3 38 35 is_stmt 0               ## part1_cpuid.c:38:35
	jne	LBB0_4
## %bb.3:
	.loc	3 38 56                         ## part1_cpuid.c:38:56
	mov	eax, dword ptr [rbp - 124]
	.loc	3 38 65                         ## part1_cpuid.c:38:65
	add	eax, dword ptr [rbp - 132]
	mov	dword ptr [rbp - 432], eax      ## 4-byte Spill
	.loc	3 38 35                         ## part1_cpuid.c:38:35
	jmp	LBB0_5
LBB0_4:
	.loc	3 38 78                         ## part1_cpuid.c:38:78
	mov	eax, dword ptr [rbp - 124]
	mov	dword ptr [rbp - 432], eax      ## 4-byte Spill
LBB0_5:
	.loc	3 0 78                          ## part1_cpuid.c:0:78
	mov	eax, dword ptr [rbp - 432]      ## 4-byte Reload
	.loc	3 38 18                         ## part1_cpuid.c:38:18
	mov	dword ptr [rbp - 136], eax
	.loc	3 39 45 is_stmt 1               ## part1_cpuid.c:39:45
	cmp	dword ptr [rbp - 124], 6
	.loc	3 39 52 is_stmt 0               ## part1_cpuid.c:39:52
	je	LBB0_7
## %bb.6:
	.loc	3 39 64                         ## part1_cpuid.c:39:64
	cmp	dword ptr [rbp - 124], 15
	.loc	3 39 35                         ## part1_cpuid.c:39:35
	jne	LBB0_8
LBB0_7:
	.loc	3 40 39 is_stmt 1               ## part1_cpuid.c:40:39
	mov	eax, dword ptr [rbp - 128]
	.loc	3 40 49 is_stmt 0               ## part1_cpuid.c:40:49
	shl	eax, 4
	.loc	3 40 55                         ## part1_cpuid.c:40:55
	add	eax, dword ptr [rbp - 120]
	mov	dword ptr [rbp - 436], eax      ## 4-byte Spill
	.loc	3 39 35 is_stmt 1               ## part1_cpuid.c:39:35
	jmp	LBB0_9
LBB0_8:
	.loc	3 41 37                         ## part1_cpuid.c:41:37
	mov	eax, dword ptr [rbp - 120]
	mov	dword ptr [rbp - 436], eax      ## 4-byte Spill
LBB0_9:
	.loc	3 0 37 is_stmt 0                ## part1_cpuid.c:0:37
	mov	eax, dword ptr [rbp - 436]      ## 4-byte Reload
	.loc	3 39 18 is_stmt 1               ## part1_cpuid.c:39:18
	mov	dword ptr [rbp - 140], eax
	.loc	3 44 12                         ## part1_cpuid.c:44:12
	mov	esi, dword ptr [rbp - 136]
	.loc	3 44 28 is_stmt 0               ## part1_cpuid.c:44:28
	mov	edx, dword ptr [rbp - 140]
	.loc	3 44 43                         ## part1_cpuid.c:44:43
	mov	ecx, dword ptr [rbp - 140]
	.loc	3 44 58                         ## part1_cpuid.c:44:58
	mov	r8d, dword ptr [rbp - 116]
	.loc	3 43 5 is_stmt 1                ## part1_cpuid.c:43:5
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	.loc	3 47 5                          ## part1_cpuid.c:47:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	.loc	3 48 5                          ## part1_cpuid.c:48:5
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	.loc	3 49 5                          ## part1_cpuid.c:49:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	.loc	3 51 21                         ## part1_cpuid.c:51:21
	mov	eax, dword ptr [rbp - 96]
	.loc	3 51 25 is_stmt 0               ## part1_cpuid.c:51:25
	and	eax, 268435456
	.loc	3 51 38                         ## part1_cpuid.c:51:38
	cmp	eax, 0
	setne	al
	.loc	3 51 10                         ## part1_cpuid.c:51:10
	and	al, 1
	mov	byte ptr [rbp - 141], al
	.loc	3 52 34 is_stmt 1               ## part1_cpuid.c:52:34
	mov	eax, dword ptr [rbp - 88]
	.loc	3 52 38 is_stmt 0               ## part1_cpuid.c:52:38
	shr	eax, 16
	.loc	3 52 45                         ## part1_cpuid.c:52:45
	and	eax, 255
	.loc	3 52 18                         ## part1_cpuid.c:52:18
	mov	dword ptr [rbp - 148], eax
	.loc	3 54 18 is_stmt 1               ## part1_cpuid.c:54:18
	mov	dword ptr [rbp - 152], 0
	.loc	3 55 18                         ## part1_cpuid.c:55:18
	mov	dword ptr [rbp - 156], 1
	.loc	3 56 18                         ## part1_cpuid.c:56:18
	mov	dword ptr [rbp - 160], 0
Ltmp5:
	.loc	3 58 22                         ## part1_cpuid.c:58:22
	cmp	dword ptr [rbp - 100], 11
Ltmp6:
	.loc	3 58 9 is_stmt 0                ## part1_cpuid.c:58:9
	jb	LBB0_20
## %bb.10:
Ltmp7:
	.loc	3 59 13 is_stmt 1               ## part1_cpuid.c:59:13
	mov	dword ptr [rbp - 164], 0
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
Ltmp8:
	.loc	3 62 13                         ## part1_cpuid.c:62:13
	mov	ecx, dword ptr [rbp - 164]
	mov	eax, 11
	## InlineAsm Start
	xchg	rsi, rbx
	cpuid
	xchg	rsi, rbx
	## InlineAsm End
	mov	dword ptr [rbp - 440], esi      ## 4-byte Spill
	mov	esi, eax
	mov	eax, dword ptr [rbp - 440]      ## 4-byte Reload
	mov	dword ptr [rbp - 168], esi
	mov	dword ptr [rbp - 172], eax
	mov	dword ptr [rbp - 176], ecx
	mov	dword ptr [rbp - 180], edx
	.loc	3 63 40                         ## part1_cpuid.c:63:40
	mov	eax, dword ptr [rbp - 176]
	.loc	3 63 42 is_stmt 0               ## part1_cpuid.c:63:42
	shr	eax, 8
	.loc	3 63 48                         ## part1_cpuid.c:63:48
	and	eax, 255
	.loc	3 63 26                         ## part1_cpuid.c:63:26
	mov	dword ptr [rbp - 184], eax
Ltmp9:
	.loc	3 64 28 is_stmt 1               ## part1_cpuid.c:64:28
	cmp	dword ptr [rbp - 184], 0
Ltmp10:
	.loc	3 64 17 is_stmt 0               ## part1_cpuid.c:64:17
	jne	LBB0_13
## %bb.12:
Ltmp11:
	.loc	3 64 34                         ## part1_cpuid.c:64:34
	jmp	LBB0_19
Ltmp12:
LBB0_13:                                ##   in Loop: Header=BB0_11 Depth=1
	.loc	3 66 34 is_stmt 1               ## part1_cpuid.c:66:34
	mov	eax, dword ptr [rbp - 172]
	.loc	3 66 40 is_stmt 0               ## part1_cpuid.c:66:40
	and	eax, 65535
	.loc	3 66 26                         ## part1_cpuid.c:66:26
	mov	dword ptr [rbp - 188], eax
Ltmp13:
	.loc	3 67 28 is_stmt 1               ## part1_cpuid.c:67:28
	cmp	dword ptr [rbp - 184], 1
Ltmp14:
	.loc	3 67 17 is_stmt 0               ## part1_cpuid.c:67:17
	jne	LBB0_15
## %bb.14:                              ##   in Loop: Header=BB0_11 Depth=1
Ltmp15:
	.loc	3 68 40 is_stmt 1               ## part1_cpuid.c:68:40
	mov	eax, dword ptr [rbp - 188]
	.loc	3 68 38 is_stmt 0               ## part1_cpuid.c:68:38
	mov	dword ptr [rbp - 156], eax
	.loc	3 69 33 is_stmt 1               ## part1_cpuid.c:69:33
	mov	eax, dword ptr [rbp - 168]
	.loc	3 69 35 is_stmt 0               ## part1_cpuid.c:69:35
	and	eax, 31
	.loc	3 69 31                         ## part1_cpuid.c:69:31
	mov	dword ptr [rbp - 152], eax
	.loc	3 70 13 is_stmt 1               ## part1_cpuid.c:70:13
	jmp	LBB0_18
Ltmp16:
LBB0_15:                                ##   in Loop: Header=BB0_11 Depth=1
	.loc	3 70 35 is_stmt 0               ## part1_cpuid.c:70:35
	cmp	dword ptr [rbp - 184], 2
Ltmp17:
	.loc	3 70 24                         ## part1_cpuid.c:70:24
	jne	LBB0_17
## %bb.16:                              ##   in Loop: Header=BB0_11 Depth=1
Ltmp18:
	.loc	3 71 38 is_stmt 1               ## part1_cpuid.c:71:38
	mov	eax, dword ptr [rbp - 188]
	.loc	3 71 36 is_stmt 0               ## part1_cpuid.c:71:36
	mov	dword ptr [rbp - 160], eax
Ltmp19:
LBB0_17:                                ##   in Loop: Header=BB0_11 Depth=1
	.loc	3 0 36                          ## part1_cpuid.c:0:36
	jmp	LBB0_18
LBB0_18:                                ##   in Loop: Header=BB0_11 Depth=1
	.loc	3 73 20 is_stmt 1               ## part1_cpuid.c:73:20
	mov	eax, dword ptr [rbp - 164]
	add	eax, 1
	mov	dword ptr [rbp - 164], eax
Ltmp20:
	.loc	3 60 9                          ## part1_cpuid.c:60:9
	jmp	LBB0_11
LBB0_19:
	.loc	3 75 5                          ## part1_cpuid.c:75:5
	jmp	LBB0_20
Ltmp21:
LBB0_20:
	.loc	3 77 56                         ## part1_cpuid.c:77:56
	mov	cl, byte ptr [rbp - 141]
	lea	rsi, [rip + L_.str.7]
	lea	rax, [rip + L_.str.6]
	test	cl, 1
	cmovne	rsi, rax
	.loc	3 77 5 is_stmt 0                ## part1_cpuid.c:77:5
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	.loc	3 79 12 is_stmt 1               ## part1_cpuid.c:79:12
	mov	esi, dword ptr [rbp - 156]
	.loc	3 80 13                         ## part1_cpuid.c:80:13
	mov	ecx, dword ptr [rbp - 156]
	.loc	3 80 12 is_stmt 0               ## part1_cpuid.c:80:12
	lea	rdx, [rip + L_.str.10]
	lea	rax, [rip + L_.str.9]
	.loc	3 80 34                         ## part1_cpuid.c:80:34
	cmp	ecx, 1
	.loc	3 80 12                         ## part1_cpuid.c:80:12
	cmova	rdx, rax
	.loc	3 78 5 is_stmt 1                ## part1_cpuid.c:78:5
	lea	rdi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	.loc	3 81 56                         ## part1_cpuid.c:81:56
	mov	esi, dword ptr [rbp - 160]
	.loc	3 81 5 is_stmt 0                ## part1_cpuid.c:81:5
	lea	rdi, [rip + L_.str.11]
	mov	al, 0
	call	_printf
	.loc	3 82 56 is_stmt 1               ## part1_cpuid.c:82:56
	mov	esi, dword ptr [rbp - 148]
	.loc	3 82 5 is_stmt 0                ## part1_cpuid.c:82:5
	lea	rdi, [rip + L_.str.12]
	mov	al, 0
	call	_printf
	.loc	3 85 5 is_stmt 1                ## part1_cpuid.c:85:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	.loc	3 86 5                          ## part1_cpuid.c:86:5
	lea	rdi, [rip + L_.str.13]
	mov	al, 0
	call	_printf
	.loc	3 87 5                          ## part1_cpuid.c:87:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
Ltmp22:
	.loc	3 89 22                         ## part1_cpuid.c:89:22
	cmp	dword ptr [rbp - 100], 22
Ltmp23:
	.loc	3 89 9 is_stmt 0                ## part1_cpuid.c:89:9
	jb	LBB0_22
## %bb.21:
Ltmp24:
	.loc	3 90 22 is_stmt 1               ## part1_cpuid.c:90:22
	mov	dword ptr [rbp - 192], 0
	.loc	3 90 30 is_stmt 0               ## part1_cpuid.c:90:30
	mov	dword ptr [rbp - 196], 0
	.loc	3 90 38                         ## part1_cpuid.c:90:38
	mov	dword ptr [rbp - 200], 0
	.loc	3 90 46                         ## part1_cpuid.c:90:46
	mov	dword ptr [rbp - 204], 0
	mov	eax, 22
	xor	ecx, ecx
	.loc	3 91 9 is_stmt 1                ## part1_cpuid.c:91:9
	## InlineAsm Start
	xchg	rsi, rbx
	cpuid
	xchg	rsi, rbx
	## InlineAsm End
	mov	dword ptr [rbp - 444], esi      ## 4-byte Spill
	mov	esi, eax
	mov	eax, dword ptr [rbp - 444]      ## 4-byte Reload
	mov	dword ptr [rbp - 192], esi
	mov	dword ptr [rbp - 196], eax
	mov	dword ptr [rbp - 200], ecx
	mov	dword ptr [rbp - 204], edx
	.loc	3 92 33                         ## part1_cpuid.c:92:33
	mov	eax, dword ptr [rbp - 192]
	.loc	3 92 36 is_stmt 0               ## part1_cpuid.c:92:36
	and	eax, 65535
	.loc	3 92 22                         ## part1_cpuid.c:92:22
	mov	dword ptr [rbp - 208], eax
	.loc	3 93 33 is_stmt 1               ## part1_cpuid.c:93:33
	mov	eax, dword ptr [rbp - 196]
	.loc	3 93 36 is_stmt 0               ## part1_cpuid.c:93:36
	and	eax, 65535
	.loc	3 93 22                         ## part1_cpuid.c:93:22
	mov	dword ptr [rbp - 212], eax
	.loc	3 94 33 is_stmt 1               ## part1_cpuid.c:94:33
	mov	eax, dword ptr [rbp - 200]
	.loc	3 94 36 is_stmt 0               ## part1_cpuid.c:94:36
	and	eax, 65535
	.loc	3 94 22                         ## part1_cpuid.c:94:22
	mov	dword ptr [rbp - 216], eax
	.loc	3 96 51 is_stmt 1               ## part1_cpuid.c:96:51
	mov	esi, dword ptr [rbp - 208]
	.loc	3 96 9 is_stmt 0                ## part1_cpuid.c:96:9
	lea	rdi, [rip + L_.str.14]
	mov	al, 0
	call	_printf
	.loc	3 97 51 is_stmt 1               ## part1_cpuid.c:97:51
	mov	esi, dword ptr [rbp - 212]
	.loc	3 97 9 is_stmt 0                ## part1_cpuid.c:97:9
	lea	rdi, [rip + L_.str.15]
	mov	al, 0
	call	_printf
	.loc	3 98 51 is_stmt 1               ## part1_cpuid.c:98:51
	mov	esi, dword ptr [rbp - 216]
	.loc	3 98 9 is_stmt 0                ## part1_cpuid.c:98:9
	lea	rdi, [rip + L_.str.16]
	mov	al, 0
	call	_printf
Ltmp25:
LBB0_22:
	.loc	3 103 5 is_stmt 1               ## part1_cpuid.c:103:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	.loc	3 104 5                         ## part1_cpuid.c:104:5
	lea	rdi, [rip + L_.str.17]
	mov	al, 0
	call	_printf
	.loc	3 105 5                         ## part1_cpuid.c:105:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	eax, 1
	.loc	3 107 5                         ## part1_cpuid.c:107:5
	## InlineAsm Start
	xchg	rsi, rbx
	cpuid
	xchg	rsi, rbx
	## InlineAsm End
	mov	dword ptr [rbp - 448], esi      ## 4-byte Spill
	mov	esi, eax
	mov	eax, dword ptr [rbp - 448]      ## 4-byte Reload
	mov	dword ptr [rbp - 84], esi
	mov	dword ptr [rbp - 88], eax
	mov	dword ptr [rbp - 92], ecx
	mov	dword ptr [rbp - 96], edx
	.loc	3 108 20                        ## part1_cpuid.c:108:20
	mov	eax, dword ptr [rbp - 96]
	.loc	3 108 24 is_stmt 0              ## part1_cpuid.c:108:24
	and	eax, 33554432
	.loc	3 108 37                        ## part1_cpuid.c:108:37
	cmp	eax, 0
	setne	al
	.loc	3 108 10                        ## part1_cpuid.c:108:10
	and	al, 1
	mov	byte ptr [rbp - 217], al
	.loc	3 109 20 is_stmt 1              ## part1_cpuid.c:109:20
	mov	eax, dword ptr [rbp - 96]
	.loc	3 109 24 is_stmt 0              ## part1_cpuid.c:109:24
	and	eax, 67108864
	.loc	3 109 37                        ## part1_cpuid.c:109:37
	cmp	eax, 0
	setne	al
	.loc	3 109 10                        ## part1_cpuid.c:109:10
	and	al, 1
	mov	byte ptr [rbp - 218], al
	.loc	3 110 20 is_stmt 1              ## part1_cpuid.c:110:20
	mov	eax, dword ptr [rbp - 92]
	.loc	3 110 24 is_stmt 0              ## part1_cpuid.c:110:24
	and	eax, 1
	.loc	3 110 37                        ## part1_cpuid.c:110:37
	cmp	eax, 0
	setne	al
	.loc	3 110 10                        ## part1_cpuid.c:110:10
	and	al, 1
	mov	byte ptr [rbp - 219], al
	.loc	3 111 20 is_stmt 1              ## part1_cpuid.c:111:20
	mov	eax, dword ptr [rbp - 92]
	.loc	3 111 24 is_stmt 0              ## part1_cpuid.c:111:24
	and	eax, 512
	.loc	3 111 37                        ## part1_cpuid.c:111:37
	cmp	eax, 0
	setne	al
	.loc	3 111 10                        ## part1_cpuid.c:111:10
	and	al, 1
	mov	byte ptr [rbp - 220], al
	.loc	3 112 20 is_stmt 1              ## part1_cpuid.c:112:20
	mov	eax, dword ptr [rbp - 92]
	.loc	3 112 24 is_stmt 0              ## part1_cpuid.c:112:24
	and	eax, 524288
	.loc	3 112 37                        ## part1_cpuid.c:112:37
	cmp	eax, 0
	setne	al
	.loc	3 112 10                        ## part1_cpuid.c:112:10
	and	al, 1
	mov	byte ptr [rbp - 221], al
	.loc	3 113 20 is_stmt 1              ## part1_cpuid.c:113:20
	mov	eax, dword ptr [rbp - 92]
	.loc	3 113 24 is_stmt 0              ## part1_cpuid.c:113:24
	and	eax, 1048576
	.loc	3 113 37                        ## part1_cpuid.c:113:37
	cmp	eax, 0
	setne	al
	.loc	3 113 10                        ## part1_cpuid.c:113:10
	and	al, 1
	mov	byte ptr [rbp - 222], al
	.loc	3 114 20 is_stmt 1              ## part1_cpuid.c:114:20
	mov	eax, dword ptr [rbp - 92]
	.loc	3 114 24 is_stmt 0              ## part1_cpuid.c:114:24
	and	eax, 268435456
	.loc	3 114 37                        ## part1_cpuid.c:114:37
	cmp	eax, 0
	setne	al
	.loc	3 114 10                        ## part1_cpuid.c:114:10
	and	al, 1
	mov	byte ptr [rbp - 223], al
	.loc	3 116 18 is_stmt 1              ## part1_cpuid.c:116:18
	mov	dword ptr [rbp - 228], 0
	.loc	3 116 28 is_stmt 0              ## part1_cpuid.c:116:28
	mov	dword ptr [rbp - 232], 0
	.loc	3 116 38                        ## part1_cpuid.c:116:38
	mov	dword ptr [rbp - 236], 0
	.loc	3 116 48                        ## part1_cpuid.c:116:48
	mov	dword ptr [rbp - 240], 0
Ltmp26:
	.loc	3 117 22 is_stmt 1              ## part1_cpuid.c:117:22
	cmp	dword ptr [rbp - 100], 7
Ltmp27:
	.loc	3 117 9 is_stmt 0               ## part1_cpuid.c:117:9
	jb	LBB0_24
## %bb.23:
	.loc	3 0 9                           ## part1_cpuid.c:0:9
	mov	eax, 7
	xor	ecx, ecx
Ltmp28:
	.loc	3 118 9 is_stmt 1               ## part1_cpuid.c:118:9
	## InlineAsm Start
	xchg	rsi, rbx
	cpuid
	xchg	rsi, rbx
	## InlineAsm End
	mov	dword ptr [rbp - 452], esi      ## 4-byte Spill
	mov	esi, eax
	mov	eax, dword ptr [rbp - 452]      ## 4-byte Reload
	mov	dword ptr [rbp - 228], esi
	mov	dword ptr [rbp - 232], eax
	mov	dword ptr [rbp - 236], ecx
	mov	dword ptr [rbp - 240], edx
Ltmp29:
LBB0_24:
	.loc	3 120 18                        ## part1_cpuid.c:120:18
	mov	eax, dword ptr [rbp - 232]
	.loc	3 120 23 is_stmt 0              ## part1_cpuid.c:120:23
	and	eax, 32
	.loc	3 120 35                        ## part1_cpuid.c:120:35
	cmp	eax, 0
	setne	al
	.loc	3 120 10                        ## part1_cpuid.c:120:10
	and	al, 1
	mov	byte ptr [rbp - 241], al
	.loc	3 122 32 is_stmt 1              ## part1_cpuid.c:122:32
	mov	cl, byte ptr [rbp - 217]
	lea	rsi, [rip + L_.str.20]
	lea	rax, [rip + L_.str.19]
	test	cl, 1
	cmovne	rsi, rax
	.loc	3 122 5 is_stmt 0               ## part1_cpuid.c:122:5
	lea	rdi, [rip + L_.str.18]
	mov	al, 0
	call	_printf
	.loc	3 123 32 is_stmt 1              ## part1_cpuid.c:123:32
	mov	cl, byte ptr [rbp - 218]
	lea	rsi, [rip + L_.str.20]
	lea	rax, [rip + L_.str.19]
	test	cl, 1
	cmovne	rsi, rax
	.loc	3 123 5 is_stmt 0               ## part1_cpuid.c:123:5
	lea	rdi, [rip + L_.str.21]
	mov	al, 0
	call	_printf
	.loc	3 124 44 is_stmt 1              ## part1_cpuid.c:124:44
	mov	cl, byte ptr [rbp - 219]
	lea	rsi, [rip + L_.str.20]
	lea	rax, [rip + L_.str.19]
	test	cl, 1
	cmovne	rsi, rax
	.loc	3 124 65 is_stmt 0              ## part1_cpuid.c:124:65
	mov	cl, byte ptr [rbp - 220]
	lea	rdx, [rip + L_.str.20]
	lea	rax, [rip + L_.str.19]
	test	cl, 1
	cmovne	rdx, rax
	.loc	3 124 5                         ## part1_cpuid.c:124:5
	lea	rdi, [rip + L_.str.22]
	mov	al, 0
	call	_printf
	.loc	3 125 54 is_stmt 1              ## part1_cpuid.c:125:54
	mov	cl, byte ptr [rbp - 221]
	lea	rsi, [rip + L_.str.20]
	lea	rax, [rip + L_.str.19]
	test	cl, 1
	cmovne	rsi, rax
	.loc	3 125 77 is_stmt 0              ## part1_cpuid.c:125:77
	mov	cl, byte ptr [rbp - 222]
	lea	rdx, [rip + L_.str.20]
	lea	rax, [rip + L_.str.19]
	test	cl, 1
	cmovne	rdx, rax
	.loc	3 125 5                         ## part1_cpuid.c:125:5
	lea	rdi, [rip + L_.str.23]
	mov	al, 0
	call	_printf
	.loc	3 126 32 is_stmt 1              ## part1_cpuid.c:126:32
	mov	cl, byte ptr [rbp - 223]
	lea	rsi, [rip + L_.str.20]
	lea	rax, [rip + L_.str.19]
	test	cl, 1
	cmovne	rsi, rax
	.loc	3 126 5 is_stmt 0               ## part1_cpuid.c:126:5
	lea	rdi, [rip + L_.str.24]
	mov	al, 0
	call	_printf
	.loc	3 127 34 is_stmt 1              ## part1_cpuid.c:127:34
	mov	cl, byte ptr [rbp - 241]
	lea	rsi, [rip + L_.str.20]
	lea	rax, [rip + L_.str.19]
	test	cl, 1
	cmovne	rsi, rax
	.loc	3 127 5 is_stmt 0               ## part1_cpuid.c:127:5
	lea	rdi, [rip + L_.str.25]
	mov	al, 0
	call	_printf
	.loc	3 130 5 is_stmt 1               ## part1_cpuid.c:130:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	.loc	3 131 5                         ## part1_cpuid.c:131:5
	lea	rdi, [rip + L_.str.26]
	mov	al, 0
	call	_printf
	.loc	3 132 5                         ## part1_cpuid.c:132:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
Ltmp30:
	.loc	3 134 22                        ## part1_cpuid.c:134:22
	cmp	dword ptr [rbp - 100], 4
Ltmp31:
	.loc	3 134 9 is_stmt 0               ## part1_cpuid.c:134:9
	jb	LBB0_39
## %bb.25:
Ltmp32:
	.loc	3 135 13 is_stmt 1              ## part1_cpuid.c:135:13
	mov	dword ptr [rbp - 248], 0
LBB0_26:                                ## =>This Inner Loop Header: Depth=1
Ltmp33:
	.loc	3 138 13                        ## part1_cpuid.c:138:13
	mov	ecx, dword ptr [rbp - 248]
	mov	eax, 4
	## InlineAsm Start
	xchg	rsi, rbx
	cpuid
	xchg	rsi, rbx
	## InlineAsm End
	mov	dword ptr [rbp - 456], esi      ## 4-byte Spill
	mov	esi, eax
	mov	eax, dword ptr [rbp - 456]      ## 4-byte Reload
	mov	dword ptr [rbp - 252], esi
	mov	dword ptr [rbp - 256], eax
	mov	dword ptr [rbp - 260], ecx
	mov	dword ptr [rbp - 264], edx
	.loc	3 139 39                        ## part1_cpuid.c:139:39
	mov	eax, dword ptr [rbp - 252]
	.loc	3 139 42 is_stmt 0              ## part1_cpuid.c:139:42
	and	eax, 31
	.loc	3 139 26                        ## part1_cpuid.c:139:26
	mov	dword ptr [rbp - 268], eax
Ltmp34:
	.loc	3 140 28 is_stmt 1              ## part1_cpuid.c:140:28
	cmp	dword ptr [rbp - 268], 0
Ltmp35:
	.loc	3 140 17 is_stmt 0              ## part1_cpuid.c:140:17
	jne	LBB0_28
## %bb.27:
Ltmp36:
	.loc	3 140 34                        ## part1_cpuid.c:140:34
	jmp	LBB0_38
Ltmp37:
LBB0_28:                                ##   in Loop: Header=BB0_26 Depth=1
	.loc	3 142 41 is_stmt 1              ## part1_cpuid.c:142:41
	mov	eax, dword ptr [rbp - 252]
	.loc	3 142 44 is_stmt 0              ## part1_cpuid.c:142:44
	shr	eax, 5
	.loc	3 142 50                        ## part1_cpuid.c:142:50
	and	eax, 7
	.loc	3 142 26                        ## part1_cpuid.c:142:26
	mov	dword ptr [rbp - 272], eax
	.loc	3 143 41 is_stmt 1              ## part1_cpuid.c:143:41
	mov	eax, dword ptr [rbp - 256]
	.loc	3 143 44 is_stmt 0              ## part1_cpuid.c:143:44
	and	eax, 4095
	.loc	3 143 53                        ## part1_cpuid.c:143:53
	add	eax, 1
	.loc	3 143 26                        ## part1_cpuid.c:143:26
	mov	dword ptr [rbp - 276], eax
	.loc	3 144 42 is_stmt 1              ## part1_cpuid.c:144:42
	mov	eax, dword ptr [rbp - 256]
	.loc	3 144 45 is_stmt 0              ## part1_cpuid.c:144:45
	shr	eax, 12
	.loc	3 144 52                        ## part1_cpuid.c:144:52
	and	eax, 1023
	.loc	3 144 61                        ## part1_cpuid.c:144:61
	add	eax, 1
	.loc	3 144 26                        ## part1_cpuid.c:144:26
	mov	dword ptr [rbp - 280], eax
	.loc	3 145 42 is_stmt 1              ## part1_cpuid.c:145:42
	mov	eax, dword ptr [rbp - 256]
	.loc	3 145 45 is_stmt 0              ## part1_cpuid.c:145:45
	shr	eax, 22
	.loc	3 145 52                        ## part1_cpuid.c:145:52
	and	eax, 1023
	.loc	3 145 61                        ## part1_cpuid.c:145:61
	add	eax, 1
	.loc	3 145 26                        ## part1_cpuid.c:145:26
	mov	dword ptr [rbp - 284], eax
	.loc	3 146 40 is_stmt 1              ## part1_cpuid.c:146:40
	mov	eax, dword ptr [rbp - 260]
	.loc	3 146 43 is_stmt 0              ## part1_cpuid.c:146:43
	add	eax, 1
	.loc	3 146 26                        ## part1_cpuid.c:146:26
	mov	dword ptr [rbp - 288], eax
	.loc	3 148 45 is_stmt 1              ## part1_cpuid.c:148:45
	mov	eax, dword ptr [rbp - 284]
                                        ## kill: def $rax killed $eax
	.loc	3 148 72 is_stmt 0              ## part1_cpuid.c:148:72
	mov	ecx, dword ptr [rbp - 280]
                                        ## kill: def $rcx killed $ecx
	.loc	3 148 70                        ## part1_cpuid.c:148:70
	imul	rax, rcx
	.loc	3 148 85                        ## part1_cpuid.c:148:85
	mov	ecx, dword ptr [rbp - 276]
                                        ## kill: def $rcx killed $ecx
	.loc	3 148 83                        ## part1_cpuid.c:148:83
	imul	rax, rcx
	.loc	3 148 97                        ## part1_cpuid.c:148:97
	mov	ecx, dword ptr [rbp - 288]
                                        ## kill: def $rcx killed $ecx
	.loc	3 148 95                        ## part1_cpuid.c:148:95
	imul	rax, rcx
	.loc	3 148 32                        ## part1_cpuid.c:148:32
	mov	qword ptr [rbp - 296], rax
	.loc	3 149 48 is_stmt 1              ## part1_cpuid.c:149:48
	cmp	dword ptr [rbp - 268], 1
	.loc	3 149 36 is_stmt 0              ## part1_cpuid.c:149:36
	jne	LBB0_30
## %bb.29:                              ##   in Loop: Header=BB0_26 Depth=1
	lea	rax, [rip + L_.str.27]
	mov	qword ptr [rbp - 464], rax      ## 8-byte Spill
	jmp	LBB0_34
LBB0_30:                                ##   in Loop: Header=BB0_26 Depth=1
	.loc	3 150 48 is_stmt 1              ## part1_cpuid.c:150:48
	cmp	dword ptr [rbp - 268], 2
	.loc	3 150 36 is_stmt 0              ## part1_cpuid.c:150:36
	jne	LBB0_32
## %bb.31:                              ##   in Loop: Header=BB0_26 Depth=1
	lea	rax, [rip + L_.str.28]
	mov	qword ptr [rbp - 472], rax      ## 8-byte Spill
	jmp	LBB0_33
LBB0_32:                                ##   in Loop: Header=BB0_26 Depth=1
	.loc	3 151 37 is_stmt 1              ## part1_cpuid.c:151:37
	mov	edx, dword ptr [rbp - 268]
	.loc	3 151 36 is_stmt 0              ## part1_cpuid.c:151:36
	lea	rax, [rip + L_.str.30]
	lea	rcx, [rip + L_.str.29]
	.loc	3 151 48                        ## part1_cpuid.c:151:48
	cmp	edx, 3
	.loc	3 151 36                        ## part1_cpuid.c:151:36
	cmove	rax, rcx
	mov	qword ptr [rbp - 472], rax      ## 8-byte Spill
LBB0_33:                                ##   in Loop: Header=BB0_26 Depth=1
	.loc	3 0 36                          ## part1_cpuid.c:0:36
	mov	rax, qword ptr [rbp - 472]      ## 8-byte Reload
	mov	qword ptr [rbp - 464], rax      ## 8-byte Spill
LBB0_34:                                ##   in Loop: Header=BB0_26 Depth=1
	mov	rax, qword ptr [rbp - 464]      ## 8-byte Reload
	.loc	3 149 25 is_stmt 1              ## part1_cpuid.c:149:25
	mov	qword ptr [rbp - 304], rax
Ltmp38:
	.loc	3 153 28                        ## part1_cpuid.c:153:28
	cmp	qword ptr [rbp - 296], 1048576
Ltmp39:
	.loc	3 153 17 is_stmt 0              ## part1_cpuid.c:153:17
	jb	LBB0_36
## %bb.35:                              ##   in Loop: Header=BB0_26 Depth=1
Ltmp40:
	.loc	3 155 24 is_stmt 1              ## part1_cpuid.c:155:24
	mov	esi, dword ptr [rbp - 272]
	.loc	3 155 37 is_stmt 0              ## part1_cpuid.c:155:37
	mov	rdx, qword ptr [rbp - 304]
	.loc	3 155 47                        ## part1_cpuid.c:155:47
	mov	rcx, qword ptr [rbp - 296]
	.loc	3 155 58                        ## part1_cpuid.c:155:58
	shr	rcx, 20
	.loc	3 155 75                        ## part1_cpuid.c:155:75
	mov	r8d, dword ptr [rbp - 284]
	.loc	3 155 81                        ## part1_cpuid.c:155:81
	mov	r9d, dword ptr [rbp - 276]
	.loc	3 155 92                        ## part1_cpuid.c:155:92
	mov	eax, dword ptr [rbp - 288]
	.loc	3 154 17 is_stmt 1              ## part1_cpuid.c:154:17
	lea	rdi, [rip + L_.str.31]
	mov	dword ptr [rsp], eax
	mov	al, 0
	call	_printf
	.loc	3 156 13                        ## part1_cpuid.c:156:13
	jmp	LBB0_37
Ltmp41:
LBB0_36:                                ##   in Loop: Header=BB0_26 Depth=1
	.loc	3 158 24                        ## part1_cpuid.c:158:24
	mov	esi, dword ptr [rbp - 272]
	.loc	3 158 37 is_stmt 0              ## part1_cpuid.c:158:37
	mov	rdx, qword ptr [rbp - 304]
	.loc	3 158 47                        ## part1_cpuid.c:158:47
	mov	rcx, qword ptr [rbp - 296]
	.loc	3 158 58                        ## part1_cpuid.c:158:58
	shr	rcx, 10
	.loc	3 158 66                        ## part1_cpuid.c:158:66
	mov	r8d, dword ptr [rbp - 284]
	.loc	3 158 72                        ## part1_cpuid.c:158:72
	mov	r9d, dword ptr [rbp - 276]
	.loc	3 158 83                        ## part1_cpuid.c:158:83
	mov	eax, dword ptr [rbp - 288]
	.loc	3 157 17 is_stmt 1              ## part1_cpuid.c:157:17
	lea	rdi, [rip + L_.str.32]
	mov	dword ptr [rsp], eax
	mov	al, 0
	call	_printf
Ltmp42:
LBB0_37:                                ##   in Loop: Header=BB0_26 Depth=1
	.loc	3 160 20                        ## part1_cpuid.c:160:20
	mov	eax, dword ptr [rbp - 248]
	add	eax, 1
	mov	dword ptr [rbp - 248], eax
Ltmp43:
	.loc	3 136 9                         ## part1_cpuid.c:136:9
	jmp	LBB0_26
LBB0_38:
	.loc	3 162 5                         ## part1_cpuid.c:162:5
	jmp	LBB0_39
Ltmp44:
LBB0_39:
	.loc	3 163 5                         ## part1_cpuid.c:163:5
	lea	rdi, [rip + L_.str.33]
	mov	al, 0
	call	_printf
	.loc	3 165 5                         ## part1_cpuid.c:165:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	.loc	3 166 5                         ## part1_cpuid.c:166:5
	lea	rdi, [rip + L_.str.34]
	mov	al, 0
	call	_printf
	.loc	3 167 5                         ## part1_cpuid.c:167:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
Ltmp45:
	.loc	3 169 22                        ## part1_cpuid.c:169:22
	cmp	dword ptr [rbp - 100], 24
Ltmp46:
	.loc	3 169 9 is_stmt 0               ## part1_cpuid.c:169:9
	jb	LBB0_59
## %bb.40:
Ltmp47:
	.loc	3 170 22 is_stmt 1              ## part1_cpuid.c:170:22
	mov	dword ptr [rbp - 308], 0
	mov	eax, 24
	xor	ecx, ecx
	.loc	3 171 9                         ## part1_cpuid.c:171:9
	## InlineAsm Start
	xchg	rsi, rbx
	cpuid
	xchg	rsi, rbx
	## InlineAsm End
	mov	dword ptr [rbp - 476], esi      ## 4-byte Spill
	mov	esi, eax
	mov	eax, dword ptr [rbp - 476]      ## 4-byte Reload
	mov	dword ptr [rbp - 308], esi
	mov	dword ptr [rbp - 312], eax
	mov	dword ptr [rbp - 316], ecx
	mov	dword ptr [rbp - 320], edx
Ltmp48:
	.loc	3 173 27                        ## part1_cpuid.c:173:27
	mov	dword ptr [rbp - 324], 0
LBB0_41:                                ## =>This Inner Loop Header: Depth=1
Ltmp49:
	.loc	3 173 36 is_stmt 0              ## part1_cpuid.c:173:36
	mov	eax, dword ptr [rbp - 324]
	.loc	3 173 40                        ## part1_cpuid.c:173:40
	cmp	eax, dword ptr [rbp - 308]
Ltmp50:
	.loc	3 173 9                         ## part1_cpuid.c:173:9
	ja	LBB0_58
## %bb.42:                              ##   in Loop: Header=BB0_41 Depth=1
Ltmp51:
	.loc	3 175 13 is_stmt 1              ## part1_cpuid.c:175:13
	mov	ecx, dword ptr [rbp - 324]
	mov	eax, 24
	## InlineAsm Start
	xchg	rsi, rbx
	cpuid
	xchg	rsi, rbx
	## InlineAsm End
	mov	dword ptr [rbp - 480], esi      ## 4-byte Spill
	mov	esi, eax
	mov	eax, dword ptr [rbp - 480]      ## 4-byte Reload
	mov	dword ptr [rbp - 328], esi
	mov	dword ptr [rbp - 332], eax
	mov	dword ptr [rbp - 336], ecx
	mov	dword ptr [rbp - 340], edx
	.loc	3 177 37                        ## part1_cpuid.c:177:37
	mov	eax, dword ptr [rbp - 340]
	.loc	3 177 43 is_stmt 0              ## part1_cpuid.c:177:43
	and	eax, 31
	.loc	3 177 26                        ## part1_cpuid.c:177:26
	mov	dword ptr [rbp - 344], eax
Ltmp52:
	.loc	3 178 26 is_stmt 1              ## part1_cpuid.c:178:26
	cmp	dword ptr [rbp - 344], 0
Ltmp53:
	.loc	3 178 17 is_stmt 0              ## part1_cpuid.c:178:17
	jne	LBB0_44
## %bb.43:                              ##   in Loop: Header=BB0_41 Depth=1
Ltmp54:
	.loc	3 178 32                        ## part1_cpuid.c:178:32
	jmp	LBB0_57
Ltmp55:
LBB0_44:                                ##   in Loop: Header=BB0_41 Depth=1
	.loc	3 180 39 is_stmt 1              ## part1_cpuid.c:180:39
	mov	eax, dword ptr [rbp - 340]
	.loc	3 180 45 is_stmt 0              ## part1_cpuid.c:180:45
	shr	eax, 5
	.loc	3 180 51                        ## part1_cpuid.c:180:51
	and	eax, 7
	.loc	3 180 26                        ## part1_cpuid.c:180:26
	mov	dword ptr [rbp - 348], eax
	.loc	3 181 39 is_stmt 1              ## part1_cpuid.c:181:39
	mov	eax, dword ptr [rbp - 332]
	.loc	3 181 45 is_stmt 0              ## part1_cpuid.c:181:45
	shr	eax, 16
	.loc	3 181 52                        ## part1_cpuid.c:181:52
	and	eax, 65535
	.loc	3 181 26                        ## part1_cpuid.c:181:26
	mov	dword ptr [rbp - 352], eax
	.loc	3 182 38 is_stmt 1              ## part1_cpuid.c:182:38
	mov	eax, dword ptr [rbp - 336]
	.loc	3 182 26 is_stmt 0              ## part1_cpuid.c:182:26
	mov	dword ptr [rbp - 356], eax
	.loc	3 183 38 is_stmt 1              ## part1_cpuid.c:183:38
	mov	eax, dword ptr [rbp - 352]
	.loc	3 183 43 is_stmt 0              ## part1_cpuid.c:183:43
	imul	eax, dword ptr [rbp - 356]
	.loc	3 183 26                        ## part1_cpuid.c:183:26
	mov	dword ptr [rbp - 360], eax
	.loc	3 185 30 is_stmt 1              ## part1_cpuid.c:185:30
	mov	eax, dword ptr [rbp - 332]
	.loc	3 185 36 is_stmt 0              ## part1_cpuid.c:185:36
	and	eax, 1
	.loc	3 185 48                        ## part1_cpuid.c:185:48
	cmp	eax, 0
	setne	al
	.loc	3 185 18                        ## part1_cpuid.c:185:18
	and	al, 1
	mov	byte ptr [rbp - 361], al
	.loc	3 186 30 is_stmt 1              ## part1_cpuid.c:186:30
	mov	eax, dword ptr [rbp - 332]
	.loc	3 186 36 is_stmt 0              ## part1_cpuid.c:186:36
	and	eax, 2
	.loc	3 186 48                        ## part1_cpuid.c:186:48
	cmp	eax, 0
	setne	al
	.loc	3 186 18                        ## part1_cpuid.c:186:18
	and	al, 1
	mov	byte ptr [rbp - 362], al
	.loc	3 187 30 is_stmt 1              ## part1_cpuid.c:187:30
	mov	eax, dword ptr [rbp - 332]
	.loc	3 187 36 is_stmt 0              ## part1_cpuid.c:187:36
	and	eax, 4
	.loc	3 187 48                        ## part1_cpuid.c:187:48
	cmp	eax, 0
	setne	al
	.loc	3 187 18                        ## part1_cpuid.c:187:18
	and	al, 1
	mov	byte ptr [rbp - 363], al
	.loc	3 188 30 is_stmt 1              ## part1_cpuid.c:188:30
	mov	eax, dword ptr [rbp - 332]
	.loc	3 188 36 is_stmt 0              ## part1_cpuid.c:188:36
	and	eax, 8
	.loc	3 188 48                        ## part1_cpuid.c:188:48
	cmp	eax, 0
	setne	al
	.loc	3 188 18                        ## part1_cpuid.c:188:18
	and	al, 1
	mov	byte ptr [rbp - 364], al
	.loc	3 190 45 is_stmt 1              ## part1_cpuid.c:190:45
	cmp	dword ptr [rbp - 344], 1
	.loc	3 190 35 is_stmt 0              ## part1_cpuid.c:190:35
	jne	LBB0_46
## %bb.45:                              ##   in Loop: Header=BB0_41 Depth=1
	lea	rax, [rip + L_.str.35]
	mov	qword ptr [rbp - 488], rax      ## 8-byte Spill
	jmp	LBB0_56
LBB0_46:                                ##   in Loop: Header=BB0_41 Depth=1
	.loc	3 191 45 is_stmt 1              ## part1_cpuid.c:191:45
	cmp	dword ptr [rbp - 344], 2
	.loc	3 191 35 is_stmt 0              ## part1_cpuid.c:191:35
	jne	LBB0_48
## %bb.47:                              ##   in Loop: Header=BB0_41 Depth=1
	lea	rax, [rip + L_.str.36]
	mov	qword ptr [rbp - 496], rax      ## 8-byte Spill
	jmp	LBB0_55
LBB0_48:                                ##   in Loop: Header=BB0_41 Depth=1
	.loc	3 192 45 is_stmt 1              ## part1_cpuid.c:192:45
	cmp	dword ptr [rbp - 344], 3
	.loc	3 192 35 is_stmt 0              ## part1_cpuid.c:192:35
	jne	LBB0_50
## %bb.49:                              ##   in Loop: Header=BB0_41 Depth=1
	lea	rax, [rip + L_.str.37]
	mov	qword ptr [rbp - 504], rax      ## 8-byte Spill
	jmp	LBB0_54
LBB0_50:                                ##   in Loop: Header=BB0_41 Depth=1
	.loc	3 193 45 is_stmt 1              ## part1_cpuid.c:193:45
	cmp	dword ptr [rbp - 344], 4
	.loc	3 193 35 is_stmt 0              ## part1_cpuid.c:193:35
	jne	LBB0_52
## %bb.51:                              ##   in Loop: Header=BB0_41 Depth=1
	lea	rax, [rip + L_.str.38]
	mov	qword ptr [rbp - 512], rax      ## 8-byte Spill
	jmp	LBB0_53
LBB0_52:                                ##   in Loop: Header=BB0_41 Depth=1
	.loc	3 194 36 is_stmt 1              ## part1_cpuid.c:194:36
	mov	edx, dword ptr [rbp - 344]
	.loc	3 194 35 is_stmt 0              ## part1_cpuid.c:194:35
	lea	rax, [rip + L_.str.40]
	lea	rcx, [rip + L_.str.39]
	.loc	3 194 45                        ## part1_cpuid.c:194:45
	cmp	edx, 5
	.loc	3 194 35                        ## part1_cpuid.c:194:35
	cmove	rax, rcx
	mov	qword ptr [rbp - 512], rax      ## 8-byte Spill
LBB0_53:                                ##   in Loop: Header=BB0_41 Depth=1
	.loc	3 0 35                          ## part1_cpuid.c:0:35
	mov	rax, qword ptr [rbp - 512]      ## 8-byte Reload
	mov	qword ptr [rbp - 504], rax      ## 8-byte Spill
LBB0_54:                                ##   in Loop: Header=BB0_41 Depth=1
	mov	rax, qword ptr [rbp - 504]      ## 8-byte Reload
	mov	qword ptr [rbp - 496], rax      ## 8-byte Spill
LBB0_55:                                ##   in Loop: Header=BB0_41 Depth=1
	mov	rax, qword ptr [rbp - 496]      ## 8-byte Reload
	mov	qword ptr [rbp - 488], rax      ## 8-byte Spill
LBB0_56:                                ##   in Loop: Header=BB0_41 Depth=1
	mov	rax, qword ptr [rbp - 488]      ## 8-byte Reload
	.loc	3 190 25 is_stmt 1              ## part1_cpuid.c:190:25
	mov	qword ptr [rbp - 376], rax
	.loc	3 197 20                        ## part1_cpuid.c:197:20
	mov	esi, dword ptr [rbp - 348]
	.loc	3 197 31 is_stmt 0              ## part1_cpuid.c:197:31
	mov	rdx, qword ptr [rbp - 376]
	.loc	3 197 40                        ## part1_cpuid.c:197:40
	mov	ecx, dword ptr [rbp - 360]
	.loc	3 197 49                        ## part1_cpuid.c:197:49
	mov	r8d, dword ptr [rbp - 352]
	.loc	3 197 55                        ## part1_cpuid.c:197:55
	mov	r9d, dword ptr [rbp - 356]
	.loc	3 198 20 is_stmt 1              ## part1_cpuid.c:198:20
	mov	dil, byte ptr [rbp - 361]
	lea	rbx, [rip + L_.str.43]
	lea	rax, [rip + L_.str.42]
	test	dil, 1
	cmovne	rbx, rax
	.loc	3 199 20                        ## part1_cpuid.c:199:20
	mov	dil, byte ptr [rbp - 362]
	lea	r11, [rip + L_.str.43]
	lea	rax, [rip + L_.str.44]
	test	dil, 1
	cmovne	r11, rax
	.loc	3 200 20                        ## part1_cpuid.c:200:20
	mov	dil, byte ptr [rbp - 363]
	lea	r10, [rip + L_.str.43]
	lea	rax, [rip + L_.str.45]
	test	dil, 1
	cmovne	r10, rax
	.loc	3 201 20                        ## part1_cpuid.c:201:20
	mov	r14b, byte ptr [rbp - 364]
	lea	rax, [rip + L_.str.43]
	lea	rdi, [rip + L_.str.46]
	test	r14b, 1
	cmovne	rax, rdi
	.loc	3 196 13                        ## part1_cpuid.c:196:13
	lea	rdi, [rip + L_.str.41]
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 16], r10
	mov	qword ptr [rsp + 24], rax
	mov	al, 0
	call	_printf
Ltmp56:
LBB0_57:                                ##   in Loop: Header=BB0_41 Depth=1
	.loc	3 173 60                        ## part1_cpuid.c:173:60
	mov	eax, dword ptr [rbp - 324]
	add	eax, 1
	mov	dword ptr [rbp - 324], eax
	.loc	3 173 9 is_stmt 0               ## part1_cpuid.c:173:9
	jmp	LBB0_41
Ltmp57:
LBB0_58:
	.loc	3 203 5 is_stmt 1               ## part1_cpuid.c:203:5
	jmp	LBB0_59
Ltmp58:
LBB0_59:
	.loc	3 204 5                         ## part1_cpuid.c:204:5
	lea	rdi, [rip + L_.str.33]
	mov	al, 0
	call	_printf
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 24]
	cmp	rax, rcx
	jne	LBB0_61
## %bb.60:
	.loc	3 205 1                         ## part1_cpuid.c:205:1
	add	rsp, 528
	pop	rbx
	pop	r14
	pop	rbp
	ret
LBB0_61:
	.loc	3 0 0 is_stmt 0                 ## part1_cpuid.c:0:0
	call	___stack_chk_fail
	ud2
Ltmp59:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function __get_cpuid_max
___get_cpuid_max:                       ## @__get_cpuid_max
Lfunc_begin1:
	.file	4 "/Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include" "cpuid.h"
	.loc	4 264 0 is_stmt 1               ## /Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include/cpuid.h:264:0
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
Ltmp60:
	.loc	4 287 5 prologue_end            ## /Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include/cpuid.h:287:5
	mov	eax, dword ptr [rbp - 4]
	## InlineAsm Start
	xchg	rsi, rbx
	cpuid
	xchg	rsi, rbx
	## InlineAsm End
	mov	dword ptr [rbp - 36], esi       ## 4-byte Spill
	mov	esi, eax
	mov	eax, dword ptr [rbp - 36]       ## 4-byte Reload
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], eax
	mov	dword ptr [rbp - 28], ecx
	mov	dword ptr [rbp - 32], edx
Ltmp61:
	.loc	4 288 9                         ## /Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include/cpuid.h:288:9
	cmp	qword ptr [rbp - 16], 0
Ltmp62:
	.loc	4 288 9 is_stmt 0               ## /Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include/cpuid.h:288:9
	je	LBB1_2
## %bb.1:
Ltmp63:
	.loc	4 289 18 is_stmt 1              ## /Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include/cpuid.h:289:18
	mov	ecx, dword ptr [rbp - 24]
	.loc	4 289 10 is_stmt 0              ## /Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include/cpuid.h:289:10
	mov	rax, qword ptr [rbp - 16]
	.loc	4 289 16                        ## /Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include/cpuid.h:289:16
	mov	dword ptr [rax], ecx
Ltmp64:
LBB1_2:
	.loc	4 290 12 is_stmt 1              ## /Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include/cpuid.h:290:12
	mov	eax, dword ptr [rbp - 20]
	.loc	4 290 5 is_stmt 0               ## /Library/Developer/CommandLineTools/usr/lib/clang/14.0.0/include/cpuid.h:290:5
	pop	rbp
	ret
Ltmp65:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.globl	_print_128bit                   ## -- Begin function print_128bit
	.p2align	4, 0x90
_print_128bit:                          ## @print_128bit
Lfunc_begin2:
	.loc	3 219 0 is_stmt 1               ## part1_cpuid.c:219:0
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
Ltmp66:
	.loc	3 220 25 prologue_end           ## part1_cpuid.c:220:25
	mov	rsi, qword ptr [rbp - 16]
	.loc	3 220 5 is_stmt 0               ## part1_cpuid.c:220:5
	lea	rdi, [rip + L_.str.47]
	mov	al, 0
	call	_printf
Ltmp67:
	.loc	3 222 16 is_stmt 1              ## part1_cpuid.c:222:16
	mov	rdi, qword ptr [rbp - 16]
	.loc	3 222 9 is_stmt 0               ## part1_cpuid.c:222:9
	lea	rsi, [rip + L_.str.48]
	call	_strcmp
	.loc	3 222 28                        ## part1_cpuid.c:222:28
	cmp	eax, 0
Ltmp68:
	.loc	3 222 9                         ## part1_cpuid.c:222:9
	jne	LBB2_6
## %bb.1:
Ltmp69:
	.loc	3 223 18 is_stmt 1              ## part1_cpuid.c:223:18
	mov	dword ptr [rbp - 20], 0
LBB2_2:                                 ## =>This Inner Loop Header: Depth=1
Ltmp70:
	.loc	3 223 27 is_stmt 0              ## part1_cpuid.c:223:27
	cmp	dword ptr [rbp - 20], 16
Ltmp71:
	.loc	3 223 9                         ## part1_cpuid.c:223:9
	jge	LBB2_5
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=1
Ltmp72:
	.loc	3 223 60                        ## part1_cpuid.c:223:60
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movzx	esi, byte ptr [rax + rcx]
	.loc	3 223 38                        ## part1_cpuid.c:223:38
	lea	rdi, [rip + L_.str.49]
	mov	al, 0
	call	_printf
## %bb.4:                               ##   in Loop: Header=BB2_2 Depth=1
	.loc	3 223 33                        ## part1_cpuid.c:223:33
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	.loc	3 223 9                         ## part1_cpuid.c:223:9
	jmp	LBB2_2
Ltmp73:
LBB2_5:
	.loc	3 224 5 is_stmt 1               ## part1_cpuid.c:224:5
	jmp	LBB2_56
Ltmp74:
LBB2_6:
	.loc	3 224 23 is_stmt 0              ## part1_cpuid.c:224:23
	mov	rdi, qword ptr [rbp - 16]
	.loc	3 224 16                        ## part1_cpuid.c:224:16
	lea	rsi, [rip + L_.str.50]
	call	_strcmp
	.loc	3 224 35                        ## part1_cpuid.c:224:35
	cmp	eax, 0
Ltmp75:
	.loc	3 224 16                        ## part1_cpuid.c:224:16
	jne	LBB2_12
## %bb.7:
Ltmp76:
	.loc	3 225 18 is_stmt 1              ## part1_cpuid.c:225:18
	mov	dword ptr [rbp - 24], 0
LBB2_8:                                 ## =>This Inner Loop Header: Depth=1
Ltmp77:
	.loc	3 225 27 is_stmt 0              ## part1_cpuid.c:225:27
	cmp	dword ptr [rbp - 24], 16
Ltmp78:
	.loc	3 225 9                         ## part1_cpuid.c:225:9
	jge	LBB2_11
## %bb.9:                               ##   in Loop: Header=BB2_8 Depth=1
Ltmp79:
	.loc	3 225 60                        ## part1_cpuid.c:225:60
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	movsx	esi, byte ptr [rax + rcx]
	.loc	3 225 38                        ## part1_cpuid.c:225:38
	lea	rdi, [rip + L_.str.51]
	mov	al, 0
	call	_printf
## %bb.10:                              ##   in Loop: Header=BB2_8 Depth=1
	.loc	3 225 33                        ## part1_cpuid.c:225:33
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	.loc	3 225 9                         ## part1_cpuid.c:225:9
	jmp	LBB2_8
Ltmp80:
LBB2_11:
	.loc	3 226 5 is_stmt 1               ## part1_cpuid.c:226:5
	jmp	LBB2_55
Ltmp81:
LBB2_12:
	.loc	3 226 23 is_stmt 0              ## part1_cpuid.c:226:23
	mov	rdi, qword ptr [rbp - 16]
	.loc	3 226 16                        ## part1_cpuid.c:226:16
	lea	rsi, [rip + L_.str.52]
	call	_strcmp
	.loc	3 226 36                        ## part1_cpuid.c:226:36
	cmp	eax, 0
Ltmp82:
	.loc	3 226 16                        ## part1_cpuid.c:226:16
	jne	LBB2_18
## %bb.13:
Ltmp83:
	.loc	3 227 18 is_stmt 1              ## part1_cpuid.c:227:18
	mov	dword ptr [rbp - 28], 0
LBB2_14:                                ## =>This Inner Loop Header: Depth=1
Ltmp84:
	.loc	3 227 27 is_stmt 0              ## part1_cpuid.c:227:27
	cmp	dword ptr [rbp - 28], 8
Ltmp85:
	.loc	3 227 9                         ## part1_cpuid.c:227:9
	jge	LBB2_17
## %bb.15:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp86:
	.loc	3 227 61                        ## part1_cpuid.c:227:61
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	movzx	esi, word ptr [rax + 2*rcx]
	.loc	3 227 38                        ## part1_cpuid.c:227:38
	lea	rdi, [rip + L_.str.53]
	mov	al, 0
	call	_printf
## %bb.16:                              ##   in Loop: Header=BB2_14 Depth=1
	.loc	3 227 32                        ## part1_cpuid.c:227:32
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	.loc	3 227 9                         ## part1_cpuid.c:227:9
	jmp	LBB2_14
Ltmp87:
LBB2_17:
	.loc	3 228 5 is_stmt 1               ## part1_cpuid.c:228:5
	jmp	LBB2_54
Ltmp88:
LBB2_18:
	.loc	3 228 23 is_stmt 0              ## part1_cpuid.c:228:23
	mov	rdi, qword ptr [rbp - 16]
	.loc	3 228 16                        ## part1_cpuid.c:228:16
	lea	rsi, [rip + L_.str.54]
	call	_strcmp
	.loc	3 228 36                        ## part1_cpuid.c:228:36
	cmp	eax, 0
Ltmp89:
	.loc	3 228 16                        ## part1_cpuid.c:228:16
	jne	LBB2_24
## %bb.19:
Ltmp90:
	.loc	3 229 18 is_stmt 1              ## part1_cpuid.c:229:18
	mov	dword ptr [rbp - 32], 0
LBB2_20:                                ## =>This Inner Loop Header: Depth=1
Ltmp91:
	.loc	3 229 27 is_stmt 0              ## part1_cpuid.c:229:27
	cmp	dword ptr [rbp - 32], 8
Ltmp92:
	.loc	3 229 9                         ## part1_cpuid.c:229:9
	jge	LBB2_23
## %bb.21:                              ##   in Loop: Header=BB2_20 Depth=1
Ltmp93:
	.loc	3 229 61                        ## part1_cpuid.c:229:61
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 32]
	movsx	esi, word ptr [rax + 2*rcx]
	.loc	3 229 38                        ## part1_cpuid.c:229:38
	lea	rdi, [rip + L_.str.55]
	mov	al, 0
	call	_printf
## %bb.22:                              ##   in Loop: Header=BB2_20 Depth=1
	.loc	3 229 32                        ## part1_cpuid.c:229:32
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	.loc	3 229 9                         ## part1_cpuid.c:229:9
	jmp	LBB2_20
Ltmp94:
LBB2_23:
	.loc	3 230 5 is_stmt 1               ## part1_cpuid.c:230:5
	jmp	LBB2_53
Ltmp95:
LBB2_24:
	.loc	3 230 23 is_stmt 0              ## part1_cpuid.c:230:23
	mov	rdi, qword ptr [rbp - 16]
	.loc	3 230 16                        ## part1_cpuid.c:230:16
	lea	rsi, [rip + L_.str.56]
	call	_strcmp
	.loc	3 230 36                        ## part1_cpuid.c:230:36
	cmp	eax, 0
Ltmp96:
	.loc	3 230 16                        ## part1_cpuid.c:230:16
	jne	LBB2_30
## %bb.25:
Ltmp97:
	.loc	3 231 18 is_stmt 1              ## part1_cpuid.c:231:18
	mov	dword ptr [rbp - 36], 0
LBB2_26:                                ## =>This Inner Loop Header: Depth=1
Ltmp98:
	.loc	3 231 27 is_stmt 0              ## part1_cpuid.c:231:27
	cmp	dword ptr [rbp - 36], 4
Ltmp99:
	.loc	3 231 9                         ## part1_cpuid.c:231:9
	jge	LBB2_29
## %bb.27:                              ##   in Loop: Header=BB2_26 Depth=1
Ltmp100:
	.loc	3 231 61                        ## part1_cpuid.c:231:61
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	esi, dword ptr [rax + 4*rcx]
	.loc	3 231 38                        ## part1_cpuid.c:231:38
	lea	rdi, [rip + L_.str.57]
	mov	al, 0
	call	_printf
## %bb.28:                              ##   in Loop: Header=BB2_26 Depth=1
	.loc	3 231 32                        ## part1_cpuid.c:231:32
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	.loc	3 231 9                         ## part1_cpuid.c:231:9
	jmp	LBB2_26
Ltmp101:
LBB2_29:
	.loc	3 232 5 is_stmt 1               ## part1_cpuid.c:232:5
	jmp	LBB2_52
Ltmp102:
LBB2_30:
	.loc	3 232 23 is_stmt 0              ## part1_cpuid.c:232:23
	mov	rdi, qword ptr [rbp - 16]
	.loc	3 232 16                        ## part1_cpuid.c:232:16
	lea	rsi, [rip + L_.str.58]
	call	_strcmp
	.loc	3 232 36                        ## part1_cpuid.c:232:36
	cmp	eax, 0
Ltmp103:
	.loc	3 232 16                        ## part1_cpuid.c:232:16
	jne	LBB2_36
## %bb.31:
Ltmp104:
	.loc	3 233 18 is_stmt 1              ## part1_cpuid.c:233:18
	mov	dword ptr [rbp - 40], 0
LBB2_32:                                ## =>This Inner Loop Header: Depth=1
Ltmp105:
	.loc	3 233 27 is_stmt 0              ## part1_cpuid.c:233:27
	cmp	dword ptr [rbp - 40], 4
Ltmp106:
	.loc	3 233 9                         ## part1_cpuid.c:233:9
	jge	LBB2_35
## %bb.33:                              ##   in Loop: Header=BB2_32 Depth=1
Ltmp107:
	.loc	3 233 61                        ## part1_cpuid.c:233:61
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 40]
	mov	esi, dword ptr [rax + 4*rcx]
	.loc	3 233 38                        ## part1_cpuid.c:233:38
	lea	rdi, [rip + L_.str.59]
	mov	al, 0
	call	_printf
## %bb.34:                              ##   in Loop: Header=BB2_32 Depth=1
	.loc	3 233 32                        ## part1_cpuid.c:233:32
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	.loc	3 233 9                         ## part1_cpuid.c:233:9
	jmp	LBB2_32
Ltmp108:
LBB2_35:
	.loc	3 234 5 is_stmt 1               ## part1_cpuid.c:234:5
	jmp	LBB2_51
Ltmp109:
LBB2_36:
	.loc	3 234 23 is_stmt 0              ## part1_cpuid.c:234:23
	mov	rdi, qword ptr [rbp - 16]
	.loc	3 234 16                        ## part1_cpuid.c:234:16
	lea	rsi, [rip + L_.str.60]
	call	_strcmp
	.loc	3 234 36                        ## part1_cpuid.c:234:36
	cmp	eax, 0
Ltmp110:
	.loc	3 234 16                        ## part1_cpuid.c:234:16
	jne	LBB2_42
## %bb.37:
Ltmp111:
	.loc	3 235 18 is_stmt 1              ## part1_cpuid.c:235:18
	mov	dword ptr [rbp - 44], 0
LBB2_38:                                ## =>This Inner Loop Header: Depth=1
Ltmp112:
	.loc	3 235 27 is_stmt 0              ## part1_cpuid.c:235:27
	cmp	dword ptr [rbp - 44], 2
Ltmp113:
	.loc	3 235 9                         ## part1_cpuid.c:235:9
	jge	LBB2_41
## %bb.39:                              ##   in Loop: Header=BB2_38 Depth=1
Ltmp114:
	.loc	3 235 61                        ## part1_cpuid.c:235:61
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 44]
	mov	rsi, qword ptr [rax + 8*rcx]
	.loc	3 235 38                        ## part1_cpuid.c:235:38
	lea	rdi, [rip + L_.str.61]
	mov	al, 0
	call	_printf
## %bb.40:                              ##   in Loop: Header=BB2_38 Depth=1
	.loc	3 235 32                        ## part1_cpuid.c:235:32
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	.loc	3 235 9                         ## part1_cpuid.c:235:9
	jmp	LBB2_38
Ltmp115:
LBB2_41:
	.loc	3 236 5 is_stmt 1               ## part1_cpuid.c:236:5
	jmp	LBB2_50
Ltmp116:
LBB2_42:
	.loc	3 236 23 is_stmt 0              ## part1_cpuid.c:236:23
	mov	rdi, qword ptr [rbp - 16]
	.loc	3 236 16                        ## part1_cpuid.c:236:16
	lea	rsi, [rip + L_.str.62]
	call	_strcmp
	.loc	3 236 36                        ## part1_cpuid.c:236:36
	cmp	eax, 0
Ltmp117:
	.loc	3 236 16                        ## part1_cpuid.c:236:16
	jne	LBB2_48
## %bb.43:
Ltmp118:
	.loc	3 237 18 is_stmt 1              ## part1_cpuid.c:237:18
	mov	dword ptr [rbp - 48], 0
LBB2_44:                                ## =>This Inner Loop Header: Depth=1
Ltmp119:
	.loc	3 237 27 is_stmt 0              ## part1_cpuid.c:237:27
	cmp	dword ptr [rbp - 48], 2
Ltmp120:
	.loc	3 237 9                         ## part1_cpuid.c:237:9
	jge	LBB2_47
## %bb.45:                              ##   in Loop: Header=BB2_44 Depth=1
Ltmp121:
	.loc	3 237 61                        ## part1_cpuid.c:237:61
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 48]
	mov	rsi, qword ptr [rax + 8*rcx]
	.loc	3 237 38                        ## part1_cpuid.c:237:38
	lea	rdi, [rip + L_.str.63]
	mov	al, 0
	call	_printf
## %bb.46:                              ##   in Loop: Header=BB2_44 Depth=1
	.loc	3 237 32                        ## part1_cpuid.c:237:32
	mov	eax, dword ptr [rbp - 48]
	add	eax, 1
	mov	dword ptr [rbp - 48], eax
	.loc	3 237 9                         ## part1_cpuid.c:237:9
	jmp	LBB2_44
Ltmp122:
LBB2_47:
	.loc	3 238 5 is_stmt 1               ## part1_cpuid.c:238:5
	jmp	LBB2_49
Ltmp123:
LBB2_48:
	.loc	3 239 9                         ## part1_cpuid.c:239:9
	lea	rdi, [rip + L_.str.64]
	mov	al, 0
	call	_printf
Ltmp124:
LBB2_49:
	.loc	3 0 9 is_stmt 0                 ## part1_cpuid.c:0:9
	jmp	LBB2_50
LBB2_50:
	jmp	LBB2_51
LBB2_51:
	jmp	LBB2_52
LBB2_52:
	jmp	LBB2_53
LBB2_53:
	jmp	LBB2_54
LBB2_54:
	jmp	LBB2_55
LBB2_55:
	jmp	LBB2_56
LBB2_56:
	.loc	3 242 5 is_stmt 1               ## part1_cpuid.c:242:5
	lea	rdi, [rip + L_.str.65]
	mov	al, 0
	call	_printf
	.loc	3 243 1                         ## part1_cpuid.c:243:1
	add	rsp, 48
	pop	rbp
	ret
Ltmp125:
Lfunc_end2:
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin3:
	.loc	3 245 0                         ## part1_cpuid.c:245:0
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	and	rsp, -128
	sub	rsp, 256
	mov	dword ptr [rsp + 204], 0
Ltmp126:
	.loc	3 246 5 prologue_end            ## part1_cpuid.c:246:5
	call	_extract_cpu_details
	.loc	3 248 5                         ## part1_cpuid.c:248:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	.loc	3 249 5                         ## part1_cpuid.c:249:5
	lea	rdi, [rip + L_.str.66]
	mov	al, 0
	call	_printf
	.loc	3 250 5                         ## part1_cpuid.c:250:5
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
Ltmp127:
	.loc	3 253 14                        ## part1_cpuid.c:253:14
	mov	dword ptr [rsp + 124], 0
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
Ltmp128:
	.loc	3 253 23 is_stmt 0              ## part1_cpuid.c:253:23
	cmp	dword ptr [rsp + 124], 16
Ltmp129:
	.loc	3 253 5                         ## part1_cpuid.c:253:5
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
Ltmp130:
	.loc	3 254 39 is_stmt 1              ## part1_cpuid.c:254:39
	mov	eax, dword ptr [rsp + 124]
	.loc	3 254 41 is_stmt 0              ## part1_cpuid.c:254:41
	shl	eax, 4
	.loc	3 254 37                        ## part1_cpuid.c:254:37
	add	eax, 10
	.loc	3 254 24                        ## part1_cpuid.c:254:24
	mov	cl, al
	.loc	3 254 9                         ## part1_cpuid.c:254:9
	movsxd	rax, dword ptr [rsp + 124]
	.loc	3 254 22                        ## part1_cpuid.c:254:22
	mov	byte ptr [rsp + rax + 128], cl
Ltmp131:
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	.loc	3 253 29 is_stmt 1              ## part1_cpuid.c:253:29
	mov	eax, dword ptr [rsp + 124]
	add	eax, 1
	mov	dword ptr [rsp + 124], eax
	.loc	3 253 5 is_stmt 0               ## part1_cpuid.c:253:5
	jmp	LBB3_1
Ltmp132:
LBB3_4:
	.loc	3 256 38 is_stmt 1              ## part1_cpuid.c:256:38
	movdqa	xmm1, xmmword ptr [rsp + 128]
	.loc	3 256 49 is_stmt 0              ## part1_cpuid.c:256:49
	movdqa	xmm0, xmmword ptr [rsp + 128]
	.loc	3 256 18                        ## part1_cpuid.c:256:18
	movdqa	xmmword ptr [rsp + 224], xmm1
	movdqa	xmmword ptr [rsp + 208], xmm0
	movdqa	xmm0, xmmword ptr [rsp + 224]
	movdqa	xmm1, xmmword ptr [rsp + 208]
	paddb	xmm0, xmm1
	.loc	3 256 16                        ## part1_cpuid.c:256:16
	movdqa	xmmword ptr [rsp + 128], xmm0
	.loc	3 257 5 is_stmt 1               ## part1_cpuid.c:257:5
	lea	rdi, [rsp + 128]
	lea	rsi, [rip + L_.str.48]
	call	_print_128bit
	.loc	3 258 5                         ## part1_cpuid.c:258:5
	lea	rdi, [rsp + 128]
	lea	rsi, [rip + L_.str.50]
	call	_print_128bit
	.loc	3 259 5                         ## part1_cpuid.c:259:5
	lea	rdi, [rsp + 128]
	lea	rsi, [rip + L_.str.52]
	call	_print_128bit
	.loc	3 260 5                         ## part1_cpuid.c:260:5
	lea	rdi, [rsp + 128]
	lea	rsi, [rip + L_.str.54]
	call	_print_128bit
	.loc	3 261 5                         ## part1_cpuid.c:261:5
	lea	rdi, [rsp + 128]
	lea	rsi, [rip + L_.str.56]
	call	_print_128bit
	.loc	3 262 5                         ## part1_cpuid.c:262:5
	lea	rdi, [rsp + 128]
	lea	rsi, [rip + L_.str.58]
	call	_print_128bit
	.loc	3 263 5                         ## part1_cpuid.c:263:5
	lea	rdi, [rsp + 128]
	lea	rsi, [rip + L_.str.60]
	call	_print_128bit
	.loc	3 264 5                         ## part1_cpuid.c:264:5
	lea	rdi, [rsp + 128]
	lea	rsi, [rip + L_.str.62]
	call	_print_128bit
	.loc	3 266 5                         ## part1_cpuid.c:266:5
	xor	eax, eax
	mov	rsp, rbp
	pop	rbp
	ret
Ltmp133:
Lfunc_end3:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"============================================================\n"

L_.str.1:                               ## @.str.1
	.asciz	" 1. PROCESSOR NAME, MODEL, AND GENERATION\n"

L_.str.2:                               ## @.str.2
	.asciz	"Full CPU Name  : %s\n"

L_.str.3:                               ## @.str.3
	.asciz	"Architecture   : x86_64 (Family: 0x%X, Model: 0x%X [%u], Stepping: %u)\n\n"

L_.str.4:                               ## @.str.4
	.asciz	" 2 & 3. CORES AND HYPER-THREADING (SMT)\n"

L_.str.5:                               ## @.str.5
	.asciz	"Hyper-Threading Flag (EDX Bit 28) : %s\n"

L_.str.6:                               ## @.str.6
	.asciz	"Supported"

L_.str.7:                               ## @.str.7
	.asciz	"Not Supported"

L_.str.8:                               ## @.str.8
	.asciz	"Max Threads per P-Core (Leaf 0xB) : %u (%s)\n"

L_.str.9:                               ## @.str.9
	.asciz	"Hyper-Threading ACTIVE"

L_.str.10:                              ## @.str.10
	.asciz	"Hyper-Threading DISABLED"

L_.str.11:                              ## @.str.11
	.asciz	"Total Logical Processors (Threads): %u\n"

L_.str.12:                              ## @.str.12
	.asciz	"Max Addressable APIC IDs (Leaf 1) : %u\n"

L_.str.13:                              ## @.str.13
	.asciz	" 4. PROCESSOR FREQUENCY\n"

L_.str.14:                              ## @.str.14
	.asciz	"CPUID Base Frequency : %u MHz\n"

L_.str.15:                              ## @.str.15
	.asciz	"CPUID Max Frequency  : %u MHz\n"

L_.str.16:                              ## @.str.16
	.asciz	"CPUID Bus Frequency  : %u MHz\n"

L_.str.17:                              ## @.str.17
	.asciz	" 5. SIMD INSTRUCTION SET SUPPORT\n"

L_.str.18:                              ## @.str.18
	.asciz	"a. SSE    : %s\n"

L_.str.19:                              ## @.str.19
	.asciz	"Yes"

L_.str.20:                              ## @.str.20
	.asciz	"No"

L_.str.21:                              ## @.str.21
	.asciz	"b. SSE2   : %s\n"

L_.str.22:                              ## @.str.22
	.asciz	"c. SSE3   : %s (SSSE3: %s)\n"

L_.str.23:                              ## @.str.23
	.asciz	"d. SSE4   : SSE4.1 = %s, SSE4.2 = %s\n"

L_.str.24:                              ## @.str.24
	.asciz	"e. AVX    : %s\n"

L_.str.25:                              ## @.str.25
	.asciz	"f. AVX2   : %s\n\n"

L_.str.26:                              ## @.str.26
	.asciz	" 6A. CACHE HIERARCHY\n"

L_.str.27:                              ## @.str.27
	.asciz	"Data Cache       "

L_.str.28:                              ## @.str.28
	.asciz	"Instruction Cache"

L_.str.29:                              ## @.str.29
	.asciz	"Unified Cache    "

L_.str.30:                              ## @.str.30
	.asciz	"Other"

L_.str.31:                              ## @.str.31
	.asciz	"L%u %s : %5llu MB (%2u-way, %2uB line, %6u sets)\n"

L_.str.32:                              ## @.str.32
	.asciz	"L%u %s : %5llu KB (%2u-way, %2uB line, %6u sets)\n"

L_.str.33:                              ## @.str.33
	.asciz	"\n"

L_.str.34:                              ## @.str.34
	.asciz	" 6B. TLB INFORMATION\n"

L_.str.35:                              ## @.str.35
	.asciz	"Data TLB       "

L_.str.36:                              ## @.str.36
	.asciz	"Instruction TLB"

L_.str.37:                              ## @.str.37
	.asciz	"Unified TLB    "

L_.str.38:                              ## @.str.38
	.asciz	"Load-Only TLB  "

L_.str.39:                              ## @.str.39
	.asciz	"Store-Only TLB "

L_.str.40:                              ## @.str.40
	.asciz	"Other TLB      "

L_.str.41:                              ## @.str.41
	.asciz	"L%u %s : %4u entries (%2u-way, %3u sets) | Pages: %s%s%s%s\n"

L_.str.42:                              ## @.str.42
	.asciz	"4KB "

L_.str.43:                              ## @.str.43
	.space	1

L_.str.44:                              ## @.str.44
	.asciz	"2MB "

L_.str.45:                              ## @.str.45
	.asciz	"4MB "

L_.str.46:                              ## @.str.46
	.asciz	"1GB "

L_.str.47:                              ## @.str.47
	.asciz	"%-4s : [ "

L_.str.48:                              ## @.str.48
	.asciz	"u8"

L_.str.49:                              ## @.str.49
	.asciz	"%hhu "

L_.str.50:                              ## @.str.50
	.asciz	"i8"

L_.str.51:                              ## @.str.51
	.asciz	"%hhd "

L_.str.52:                              ## @.str.52
	.asciz	"u16"

L_.str.53:                              ## @.str.53
	.asciz	"%hu "

L_.str.54:                              ## @.str.54
	.asciz	"i16"

L_.str.55:                              ## @.str.55
	.asciz	"%hd "

L_.str.56:                              ## @.str.56
	.asciz	"u32"

L_.str.57:                              ## @.str.57
	.asciz	"%u "

L_.str.58:                              ## @.str.58
	.asciz	"i32"

L_.str.59:                              ## @.str.59
	.asciz	"%d "

L_.str.60:                              ## @.str.60
	.asciz	"u64"

L_.str.61:                              ## @.str.61
	.asciz	"%llu "

L_.str.62:                              ## @.str.62
	.asciz	"i64"

L_.str.63:                              ## @.str.63
	.asciz	"%lld "

L_.str.64:                              ## @.str.64
	.asciz	"Unknown type"

L_.str.65:                              ## @.str.65
	.asciz	"]\n"

L_.str.66:                              ## @.str.66
	.asciz	" PART 1.2: 128-BIT UNION MEMORY INTERPRETATION\n"

	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int8_t.h"
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int16_t.h"
	.file	8 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.file	9 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int32_t.h"
	.file	10 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
	.file	11 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int64_t.h"
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ## Abbreviation Code
	.byte	17                              ## DW_TAG_compile_unit
	.byte	1                               ## DW_CHILDREN_yes
	.byte	37                              ## DW_AT_producer
	.byte	14                              ## DW_FORM_strp
	.byte	19                              ## DW_AT_language
	.byte	5                               ## DW_FORM_data2
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.ascii	"\202|"                         ## DW_AT_LLVM_sysroot
	.byte	14                              ## DW_FORM_strp
	.ascii	"\357\177"                      ## DW_AT_APPLE_sdk
	.byte	14                              ## DW_FORM_strp
	.byte	16                              ## DW_AT_stmt_list
	.byte	23                              ## DW_FORM_sec_offset
	.byte	27                              ## DW_AT_comp_dir
	.byte	14                              ## DW_FORM_strp
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	2                               ## Abbreviation Code
	.byte	15                              ## DW_TAG_pointer_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	3                               ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	4                               ## Abbreviation Code
	.byte	22                              ## DW_TAG_typedef
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	5                               ## Abbreviation Code
	.byte	1                               ## DW_TAG_array_type
	.byte	1                               ## DW_CHILDREN_yes
	.ascii	"\207B"                         ## DW_AT_GNU_vector
	.byte	25                              ## DW_FORM_flag_present
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	6                               ## Abbreviation Code
	.byte	33                              ## DW_TAG_subrange_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	55                              ## DW_AT_count
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	7                               ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	8                               ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	39                              ## DW_AT_prototyped
	.byte	25                              ## DW_FORM_flag_present
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	9                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	10                              ## Abbreviation Code
	.byte	11                              ## DW_TAG_lexical_block
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	11                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	5                               ## DW_FORM_data2
	.byte	39                              ## DW_AT_prototyped
	.byte	25                              ## DW_FORM_flag_present
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	12                              ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	5                               ## DW_FORM_data2
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	13                              ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	5                               ## DW_FORM_data2
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	14                              ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	15                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	39                              ## DW_AT_prototyped
	.byte	25                              ## DW_FORM_flag_present
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	16                              ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.ascii	"\210\001"                      ## DW_AT_alignment
	.byte	15                              ## DW_FORM_udata
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	17                              ## Abbreviation Code
	.byte	1                               ## DW_TAG_array_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	18                              ## Abbreviation Code
	.byte	38                              ## DW_TAG_const_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	19                              ## Abbreviation Code
	.byte	23                              ## DW_TAG_union_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	20                              ## Abbreviation Code
	.byte	13                              ## DW_TAG_member
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.ascii	"\210\001"                      ## DW_AT_alignment
	.byte	15                              ## DW_FORM_udata
	.byte	56                              ## DW_AT_data_member_location
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	21                              ## Abbreviation Code
	.byte	13                              ## DW_TAG_member
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	56                              ## DW_AT_data_member_location
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	0                               ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ## DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ## Address Size (in bytes)
	.byte	1                               ## Abbrev [1] 0xb:0x8f2 DW_TAG_compile_unit
	.long	0                               ## DW_AT_producer
	.short	12                              ## DW_AT_language
	.long	49                              ## DW_AT_name
	.long	63                              ## DW_AT_LLVM_sysroot
	.long	115                             ## DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset2
	.long	126                             ## DW_AT_comp_dir
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset3, Lfunc_end3-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset3
	.byte	2                               ## Abbrev [2] 0x32:0x5 DW_TAG_pointer_type
	.long	55                              ## DW_AT_type
	.byte	3                               ## Abbrev [3] 0x37:0x7 DW_TAG_base_type
	.long	239                             ## DW_AT_name
	.byte	7                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	3                               ## Abbrev [3] 0x3e:0x7 DW_TAG_base_type
	.long	252                             ## DW_AT_name
	.byte	7                               ## DW_AT_encoding
	.byte	8                               ## DW_AT_byte_size
	.byte	4                               ## Abbrev [4] 0x45:0xb DW_TAG_typedef
	.long	80                              ## DW_AT_type
	.long	271                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	3                               ## Abbrev [3] 0x50:0x7 DW_TAG_base_type
	.long	279                             ## DW_AT_name
	.byte	8                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	4                               ## Abbrev [4] 0x57:0xb DW_TAG_typedef
	.long	98                              ## DW_AT_type
	.long	293                             ## DW_AT_name
	.byte	2                               ## DW_AT_decl_file
	.byte	20                              ## DW_AT_decl_line
	.byte	5                               ## Abbrev [5] 0x62:0xc DW_TAG_array_type
                                        ## DW_AT_GNU_vector
	.long	110                             ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x67:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	2                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	3                               ## Abbrev [3] 0x6e:0x7 DW_TAG_base_type
	.long	301                             ## DW_AT_name
	.byte	5                               ## DW_AT_encoding
	.byte	8                               ## DW_AT_byte_size
	.byte	7                               ## Abbrev [7] 0x75:0x7 DW_TAG_base_type
	.long	311                             ## DW_AT_name
	.byte	8                               ## DW_AT_byte_size
	.byte	7                               ## DW_AT_encoding
	.byte	4                               ## Abbrev [4] 0x7c:0xb DW_TAG_typedef
	.long	135                             ## DW_AT_type
	.long	331                             ## DW_AT_name
	.byte	2                               ## DW_AT_decl_file
	.byte	34                              ## DW_AT_decl_line
	.byte	5                               ## Abbrev [5] 0x87:0xc DW_TAG_array_type
                                        ## DW_AT_GNU_vector
	.long	80                              ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x8c:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	16                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	8                               ## Abbrev [8] 0x93:0x526 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset4
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	339                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	11                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	9                               ## Abbrev [9] 0xa8:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\254\177"
	.long	397                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	12                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0xb7:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\250\177"
	.long	401                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	12                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0xc6:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\244\177"
	.long	405                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	12                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0xd5:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\240\177"
	.long	409                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	12                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0xe4:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\234\177"
	.long	413                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	14                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0xf3:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\230\177"
	.long	426                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	15                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x102:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\214\177"
	.long	452                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	32                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x111:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\210\177"
	.long	461                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	33                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x120:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\204\177"
	.long	472                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	34                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x12f:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	481                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	35                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x13e:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\374~"
	.long	491                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	36                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x14d:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\370~"
	.long	499                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	38                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x15c:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\364~"
	.long	514                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	39                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x16b:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\363~"
	.long	528                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	51                              ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x17a:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\354~"
	.long	542                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	52                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x189:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\350~"
	.long	555                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	54                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x198:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\344~"
	.long	569                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	55                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x1a7:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	590                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	56                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x1b6:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\247~"
	.long	683                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	108                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x1c5:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\246~"
	.long	687                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	109                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x1d4:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\245~"
	.long	692                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	110                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x1e3:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\244~"
	.long	697                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	111                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x1f2:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\243~"
	.long	703                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	112                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x201:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\242~"
	.long	710                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	113                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x210:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\241~"
	.long	717                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	114                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x21f:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\234~"
	.long	721                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	116                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x22e:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\230~"
	.long	726                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	116                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x23d:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\224~"
	.long	731                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	116                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x24c:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\220~"
	.long	736                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	116                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x25b:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\217~"
	.long	741                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	120                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	10                              ## Abbrev [10] 0x26a:0x2c DW_TAG_lexical_block
	.quad	Ltmp3                           ## DW_AT_low_pc
.set Lset5, Ltmp4-Ltmp3                 ## DW_AT_high_pc
	.long	Lset5
	.byte	9                               ## Abbrev [9] 0x277:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	439                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
	.long	1935                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x286:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\220\177"
	.long	450                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	23                              ## DW_AT_decl_line
	.long	50                              ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x296:0x85 DW_TAG_lexical_block
	.quad	Ltmp7                           ## DW_AT_low_pc
.set Lset6, Ltmp21-Ltmp7                ## DW_AT_high_pc
	.long	Lset6
	.byte	9                               ## Abbrev [9] 0x2a3:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\334~"
	.long	609                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	59                              ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	10                              ## Abbrev [10] 0x2b2:0x68 DW_TAG_lexical_block
	.quad	Ltmp8                           ## DW_AT_low_pc
.set Lset7, Ltmp20-Ltmp8                ## DW_AT_high_pc
	.long	Lset7
	.byte	9                               ## Abbrev [9] 0x2bf:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\330~"
	.long	617                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	61                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x2ce:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\324~"
	.long	619                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	61                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x2dd:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\320~"
	.long	625                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	61                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x2ec:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\314~"
	.long	627                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	61                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x2fb:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\310~"
	.long	629                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	63                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x30a:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\304~"
	.long	640                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	66                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x31b:0x77 DW_TAG_lexical_block
	.quad	Ltmp24                          ## DW_AT_low_pc
.set Lset8, Ltmp25-Ltmp24               ## DW_AT_high_pc
	.long	Lset8
	.byte	9                               ## Abbrev [9] 0x328:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\300~"
	.long	646                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	90                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x337:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\274~"
	.long	649                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	90                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x346:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\270~"
	.long	652                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	90                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x355:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\264~"
	.long	655                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	90                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x364:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\260~"
	.long	658                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	92                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x373:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\254~"
	.long	667                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	93                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x382:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\250~"
	.long	675                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	94                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x392:0xdf DW_TAG_lexical_block
	.quad	Ltmp32                          ## DW_AT_low_pc
.set Lset9, Ltmp44-Ltmp32               ## DW_AT_high_pc
	.long	Lset9
	.byte	9                               ## Abbrev [9] 0x39f:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\210~"
	.long	609                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	135                             ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	10                              ## Abbrev [10] 0x3ae:0xc2 DW_TAG_lexical_block
	.quad	Ltmp33                          ## DW_AT_low_pc
.set Lset10, Ltmp43-Ltmp33              ## DW_AT_high_pc
	.long	Lset10
	.byte	9                               ## Abbrev [9] 0x3bb:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\204~"
	.long	746                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	137                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x3ca:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\200~"
	.long	749                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	137                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x3d9:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\374}"
	.long	752                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	137                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x3e8:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\370}"
	.long	755                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	137                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x3f7:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\364}"
	.long	758                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	139                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x406:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\360}"
	.long	769                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	142                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x415:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\354}"
	.long	781                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	143                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x424:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\350}"
	.long	791                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	144                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x433:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\344}"
	.long	802                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	145                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x442:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\340}"
	.long	807                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	146                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x451:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\330}"
	.long	812                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	148                             ## DW_AT_decl_line
	.long	62                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x460:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\320}"
	.long	823                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	149                             ## DW_AT_decl_line
	.long	1961                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x471:0x147 DW_TAG_lexical_block
	.quad	Ltmp47                          ## DW_AT_low_pc
.set Lset11, Ltmp58-Ltmp47              ## DW_AT_high_pc
	.long	Lset11
	.byte	9                               ## Abbrev [9] 0x47e:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\314}"
	.long	832                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	170                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x48d:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\310}"
	.long	848                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	170                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x49c:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\304}"
	.long	851                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	170                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x4ab:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\300}"
	.long	854                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	170                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	10                              ## Abbrev [10] 0x4ba:0xfd DW_TAG_lexical_block
	.quad	Ltmp48                          ## DW_AT_low_pc
.set Lset12, Ltmp57-Ltmp48              ## DW_AT_high_pc
	.long	Lset12
	.byte	9                               ## Abbrev [9] 0x4c7:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\274}"
	.long	857                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	173                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	10                              ## Abbrev [10] 0x4d6:0xe0 DW_TAG_lexical_block
	.quad	Ltmp51                          ## DW_AT_low_pc
.set Lset13, Ltmp56-Ltmp51              ## DW_AT_high_pc
	.long	Lset13
	.byte	9                               ## Abbrev [9] 0x4e3:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\270}"
	.long	861                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	174                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x4f2:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\264}"
	.long	864                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	174                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x501:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\260}"
	.long	870                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	174                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x510:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\254}"
	.long	876                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	174                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x51f:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\250}"
	.long	882                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	177                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x52e:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\244}"
	.long	891                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	180                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x53d:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\240}"
	.long	802                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	181                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x54c:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\234}"
	.long	807                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	182                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x55b:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\230}"
	.long	901                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	183                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x56a:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\227}"
	.long	909                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	185                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x579:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\226}"
	.long	917                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	186                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x588:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\225}"
	.long	925                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	187                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x597:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\224}"
	.long	933                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	188                             ## DW_AT_decl_line
	.long	1954                            ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x5a6:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\210}"
	.long	941                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	190                             ## DW_AT_decl_line
	.long	1961                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	11                              ## Abbrev [11] 0x5b9:0x75 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ## DW_AT_low_pc
.set Lset14, Lfunc_end1-Lfunc_begin1    ## DW_AT_high_pc
	.long	Lset14
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	359                             ## DW_AT_name
	.byte	4                               ## DW_AT_decl_file
	.short	263                             ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	1928                            ## DW_AT_type
	.byte	12                              ## Abbrev [12] 0x5d3:0xf DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	124
	.long	949                             ## DW_AT_name
	.byte	4                               ## DW_AT_decl_file
	.short	263                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	12                              ## Abbrev [12] 0x5e2:0xf DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	112
	.long	956                             ## DW_AT_name
	.byte	4                               ## DW_AT_decl_file
	.short	263                             ## DW_AT_decl_line
	.long	50                              ## DW_AT_type
	.byte	13                              ## Abbrev [13] 0x5f1:0xf DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	108
	.long	962                             ## DW_AT_name
	.byte	4                               ## DW_AT_decl_file
	.short	265                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	13                              ## Abbrev [13] 0x600:0xf DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	104
	.long	968                             ## DW_AT_name
	.byte	4                               ## DW_AT_decl_file
	.short	265                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	13                              ## Abbrev [13] 0x60f:0xf DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	100
	.long	974                             ## DW_AT_name
	.byte	4                               ## DW_AT_decl_file
	.short	265                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	13                              ## Abbrev [13] 0x61e:0xf DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	96
	.long	980                             ## DW_AT_name
	.byte	4                               ## DW_AT_decl_file
	.short	265                             ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	8                               ## Abbrev [8] 0x62e:0x112 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ## DW_AT_low_pc
.set Lset15, Lfunc_end2-Lfunc_begin2    ## DW_AT_high_pc
	.long	Lset15
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	375                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	219                             ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	14                              ## Abbrev [14] 0x643:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	986                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	219                             ## DW_AT_decl_line
	.long	1971                            ## DW_AT_type
	.byte	14                              ## Abbrev [14] 0x651:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	112
	.long	1124                            ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	219                             ## DW_AT_decl_line
	.long	1961                            ## DW_AT_type
	.byte	10                              ## Abbrev [10] 0x65f:0x1c DW_TAG_lexical_block
	.quad	Ltmp69                          ## DW_AT_low_pc
.set Lset16, Ltmp73-Ltmp69              ## DW_AT_high_pc
	.long	Lset16
	.byte	9                               ## Abbrev [9] 0x66c:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	108
	.long	1129                            ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	223                             ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x67b:0x1c DW_TAG_lexical_block
	.quad	Ltmp76                          ## DW_AT_low_pc
.set Lset17, Ltmp80-Ltmp76              ## DW_AT_high_pc
	.long	Lset17
	.byte	9                               ## Abbrev [9] 0x688:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	104
	.long	1129                            ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	225                             ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x697:0x1c DW_TAG_lexical_block
	.quad	Ltmp83                          ## DW_AT_low_pc
.set Lset18, Ltmp87-Ltmp83              ## DW_AT_high_pc
	.long	Lset18
	.byte	9                               ## Abbrev [9] 0x6a4:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	100
	.long	1129                            ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	227                             ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x6b3:0x1c DW_TAG_lexical_block
	.quad	Ltmp90                          ## DW_AT_low_pc
.set Lset19, Ltmp94-Ltmp90              ## DW_AT_high_pc
	.long	Lset19
	.byte	9                               ## Abbrev [9] 0x6c0:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	96
	.long	1129                            ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	229                             ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x6cf:0x1c DW_TAG_lexical_block
	.quad	Ltmp97                          ## DW_AT_low_pc
.set Lset20, Ltmp101-Ltmp97             ## DW_AT_high_pc
	.long	Lset20
	.byte	9                               ## Abbrev [9] 0x6dc:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	92
	.long	1129                            ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	231                             ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x6eb:0x1c DW_TAG_lexical_block
	.quad	Ltmp104                         ## DW_AT_low_pc
.set Lset21, Ltmp108-Ltmp104            ## DW_AT_high_pc
	.long	Lset21
	.byte	9                               ## Abbrev [9] 0x6f8:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	88
	.long	1129                            ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	233                             ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x707:0x1c DW_TAG_lexical_block
	.quad	Ltmp111                         ## DW_AT_low_pc
.set Lset22, Ltmp115-Ltmp111            ## DW_AT_high_pc
	.long	Lset22
	.byte	9                               ## Abbrev [9] 0x714:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	84
	.long	1129                            ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	235                             ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x723:0x1c DW_TAG_lexical_block
	.quad	Ltmp118                         ## DW_AT_low_pc
.set Lset23, Ltmp122-Ltmp118            ## DW_AT_high_pc
	.long	Lset23
	.byte	9                               ## Abbrev [9] 0x730:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	80
	.long	1129                            ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	237                             ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	15                              ## Abbrev [15] 0x740:0x48 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ## DW_AT_low_pc
.set Lset24, Lfunc_end3-Lfunc_begin3    ## DW_AT_high_pc
	.long	Lset24
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	388                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	245                             ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	1928                            ## DW_AT_type
                                        ## DW_AT_external
	.byte	16                              ## Abbrev [16] 0x759:0x11 DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	119
	.ascii	"\200\001"
	.long	1131                            ## DW_AT_name
	.ascii	"\200\001"                      ## DW_AT_alignment
	.byte	3                               ## DW_AT_decl_file
	.byte	252                             ## DW_AT_decl_line
	.long	1981                            ## DW_AT_type
	.byte	10                              ## Abbrev [10] 0x76a:0x1d DW_TAG_lexical_block
	.quad	Ltmp127                         ## DW_AT_low_pc
.set Lset25, Ltmp132-Ltmp127            ## DW_AT_high_pc
	.long	Lset25
	.byte	9                               ## Abbrev [9] 0x777:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	119
	.asciz	"\374"
	.long	1129                            ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	253                             ## DW_AT_decl_line
	.long	1928                            ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	3                               ## Abbrev [3] 0x788:0x7 DW_TAG_base_type
	.long	393                             ## DW_AT_name
	.byte	5                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	17                              ## Abbrev [17] 0x78f:0xc DW_TAG_array_type
	.long	1947                            ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x794:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	49                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	3                               ## Abbrev [3] 0x79b:0x7 DW_TAG_base_type
	.long	445                             ## DW_AT_name
	.byte	6                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	3                               ## Abbrev [3] 0x7a2:0x7 DW_TAG_base_type
	.long	536                             ## DW_AT_name
	.byte	2                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	2                               ## Abbrev [2] 0x7a9:0x5 DW_TAG_pointer_type
	.long	1966                            ## DW_AT_type
	.byte	18                              ## Abbrev [18] 0x7ae:0x5 DW_TAG_const_type
	.long	1947                            ## DW_AT_type
	.byte	2                               ## Abbrev [2] 0x7b3:0x5 DW_TAG_pointer_type
	.long	1976                            ## DW_AT_type
	.byte	18                              ## Abbrev [18] 0x7b8:0x5 DW_TAG_const_type
	.long	1981                            ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x7bd:0xb DW_TAG_typedef
	.long	1992                            ## DW_AT_type
	.long	991                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	217                             ## DW_AT_decl_line
	.byte	19                              ## Abbrev [19] 0x7c8:0x72 DW_TAG_union_type
	.byte	16                              ## DW_AT_byte_size
	.byte	3                               ## DW_AT_decl_file
	.byte	207                             ## DW_AT_decl_line
	.byte	20                              ## Abbrev [20] 0x7cc:0xd DW_TAG_member
	.long	999                             ## DW_AT_name
	.long	87                              ## DW_AT_type
	.byte	3                               ## DW_AT_decl_file
	.byte	208                             ## DW_AT_decl_line
	.byte	16                              ## DW_AT_alignment
	.byte	0                               ## DW_AT_data_member_location
	.byte	21                              ## Abbrev [21] 0x7d9:0xc DW_TAG_member
	.long	1003                            ## DW_AT_name
	.long	2106                            ## DW_AT_type
	.byte	3                               ## DW_AT_decl_file
	.byte	209                             ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	21                              ## Abbrev [21] 0x7e5:0xc DW_TAG_member
	.long	1006                            ## DW_AT_name
	.long	2118                            ## DW_AT_type
	.byte	3                               ## DW_AT_decl_file
	.byte	210                             ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	21                              ## Abbrev [21] 0x7f1:0xc DW_TAG_member
	.long	1028                            ## DW_AT_name
	.long	2148                            ## DW_AT_type
	.byte	3                               ## DW_AT_decl_file
	.byte	211                             ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	21                              ## Abbrev [21] 0x7fd:0xc DW_TAG_member
	.long	1056                            ## DW_AT_name
	.long	2178                            ## DW_AT_type
	.byte	3                               ## DW_AT_decl_file
	.byte	212                             ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	21                              ## Abbrev [21] 0x809:0xc DW_TAG_member
	.long	1074                            ## DW_AT_name
	.long	2208                            ## DW_AT_type
	.byte	3                               ## DW_AT_decl_file
	.byte	213                             ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	21                              ## Abbrev [21] 0x815:0xc DW_TAG_member
	.long	1087                            ## DW_AT_name
	.long	2231                            ## DW_AT_type
	.byte	3                               ## DW_AT_decl_file
	.byte	214                             ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	21                              ## Abbrev [21] 0x821:0xc DW_TAG_member
	.long	1099                            ## DW_AT_name
	.long	2254                            ## DW_AT_type
	.byte	3                               ## DW_AT_decl_file
	.byte	215                             ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	21                              ## Abbrev [21] 0x82d:0xc DW_TAG_member
	.long	1112                            ## DW_AT_name
	.long	2277                            ## DW_AT_type
	.byte	3                               ## DW_AT_decl_file
	.byte	216                             ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	0                               ## End Of Children Mark
	.byte	17                              ## Abbrev [17] 0x83a:0xc DW_TAG_array_type
	.long	69                              ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x83f:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	16                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	17                              ## Abbrev [17] 0x846:0xc DW_TAG_array_type
	.long	2130                            ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x84b:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	16                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x852:0xb DW_TAG_typedef
	.long	2141                            ## DW_AT_type
	.long	1009                            ## DW_AT_name
	.byte	5                               ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.byte	3                               ## Abbrev [3] 0x85d:0x7 DW_TAG_base_type
	.long	1016                            ## DW_AT_name
	.byte	6                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	17                              ## Abbrev [17] 0x864:0xc DW_TAG_array_type
	.long	2160                            ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x869:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	8                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x870:0xb DW_TAG_typedef
	.long	2171                            ## DW_AT_type
	.long	1032                            ## DW_AT_name
	.byte	6                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	3                               ## Abbrev [3] 0x87b:0x7 DW_TAG_base_type
	.long	1041                            ## DW_AT_name
	.byte	7                               ## DW_AT_encoding
	.byte	2                               ## DW_AT_byte_size
	.byte	17                              ## Abbrev [17] 0x882:0xc DW_TAG_array_type
	.long	2190                            ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x887:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	8                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x88e:0xb DW_TAG_typedef
	.long	2201                            ## DW_AT_type
	.long	1060                            ## DW_AT_name
	.byte	7                               ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.byte	3                               ## Abbrev [3] 0x899:0x7 DW_TAG_base_type
	.long	1068                            ## DW_AT_name
	.byte	5                               ## DW_AT_encoding
	.byte	2                               ## DW_AT_byte_size
	.byte	17                              ## Abbrev [17] 0x8a0:0xc DW_TAG_array_type
	.long	2220                            ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x8a5:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	4                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x8ac:0xb DW_TAG_typedef
	.long	55                              ## DW_AT_type
	.long	1078                            ## DW_AT_name
	.byte	8                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	17                              ## Abbrev [17] 0x8b7:0xc DW_TAG_array_type
	.long	2243                            ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x8bc:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	4                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x8c3:0xb DW_TAG_typedef
	.long	1928                            ## DW_AT_type
	.long	1091                            ## DW_AT_name
	.byte	9                               ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.byte	17                              ## Abbrev [17] 0x8ce:0xc DW_TAG_array_type
	.long	2266                            ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x8d3:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	2                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x8da:0xb DW_TAG_typedef
	.long	62                              ## DW_AT_type
	.long	1103                            ## DW_AT_name
	.byte	10                              ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	17                              ## Abbrev [17] 0x8e5:0xc DW_TAG_array_type
	.long	2289                            ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x8ea:0x6 DW_TAG_subrange_type
	.long	117                             ## DW_AT_type
	.byte	2                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x8f1:0xb DW_TAG_typedef
	.long	110                             ## DW_AT_type
	.long	1116                            ## DW_AT_name
	.byte	11                              ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.byte	0                               ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 14.0.0 (clang-1400.0.29.202)" ## string offset=0
	.asciz	"part1_cpuid.c"                 ## string offset=49
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ## string offset=63
	.asciz	"MacOSX.sdk"                    ## string offset=115
	.asciz	"/Users/user/Fuckin_Everythin/4056_1/Parallel_Programing/CAs/untitled folder/assignment-1-parallel-programming/CA" ## string offset=126
	.asciz	"unsigned int"                  ## string offset=239
	.asciz	"unsigned long long"            ## string offset=252
	.asciz	"uint8_t"                       ## string offset=271
	.asciz	"unsigned char"                 ## string offset=279
	.asciz	"__m128i"                       ## string offset=293
	.asciz	"long long"                     ## string offset=301
	.asciz	"__ARRAY_SIZE_TYPE__"           ## string offset=311
	.asciz	"__v16qu"                       ## string offset=331
	.asciz	"extract_cpu_details"           ## string offset=339
	.asciz	"__get_cpuid_max"               ## string offset=359
	.asciz	"print_128bit"                  ## string offset=375
	.asciz	"main"                          ## string offset=388
	.asciz	"int"                           ## string offset=393
	.asciz	"eax"                           ## string offset=397
	.asciz	"ebx"                           ## string offset=401
	.asciz	"ecx"                           ## string offset=405
	.asciz	"edx"                           ## string offset=409
	.asciz	"max_std_leaf"                  ## string offset=413
	.asciz	"max_ext_leaf"                  ## string offset=426
	.asciz	"brand"                         ## string offset=439
	.asciz	"char"                          ## string offset=445
	.asciz	"b"                             ## string offset=450
	.asciz	"stepping"                      ## string offset=452
	.asciz	"base_model"                    ## string offset=461
	.asciz	"base_fam"                      ## string offset=472
	.asciz	"ext_model"                     ## string offset=481
	.asciz	"ext_fam"                       ## string offset=491
	.asciz	"display_family"                ## string offset=499
	.asciz	"display_model"                 ## string offset=514
	.asciz	"htt_bit"                       ## string offset=528
	.asciz	"_Bool"                         ## string offset=536
	.asciz	"max_apic_ids"                  ## string offset=542
	.asciz	"smt_MaskWidth"                 ## string offset=555
	.asciz	"threads_per_core_max"          ## string offset=569
	.asciz	"total_logical_cpus"            ## string offset=590
	.asciz	"subleaf"                       ## string offset=609
	.asciz	"a"                             ## string offset=617
	.asciz	"b_reg"                         ## string offset=619
	.asciz	"c"                             ## string offset=625
	.asciz	"d"                             ## string offset=627
	.asciz	"level_type"                    ## string offset=629
	.asciz	"count"                         ## string offset=640
	.asciz	"fa"                            ## string offset=646
	.asciz	"fb"                            ## string offset=649
	.asciz	"fc"                            ## string offset=652
	.asciz	"fd"                            ## string offset=655
	.asciz	"base_mhz"                      ## string offset=658
	.asciz	"max_mhz"                       ## string offset=667
	.asciz	"bus_mhz"                       ## string offset=675
	.asciz	"sse"                           ## string offset=683
	.asciz	"sse2"                          ## string offset=687
	.asciz	"sse3"                          ## string offset=692
	.asciz	"ssse3"                         ## string offset=697
	.asciz	"sse4_1"                        ## string offset=703
	.asciz	"sse4_2"                        ## string offset=710
	.asciz	"avx"                           ## string offset=717
	.asciz	"eax7"                          ## string offset=721
	.asciz	"ebx7"                          ## string offset=726
	.asciz	"ecx7"                          ## string offset=731
	.asciz	"edx7"                          ## string offset=736
	.asciz	"avx2"                          ## string offset=741
	.asciz	"ca"                            ## string offset=746
	.asciz	"cb"                            ## string offset=749
	.asciz	"cc"                            ## string offset=752
	.asciz	"cd"                            ## string offset=755
	.asciz	"cache_type"                    ## string offset=758
	.asciz	"cache_level"                   ## string offset=769
	.asciz	"line_size"                     ## string offset=781
	.asciz	"partitions"                    ## string offset=791
	.asciz	"ways"                          ## string offset=802
	.asciz	"sets"                          ## string offset=807
	.asciz	"size_bytes"                    ## string offset=812
	.asciz	"type_str"                      ## string offset=823
	.asciz	"max_tlb_subleaf"               ## string offset=832
	.asciz	"tb"                            ## string offset=848
	.asciz	"tc"                            ## string offset=851
	.asciz	"td"                            ## string offset=854
	.asciz	"sub"                           ## string offset=857
	.asciz	"ta"                            ## string offset=861
	.asciz	"t_ebx"                         ## string offset=864
	.asciz	"t_ecx"                         ## string offset=870
	.asciz	"t_edx"                         ## string offset=876
	.asciz	"tlb_type"                      ## string offset=882
	.asciz	"tlb_level"                     ## string offset=891
	.asciz	"entries"                       ## string offset=901
	.asciz	"page_4k"                       ## string offset=909
	.asciz	"page_2m"                       ## string offset=917
	.asciz	"page_4m"                       ## string offset=925
	.asciz	"page_1g"                       ## string offset=933
	.asciz	"tlb_str"                       ## string offset=941
	.asciz	"__leaf"                        ## string offset=949
	.asciz	"__sig"                         ## string offset=956
	.asciz	"__eax"                         ## string offset=962
	.asciz	"__ebx"                         ## string offset=968
	.asciz	"__ecx"                         ## string offset=974
	.asciz	"__edx"                         ## string offset=980
	.asciz	"data"                          ## string offset=986
	.asciz	"Data128"                       ## string offset=991
	.asciz	"xmm"                           ## string offset=999
	.asciz	"u8"                            ## string offset=1003
	.asciz	"i8"                            ## string offset=1006
	.asciz	"int8_t"                        ## string offset=1009
	.asciz	"signed char"                   ## string offset=1016
	.asciz	"u16"                           ## string offset=1028
	.asciz	"uint16_t"                      ## string offset=1032
	.asciz	"unsigned short"                ## string offset=1041
	.asciz	"i16"                           ## string offset=1056
	.asciz	"int16_t"                       ## string offset=1060
	.asciz	"short"                         ## string offset=1068
	.asciz	"u32"                           ## string offset=1074
	.asciz	"uint32_t"                      ## string offset=1078
	.asciz	"i32"                           ## string offset=1087
	.asciz	"int32_t"                       ## string offset=1091
	.asciz	"u64"                           ## string offset=1099
	.asciz	"uint64_t"                      ## string offset=1103
	.asciz	"i64"                           ## string offset=1112
	.asciz	"int64_t"                       ## string offset=1116
	.asciz	"type"                          ## string offset=1124
	.asciz	"i"                             ## string offset=1129
	.asciz	"sample"                        ## string offset=1131
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	4                               ## Header Bucket Count
	.long	4                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	0                               ## Bucket 0
	.long	-1                              ## Bucket 1
	.long	2                               ## Bucket 2
	.long	3                               ## Bucket 3
	.long	-1101896148                     ## Hash in Bucket 0
	.long	-299187780                      ## Hash in Bucket 0
	.long	2090499946                      ## Hash in Bucket 2
	.long	-254189429                      ## Hash in Bucket 3
.set Lset26, LNames2-Lnames_begin       ## Offset in Bucket 0
	.long	Lset26
.set Lset27, LNames3-Lnames_begin       ## Offset in Bucket 0
	.long	Lset27
.set Lset28, LNames0-Lnames_begin       ## Offset in Bucket 2
	.long	Lset28
.set Lset29, LNames1-Lnames_begin       ## Offset in Bucket 3
	.long	Lset29
LNames2:
	.long	339                             ## extract_cpu_details
	.long	1                               ## Num DIEs
	.long	147
	.long	0
LNames3:
	.long	359                             ## __get_cpuid_max
	.long	1                               ## Num DIEs
	.long	1465
	.long	0
LNames0:
	.long	388                             ## main
	.long	1                               ## Num DIEs
	.long	1856
	.long	0
LNames1:
	.long	375                             ## print_128bit
	.long	1                               ## Num DIEs
	.long	1582
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	11                              ## Header Bucket Count
	.long	22                              ## Header Hash Count
	.long	20                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	3                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.short	3                               ## DW_ATOM_die_tag
	.short	5                               ## DW_FORM_data2
	.short	4                               ## DW_ATOM_type_flags
	.short	11                              ## DW_FORM_data1
	.long	0                               ## Bucket 0
	.long	2                               ## Bucket 1
	.long	5                               ## Bucket 2
	.long	-1                              ## Bucket 3
	.long	6                               ## Bucket 4
	.long	-1                              ## Bucket 5
	.long	10                              ## Bucket 6
	.long	14                              ## Bucket 7
	.long	15                              ## Bucket 8
	.long	18                              ## Bucket 9
	.long	21                              ## Bucket 10
	.long	249311216                       ## Hash in Bucket 0
	.long	2090147939                      ## Hash in Bucket 0
	.long	789719536                       ## Hash in Bucket 1
	.long	857652610                       ## Hash in Bucket 1
	.long	1625638906                      ## Hash in Bucket 1
	.long	-594775205                      ## Hash in Bucket 2
	.long	290644127                       ## Hash in Bucket 4
	.long	290711645                       ## Hash in Bucket 4
	.long	290821634                       ## Hash in Bucket 4
	.long	-104093792                      ## Hash in Bucket 4
	.long	193495088                       ## Hash in Bucket 6
	.long	-1622611670                     ## Hash in Bucket 6
	.long	-1622544152                     ## Hash in Bucket 6
	.long	-1622434163                     ## Hash in Bucket 6
	.long	2047239828                      ## Hash in Bucket 7
	.long	274395349                       ## Hash in Bucket 8
	.long	2057919366                      ## Hash in Bucket 8
	.long	-1304652851                     ## Hash in Bucket 8
	.long	80989467                        ## Hash in Bucket 9
	.long	691577533                       ## Hash in Bucket 9
	.long	-1921963995                     ## Hash in Bucket 9
	.long	878862258                       ## Hash in Bucket 10
.set Lset30, Ltypes7-Ltypes_begin       ## Offset in Bucket 0
	.long	Lset30
.set Lset31, Ltypes21-Ltypes_begin      ## Offset in Bucket 0
	.long	Lset31
.set Lset32, Ltypes8-Ltypes_begin       ## Offset in Bucket 1
	.long	Lset32
.set Lset33, Ltypes20-Ltypes_begin      ## Offset in Bucket 1
	.long	Lset33
.set Lset34, Ltypes13-Ltypes_begin      ## Offset in Bucket 1
	.long	Lset34
.set Lset35, Ltypes14-Ltypes_begin      ## Offset in Bucket 2
	.long	Lset35
.set Lset36, Ltypes18-Ltypes_begin      ## Offset in Bucket 4
	.long	Lset36
.set Lset37, Ltypes17-Ltypes_begin      ## Offset in Bucket 4
	.long	Lset37
.set Lset38, Ltypes4-Ltypes_begin       ## Offset in Bucket 4
	.long	Lset38
.set Lset39, Ltypes19-Ltypes_begin      ## Offset in Bucket 4
	.long	Lset39
.set Lset40, Ltypes10-Ltypes_begin      ## Offset in Bucket 6
	.long	Lset40
.set Lset41, Ltypes3-Ltypes_begin       ## Offset in Bucket 6
	.long	Lset41
.set Lset42, Ltypes2-Ltypes_begin       ## Offset in Bucket 6
	.long	Lset42
.set Lset43, Ltypes6-Ltypes_begin       ## Offset in Bucket 6
	.long	Lset43
.set Lset44, Ltypes11-Ltypes_begin      ## Offset in Bucket 7
	.long	Lset44
.set Lset45, Ltypes12-Ltypes_begin      ## Offset in Bucket 8
	.long	Lset45
.set Lset46, Ltypes1-Ltypes_begin       ## Offset in Bucket 8
	.long	Lset46
.set Lset47, Ltypes5-Ltypes_begin       ## Offset in Bucket 8
	.long	Lset47
.set Lset48, Ltypes15-Ltypes_begin      ## Offset in Bucket 9
	.long	Lset48
.set Lset49, Ltypes16-Ltypes_begin      ## Offset in Bucket 9
	.long	Lset49
.set Lset50, Ltypes0-Ltypes_begin       ## Offset in Bucket 9
	.long	Lset50
.set Lset51, Ltypes9-Ltypes_begin       ## Offset in Bucket 10
	.long	Lset51
Ltypes7:
	.long	536                             ## _Bool
	.long	1                               ## Num DIEs
	.long	1954
	.short	36
	.byte	0
	.long	0
Ltypes21:
	.long	445                             ## char
	.long	1                               ## Num DIEs
	.long	1947
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	271                             ## uint8_t
	.long	1                               ## Num DIEs
	.long	69
	.short	22
	.byte	0
	.long	0
Ltypes20:
	.long	252                             ## unsigned long long
	.long	1                               ## Num DIEs
	.long	62
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	991                             ## Data128
	.long	1                               ## Num DIEs
	.long	1981
	.short	22
	.byte	0
	.long	0
Ltypes14:
	.long	311                             ## __ARRAY_SIZE_TYPE__
	.long	1                               ## Num DIEs
	.long	117
	.short	36
	.byte	0
	.long	0
Ltypes18:
	.long	1032                            ## uint16_t
	.long	1                               ## Num DIEs
	.long	2160
	.short	22
	.byte	0
	.long	0
Ltypes17:
	.long	1078                            ## uint32_t
	.long	1                               ## Num DIEs
	.long	2220
	.short	22
	.byte	0
	.long	0
Ltypes4:
	.long	1103                            ## uint64_t
	.long	1                               ## Num DIEs
	.long	2266
	.short	22
	.byte	0
	.long	0
Ltypes19:
	.long	279                             ## unsigned char
	.long	1                               ## Num DIEs
	.long	80
	.short	36
	.byte	0
	.long	0
Ltypes10:
	.long	393                             ## int
	.long	1                               ## Num DIEs
	.long	1928
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	1060                            ## int16_t
	.long	1                               ## Num DIEs
	.long	2190
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	1091                            ## int32_t
	.long	1                               ## Num DIEs
	.long	2243
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	1116                            ## int64_t
	.long	1                               ## Num DIEs
	.long	2289
	.short	22
	.byte	0
	.long	0
Ltypes11:
	.long	293                             ## __m128i
	.long	1                               ## Num DIEs
	.long	87
	.short	22
	.byte	0
	.long	0
Ltypes12:
	.long	1068                            ## short
	.long	1                               ## Num DIEs
	.long	2201
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	331                             ## __v16qu
	.long	1                               ## Num DIEs
	.long	124
	.short	22
	.byte	0
	.long	0
Ltypes5:
	.long	239                             ## unsigned int
	.long	1                               ## Num DIEs
	.long	55
	.short	36
	.byte	0
	.long	0
Ltypes15:
	.long	1009                            ## int8_t
	.long	1                               ## Num DIEs
	.long	2130
	.short	22
	.byte	0
	.long	0
Ltypes16:
	.long	1016                            ## signed char
	.long	1                               ## Num DIEs
	.long	2141
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	301                             ## long long
	.long	1                               ## Num DIEs
	.long	110
	.short	36
	.byte	0
	.long	0
Ltypes9:
	.long	1041                            ## unsigned short
	.long	1                               ## Num DIEs
	.long	2171
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
