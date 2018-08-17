	.text
	.file	"input.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$10, %edi
	callq	malloc
	movq	%rax, -24(%rbp)
	movq	%rax, %rdi
	callq	foo
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	foo,@function
foo:                                    # @foo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movb	$0, -21(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	.align	16, 0x90
.LBB1_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %al
	movb	%al, -21(%rbp)
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	$97, %ecx
	je	.LBB1_1
# BB#2:                                 # %do.end
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	foo, .Lfunc_end1-foo
	.cfi_endproc


	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
