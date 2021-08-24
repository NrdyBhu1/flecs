	.file	"flecs.c"
	.text
	.type	ecs_vasprintf, @function
ecs_vasprintf:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -44(%rbp)
	movq	$0, -40(%rbp)
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	vsnprintf@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L2
	movl	$0, %eax
	jmp	.L5
.L2:
	movq	16+ecs_os_api(%rip), %rax
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edi
	call	*%rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vsprintf@PLT
	movq	-40(%rbp), %rax
.L5:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ecs_vasprintf, .-ecs_vasprintf
	.section	.rodata
.LC0:
	.string	"\033[0;49m"
.LC1:
	.string	"\033[0;36m"
.LC2:
	.string	"\033[0;32m"
.LC3:
	.string	"]"
.LC4:
	.string	"green]"
.LC5:
	.string	"red]"
.LC6:
	.string	"\033[0;31m"
.LC7:
	.string	"blue]"
.LC8:
	.string	"\033[0;34m"
.LC9:
	.string	"magenta]"
.LC10:
	.string	"\033[0;35m"
.LC11:
	.string	"cyan]"
.LC12:
	.string	"yellow]"
.LC13:
	.string	"\033[0;33m"
.LC14:
	.string	"grey]"
.LC15:
	.string	"\033[0;37m"
.LC16:
	.string	"white]"
.LC17:
	.string	"bold]"
.LC18:
	.string	"\033[1;49m"
.LC19:
	.string	"normal]"
.LC20:
	.string	"reset]"
	.text
	.type	ecs_colorize, @function
ecs_colorize:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1152, %rsp
	movq	%rdi, -1144(%rbp)
	movl	%esi, %eax
	movb	%al, -1148(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-1104(%rbp), %rdx
	movl	$0, %eax
	movl	$136, %ecx
	movq	%rdx, %rdi
	rep stosq
	movb	$0, -1120(%rbp)
	movb	$0, -1119(%rbp)
	movb	$0, -1118(%rbp)
	movb	$0, -1117(%rbp)
	movb	$0, -1116(%rbp)
	movb	$1, -1115(%rbp)
	movb	$0, -1114(%rbp)
	movq	-1144(%rbp), %rax
	movq	%rax, -1112(%rbp)
	jmp	.L8
.L46:
	movb	$0, -1114(%rbp)
	movzbl	-1116(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L9
	cmpb	$0, -1119(%rbp)
	je	.L10
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-1121(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L10
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-1121(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L10
	cmpb	$46, -1121(%rbp)
	je	.L10
	cmpb	$37, -1121(%rbp)
	je	.L10
	cmpb	$0, -1148(%rbp)
	je	.L11
	leaq	-1104(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
.L11:
	movb	$0, -1119(%rbp)
.L10:
	cmpb	$0, -1118(%rbp)
	je	.L12
	movzbl	-1118(%rbp), %eax
	cmpb	-1121(%rbp), %al
	jne	.L12
	cmpb	$92, -1120(%rbp)
	je	.L12
	movb	$0, -1118(%rbp)
	jmp	.L13
.L12:
	cmpb	$39, -1121(%rbp)
	je	.L14
	cmpb	$34, -1121(%rbp)
	jne	.L13
.L14:
	cmpb	$0, -1118(%rbp)
	jne	.L13
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-1120(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L13
	cmpb	$92, -1120(%rbp)
	je	.L13
	cmpb	$0, -1148(%rbp)
	je	.L15
	leaq	-1104(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
.L15:
	movzbl	-1121(%rbp), %eax
	movb	%al, -1118(%rbp)
.L13:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-1121(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L16
	cmpb	$37, -1121(%rbp)
	jne	.L17
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-1120(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L16
.L17:
	cmpb	$45, -1121(%rbp)
	jne	.L18
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-1112(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L18
.L16:
	movzbl	-1119(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L18
	cmpb	$0, -1118(%rbp)
	jne	.L18
	movzbl	-1117(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L18
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-1120(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L18
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-1120(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L18
	cmpb	$95, -1120(%rbp)
	je	.L18
	cmpb	$46, -1120(%rbp)
	je	.L18
	cmpb	$0, -1148(%rbp)
	je	.L19
	leaq	-1104(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
.L19:
	movb	$1, -1119(%rbp)
.L18:
	cmpb	$0, -1117(%rbp)
	je	.L20
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-1121(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L20
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-1121(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L20
	cmpb	$95, -1121(%rbp)
	je	.L20
	cmpb	$0, -1148(%rbp)
	je	.L21
	leaq	-1104(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
.L21:
	movb	$0, -1117(%rbp)
.L20:
	cmpb	$0, -1118(%rbp)
	jne	.L9
	movzbl	-1117(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L9
	cmpb	$36, -1121(%rbp)
	jne	.L9
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-1112(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L9
	cmpb	$0, -1148(%rbp)
	je	.L22
	leaq	-1104(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
.L22:
	movb	$1, -1117(%rbp)
.L9:
	movzbl	-1117(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L23
	cmpb	$0, -1118(%rbp)
	jne	.L23
	movzbl	-1119(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L23
	cmpb	$35, -1121(%rbp)
	jne	.L23
	movq	-1112(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L23
	movb	$1, -1113(%rbp)
	movb	$1, -1116(%rbp)
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %edx
	movzbl	.LC3(%rip), %eax
	movzbl	%dl, %edx
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L24
	movb	$0, -1115(%rbp)
	jmp	.L25
.L24:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$6, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L26
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L26:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$4, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L27
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L27:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$4, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L28
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L28:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$8, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L29
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L29:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$5, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L30
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L30:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$7, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L31
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L31:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$5, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L32
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L32:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$6, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L33
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L33:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$5, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L34
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L34:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$7, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L35
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L35:
	movq	-1112(%rbp), %rax
	addq	$2, %rax
	movl	$6, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L36
	movb	$0, -1116(%rbp)
	cmpb	$0, -1148(%rbp)
	je	.L25
	leaq	-1104(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
	jmp	.L25
.L36:
	movb	$0, -1113(%rbp)
	movb	$0, -1116(%rbp)
.L25:
	cmpb	$0, -1113(%rbp)
	je	.L37
	addq	$2, -1112(%rbp)
	jmp	.L38
.L39:
	addq	$1, -1112(%rbp)
.L38:
	movq	-1112(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1121(%rbp)
	cmpb	$93, -1121(%rbp)
	jne	.L39
	movb	$1, -1114(%rbp)
.L37:
	movzbl	-1115(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L23
	movb	$1, -1116(%rbp)
.L23:
	cmpb	$10, -1121(%rbp)
	jne	.L40
	cmpb	$0, -1119(%rbp)
	jne	.L41
	cmpb	$0, -1118(%rbp)
	jne	.L41
	cmpb	$0, -1117(%rbp)
	jne	.L41
	cmpb	$0, -1116(%rbp)
	je	.L40
.L41:
	cmpb	$0, -1148(%rbp)
	je	.L42
	leaq	-1104(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
.L42:
	movb	$0, -1116(%rbp)
	movb	$0, -1119(%rbp)
	movb	$0, -1118(%rbp)
	movb	$0, -1117(%rbp)
.L40:
	movzbl	-1114(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L43
	movq	-1112(%rbp), %rcx
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstrn
.L43:
	movzbl	-1116(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L44
	cmpb	$39, -1121(%rbp)
	je	.L45
	cmpb	$34, -1121(%rbp)
	jne	.L44
.L45:
	cmpb	$0, -1118(%rbp)
	jne	.L44
	cmpb	$0, -1148(%rbp)
	je	.L44
	leaq	-1104(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
.L44:
	movzbl	-1121(%rbp), %eax
	movb	%al, -1120(%rbp)
	addq	$1, -1112(%rbp)
.L8:
	movq	-1112(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1121(%rbp)
	cmpb	$0, -1121(%rbp)
	jne	.L46
	cmpb	$0, -1119(%rbp)
	jne	.L47
	cmpb	$0, -1118(%rbp)
	jne	.L47
	cmpb	$0, -1117(%rbp)
	jne	.L47
	cmpb	$0, -1116(%rbp)
	je	.L48
.L47:
	cmpb	$0, -1148(%rbp)
	je	.L48
	leaq	-1104(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstr
.L48:
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_strbuf_get
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ecs_colorize, .-ecs_colorize
	.local	trace_indent
	.comm	trace_indent,4,4
	.local	trace_level
	.comm	trace_level,4,4
	.data
	.type	trace_color, @object
	.size	trace_color, 1
trace_color:
	.byte	1
	.section	.rodata
.LC21:
	.string	"%sinfo%s: %s%s%s%s:%s%d%s: %s"
.LC22:
	.string	"%swarn%s: %s%s%s%s:%s%d%s: %s"
.LC23:
	.string	"%serr%s:  %s%s%s%s:%s%d%s: %s"
	.align 8
.LC24:
	.string	"%sfatal%s:  %s%s%s%s:%s%d%s: %s"
.LC25:
	.string	"info: %s%s:%d: %s"
.LC26:
	.string	"warn: %s%s:%d: %s"
.LC27:
	.string	"err:  %s%s:%d: %s"
.LC28:
	.string	"fatal:  %s%s:%d: %s"
	.text
	.type	ecs_log_print, @function
ecs_log_print:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movl	%edi, -340(%rbp)
	movq	%rsi, -352(%rbp)
	movl	%edx, -344(%rbp)
	movq	%rcx, -360(%rbp)
	movq	%r8, -368(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	trace_level(%rip), %eax
	cmpl	%eax, -340(%rbp)
	jg	.L68
	movq	-352(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-272(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	jne	.L54
	movq	-352(%rbp), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -328(%rbp)
.L54:
	cmpq	$0, -328(%rbp)
	je	.L55
	movq	-328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)
	jmp	.L56
.L55:
	leaq	-272(%rbp), %rax
	movq	%rax, -352(%rbp)
.L56:
	movl	$0, -332(%rbp)
	jmp	.L57
.L58:
	movl	-332(%rbp), %eax
	addl	%eax, %eax
	cltq
	movb	$124, -304(%rbp,%rax)
	movl	-332(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	cltq
	movb	$32, -304(%rbp,%rax)
	addl	$1, -332(%rbp)
.L57:
	movl	trace_indent(%rip), %eax
	cmpl	%eax, -332(%rbp)
	jl	.L58
	movl	-332(%rbp), %eax
	addl	%eax, %eax
	cltq
	movb	$0, -304(%rbp,%rax)
	movq	-368(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_vasprintf
	movq	%rax, -320(%rbp)
	movzbl	trace_color(%rip), %eax
	movzbl	%al, %edx
	movq	-320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_colorize
	movq	%rax, -312(%rbp)
	movzbl	trace_color(%rip), %eax
	testb	%al, %al
	je	.L59
	cmpl	$0, -340(%rbp)
	js	.L60
	leaq	-304(%rbp), %rdx
	subq	$8, %rsp
	pushq	-312(%rbp)
	leaq	.LC0(%rip), %rax
	pushq	%rax
	movl	-344(%rbp), %eax
	pushq	%rax
	leaq	.LC2(%rip), %rax
	pushq	%rax
	pushq	-352(%rbp)
	leaq	.LC0(%rip), %r9
	movq	%rdx, %r8
	leaq	.LC15(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_log
	addq	$48, %rsp
	jmp	.L61
.L60:
	cmpl	$-2, -340(%rbp)
	jne	.L62
	leaq	-304(%rbp), %rdx
	subq	$8, %rsp
	pushq	-312(%rbp)
	leaq	.LC0(%rip), %rax
	pushq	%rax
	movl	-344(%rbp), %eax
	pushq	%rax
	leaq	.LC2(%rip), %rax
	pushq	%rax
	pushq	-352(%rbp)
	leaq	.LC0(%rip), %r9
	movq	%rdx, %r8
	leaq	.LC15(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC13(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_warn
	addq	$48, %rsp
	jmp	.L61
.L62:
	cmpl	$-3, -340(%rbp)
	jne	.L63
	leaq	-304(%rbp), %rdx
	subq	$8, %rsp
	pushq	-312(%rbp)
	leaq	.LC0(%rip), %rax
	pushq	%rax
	movl	-344(%rbp), %eax
	pushq	%rax
	leaq	.LC2(%rip), %rax
	pushq	%rax
	pushq	-352(%rbp)
	leaq	.LC0(%rip), %r9
	movq	%rdx, %r8
	leaq	.LC15(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC6(%rip), %rsi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	addq	$48, %rsp
	jmp	.L61
.L63:
	cmpl	$-4, -340(%rbp)
	jne	.L61
	leaq	-304(%rbp), %rdx
	subq	$8, %rsp
	pushq	-312(%rbp)
	leaq	.LC0(%rip), %rax
	pushq	%rax
	movl	-344(%rbp), %eax
	pushq	%rax
	leaq	.LC2(%rip), %rax
	pushq	%rax
	pushq	-352(%rbp)
	leaq	.LC0(%rip), %r9
	movq	%rdx, %r8
	leaq	.LC15(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC6(%rip), %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	addq	$48, %rsp
	jmp	.L61
.L59:
	cmpl	$0, -340(%rbp)
	js	.L64
	movq	-312(%rbp), %rsi
	movl	-344(%rbp), %ecx
	movq	-352(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_log
	jmp	.L61
.L64:
	cmpl	$-2, -340(%rbp)
	jne	.L65
	movq	-312(%rbp), %rsi
	movl	-344(%rbp), %ecx
	movq	-352(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_warn
	jmp	.L61
.L65:
	cmpl	$-3, -340(%rbp)
	jne	.L66
	movq	-312(%rbp), %rsi
	movl	-344(%rbp), %ecx
	movq	-352(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	jmp	.L61
.L66:
	cmpl	$-4, -340(%rbp)
	jne	.L61
	movq	-312(%rbp), %rsi
	movl	-344(%rbp), %ecx
	movq	-352(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
.L61:
	movq	40+ecs_os_api(%rip), %rdx
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	40+ecs_os_api(%rip), %rdx
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L51
.L68:
	nop
.L51:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L67
	call	__stack_chk_fail@PLT
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ecs_log_print, .-ecs_log_print
	.globl	_ecs_trace
	.type	_ecs_trace, @function
_ecs_trace:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	movl	%edx, -216(%rbp)
	movq	%rcx, -232(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L70
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L70:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$32, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdi
	movq	-232(%rbp), %rcx
	movl	-216(%rbp), %edx
	movq	-224(%rbp), %rsi
	movl	-212(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	ecs_log_print
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L71
	call	__stack_chk_fail@PLT
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	_ecs_trace, .-_ecs_trace
	.globl	_ecs_warn
	.type	_ecs_warn, @function
_ecs_warn:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L73
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L73:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rsi
	movq	-232(%rbp), %rcx
	movl	-220(%rbp), %edx
	movq	-216(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$-2, %edi
	call	ecs_log_print
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L74
	call	__stack_chk_fail@PLT
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	_ecs_warn, .-_ecs_warn
	.globl	_ecs_err
	.type	_ecs_err, @function
_ecs_err:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L76
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L76:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rsi
	movq	-232(%rbp), %rcx
	movl	-220(%rbp), %edx
	movq	-216(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$-3, %edi
	call	ecs_log_print
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L77
	call	__stack_chk_fail@PLT
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	_ecs_err, .-_ecs_err
	.globl	_ecs_fatal
	.type	_ecs_fatal, @function
_ecs_fatal:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L79
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L79:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rsi
	movq	-232(%rbp), %rcx
	movl	-220(%rbp), %edx
	movq	-216(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$-4, %edi
	call	ecs_log_print
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	_ecs_fatal, .-_ecs_fatal
	.globl	ecs_log_push
	.type	ecs_log_push, @function
ecs_log_push:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	trace_indent(%rip), %eax
	addl	$1, %eax
	movl	%eax, trace_indent(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ecs_log_push, .-ecs_log_push
	.globl	ecs_log_pop
	.type	ecs_log_pop, @function
ecs_log_pop:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	trace_indent(%rip), %eax
	subl	$1, %eax
	movl	%eax, trace_indent(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ecs_log_pop, .-ecs_log_pop
	.globl	ecs_tracing_enable
	.type	ecs_tracing_enable, @function
ecs_tracing_enable:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, trace_level(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ecs_tracing_enable, .-ecs_tracing_enable
	.globl	ecs_tracing_color_enable
	.type	ecs_tracing_color_enable, @function
ecs_tracing_color_enable:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	movb	%al, trace_color(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ecs_tracing_color_enable, .-ecs_tracing_color_enable
	.section	.rodata
.LC29:
	.string	"%s:%d: error: %s"
.LC30:
	.string	"%d: error: %s"
.LC31:
	.string	"%s: error: %s"
.LC32:
	.string	"error: %s"
.LC33:
	.string	"    %s"
.LC34:
	.string	""
.LC35:
	.string	"    %*s^"
	.text
	.globl	_ecs_parser_error
	.type	_ecs_parser_error, @function
_ecs_parser_error:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L86
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L86:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	trace_level(%rip), %eax
	cmpl	$-2, %eax
	jl	.L87
	movl	$32, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_vasprintf
	movq	%rax, -216(%rbp)
	cmpq	$-1, -248(%rbp)
	je	.L88
	cmpq	$0, -232(%rbp)
	je	.L89
	movq	-248(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-216(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	jmp	.L90
.L89:
	movq	-248(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	jmp	.L90
.L88:
	cmpq	$0, -232(%rbp)
	je	.L91
	movq	-216(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	jmp	.L90
.L91:
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
.L90:
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	cmpq	$-1, -248(%rbp)
	je	.L92
	movq	-248(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	jmp	.L93
.L92:
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
.L93:
	movq	40+ecs_os_api(%rip), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L87:
	movq	208+ecs_os_api(%rip), %rax
	call	*%rax
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L94
	call	__stack_chk_fail@PLT
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_ecs_parser_error, .-_ecs_parser_error
	.section	.rodata
.LC36:
	.string	"%s (%s)"
.LC37:
	.string	"%s"
	.text
	.globl	_ecs_abort
	.type	_ecs_abort, @function
_ecs_abort:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movl	%edi, -228(%rbp)
	movq	%rsi, -240(%rbp)
	movl	%edx, -232(%rbp)
	movq	%rcx, -248(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L96
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L96:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -248(%rbp)
	je	.L97
	movl	$32, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_vasprintf
	movq	%rax, -216(%rbp)
	movl	-228(%rbp), %eax
	movl	%eax, %edi
	call	ecs_strerror
	movq	%rax, %rcx
	movq	-216(%rbp), %rdx
	movl	-232(%rbp), %esi
	movq	-240(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC36(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_fatal
	movq	40+ecs_os_api(%rip), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L98
.L97:
	movl	-228(%rbp), %eax
	movl	%eax, %edi
	call	ecs_strerror
	movq	%rax, %rdx
	movl	-232(%rbp), %esi
	movq	-240(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC37(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_fatal
.L98:
	movq	208+ecs_os_api(%rip), %rax
	call	*%rax
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L99
	call	__stack_chk_fail@PLT
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_ecs_abort, .-_ecs_abort
	.section	.rodata
.LC38:
	.string	"assert(%s) %s (%s)"
.LC39:
	.string	"assert(%s) %s"
	.text
	.globl	_ecs_assert
	.type	_ecs_assert, @function
_ecs_assert:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movl	%esi, -232(%rbp)
	movq	%rdx, -240(%rbp)
	movq	%rcx, -248(%rbp)
	movl	%r8d, -252(%rbp)
	movq	%r9, -264(%rbp)
	testb	%al, %al
	je	.L101
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L101:
	movl	%edi, %eax
	movb	%al, -228(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movzbl	-228(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L106
	cmpq	$0, -264(%rbp)
	je	.L103
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_vasprintf
	movq	%rax, -216(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, %edi
	call	ecs_strerror
	movq	%rax, %rcx
	movq	-216(%rbp), %rdi
	movq	-240(%rbp), %rdx
	movl	-252(%rbp), %esi
	movq	-248(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_fatal
	movq	40+ecs_os_api(%rip), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L104
.L103:
	movl	-232(%rbp), %eax
	movl	%eax, %edi
	call	ecs_strerror
	movq	%rax, %rcx
	movq	-240(%rbp), %rdx
	movl	-252(%rbp), %esi
	movq	-248(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC39(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_fatal
.L104:
	movq	208+ecs_os_api(%rip), %rax
	call	*%rax
.L106:
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L105
	call	__stack_chk_fail@PLT
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_ecs_assert, .-_ecs_assert
	.globl	_ecs_deprecated
	.type	_ecs_deprecated, @function
_ecs_deprecated:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC37(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_err
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_ecs_deprecated, .-_ecs_deprecated
	.section	.rodata
.LC40:
	.string	"ECS_INVALID_PARAMETER"
.LC41:
	.string	"ECS_NOT_A_COMPONENT"
.LC42:
	.string	"ECS_TYPE_NOT_AN_ENTITY"
.LC43:
	.string	"ECS_INTERNAL_ERROR"
.LC44:
	.string	"ECS_ALREADY_DEFINED"
.LC45:
	.string	"ECS_INVALID_COMPONENT_SIZE"
	.align 8
.LC46:
	.string	"ECS_INVALID_COMPONENT_ALIGNMENT"
.LC47:
	.string	"ECS_OUT_OF_MEMORY"
.LC48:
	.string	"ECS_MODULE_UNDEFINED"
.LC49:
	.string	"ECS_COLUMN_INDEX_OUT_OF_RANGE"
.LC50:
	.string	"ECS_COLUMN_IS_NOT_SHARED"
.LC51:
	.string	"ECS_COLUMN_IS_SHARED"
.LC52:
	.string	"ECS_COLUMN_HAS_NO_DATA"
.LC53:
	.string	"ECS_COLUMN_TYPE_MISMATCH"
.LC54:
	.string	"ECS_INVALID_WHILE_ITERATING"
.LC55:
	.string	"ECS_INVALID_FROM_WORKER"
.LC56:
	.string	"ECS_OUT_OF_RANGE"
.LC57:
	.string	"ECS_THREAD_ERROR"
.LC58:
	.string	"ECS_MISSING_OS_API"
.LC59:
	.string	"ECS_UNSUPPORTED"
.LC60:
	.string	"ECS_NO_OUT_COLUMNS"
.LC61:
	.string	"ECS_COLUMN_ACCESS_VIOLATION"
.LC62:
	.string	"ECS_DESERIALIZE_FORMAT_ERROR"
.LC63:
	.string	"ECS_TYPE_CONSTRAINT_VIOLATION"
.LC64:
	.string	"ECS_COMPONENT_NOT_REGISTERED"
.LC65:
	.string	"ECS_INCONSISTENT_COMPONENT_ID"
.LC66:
	.string	"ECS_TYPE_INVALID_CASE"
.LC67:
	.string	"ECS_INCONSISTENT_NAME"
	.align 8
.LC68:
	.string	"ECS_INCONSISTENT_COMPONENT_ACTION"
.LC69:
	.string	"ECS_INVALID_OPERATION"
.LC70:
	.string	"ECS_INVALID_DELETE"
.LC71:
	.string	"ECS_CYCLE_DETECTED"
.LC72:
	.string	"ECS_LOCKED_STORAGE"
.LC73:
	.string	"unknown error code"
	.text
	.globl	ecs_strerror
	.type	ecs_strerror, @function
ecs_strerror:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$80, -4(%rbp)
	ja	.L109
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L111(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L111(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L111:
	.long	.L109-.L111
	.long	.L143-.L111
	.long	.L142-.L111
	.long	.L141-.L111
	.long	.L140-.L111
	.long	.L139-.L111
	.long	.L138-.L111
	.long	.L137-.L111
	.long	.L136-.L111
	.long	.L135-.L111
	.long	.L134-.L111
	.long	.L133-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L132-.L111
	.long	.L109-.L111
	.long	.L131-.L111
	.long	.L130-.L111
	.long	.L129-.L111
	.long	.L128-.L111
	.long	.L127-.L111
	.long	.L126-.L111
	.long	.L125-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L124-.L111
	.long	.L123-.L111
	.long	.L122-.L111
	.long	.L121-.L111
	.long	.L120-.L111
	.long	.L119-.L111
	.long	.L118-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L117-.L111
	.long	.L116-.L111
	.long	.L115-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L114-.L111
	.long	.L113-.L111
	.long	.L112-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L109-.L111
	.long	.L110-.L111
	.text
.L142:
	leaq	4+.LC40(%rip), %rax
	jmp	.L144
.L131:
	leaq	4+.LC41(%rip), %rax
	jmp	.L144
.L117:
	leaq	4+.LC42(%rip), %rax
	jmp	.L144
.L137:
	leaq	4+.LC43(%rip), %rax
	jmp	.L144
.L136:
	leaq	4+.LC44(%rip), %rax
	jmp	.L144
.L130:
	leaq	4+.LC45(%rip), %rax
	jmp	.L144
.L129:
	leaq	4+.LC46(%rip), %rax
	jmp	.L144
.L140:
	leaq	4+.LC47(%rip), %rax
	jmp	.L144
.L125:
	leaq	4+.LC48(%rip), %rax
	jmp	.L144
.L123:
	leaq	4+.LC49(%rip), %rax
	jmp	.L144
.L122:
	leaq	4+.LC50(%rip), %rax
	jmp	.L144
.L121:
	leaq	4+.LC51(%rip), %rax
	jmp	.L144
.L120:
	leaq	4+.LC52(%rip), %rax
	jmp	.L144
.L119:
	leaq	4+.LC53(%rip), %rax
	jmp	.L144
.L114:
	leaq	4+.LC54(%rip), %rax
	jmp	.L144
.L112:
	leaq	4+.LC55(%rip), %rax
	jmp	.L144
.L139:
	leaq	4+.LC56(%rip), %rax
	jmp	.L144
.L134:
	leaq	4+.LC57(%rip), %rax
	jmp	.L144
.L135:
	leaq	4+.LC58(%rip), %rax
	jmp	.L144
.L138:
	leaq	4+.LC59(%rip), %rax
	jmp	.L144
.L118:
	leaq	4+.LC60(%rip), %rax
	jmp	.L144
.L124:
	leaq	4+.LC61(%rip), %rax
	jmp	.L144
.L110:
	leaq	4+.LC62(%rip), %rax
	jmp	.L144
.L116:
	leaq	4+.LC63(%rip), %rax
	jmp	.L144
.L128:
	leaq	4+.LC64(%rip), %rax
	jmp	.L144
.L127:
	leaq	4+.LC65(%rip), %rax
	jmp	.L144
.L115:
	leaq	4+.LC66(%rip), %rax
	jmp	.L144
.L132:
	leaq	4+.LC67(%rip), %rax
	jmp	.L144
.L126:
	leaq	4+.LC68(%rip), %rax
	jmp	.L144
.L143:
	leaq	4+.LC69(%rip), %rax
	jmp	.L144
.L141:
	leaq	4+.LC70(%rip), %rax
	jmp	.L144
.L133:
	leaq	4+.LC71(%rip), %rax
	jmp	.L144
.L113:
	leaq	4+.LC72(%rip), %rax
	jmp	.L144
.L109:
	leaq	.LC73(%rip), %rax
.L144:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ecs_strerror, .-ecs_strerror
	.section	.rodata
.LC74:
	.string	"flecs.c"
.LC75:
	.string	"ECS_HAS_ROLE(e, SWITCH)"
	.align 8
.LC76:
	.string	"((e & (0xFFull << 56)) == ECS_SWITCH)"
.LC77:
	.string	"type_ptr != NULL"
.LC78:
	.string	"type_ptr != ((void *)0)"
	.text
	.globl	flecs_init_data
	.type	flecs_init_data, @function
flecs_init_data:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -116(%rbp)
	movq	-144(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -112(%rbp)
	movq	-144(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -108(%rbp)
	cmpl	$0, -116(%rbp)
	jne	.L146
	cmpl	$0, -112(%rbp)
	jne	.L146
	cmpl	$0, -108(%rbp)
	jne	.L146
	movq	-152(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-152(%rbp), %rax
	jmp	.L147
.L146:
	movq	-88(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -80(%rbp)
	cmpl	$0, -116(%rbp)
	je	.L148
	cmpl	$0, -112(%rbp)
	jne	.L148
	movq	32+ecs_os_api(%rip), %rax
	movl	-116(%rbp), %edx
	sall	$4, %edx
	movl	%edx, %edi
	call	*%rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L149
.L148:
	cmpl	$0, -116(%rbp)
	jne	.L150
	cmpl	$0, -112(%rbp)
	je	.L149
.L150:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -104(%rbp)
	movq	32+ecs_os_api(%rip), %rax
	movl	-104(%rbp), %edx
	sall	$4, %edx
	movl	%edx, %edi
	call	*%rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L149:
	cmpl	$0, -116(%rbp)
	je	.L151
	movl	$0, -120(%rbp)
	jmp	.L152
.L154:
	movl	-120(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_component_from_id
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L153
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L153
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	-152(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-120(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	leaq	(%rdx,%rcx), %rbx
	movq	%rax, %rdi
	call	flecs_to_i16
	movw	%ax, 8(%rbx)
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	movq	-152(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-120(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	leaq	(%rdx,%rcx), %rbx
	movq	%rax, %rdi
	call	flecs_to_i16
	movw	%ax, 10(%rbx)
.L153:
	addl	$1, -120(%rbp)
.L152:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L154
.L151:
	cmpl	$0, -112(%rbp)
	je	.L155
	movq	-144(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, -100(%rbp)
	movq	32+ecs_os_api(%rip), %rax
	movl	-112(%rbp), %edx
	sall	$4, %edx
	movl	%edx, %edi
	call	*%rax
	movq	-152(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movl	$0, -120(%rbp)
	jmp	.L156
.L159:
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-56(%rbp), %rax
	movabsq	$-360287970189639680, %rdx
	cmpq	%rdx, %rax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2457, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movabsq	$-72057594037927936, %rax
	andq	-56(%rbp), %rax
	movabsq	$-360287970189639680, %rdx
	cmpq	%rdx, %rax
	je	.L157
	leaq	__PRETTY_FUNCTION__.7960(%rip), %rcx
	movl	$2457, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC76(%rip), %rdi
	call	__assert_fail@PLT
.L157:
	movabsq	$72057594037927935, %rax
	andq	%rax, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2460, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -48(%rbp)
	jne	.L158
	leaq	__PRETTY_FUNCTION__.7960(%rip), %rcx
	movl	$2460, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC78(%rip), %rdi
	call	__assert_fail@PLT
.L158:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_switch_new
	movq	%rax, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	-120(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	-120(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-144(%rbp), %rax
	movl	120(%rax), %edx
	movl	-120(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -92(%rbp)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_switch_values
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movw	$8, 8(%rax)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movw	$8, 10(%rax)
	addl	$1, -120(%rbp)
.L156:
	movl	-120(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jl	.L159
.L155:
	cmpl	$0, -108(%rbp)
	je	.L160
	movq	32+ecs_os_api(%rip), %rax
	movl	-108(%rbp), %edx
	sall	$4, %edx
	movl	%edx, %edi
	call	*%rax
	movq	-152(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movl	$0, -120(%rbp)
	jmp	.L161
.L162:
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movl	-120(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	flecs_bitset_init
	addl	$1, -120(%rbp)
.L161:
	movl	-120(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L162
.L160:
	movq	-152(%rbp), %rax
.L147:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	flecs_init_data, .-flecs_init_data
	.type	get_component_action_flags, @function
get_component_action_flags:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L164
	orl	$128, -4(%rbp)
.L164:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L165
	orl	$256, -4(%rbp)
.L165:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L166
	orl	$512, -4(%rbp)
.L166:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L167
	orl	$1024, -4(%rbp)
.L167:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	get_component_action_flags, .-get_component_action_flags
	.type	has_component, @function
has_component:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L170
.L173:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_typeid
	cmpq	%rax, -40(%rbp)
	jne	.L171
	movl	$1, %eax
	jmp	.L172
.L171:
	addl	$1, -16(%rbp)
.L170:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L173
	movl	$0, %eax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	has_component, .-has_component
	.section	.rodata
	.align 8
.LC79:
	.string	"!component || column_count != 0"
	.text
	.type	notify_component_info, @function
notify_component_info:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L175
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	has_component
	testb	%al, %al
	je	.L174
.L175:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -40(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L177
	cmpl	$0, -40(%rbp)
	je	.L178
.L177:
	movl	$1, %eax
	jmp	.L179
.L178:
	movl	$0, %eax
.L179:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2540, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	je	.L180
	cmpl	$0, -40(%rbp)
	jne	.L180
	leaq	__PRETTY_FUNCTION__.7995(%rip), %rcx
	movl	$2540, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC79(%rip), %rdi
	call	__assert_fail@PLT
.L180:
	cmpl	$0, -40(%rbp)
	je	.L188
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L182
	movq	32+ecs_os_api(%rip), %rax
	movl	-40(%rbp), %edx
	sall	$3, %edx
	movl	%edx, %edi
	call	*%rax
	movq	-64(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L182:
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$-385, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -24(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L183
.L187:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_typeid
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L189
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_c_info
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L186
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_component_action_flags
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	orl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, 16(%rax)
.L186:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L185
.L189:
	nop
.L185:
	addl	$1, -44(%rbp)
.L183:
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L187
	jmp	.L174
.L188:
	nop
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	notify_component_info, .-notify_component_info
	.type	notify_trigger, @function
notify_trigger:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L195
	movl	$286, %eax
	cmpq	%rax, -24(%rbp)
	jne	.L192
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L195
.L192:
	movl	$287, %eax
	cmpq	%rax, -24(%rbp)
	jne	.L193
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	orb	$16, %ah
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L195
.L193:
	movl	$288, %eax
	cmpq	%rax, -24(%rbp)
	jne	.L194
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	orb	$32, %ah
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L195
.L194:
	movl	$289, %eax
	cmpq	%rax, -24(%rbp)
	jne	.L195
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	orb	$64, %ah
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
.L195:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	notify_trigger, .-notify_trigger
	.type	run_on_remove, @function
run_on_remove:
.LFB27:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L201
	movq	-80(%rbp), %rax
	movq	96(%rax), %rdx
	movl	-48(%rbp), %ecx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	flecs_run_monitors
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -40(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L198
.L199:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	$1, -24(%rbp)
	leaq	-32(%rbp), %rdi
	movl	-48(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	flecs_run_remove_actions
	addl	$1, -52(%rbp)
.L198:
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L199
.L201:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L200
	call	__stack_chk_fail@PLT
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	run_on_remove, .-run_on_remove
	.section	.rodata
.LC80:
	.string	"q1 != NULL"
.LC81:
	.string	"q1 != ((void *)0)"
.LC82:
	.string	"q2 != NULL"
.LC83:
	.string	"q2 != ((void *)0)"
.LC84:
	.string	"s1 != 0"
.LC85:
	.string	"s2 != 0"
	.text
	.type	compare_matched_query, @function
compare_matched_query:
.LFB28:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2628, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC80(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L203
	leaq	__PRETTY_FUNCTION__.8031(%rip), %rcx
	movl	$2628, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC81(%rip), %rdi
	call	__assert_fail@PLT
.L203:
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2629, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L204
	leaq	__PRETTY_FUNCTION__.8031(%rip), %rcx
	movl	$2629, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC83(%rip), %rdi
	call	__assert_fail@PLT
.L204:
	movq	-32(%rbp), %rax
	movq	1632(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	1632(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2633, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC84(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L205
	leaq	__PRETTY_FUNCTION__.8031(%rip), %rcx
	movl	$2633, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC84(%rip), %rdi
	call	__assert_fail@PLT
.L205:
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2634, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L206
	leaq	__PRETTY_FUNCTION__.8031(%rip), %rcx
	movl	$2634, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC85(%rip), %rdi
	call	__assert_fail@PLT
.L206:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	seta	%al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	compare_matched_query, .-compare_matched_query
	.section	.rodata
.LC86:
	.string	"m != NULL"
.LC87:
	.string	"m != ((void *)0)"
	.text
	.type	add_monitor, @function
add_monitor:
.LFB29:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2649, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L209
	leaq	__PRETTY_FUNCTION__.8040(%rip), %rcx
	movl	$2649, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC87(%rip), %rdi
	call	__assert_fail@PLT
.L209:
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	leaq	compare_matched_query(%rip), %rcx
	movl	$16, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	qsort@PLT
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	add_monitor, .-add_monitor
	.section	.rodata
.LC88:
	.string	"query != NULL"
.LC89:
	.string	"query != ((void *)0)"
	.align 8
.LC90:
	.string	"monitor #[green]%s#[reset] registered with table #[red]%s"
	.text
	.type	register_monitor, @function
register_monitor:
.LFB30:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2674, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L211
	leaq	__PRETTY_FUNCTION__.8047(%rip), %rcx
	movl	$2674, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC89(%rip), %rdi
	call	__assert_fail@PLT
.L211:
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L212
.L215:
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L213
	movq	-8(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 8(%rax)
	jmp	.L210
.L213:
	addl	$1, -32(%rbp)
.L212:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L215
	movq	-48(%rbp), %rax
	leaq	64(%rax), %rcx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	add_monitor
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_type_str
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	1632(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_name
	movq	-16(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	leaq	.LC90(%rip), %rcx
	movl	$2690, %edx
	leaq	.LC74(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	_ecs_trace
	movq	40+ecs_os_api(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	register_monitor, .-register_monitor
	.type	is_override, @function
is_override:
.LFB31:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L217
	movl	$0, %eax
	jmp	.L218
.L217:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L219
.L221:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L220
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movl	$277, %edx
	cmpq	%rdx, %rax
	jne	.L220
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	testb	%al, %al
	je	.L220
	movl	$1, %eax
	jmp	.L218
.L220:
	subl	$1, -32(%rbp)
.L219:
	cmpl	$0, -32(%rbp)
	jns	.L221
	movl	$0, %eax
.L218:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	is_override, .-is_override
	.type	register_on_set, @function
register_on_set:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-112(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L223
	movq	-112(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L224
	movq	32+ecs_os_api(%rip), %rax
	movq	-112(%rbp), %rdx
	movl	20(%rdx), %edx
	sall	$4, %edx
	movl	%edx, %edi
	call	*%rax
	movq	-112(%rbp), %rdx
	movq	%rax, 72(%rdx)
.L224:
	movq	-120(%rbp), %rax
	movq	1608(%rax), %rax
	movl	-124(%rbp), %edx
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$96, %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -56(%rbp)
	movb	$0, -81(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -76(%rbp)
	movl	$0, -80(%rbp)
	jmp	.L225
.L233:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	160(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L235
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L235
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$267, %edx
	cmpq	%rdx, %rax
	jne	.L235
	cmpl	$0, -72(%rbp)
	je	.L229
	cmpl	$3, -72(%rbp)
	jne	.L236
.L229:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_type_index_of
	movl	%eax, -68(%rbp)
	cmpl	$-1, -68(%rbp)
	je	.L237
	movq	-112(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jge	.L238
	movq	-112(%rbp), %rax
	movq	72(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	-124(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-112(%rbp), %rax
	movq	72(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	is_override
	orb	-81(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -81(%rbp)
	jmp	.L232
.L235:
	nop
	jmp	.L232
.L236:
	nop
	jmp	.L232
.L237:
	nop
	jmp	.L232
.L238:
	nop
.L232:
	addl	$1, -80(%rbp)
.L225:
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L233
	cmpb	$0, -81(%rbp)
	je	.L223
	movq	-112(%rbp), %rax
	leaq	88(%rax), %rcx
	movl	-124(%rbp), %edx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	add_monitor
.L223:
	movq	-112(%rbp), %rax
	leaq	80(%rax), %rcx
	movl	-124(%rbp), %edx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	add_monitor
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L234
	call	__stack_chk_fail@PLT
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	register_on_set, .-register_on_set
	.type	register_un_set, @function
register_un_set:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	orb	$64, %ah
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	leaq	96(%rax), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	add_monitor
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	register_un_set, .-register_un_set
	.type	table_activate, @function
table_activate:
.LFB34:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, %eax
	movb	%al, -92(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -88(%rbp)
	je	.L241
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	cmpb	$0, -92(%rbp)
	je	.L242
	movl	$2, %eax
	jmp	.L243
.L242:
	movl	$1, %eax
.L243:
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_query_notify
	jmp	.L250
.L241:
	movq	-80(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L245
.L248:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	cmpb	$0, -92(%rbp)
	je	.L246
	movl	$2, %eax
	jmp	.L247
.L246:
	movl	$1, %eax
.L247:
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_query_notify
	addl	$1, -56(%rbp)
.L245:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L248
.L250:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L249
	call	__stack_chk_fail@PLT
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	table_activate, .-table_activate
	.section	.rodata
.LC91:
	.string	"*q != query"
	.text
	.type	register_query, @function
register_query:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	1712(%rax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	jne	.L252
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L253
.L255:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movl	-32(%rbp), %edx
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2854, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC91(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L254
	leaq	__PRETTY_FUNCTION__.8121(%rip), %rcx
	movl	$2854, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC91(%rip), %rdi
	call	__assert_fail@PLT
.L254:
	addl	$1, -32(%rbp)
.L253:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L255
	movq	-48(%rbp), %rax
	addq	$56, %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L256
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
.L256:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L252
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	testl	%eax, %eax
	je	.L252
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	table_activate
.L252:
	movq	-56(%rbp), %rax
	movl	1712(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L257
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	orb	$-128, %ah
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	register_monitor
.L257:
	movq	-56(%rbp), %rax
	movl	1712(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L258
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	register_on_set
.L258:
	movq	-56(%rbp), %rax
	movl	1712(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L260
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	register_un_set
.L260:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	register_query, .-register_query
	.section	.rodata
.LC92:
	.string	"i != count"
	.text
	.type	unregister_query, @function
unregister_query:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	1712(%rax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	jne	.L268
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L263
.L266:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movl	-16(%rbp), %edx
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L269
	addl	$1, -16(%rbp)
.L263:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L266
	jmp	.L265
.L269:
	nop
.L265:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2905, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.L267
	leaq	__PRETTY_FUNCTION__.8138(%rip), %rcx
	movl	$2905, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC92(%rip), %rdi
	call	__assert_fail@PLT
.L267:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movl	-16(%rbp), %edx
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_remove
.L268:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	unregister_query, .-unregister_query
	.section	.rodata
.LC93:
	.string	"table != NULL"
.LC94:
	.string	"table != ((void *)0)"
	.text
	.globl	flecs_table_get_data
	.type	flecs_table_get_data, @function
flecs_table_get_data:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2915, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L271
	leaq	__PRETTY_FUNCTION__.8142(%rip), %rcx
	movl	$2915, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L271:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	flecs_table_get_data, .-flecs_table_get_data
	.section	.rodata
.LC95:
	.string	"!table->lock"
	.text
	.globl	flecs_table_get_or_create_data
	.type	flecs_table_get_or_create_data, @function
flecs_table_get_or_create_data:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2923, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L274
	leaq	__PRETTY_FUNCTION__.8146(%rip), %rcx
	movl	$2923, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L274:
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2924, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L275
	leaq	__PRETTY_FUNCTION__.8146(%rip), %rcx
	movl	$2924, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L275:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L276
	movq	32+ecs_os_api(%rip), %rax
	movl	$40, %edi
	call	*%rax
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L276:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	flecs_table_get_or_create_data, .-flecs_table_get_or_create_data
	.type	ctor_component, @function
ctor_component:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L280
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L280
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -28(%rbp)
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -26(%rbp)
	movl	$16, %eax
	cmpw	$16, -26(%rbp)
	cmovge	-26(%rbp), %ax
	movswl	%ax, %edx
	movswl	-28(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %ecx
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -8(%rbp)
	movswq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	80(%rax), %rsi
	movl	-72(%rbp), %r8d
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	movq	-24(%rbp), %r10
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
.L280:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	ctor_component, .-ctor_component
	.section	.rodata
.LC96:
	.string	"column->data != NULL"
.LC97:
	.string	"column->data != ((void *)0)"
.LC98:
	.string	"ptr != NULL"
.LC99:
	.string	"ptr != ((void *)0)"
	.text
	.type	dtor_component, @function
dtor_component:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.L286
	cmpq	$0, -48(%rbp)
	je	.L281
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L281
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -28(%rbp)
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -26(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2976, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L284
	leaq	__PRETTY_FUNCTION__.8173(%rip), %rcx
	movl	$2976, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC97(%rip), %rdi
	call	__assert_fail@PLT
.L284:
	movl	$16, %eax
	cmpw	$16, -26(%rbp)
	cmovge	-26(%rbp), %ax
	movswl	%ax, %edx
	movswl	-28(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %ecx
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2978, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L285
	leaq	__PRETTY_FUNCTION__.8173(%rip), %rcx
	movl	$2978, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC99(%rip), %rdi
	call	__assert_fail@PLT
.L285:
	movswq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rcx
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-48(%rbp), %rax
	movq	80(%rax), %rsi
	movl	-72(%rbp), %r8d
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	movq	-24(%rbp), %r10
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	jmp	.L281
.L286:
	nop
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	dtor_component, .-dtor_component
	.section	.rodata
	.align 8
.LC100:
	.string	"!is_delete || update_entity_index"
.LC101:
	.string	"!e || ecs_is_valid(world, e)"
	.align 8
.LC102:
	.string	"!e || records[i] == ecs_eis_get(world, e)"
	.align 8
.LC103:
	.string	"!e || records[i] == ((ecs_record_t*)_flecs_sparse_get((world->store).entity_index, sizeof(ecs_record_t), e))"
	.align 8
.LC104:
	.string	"!e || records[i]->table == table"
	.align 8
.LC105:
	.string	"ecs_is_valid(world, e) == false"
.LC106:
	.string	"ecs_is_valid(world, e) == 0"
.LC107:
	.string	"!ecs_is_valid(world, e)"
	.text
	.type	dtor_all_components, @function
dtor_all_components:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	%ecx, -140(%rbp)
	movl	%r8d, -144(%rbp)
	movl	%r9d, %edx
	movl	16(%rbp), %eax
	movb	%dl, -148(%rbp)
	movb	%al, -152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movzbl	-152(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L288
	cmpb	$0, -148(%rbp)
	je	.L289
.L288:
	movl	$1, %eax
	jmp	.L290
.L289:
	movl	$0, %eax
.L290:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$2996, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC100(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movzbl	-152(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L291
	cmpb	$0, -148(%rbp)
	jne	.L291
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$2996, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC100(%rip), %rdi
	call	__assert_fail@PLT
.L291:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -88(%rbp)
	movq	-128(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -104(%rbp)
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-128(%rbp), %rax
	movl	16(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L292
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_defer_begin
	movq	-128(%rbp), %rax
	movl	$1, 132(%rax)
	movl	-140(%rbp), %eax
	movl	%eax, -112(%rbp)
	jmp	.L293
.L310:
	movl	$0, -108(%rbp)
	jmp	.L294
.L295:
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movl	-108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movl	-108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-112(%rbp), %edi
	movq	-88(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$1, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	dtor_component
	addl	$1, -108(%rbp)
.L294:
	movl	-108(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jl	.L295
	cmpb	$0, -148(%rbp)
	je	.L296
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L297
	movq	-64(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	je	.L298
.L297:
	movl	$1, %eax
	jmp	.L299
.L298:
	movl	$0, %eax
.L299:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3025, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	je	.L300
	movq	-64(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L300
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3025, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC101(%rip), %rdi
	call	__assert_fail@PLT
.L300:
	cmpq	$0, -64(%rbp)
	je	.L301
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	cmpq	%rax, %rbx
	jne	.L302
.L301:
	movl	$1, %eax
	jmp	.L303
.L302:
	movl	$0, %eax
.L303:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3027, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	je	.L304
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	cmpq	%rax, %rbx
	je	.L304
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3027, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC103(%rip), %rdi
	call	__assert_fail@PLT
.L304:
	cmpq	$0, -64(%rbp)
	je	.L305
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -128(%rbp)
	jne	.L306
.L305:
	movl	$1, %eax
	jmp	.L307
.L306:
	movl	$0, %eax
.L307:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3029, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	je	.L308
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -128(%rbp)
	je	.L308
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3029, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC104(%rip), %rdi
	call	__assert_fail@PLT
.L308:
	cmpb	$0, -152(%rbp)
	je	.L309
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_remove
	movq	-64(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3034, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC105(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-64(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	xorl	$1, %eax
	testb	%al, %al
	jne	.L296
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3034, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC106(%rip), %rdi
	call	__assert_fail@PLT
.L309:
	movq	$0, -48(%rbp)
	movl	$0, -40(%rbp)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-48(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_set
.L296:
	addl	$1, -112(%rbp)
.L293:
	movl	-112(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L310
	movq	-128(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_defer_end
	jmp	.L343
.L292:
	cmpb	$0, -148(%rbp)
	je	.L343
	cmpb	$0, -152(%rbp)
	je	.L312
	movl	-140(%rbp), %eax
	movl	%eax, -112(%rbp)
	jmp	.L313
.L327:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L314
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	je	.L315
.L314:
	movl	$1, %eax
	jmp	.L316
.L315:
	movl	$0, %eax
.L316:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3056, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	je	.L317
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L317
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3056, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC101(%rip), %rdi
	call	__assert_fail@PLT
.L317:
	cmpq	$0, -72(%rbp)
	je	.L318
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-72(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	cmpq	%rax, %rbx
	jne	.L319
.L318:
	movl	$1, %eax
	jmp	.L320
.L319:
	movl	$0, %eax
.L320:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3057, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	je	.L321
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-72(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	cmpq	%rax, %rbx
	je	.L321
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3057, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC103(%rip), %rdi
	call	__assert_fail@PLT
.L321:
	cmpq	$0, -72(%rbp)
	je	.L322
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -128(%rbp)
	jne	.L323
.L322:
	movl	$1, %eax
	jmp	.L324
.L323:
	movl	$0, %eax
.L324:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3059, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	je	.L325
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -128(%rbp)
	je	.L325
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3059, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC104(%rip), %rdi
	call	__assert_fail@PLT
.L325:
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_remove
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3063, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC107(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	xorl	$1, %eax
	testb	%al, %al
	jne	.L326
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3063, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC107(%rip), %rdi
	call	__assert_fail@PLT
.L326:
	addl	$1, -112(%rbp)
.L313:
	movl	-112(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L327
	jmp	.L343
.L312:
	movl	-140(%rbp), %eax
	movl	%eax, -112(%rbp)
	jmp	.L328
.L341:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L329
	movq	-80(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	je	.L330
.L329:
	movl	$1, %eax
	jmp	.L331
.L330:
	movl	$0, %eax
.L331:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3068, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -80(%rbp)
	je	.L332
	movq	-80(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L332
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3068, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC101(%rip), %rdi
	call	__assert_fail@PLT
.L332:
	cmpq	$0, -80(%rbp)
	je	.L333
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-80(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	cmpq	%rax, %rbx
	jne	.L334
.L333:
	movl	$1, %eax
	jmp	.L335
.L334:
	movl	$0, %eax
.L335:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3069, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -80(%rbp)
	je	.L336
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-80(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	cmpq	%rax, %rbx
	je	.L336
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3069, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC103(%rip), %rdi
	call	__assert_fail@PLT
.L336:
	cmpq	$0, -80(%rbp)
	je	.L337
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -128(%rbp)
	jne	.L338
.L337:
	movl	$1, %eax
	jmp	.L339
.L338:
	movl	$0, %eax
.L339:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3071, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -80(%rbp)
	je	.L340
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -128(%rbp)
	je	.L340
	leaq	__PRETTY_FUNCTION__.8184(%rip), %rcx
	movl	$3071, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC104(%rip), %rdi
	call	__assert_fail@PLT
.L340:
	movq	$0, -48(%rbp)
	movl	$0, -40(%rbp)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_set
	addl	$1, -112(%rbp)
.L328:
	movl	-112(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L341
.L343:
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L342
	call	__stack_chk_fail@PLT
.L342:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	dtor_all_components, .-dtor_all_components
	.section	.rodata
	.align 8
.LC108:
	.string	"ecs_vector_count(data->record_ptrs) == ecs_vector_count(data->entities)"
	.align 8
.LC109:
	.string	"!columns[c].data || (ecs_vector_count(columns[c].data) == ecs_vector_count(data->entities))"
	.text
	.type	fini_data, @function
fini_data:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, %eax
	movl	%r8d, %esi
	movl	%r9d, %ecx
	movl	16(%rbp), %edx
	movb	%al, -108(%rbp)
	movl	%esi, %eax
	movb	%al, -112(%rbp)
	movl	%ecx, %eax
	movb	%al, -116(%rbp)
	movl	%edx, %eax
	movb	%al, -120(%rbp)
	movq	-96(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3090, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-96(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L345
	leaq	__PRETTY_FUNCTION__.8218(%rip), %rcx
	movl	$3090, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L345:
	cmpq	$0, -104(%rbp)
	je	.L364
	cmpb	$0, -108(%rbp)
	je	.L348
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	run_on_remove
.L348:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_data_count
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L349
	movzbl	-116(%rbp), %ecx
	movzbl	-112(%rbp), %r8d
	movl	-56(%rbp), %edi
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	dtor_all_components
	addq	$16, %rsp
.L349:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, %ebx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, %ebx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3107, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, %ebx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, %ebx
	je	.L350
	leaq	__PRETTY_FUNCTION__.8218(%rip), %rcx
	movl	$3107, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC108(%rip), %rdi
	call	__assert_fail@PLT
.L350:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L351
	movq	-96(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L352
.L357:
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L353
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, %ebx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, %ebx
	jne	.L354
.L353:
	movl	$1, %eax
	jmp	.L355
.L354:
	movl	$0, %eax
.L355:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3115, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC109(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L356
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, %ebx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, %ebx
	je	.L356
	leaq	__PRETTY_FUNCTION__.8218(%rip), %rcx
	movl	$3115, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC109(%rip), %rdi
	call	__assert_fail@PLT
.L356:
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	addl	$1, -68(%rbp)
.L352:
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L357
	movq	40+ecs_os_api(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-104(%rbp), %rax
	movq	$0, 16(%rax)
.L351:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L358
	movq	-96(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L359
.L360:
	movl	-64(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	flecs_switch_free
	addl	$1, -64(%rbp)
.L359:
	movl	-64(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L360
	movq	40+ecs_os_api(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-104(%rbp), %rax
	movq	$0, 24(%rax)
.L358:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L361
	movq	-96(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L362
.L363:
	movl	-60(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	flecs_bitset_deinit
	addl	$1, -60(%rbp)
.L362:
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L363
	movq	40+ecs_os_api(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-104(%rbp), %rax
	movq	$0, 32(%rax)
.L361:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-104(%rbp), %rax
	movq	$0, (%rax)
	movq	-104(%rbp), %rax
	movq	$0, 8(%rax)
	cmpb	$0, -120(%rbp)
	je	.L344
	cmpl	$0, -56(%rbp)
	je	.L344
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	table_activate
	jmp	.L344
.L364:
	nop
.L344:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	fini_data, .-fini_data
	.globl	flecs_table_clear_data
	.type	flecs_table_clear_data, @function
flecs_table_clear_data:
.LFB43:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	fini_data
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	flecs_table_clear_data, .-flecs_table_clear_data
	.globl	flecs_table_clear_entities_silent
	.type	flecs_table_clear_entities_silent, @function
flecs_table_clear_entities_silent:
.LFB44:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	fini_data
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	flecs_table_clear_entities_silent, .-flecs_table_clear_entities_silent
	.globl	flecs_table_clear_entities
	.type	flecs_table_clear_entities, @function
flecs_table_clear_entities:
.LFB45:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	fini_data
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	flecs_table_clear_entities, .-flecs_table_clear_entities
	.globl	flecs_table_delete_entities
	.type	flecs_table_delete_entities, @function
flecs_table_delete_entities:
.LFB46:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	fini_data
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	flecs_table_delete_entities, .-flecs_table_delete_entities
	.globl	flecs_table_remove_actions
	.type	flecs_table_remove_actions, @function
flecs_table_remove_actions:
.LFB47:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L371
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	run_on_remove
.L371:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	flecs_table_remove_actions, .-flecs_table_remove_actions
	.globl	flecs_table_free
	.type	flecs_table_free, @function
flecs_table_free:
.LFB48:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3207, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L373
	leaq	__PRETTY_FUNCTION__.8264(%rip), %rcx
	movl	$3207, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L373:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	fini_data
	addq	$16, %rsp
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_clear_edges
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_unregister_table
	movq	40+ecs_os_api(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	40+ecs_os_api(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L374
	movq	40+ecs_os_api(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L374:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L375
	movl	$0, -12(%rbp)
	jmp	.L376
.L377:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	addl	$1, -12(%rbp)
.L376:
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L377
	movq	40+ecs_os_api(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L375:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	40+ecs_os_api(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	flecs_table_free, .-flecs_table_free
	.globl	flecs_table_free_type
	.type	flecs_table_free_type, @function
flecs_table_free_type:
.LFB49:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	flecs_table_free_type, .-flecs_table_free_type
	.globl	flecs_table_reset
	.type	flecs_table_reset, @function
flecs_table_reset:
.LFB50:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3257, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-16(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L380
	leaq	__PRETTY_FUNCTION__.8277(%rip), %rcx
	movl	$3257, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L380:
	movq	40+ecs_os_api(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	flecs_table_reset, .-flecs_table_reset
	.type	mark_table_dirty, @function
mark_table_dirty:
.LFB51:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L383
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
.L383:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	mark_table_dirty, .-mark_table_dirty
	.section	.rodata
.LC110:
	.string	"index != -1"
	.text
	.globl	flecs_table_mark_dirty
	.type	flecs_table_mark_dirty, @function
flecs_table_mark_dirty:
.LFB52:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3280, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L385
	leaq	__PRETTY_FUNCTION__.8286(%rip), %rcx
	movl	$3280, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L385:
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3281, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L386
	leaq	__PRETTY_FUNCTION__.8286(%rip), %rcx
	movl	$3281, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L386:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L389
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_type_index_of
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3285, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$-1, -4(%rbp)
	jne	.L388
	leaq	__PRETTY_FUNCTION__.8286(%rip), %rcx
	movl	$3285, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC110(%rip), %rdi
	call	__assert_fail@PLT
.L388:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
.L389:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	flecs_table_mark_dirty, .-flecs_table_mark_dirty
	.type	move_switch_columns, @function
move_switch_columns:
.LFB53:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movl	%r9d, -152(%rbp)
	movl	$0, -116(%rbp)
	movq	-160(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -104(%rbp)
	movl	$0, -112(%rbp)
	movq	-136(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -100(%rbp)
	cmpl	$0, -104(%rbp)
	je	.L399
	cmpl	$0, -100(%rbp)
	je	.L399
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, -96(%rbp)
	movq	-160(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, -92(%rbp)
	movq	-72(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -48(%rbp)
	jmp	.L394
.L398:
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-116(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L395
	movl	-116(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-112(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-148(%rbp), %edx
	movl	16(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_switch_ensure
	movl	$0, -108(%rbp)
	jmp	.L396
.L397:
	movl	-152(%rbp), %edx
	movl	-108(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_switch_get
	movq	%rax, -8(%rbp)
	movl	-148(%rbp), %edx
	movl	-108(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	flecs_switch_set
	addl	$1, -108(%rbp)
.L396:
	movl	-108(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L397
.L395:
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setbe	%al
	movzbl	%al, %eax
	addl	%eax, -112(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L394:
	movl	-112(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.L390
	movl	-116(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jl	.L398
	jmp	.L390
.L399:
	nop
.L390:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	move_switch_columns, .-move_switch_columns
	.type	move_bitset_columns, @function
move_bitset_columns:
.LFB54:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movl	%r9d, -152(%rbp)
	movl	$0, -116(%rbp)
	movq	-160(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -104(%rbp)
	movl	$0, -112(%rbp)
	movq	-136(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -100(%rbp)
	cmpl	$0, -104(%rbp)
	je	.L409
	cmpl	$0, -100(%rbp)
	je	.L409
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -96(%rbp)
	movq	-160(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -92(%rbp)
	movq	-72(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -48(%rbp)
	jmp	.L404
.L408:
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-116(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L405
	movl	-116(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-112(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-148(%rbp), %edx
	movl	16(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_bitset_ensure
	movl	$0, -108(%rbp)
	jmp	.L406
.L407:
	movl	-152(%rbp), %edx
	movl	-108(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_bitset_get
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	-148(%rbp), %ecx
	movl	-108(%rbp), %eax
	addl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	flecs_bitset_set
	addl	$1, -108(%rbp)
.L406:
	movl	-108(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L407
.L405:
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setbe	%al
	movzbl	%al, %eax
	addl	%eax, -112(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L404:
	movl	-112(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.L400
	movl	-116(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jl	.L408
	jmp	.L400
.L409:
	nop
.L400:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	move_bitset_columns, .-move_bitset_columns
	.section	.rodata
	.align 8
.LC111:
	.string	"sw_column_count == 0 || sw_columns != NULL"
	.align 8
.LC112:
	.string	"sw_column_count == 0 || sw_columns != ((void *)0)"
	.align 8
.LC113:
	.string	"bs_column_count == 0 || bs_columns != NULL"
	.align 8
.LC114:
	.string	"bs_column_count == 0 || bs_columns != ((void *)0)"
.LC115:
	.string	"!column_count || columns"
	.align 8
.LC116:
	.string	"!sw_column_count || sw_columns"
	.align 8
.LC117:
	.string	"!bs_column_count || bs_columns"
	.text
	.type	ensure_data, @function
ensure_data:
.LFB55:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-64(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	-36(%rbp), %eax
	orl	-32(%rbp), %eax
	orl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L411
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L412
	cmpq	$0, -16(%rbp)
	jne	.L412
	cmpq	$0, -8(%rbp)
	jne	.L412
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_init_data
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L413
	cmpq	$0, -16(%rbp)
	je	.L414
.L413:
	movl	$1, %eax
	jmp	.L415
.L414:
	movl	$0, %eax
.L415:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3424, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -32(%rbp)
	je	.L416
	cmpq	$0, -16(%rbp)
	jne	.L416
	leaq	__PRETTY_FUNCTION__.8371(%rip), %rcx
	movl	$3424, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC112(%rip), %rdi
	call	__assert_fail@PLT
.L416:
	cmpl	$0, -28(%rbp)
	je	.L417
	cmpq	$0, -8(%rbp)
	je	.L418
.L417:
	movl	$1, %eax
	jmp	.L419
.L418:
	movl	$0, %eax
.L419:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3426, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -28(%rbp)
	je	.L412
	cmpq	$0, -8(%rbp)
	jne	.L412
	leaq	__PRETTY_FUNCTION__.8371(%rip), %rcx
	movl	$3426, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC114(%rip), %rdi
	call	__assert_fail@PLT
.L412:
	movq	-80(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L411:
	cmpl	$0, -36(%rbp)
	je	.L420
	cmpq	$0, -24(%rbp)
	je	.L421
.L420:
	movl	$1, %eax
	jmp	.L422
.L421:
	movl	$0, %eax
.L422:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3438, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC115(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -36(%rbp)
	je	.L423
	cmpq	$0, -24(%rbp)
	jne	.L423
	leaq	__PRETTY_FUNCTION__.8371(%rip), %rcx
	movl	$3438, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC115(%rip), %rdi
	call	__assert_fail@PLT
.L423:
	cmpl	$0, -32(%rbp)
	je	.L424
	cmpq	$0, -16(%rbp)
	je	.L425
.L424:
	movl	$1, %eax
	jmp	.L426
.L425:
	movl	$0, %eax
.L426:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3439, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC116(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -32(%rbp)
	je	.L427
	cmpq	$0, -16(%rbp)
	jne	.L427
	leaq	__PRETTY_FUNCTION__.8371(%rip), %rcx
	movl	$3439, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC116(%rip), %rdi
	call	__assert_fail@PLT
.L427:
	cmpl	$0, -28(%rbp)
	je	.L428
	cmpq	$0, -8(%rbp)
	je	.L429
.L428:
	movl	$1, %eax
	jmp	.L430
.L429:
	movl	$0, %eax
.L430:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3440, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC117(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -28(%rbp)
	je	.L432
	cmpq	$0, -8(%rbp)
	jne	.L432
	leaq	__PRETTY_FUNCTION__.8371(%rip), %rcx
	movl	$3440, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC117(%rip), %rdi
	call	__assert_fail@PLT
.L432:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	ensure_data, .-ensure_data
	.section	.rodata
.LC118:
	.string	"new_size >= new_count"
.LC119:
	.string	"ctor != NULL"
.LC120:
	.string	"ctor != ((void *)0)"
	.align 8
.LC121:
	.string	"ecs_vector_size(column->data) == new_size"
	.text
	.type	grow_column, @function
grow_column:
.LFB56:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movl	%r8d, -148(%rbp)
	movl	%r9d, -152(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -156(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-136(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -106(%rbp)
	movq	-136(%rbp), %rax
	movzwl	8(%rax), %eax
	cwtl
	movl	%eax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -100(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-152(%rbp), %eax
	cmpl	-96(%rbp), %eax
	setne	%al
	movb	%al, -107(%rbp)
	movl	-152(%rbp), %eax
	cmpl	-92(%rbp), %eax
	setge	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3462, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC118(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-152(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.L434
	leaq	__PRETTY_FUNCTION__.8388(%rip), %rcx
	movl	$3462, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC118(%rip), %rdi
	call	__assert_fail@PLT
.L434:
	cmpq	$0, -144(%rbp)
	je	.L435
	cmpl	$0, -100(%rbp)
	je	.L435
	cmpb	$0, -107(%rbp)
	je	.L435
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L435
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3469, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC119(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	jne	.L436
	leaq	__PRETTY_FUNCTION__.8388(%rip), %rcx
	movl	$3469, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC120(%rip), %rdi
	call	__assert_fail@PLT
.L436:
	movl	$16, %eax
	cmpw	$16, -106(%rbp)
	cmovge	-106(%rbp), %ax
	movswl	%ax, %ecx
	movl	-152(%rbp), %edx
	movl	-104(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	_ecs_vector_new
	movq	%rax, -80(%rbp)
	movl	$16, %eax
	cmpw	$16, -106(%rbp)
	cmovge	-106(%rbp), %ax
	movswl	%ax, %edx
	movl	-92(%rbp), %ecx
	movl	-104(%rbp), %esi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_count
	movl	$16, %eax
	cmpw	$16, -106(%rbp)
	cmovge	-106(%rbp), %ax
	movswl	%ax, %edx
	movq	-88(%rbp), %rax
	movl	-104(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -56(%rbp)
	movl	$16, %eax
	cmpw	$16, -106(%rbp)
	cmovge	-106(%rbp), %ax
	movswl	%ax, %edx
	movq	-80(%rbp), %rax
	movl	-104(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -48(%rbp)
	movq	-144(%rbp), %rax
	movq	32(%rax), %r12
	cmpb	$0, -156(%rbp)
	je	.L437
	movl	-92(%rbp), %ebx
	jmp	.L438
.L437:
	movl	-100(%rbp), %ebx
.L438:
	movl	-104(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-144(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-48(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	subq	$8, %rsp
	pushq	%r12
	movq	-64(%rbp), %r10
	movl	%ebx, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movq	-144(%rbp), %rax
	movq	32(%rax), %rbx
	movl	-104(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-144(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-56(%rbp), %r9
	movq	-48(%rbp), %r11
	movq	-128(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movl	-100(%rbp), %r8d
	pushq	%r8
	pushq	%rdi
	movq	-72(%rbp), %r10
	movq	%r11, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-80(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L439
.L435:
	cmpb	$0, -107(%rbp)
	je	.L440
	movl	$16, %eax
	cmpw	$16, -106(%rbp)
	cmovge	-106(%rbp), %ax
	movswl	%ax, %edx
	movl	-152(%rbp), %ecx
	movl	-104(%rbp), %esi
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_size
.L440:
	movl	$16, %eax
	cmpw	$16, -106(%rbp)
	cmovge	-106(%rbp), %ax
	movswl	%ax, %edx
	movl	-148(%rbp), %ecx
	movl	-104(%rbp), %esi
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_addn
	movq	%rax, -40(%rbp)
	cmpb	$0, -156(%rbp)
	je	.L441
	cmpq	$0, -144(%rbp)
	je	.L441
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L441
	movq	-144(%rbp), %rax
	movq	32(%rax), %rbx
	movl	-104(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rcx
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-144(%rbp), %rax
	movq	80(%rax), %rsi
	movl	-148(%rbp), %r8d
	movq	-40(%rbp), %rdx
	movq	-120(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	-32(%rbp), %r10
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
.L441:
	movq	-88(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
.L439:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	cmpl	%eax, -152(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3513, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC121(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	cmpl	%eax, -152(%rbp)
	je	.L444
	leaq	__PRETTY_FUNCTION__.8388(%rip), %rcx
	movl	$3513, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC121(%rip), %rdi
	call	__assert_fail@PLT
.L444:
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L443
	call	__stack_chk_fail@PLT
.L443:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	grow_column, .-grow_column
	.section	.rodata
.LC122:
	.string	"data != NULL"
.LC123:
	.string	"data != ((void *)0)"
.LC124:
	.string	"r != NULL"
.LC125:
	.string	"r != ((void *)0)"
.LC126:
	.string	"e != NULL"
.LC127:
	.string	"e != ((void *)0)"
	.align 8
.LC128:
	.string	"ecs_vector_size(data->entities) == size"
	.align 8
.LC129:
	.string	"ecs_vector_size(columns[i].data) == size"
	.text
	.type	grow_data, @function
grow_data:
.LFB57:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movl	%ecx, -156(%rbp)
	movl	%r8d, -160(%rbp)
	movq	%r9, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -144(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3526, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -144(%rbp)
	jne	.L446
	leaq	__PRETTY_FUNCTION__.8404(%rip), %rcx
	movl	$3526, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L446:
	cmpq	$0, -152(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3527, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -152(%rbp)
	jne	.L447
	leaq	__PRETTY_FUNCTION__.8404(%rip), %rcx
	movl	$3527, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC123(%rip), %rdi
	call	__assert_fail@PLT
.L447:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_data_count
	movl	%eax, -100(%rbp)
	movq	-144(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -116(%rbp)
	movq	-144(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -112(%rbp)
	movq	-144(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -108(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	leaq	-108(%rbp), %r9
	leaq	-112(%rbp), %r8
	leaq	-116(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	leaq	-88(%rbp), %rdi
	pushq	%rdi
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ensure_data
	addq	$32, %rsp
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdi
	movl	-160(%rbp), %eax
	movl	%eax, %ecx
	movl	$16, %edx
	movl	$8, %esi
	call	_ecs_vector_set_size
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdi
	movl	-156(%rbp), %eax
	movl	%eax, %ecx
	movl	$16, %edx
	movl	$8, %esi
	call	_ecs_vector_addn
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3542, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	jne	.L448
	leaq	__PRETTY_FUNCTION__.8404(%rip), %rcx
	movl	$3542, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC125(%rip), %rdi
	call	__assert_fail@PLT
.L448:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	cmpl	%eax, -160(%rbp)
	jge	.L449
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	movl	%eax, -160(%rbp)
.L449:
	movq	-152(%rbp), %rax
	movl	-160(%rbp), %edx
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_set_size
	movq	-152(%rbp), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_addn
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3550, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC126(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L450
	leaq	__PRETTY_FUNCTION__.8404(%rip), %rcx
	movl	$3550, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC127(%rip), %rdi
	call	__assert_fail@PLT
.L450:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	cmpl	%eax, -160(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3551, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC128(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	cmpl	%eax, -160(%rbp)
	je	.L451
	leaq	__PRETTY_FUNCTION__.8404(%rip), %rcx
	movl	$3551, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC128(%rip), %rdi
	call	__assert_fail@PLT
.L451:
	cmpq	$0, -168(%rbp)
	je	.L452
	movl	$0, -104(%rbp)
	jmp	.L453
.L454:
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -104(%rbp)
.L453:
	movl	-104(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jl	.L454
	jmp	.L455
.L452:
	movl	-156(%rbp), %eax
	sall	$3, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L455:
	movl	-156(%rbp), %eax
	sall	$3, %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -40(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L456
.L460:
	movq	-96(%rbp), %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %eax
	testw	%ax, %ax
	je	.L468
	movq	$0, -72(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L459
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.L459:
	movl	-160(%rbp), %r8d
	movl	-156(%rbp), %edi
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	grow_column
	addq	$16, %rsp
	movq	-96(%rbp), %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	cmpl	%eax, -160(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3579, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC129(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-96(%rbp), %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	cmpl	%eax, -160(%rbp)
	je	.L458
	leaq	__PRETTY_FUNCTION__.8404(%rip), %rcx
	movl	$3579, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC129(%rip), %rdi
	call	__assert_fail@PLT
.L468:
	nop
.L458:
	addl	$1, -104(%rbp)
.L456:
	movl	-116(%rbp), %eax
	cmpl	%eax, -104(%rbp)
	jl	.L460
	movl	$0, -104(%rbp)
	jmp	.L461
.L462:
	movq	-88(%rbp), %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-156(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_switch_addn
	addl	$1, -104(%rbp)
.L461:
	movl	-112(%rbp), %eax
	cmpl	%eax, -104(%rbp)
	jl	.L462
	movl	$0, -104(%rbp)
	jmp	.L463
.L464:
	movq	-80(%rbp), %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-156(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_bitset_addn
	addl	$1, -104(%rbp)
.L463:
	movl	-108(%rbp), %eax
	cmpl	%eax, -104(%rbp)
	jl	.L464
	movq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mark_table_dirty
	movq	-136(%rbp), %rax
	movzbl	681(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L465
	cmpl	$0, -100(%rbp)
	jne	.L465
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	table_activate
.L465:
	movq	-144(%rbp), %rax
	movl	112(%rax), %eax
	leal	1(%rax), %edx
	movq	-144(%rbp), %rax
	movl	%edx, 112(%rax)
	movl	-100(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L467
	call	__stack_chk_fail@PLT
.L467:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	grow_data, .-grow_data
	.type	fast_append, @function
fast_append:
.LFB58:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L470
.L472:
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -16(%rbp)
	cmpw	$0, -16(%rbp)
	je	.L471
	movq	-8(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -14(%rbp)
	movl	$16, %eax
	cmpw	$16, -14(%rbp)
	cmovge	-14(%rbp), %ax
	movswl	%ax, %edx
	movswl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
.L471:
	addl	$1, -12(%rbp)
.L470:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L472
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	fast_append, .-fast_append
	.section	.rodata
.LC130:
	.string	"count >= 0"
	.align 8
.LC131:
	.string	"ecs_vector_size(columns[i].data) == ecs_vector_size(data->entities)"
	.align 8
.LC132:
	.string	"ecs_vector_count(columns[i].data) == ecs_vector_count(data->entities)"
.LC133:
	.string	"sw_columns != NULL"
.LC134:
	.string	"sw_columns != ((void *)0)"
.LC135:
	.string	"bs_columns != NULL"
.LC136:
	.string	"bs_columns != ((void *)0)"
	.text
	.globl	flecs_table_append
	.type	flecs_table_append, @function
flecs_table_append:
.LFB59:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movl	%r9d, %eax
	movb	%al, -188(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -160(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3633, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -160(%rbp)
	jne	.L474
	leaq	__PRETTY_FUNCTION__.8453(%rip), %rcx
	movl	$3633, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L474:
	cmpq	$0, -168(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3634, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -168(%rbp)
	jne	.L475
	leaq	__PRETTY_FUNCTION__.8453(%rip), %rcx
	movl	$3634, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC123(%rip), %rdi
	call	__assert_fail@PLT
.L475:
	movq	-160(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3635, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-160(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L476
	leaq	__PRETTY_FUNCTION__.8453(%rip), %rcx
	movl	$3635, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L476:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	movl	%eax, -116(%rbp)
	movq	-160(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -136(%rbp)
	movq	-160(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -132(%rbp)
	movq	-160(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -128(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	leaq	-128(%rbp), %r9
	leaq	-132(%rbp), %r8
	leaq	-136(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	subq	$8, %rsp
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	leaq	-104(%rbp), %rdi
	pushq	%rdi
	leaq	-112(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ensure_data
	addq	$32, %rsp
	movq	-168(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3654, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC126(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -80(%rbp)
	jne	.L477
	leaq	__PRETTY_FUNCTION__.8453(%rip), %rcx
	movl	$3654, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC127(%rip), %rdi
	call	__assert_fail@PLT
.L477:
	movq	-80(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-160(%rbp), %rax
	movl	112(%rax), %edx
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movq	-160(%rbp), %rax
	movl	%edx, 112(%rax)
	movq	-168(%rbp), %rax
	addq	$8, %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3663, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L478
	leaq	__PRETTY_FUNCTION__.8453(%rip), %rcx
	movl	$3663, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC125(%rip), %rdi
	call	__assert_fail@PLT
.L478:
	movq	-72(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mark_table_dirty
	movq	-152(%rbp), %rax
	movzbl	681(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L479
	cmpl	$0, -120(%rbp)
	jne	.L479
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	table_activate
.L479:
	movl	-120(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3675, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC130(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -120(%rbp)
	jns	.L480
	leaq	__PRETTY_FUNCTION__.8453(%rip), %rcx
	movl	$3675, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC130(%rip), %rdi
	call	__assert_fail@PLT
.L480:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	andl	$196992, %eax
	testl	%eax, %eax
	jne	.L481
	movl	-136(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fast_append
	movl	-120(%rbp), %eax
	jmp	.L495
.L481:
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	movl	%eax, -116(%rbp)
	movl	$0, -124(%rbp)
	jmp	.L483
.L488:
	movq	-112(%rbp), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzwl	8(%rax), %eax
	testw	%ax, %ax
	je	.L497
	movq	$0, -88(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L486
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
.L486:
	movzbl	-188(%rbp), %edi
	movl	-116(%rbp), %r8d
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-152(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movl	%r8d, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	grow_column
	addq	$16, %rsp
	movq	-112(%rbp), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	movl	%eax, %ebx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	cmpl	%eax, %ebx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3707, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC131(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-112(%rbp), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	movl	%eax, %ebx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	cmpl	%eax, %ebx
	je	.L487
	leaq	__PRETTY_FUNCTION__.8453(%rip), %rcx
	movl	$3707, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC131(%rip), %rdi
	call	__assert_fail@PLT
.L487:
	movq	-112(%rbp), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, %ebx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, %ebx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3711, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC132(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-112(%rbp), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, %ebx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, %ebx
	je	.L485
	leaq	__PRETTY_FUNCTION__.8453(%rip), %rcx
	movl	$3711, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC132(%rip), %rdi
	call	__assert_fail@PLT
.L497:
	nop
.L485:
	addl	$1, -124(%rbp)
.L483:
	movl	-136(%rbp), %eax
	cmpl	%eax, -124(%rbp)
	jl	.L488
	movl	$0, -124(%rbp)
	jmp	.L489
.L491:
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3718, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	jne	.L490
	leaq	__PRETTY_FUNCTION__.8453(%rip), %rcx
	movl	$3718, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC134(%rip), %rdi
	call	__assert_fail@PLT
.L490:
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_switch_add
	movq	-112(%rbp), %rdx
	movq	-160(%rbp), %rax
	movl	120(%rax), %ecx
	movl	-124(%rbp), %eax
	addl	%ecx, %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_switch_values
	movq	%rax, (%rbx)
	addl	$1, -124(%rbp)
.L489:
	movl	-132(%rbp), %eax
	cmpl	%eax, -124(%rbp)
	jl	.L491
	movl	$0, -124(%rbp)
	jmp	.L492
.L494:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3726, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC135(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L493
	leaq	__PRETTY_FUNCTION__.8453(%rip), %rcx
	movl	$3726, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC136(%rip), %rdi
	call	__assert_fail@PLT
.L493:
	movq	-96(%rbp), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	flecs_bitset_addn
	addl	$1, -124(%rbp)
.L492:
	movl	-128(%rbp), %eax
	cmpl	%eax, -124(%rbp)
	jl	.L494
	movl	-120(%rbp), %eax
.L495:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L496
	call	__stack_chk_fail@PLT
.L496:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	flecs_table_append, .-flecs_table_append
	.type	fast_delete_last, @function
fast_delete_last:
.LFB60:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L499
.L500:
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_remove_last
	addl	$1, -12(%rbp)
.L499:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L500
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	fast_delete_last, .-fast_delete_last
	.type	fast_delete, @function
fast_delete:
.LFB61:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L502
.L504:
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -16(%rbp)
	cmpw	$0, -16(%rbp)
	je	.L503
	movq	-8(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -14(%rbp)
	movl	$16, %eax
	cmpw	$16, -14(%rbp)
	cmovge	-14(%rbp), %ax
	movswl	%ax, %edx
	movswl	-16(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %ecx
	movq	%rax, %rdi
	call	_ecs_vector_remove
.L503:
	addl	$1, -12(%rbp)
.L502:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L504
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	fast_delete, .-fast_delete
	.section	.rodata
.LC137:
	.string	"world != NULL"
.LC138:
	.string	"world != ((void *)0)"
.LC139:
	.string	"count > 0"
.LC140:
	.string	"index <= count"
	.align 8
.LC141:
	.string	"count < ecs_vector_count(v_records)"
.LC142:
	.string	"record_to_move->table != NULL"
	.align 8
.LC143:
	.string	"record_to_move->table != ((void *)0)"
	.align 8
.LC144:
	.string	"record_to_move->table == table"
.LC145:
	.string	"c_info_array != NULL"
.LC146:
	.string	"c_info_array != ((void *)0)"
	.text
	.globl	flecs_table_delete
	.type	flecs_table_delete, @function
flecs_table_delete:
.LFB62:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$240, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movl	%ecx, -252(%rbp)
	movl	%r8d, %eax
	movb	%al, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -232(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3770, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -232(%rbp)
	jne	.L506
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3770, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L506:
	cmpq	$0, -240(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3771, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -240(%rbp)
	jne	.L507
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3771, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L507:
	cmpq	$0, -248(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3772, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -248(%rbp)
	jne	.L508
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3772, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC123(%rip), %rdi
	call	__assert_fail@PLT
.L508:
	movq	-240(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3773, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-240(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L509
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3773, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L509:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3778, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC139(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -208(%rbp)
	jg	.L510
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3778, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC139(%rip), %rdi
	call	__assert_fail@PLT
.L510:
	subl	$1, -208(%rbp)
	movl	-252(%rbp), %eax
	cmpl	-208(%rbp), %eax
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3780, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC140(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-252(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jle	.L511
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3780, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC140(%rip), %rdi
	call	__assert_fail@PLT
.L511:
	movq	-160(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -152(%rbp)
	movl	-208(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movl	-252(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	-252(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-176(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_remove_last
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -208(%rbp)
	setl	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3791, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC141(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -208(%rbp)
	jl	.L512
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3791, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC141(%rip), %rdi
	call	__assert_fail@PLT
.L512:
	movq	-144(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -136(%rbp)
	movl	-208(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movl	-252(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_remove_last
	movl	-252(%rbp), %eax
	cmpl	-208(%rbp), %eax
	je	.L513
	cmpq	$0, -128(%rbp)
	je	.L513
	movq	-128(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	js	.L514
	movl	-252(%rbp), %eax
	leal	1(%rax), %edx
	movq	-128(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L515
.L514:
	movl	-252(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movq	-128(%rbp), %rax
	movl	%edx, 8(%rax)
.L515:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3806, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC142(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L516
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3806, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC143(%rip), %rdi
	call	__assert_fail@PLT
.L516:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -240(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3807, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC144(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -240(%rbp)
	je	.L513
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3807, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC144(%rip), %rdi
	call	__assert_fail@PLT
.L513:
	movq	-240(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mark_table_dirty
	cmpl	$0, -208(%rbp)
	jne	.L517
	movq	-240(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	table_activate
.L517:
	movq	-240(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-240(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -204(%rbp)
	movq	-240(%rbp), %rax
	movl	16(%rax), %eax
	andl	$196992, %eax
	testl	%eax, %eax
	jne	.L518
	movl	-252(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jne	.L519
	movl	-204(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fast_delete_last
	jmp	.L505
.L519:
	movl	-252(%rbp), %edx
	movl	-204(%rbp), %ecx
	movq	-112(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fast_delete
	jmp	.L505
.L518:
	movl	-252(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jne	.L522
	cmpb	$0, -256(%rbp)
	je	.L523
	movq	-240(%rbp), %rax
	movl	16(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L523
	cmpq	$0, -120(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3841, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC145(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -120(%rbp)
	jne	.L524
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3841, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC146(%rip), %rdi
	call	__assert_fail@PLT
.L524:
	movl	$0, -212(%rbp)
	jmp	.L525
.L529:
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L526
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L526
	movq	-56(%rbp), %rax
	movl	88(%rax), %eax
	movl	%eax, -192(%rbp)
	movq	-56(%rbp), %rax
	movl	92(%rax), %eax
	movl	%eax, -188(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rbx
	movl	-192(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %r12
	cmpl	$15, -188(%rbp)
	jle	.L527
	movl	-188(%rbp), %eax
	cwtl
	jmp	.L528
.L527:
	movl	$16, %eax
.L528:
	movl	-212(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-112(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-192(%rbp), %esi
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	_ecs_vector_last
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	80(%rax), %rsi
	leaq	-168(%rbp), %rdx
	movq	-232(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	-48(%rbp), %r10
	movl	$1, %r9d
	movq	%r12, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
.L526:
	addl	$1, -212(%rbp)
.L525:
	movl	-212(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jl	.L529
.L523:
	movl	-204(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fast_delete_last
	jmp	.L530
.L522:
	cmpb	$0, -256(%rbp)
	je	.L531
	movq	-240(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1280, %eax
	testl	%eax, %eax
	je	.L531
	cmpq	$0, -120(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3862, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC145(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -120(%rbp)
	jne	.L532
	leaq	__PRETTY_FUNCTION__.8509(%rip), %rcx
	movl	$3862, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC146(%rip), %rdi
	call	__assert_fail@PLT
.L532:
	movl	$0, -212(%rbp)
	jmp	.L533
.L540:
	movl	-212(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movzwl	8(%rax), %eax
	cwtl
	movl	%eax, -200(%rbp)
	movq	-104(%rbp), %rax
	movzwl	10(%rax), %eax
	cwtl
	movl	%eax, -196(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpl	$15, -196(%rbp)
	jle	.L534
	movl	-196(%rbp), %eax
	cwtl
	jmp	.L535
.L534:
	movl	$16, %eax
.L535:
	movl	-252(%rbp), %edx
	movl	-200(%rbp), %esi
	movq	-96(%rbp), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	_ecs_vector_get
	movq	%rax, -88(%rbp)
	cmpl	$15, -196(%rbp)
	jle	.L536
	movl	-196(%rbp), %eax
	cwtl
	jmp	.L537
.L536:
	movl	$16, %eax
.L537:
	movl	-200(%rbp), %esi
	movq	-96(%rbp), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	_ecs_vector_last
	movq	%rax, -80(%rbp)
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L538
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L538
	movq	-72(%rbp), %rax
	movq	32(%rax), %rbx
	movl	-200(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-88(%rbp), %r9
	leaq	-168(%rbp), %r8
	leaq	-176(%rbp), %rcx
	movq	-232(%rbp), %rax
	pushq	%rbx
	pushq	$1
	pushq	%rdi
	pushq	-80(%rbp)
	movq	-64(%rbp), %r10
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L539
.L538:
	movl	-200(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L539:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_remove_last
	addl	$1, -212(%rbp)
.L533:
	movl	-212(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jl	.L540
	jmp	.L530
.L531:
	movl	-252(%rbp), %edx
	movl	-204(%rbp), %ecx
	movq	-112(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fast_delete
.L530:
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-240(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -184(%rbp)
	movl	$0, -212(%rbp)
	jmp	.L541
.L542:
	movl	-212(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-252(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_switch_remove
	addl	$1, -212(%rbp)
.L541:
	movl	-212(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L542
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-240(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -180(%rbp)
	movl	$0, -212(%rbp)
	jmp	.L543
.L544:
	movl	-212(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movl	-252(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	flecs_bitset_remove
	addl	$1, -212(%rbp)
.L543:
	movl	-212(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L544
.L505:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L545
	call	__stack_chk_fail@PLT
.L545:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	flecs_table_delete, .-flecs_table_delete
	.section	.rodata
.LC147:
	.string	"dst != NULL"
.LC148:
	.string	"dst != ((void *)0)"
.LC149:
	.string	"src != NULL"
.LC150:
	.string	"src != ((void *)0)"
	.text
	.type	fast_move, @function
fast_move:
.LFB63:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movl	%r9d, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -112(%rbp)
	movq	-136(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	-160(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -100(%rbp)
	movq	-96(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -72(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L547
.L552:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L548
	movl	-112(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-108(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -116(%rbp)
	cmpw	$0, -116(%rbp)
	je	.L548
	movq	-32(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -114(%rbp)
	movl	$16, %eax
	cmpw	$16, -114(%rbp)
	cmovge	-114(%rbp), %ax
	movswl	%ax, %edx
	movswl	-116(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-148(%rbp), %ecx
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -16(%rbp)
	movl	$16, %eax
	cmpw	$16, -114(%rbp)
	cmovge	-114(%rbp), %ax
	movswl	%ax, %edx
	movswl	-116(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-152(%rbp), %ecx
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3941, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC147(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L549
	leaq	__PRETTY_FUNCTION__.8576(%rip), %rcx
	movl	$3941, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC148(%rip), %rdi
	call	__assert_fail@PLT
.L549:
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3942, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC149(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L550
	leaq	__PRETTY_FUNCTION__.8576(%rip), %rcx
	movl	$3942, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC150(%rip), %rdi
	call	__assert_fail@PLT
.L550:
	movswq	-116(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L548:
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	setbe	%al
	movzbl	%al, %eax
	addl	%eax, -112(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	addl	%eax, -108(%rbp)
.L547:
	movl	-112(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.L553
	movl	-108(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L552
.L553:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	fast_move, .-fast_move
	.section	.rodata
.LC151:
	.string	"new_table != NULL"
.LC152:
	.string	"new_table != ((void *)0)"
.LC153:
	.string	"old_table != NULL"
.LC154:
	.string	"old_table != ((void *)0)"
.LC155:
	.string	"!new_table->lock"
.LC156:
	.string	"!old_table->lock"
.LC157:
	.string	"old_index >= 0"
.LC158:
	.string	"new_index >= 0"
.LC159:
	.string	"old_data != NULL"
.LC160:
	.string	"old_data != ((void *)0)"
.LC161:
	.string	"new_data != NULL"
.LC162:
	.string	"new_data != ((void *)0)"
	.text
	.globl	flecs_table_move
	.type	flecs_table_move, @function
flecs_table_move:
.LFB64:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movl	%r9d, -204(%rbp)
	movl	40(%rbp), %eax
	movb	%al, -208(%rbp)
	cmpq	$0, -192(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3964, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC151(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -192(%rbp)
	jne	.L555
	leaq	__PRETTY_FUNCTION__.8592(%rip), %rcx
	movl	$3964, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC152(%rip), %rdi
	call	__assert_fail@PLT
.L555:
	cmpq	$0, 16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3965, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC153(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, 16(%rbp)
	jne	.L556
	leaq	__PRETTY_FUNCTION__.8592(%rip), %rcx
	movl	$3965, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC154(%rip), %rdi
	call	__assert_fail@PLT
.L556:
	movq	-192(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3966, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC155(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-192(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L557
	leaq	__PRETTY_FUNCTION__.8592(%rip), %rcx
	movl	$3966, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC155(%rip), %rdi
	call	__assert_fail@PLT
.L557:
	movq	16(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3967, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC156(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	16(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L558
	leaq	__PRETTY_FUNCTION__.8592(%rip), %rcx
	movl	$3967, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC156(%rip), %rdi
	call	__assert_fail@PLT
.L558:
	movl	32(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3969, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC157(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, 32(%rbp)
	jns	.L559
	leaq	__PRETTY_FUNCTION__.8592(%rip), %rcx
	movl	$3969, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC157(%rip), %rdi
	call	__assert_fail@PLT
.L559:
	movl	-204(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3970, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC158(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -204(%rbp)
	jns	.L560
	leaq	__PRETTY_FUNCTION__.8592(%rip), %rcx
	movl	$3970, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC158(%rip), %rdi
	call	__assert_fail@PLT
.L560:
	cmpq	$0, 24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3972, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC159(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, 24(%rbp)
	jne	.L561
	leaq	__PRETTY_FUNCTION__.8592(%rip), %rcx
	movl	$3972, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC160(%rip), %rdi
	call	__assert_fail@PLT
.L561:
	cmpq	$0, -200(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$3973, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -200(%rbp)
	jne	.L562
	leaq	__PRETTY_FUNCTION__.8592(%rip), %rcx
	movl	$3973, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC162(%rip), %rdi
	call	__assert_fail@PLT
.L562:
	movq	-192(%rbp), %rax
	movl	16(%rax), %edx
	movq	16(%rbp), %rax
	movl	16(%rax), %eax
	orl	%edx, %eax
	andl	$196992, %eax
	testl	%eax, %eax
	jne	.L563
	movl	32(%rbp), %edi
	movq	24(%rbp), %rcx
	movl	-204(%rbp), %edx
	movq	-200(%rbp), %rsi
	movq	-192(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	16(%rbp), %rcx
	movq	%rax, %rdi
	call	fast_move
	jmp	.L554
.L563:
	movl	32(%rbp), %edi
	movq	24(%rbp), %rcx
	movl	-204(%rbp), %edx
	movq	-200(%rbp), %rsi
	movq	-192(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	16(%rbp), %rcx
	movq	%rax, %rdi
	call	move_switch_columns
	addq	$16, %rsp
	movl	32(%rbp), %edi
	movq	24(%rbp), %rcx
	movl	-204(%rbp), %edx
	movq	-200(%rbp), %rsi
	movq	-192(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	16(%rbp), %rcx
	movq	%rax, %rdi
	call	move_bitset_columns
	addq	$16, %rsp
	movq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	movb	%al, -157(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movl	$0, -152(%rbp)
	movq	-192(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -144(%rbp)
	movl	$0, -148(%rbp)
	movq	16(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -140(%rbp)
	movq	-136(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -120(%rbp)
	movq	-128(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -112(%rbp)
	movq	24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.L565
.L577:
	movl	-152(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	-148(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L566
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	-148(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -156(%rbp)
	movq	-72(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -154(%rbp)
	cmpw	$0, -156(%rbp)
	je	.L574
	movl	$16, %eax
	cmpw	$16, -154(%rbp)
	cmovge	-154(%rbp), %ax
	movswl	%ax, %edx
	movswl	-156(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-204(%rbp), %ecx
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -56(%rbp)
	movl	$16, %eax
	cmpw	$16, -154(%rbp)
	cmovge	-154(%rbp), %ax
	movswl	%ax, %edx
	movswl	-156(%rbp), %esi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rbp), %ecx
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -48(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4015, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC147(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L568
	leaq	__PRETTY_FUNCTION__.8592(%rip), %rcx
	movl	$4015, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC148(%rip), %rdi
	call	__assert_fail@PLT
.L568:
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4016, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC149(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -48(%rbp)
	jne	.L569
	leaq	__PRETTY_FUNCTION__.8592(%rip), %rcx
	movl	$4016, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC150(%rip), %rdi
	call	__assert_fail@PLT
.L569:
	movq	-192(%rbp), %rax
	movq	32(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpb	$0, -157(%rbp)
	je	.L570
	cmpq	$0, -40(%rbp)
	je	.L571
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L571
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movswq	-156(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %r9
	leaq	-184(%rbp), %r8
	leaq	-176(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	-168(%rbp), %rax
	pushq	-8(%rbp)
	pushq	$1
	pushq	%rdi
	pushq	-48(%rbp)
	movq	-16(%rbp), %r10
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L574
.L571:
	movswq	-156(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L574
.L570:
	cmpq	$0, -40(%rbp)
	je	.L573
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L573
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movswq	-156(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %r9
	leaq	-184(%rbp), %r8
	leaq	-176(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	-168(%rbp), %rax
	pushq	-24(%rbp)
	pushq	$1
	pushq	%rdi
	pushq	-48(%rbp)
	movq	-32(%rbp), %r10
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L574
.L573:
	movswq	-156(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L574
.L566:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L575
	cmpb	$0, -208(%rbp)
	je	.L574
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-192(%rbp), %rax
	movq	32(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-204(%rbp), %ecx
	leaq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movl	$1, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ctor_component
	jmp	.L574
.L575:
	movl	-148(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	32(%rbp), %ecx
	leaq	-184(%rbp), %rdx
	movq	-168(%rbp), %rax
	movl	$1, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	dtor_component
.L574:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	setbe	%al
	movzbl	%al, %eax
	addl	%eax, -152(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	addl	%eax, -148(%rbp)
.L565:
	movl	-152(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.L576
	movl	-148(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jl	.L577
.L576:
	cmpb	$0, -208(%rbp)
	je	.L581
	jmp	.L579
.L580:
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-192(%rbp), %rax
	movq	32(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-204(%rbp), %ecx
	leaq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movl	$1, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ctor_component
	addl	$1, -152(%rbp)
.L579:
	movl	-152(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jl	.L580
	jmp	.L581
.L582:
	movl	-148(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	16(%rbp), %rax
	movq	32(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	32(%rbp), %ecx
	leaq	-184(%rbp), %rdx
	movq	-168(%rbp), %rax
	movl	$1, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	dtor_component
	addl	$1, -148(%rbp)
.L581:
	movl	-148(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jl	.L582
.L554:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	flecs_table_move, .-flecs_table_move
	.globl	flecs_table_appendn
	.type	flecs_table_appendn, @function
flecs_table_appendn:
.LFB65:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4078, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L584
	leaq	__PRETTY_FUNCTION__.8633(%rip), %rcx
	movl	$4078, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L584:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_data_count
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	-44(%rbp), %eax
	leal	(%rdx,%rax), %r8d
	movq	-56(%rbp), %rdi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	grow_data
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	flecs_table_appendn, .-flecs_table_appendn
	.globl	flecs_table_set_size
	.type	flecs_table_set_size, @function
flecs_table_set_size:
.LFB66:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4090, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-64(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L587
	leaq	__PRETTY_FUNCTION__.8641(%rip), %rcx
	movl	$4090, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L587:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_data_count
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.L588
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	grow_data
	jmp	.L591
.L588:
	cmpl	$0, -76(%rbp)
	jne	.L591
	movq	-64(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-64(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-64(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -40(%rbp)
	leaq	-40(%rbp), %r9
	leaq	-44(%rbp), %r8
	leaq	-48(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	leaq	-16(%rbp), %rdi
	pushq	%rdi
	leaq	-24(%rbp), %rdi
	pushq	%rdi
	leaq	-32(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ensure_data
	addq	$32, %rsp
.L591:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L590
	call	__stack_chk_fail@PLT
.L590:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	flecs_table_set_size, .-flecs_table_set_size
	.globl	flecs_table_data_count
	.type	flecs_table_data_count, @function
flecs_table_data_count:
.LFB67:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L593
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	jmp	.L595
.L593:
	movl	$0, %eax
.L595:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	flecs_table_data_count, .-flecs_table_data_count
	.type	swap_switch_columns, @function
swap_switch_columns:
.LFB68:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L601
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L599
.L600:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	flecs_switch_swap
	addl	$1, -24(%rbp)
.L599:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L600
	jmp	.L596
.L601:
	nop
.L596:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	swap_switch_columns, .-swap_switch_columns
	.type	swap_bitset_columns, @function
swap_bitset_columns:
.LFB69:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L607
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L605
.L606:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	flecs_bitset_swap
	addl	$1, -24(%rbp)
.L605:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L606
	jmp	.L602
.L607:
	nop
.L602:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	swap_bitset_columns, .-swap_bitset_columns
	.section	.rodata
.LC163:
	.string	"row_1 >= 0"
.LC164:
	.string	"row_2 >= 0"
.LC165:
	.string	"record_ptr_1 != NULL"
.LC166:
	.string	"record_ptr_1 != ((void *)0)"
.LC167:
	.string	"record_ptr_2 != NULL"
.LC168:
	.string	"record_ptr_2 != ((void *)0)"
	.text
	.globl	flecs_table_swap
	.type	flecs_table_swap, @function
flecs_table_swap:
.LFB70:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	%ecx, -140(%rbp)
	movl	%r8d, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-128(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4165, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-128(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L609
	leaq	__PRETTY_FUNCTION__.8685(%rip), %rcx
	movl	$4165, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L609:
	cmpq	$0, -136(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4166, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -136(%rbp)
	jne	.L610
	leaq	__PRETTY_FUNCTION__.8685(%rip), %rcx
	movl	$4166, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC123(%rip), %rdi
	call	__assert_fail@PLT
.L610:
	movl	-140(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4167, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC163(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -140(%rbp)
	jns	.L611
	leaq	__PRETTY_FUNCTION__.8685(%rip), %rcx
	movl	$4167, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC163(%rip), %rdi
	call	__assert_fail@PLT
.L611:
	movl	-144(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4168, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC164(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -144(%rbp)
	jns	.L612
	leaq	__PRETTY_FUNCTION__.8685(%rip), %rcx
	movl	$4168, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC164(%rip), %rdi
	call	__assert_fail@PLT
.L612:
	movl	-140(%rbp), %eax
	cmpl	-144(%rbp), %eax
	je	.L625
	movq	-128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mark_table_dirty
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -96(%rbp)
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	-144(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -72(%rbp)
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-144(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4185, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC165(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	jne	.L615
	leaq	__PRETTY_FUNCTION__.8685(%rip), %rcx
	movl	$4185, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC166(%rip), %rdi
	call	__assert_fail@PLT
.L615:
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4186, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC167(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L616
	leaq	__PRETTY_FUNCTION__.8685(%rip), %rcx
	movl	$4186, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC168(%rip), %rdi
	call	__assert_fail@PLT
.L616:
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$31, %eax
	movb	%al, -110(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$31, %eax
	movb	%al, -109(%rbp)
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-144(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rax, (%rdx)
	movzbl	-110(%rbp), %edx
	movl	-144(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	flecs_row_to_record
	movq	-64(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movzbl	-109(%rbp), %edx
	movl	-140(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	flecs_row_to_record
	movq	-56(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-144(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-144(%rbp), %ecx
	movl	-140(%rbp), %edx
	movq	-136(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	swap_switch_columns
	movl	-144(%rbp), %ecx
	movl	-140(%rbp), %edx
	movq	-136(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	swap_bitset_columns
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L626
	movq	-128(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -100(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L618
.L623:
	movl	-104(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzwl	8(%rax), %eax
	movw	%ax, -108(%rbp)
	movl	-104(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzwl	10(%rax), %eax
	movw	%ax, -106(%rbp)
	movl	$16, %eax
	cmpw	$16, -106(%rbp)
	cmovge	-106(%rbp), %ax
	movswl	%ax, %edx
	movswl	-108(%rbp), %ecx
	movl	-104(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -40(%rbp)
	cmpw	$0, -108(%rbp)
	je	.L619
	movswq	-108(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rdx
.L620:
	cmpq	%rdx, %rsp
	je	.L621
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L620
.L621:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L622
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L622:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -32(%rbp)
	movswl	-108(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movswl	-108(%rbp), %eax
	imull	-144(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movswq	-108(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movswq	-108(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movswq	-108(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L619:
	addl	$1, -104(%rbp)
.L618:
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L623
	jmp	.L608
.L625:
	nop
	jmp	.L608
.L626:
	nop
.L608:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L624
	call	__stack_chk_fail@PLT
.L624:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	flecs_table_swap, .-flecs_table_swap
	.type	merge_vector, @function
merge_vector:
.LFB71:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%ecx, %eax
	movw	%dx, -68(%rbp)
	movw	%ax, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L628
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L629
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
.L629:
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L632
.L628:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	$16, %eax
	cmpw	$16, -72(%rbp)
	cmovge	-72(%rbp), %ax
	movswl	%ax, %edx
	movswl	-68(%rbp), %esi
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_count
	movl	$16, %eax
	cmpw	$16, -72(%rbp)
	cmovge	-72(%rbp), %ax
	movswl	%ax, %edx
	movswl	-68(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -24(%rbp)
	movl	$16, %eax
	cmpw	$16, -72(%rbp)
	cmovge	-72(%rbp), %ax
	movswl	%ax, %edx
	movswl	-68(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movswl	-68(%rbp), %eax
	imull	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movswl	-68(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L632:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L631
	call	__stack_chk_fail@PLT
.L631:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	merge_vector, .-merge_vector
	.type	merge_column, @function
merge_column:
.LFB72:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movq	%r8, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -92(%rbp)
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -90(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jne	.L634
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L635
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
.L635:
	movq	-56(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L641
.L634:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %edx
	movl	-84(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	$16, %eax
	cmpw	$16, -90(%rbp)
	cmovge	-90(%rbp), %ax
	movswl	%ax, %edx
	movswl	-92(%rbp), %esi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_count
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -64(%rbp)
	je	.L637
	movl	-84(%rbp), %r8d
	movl	-88(%rbp), %edi
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ctor_component
.L637:
	movl	$16, %eax
	cmpw	$16, -90(%rbp)
	cmovge	-90(%rbp), %ax
	movswl	%ax, %edx
	movswl	-92(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -48(%rbp)
	movl	$16, %eax
	cmpw	$16, -90(%rbp)
	cmovge	-90(%rbp), %ax
	movswl	%ax, %edx
	movswl	-92(%rbp), %ecx
	movq	-136(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -40(%rbp)
	movswl	-92(%rbp), %eax
	imull	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L638
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L638
	movq	-64(%rbp), %rax
	movq	32(%rax), %rbx
	movswq	-92(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-64(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-40(%rbp), %r9
	movq	-48(%rbp), %r11
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movl	-84(%rbp), %r8d
	pushq	%r8
	pushq	%rdi
	movq	-32(%rbp), %r10
	movq	%r11, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L639
.L638:
	movswl	-92(%rbp), %eax
	imull	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L639:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
.L641:
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L640
	call	__stack_chk_fail@PLT
.L640:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	merge_column, .-merge_column
	.section	.rodata
	.align 8
.LC169:
	.string	"!new_component_count || new_columns"
	.align 8
.LC170:
	.string	"ecs_vector_count(new_data->entities) == old_count + new_count"
	.text
	.type	merge_table_data, @function
merge_table_data:
.LFB73:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movl	%ecx, -172(%rbp)
	movl	%r8d, -176(%rbp)
	movq	%r9, -184(%rbp)
	movl	$0, -136(%rbp)
	movq	-160(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -128(%rbp)
	movl	$0, -132(%rbp)
	movq	-168(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -124(%rbp)
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -104(%rbp)
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L643
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L643
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_init_data
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
.L643:
	cmpl	$0, -128(%rbp)
	je	.L644
	cmpq	$0, -120(%rbp)
	je	.L645
.L644:
	movl	$1, %eax
	jmp	.L646
.L645:
	movl	$0, %eax
.L646:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4342, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC169(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -128(%rbp)
	je	.L647
	cmpq	$0, -120(%rbp)
	jne	.L647
	leaq	__PRETTY_FUNCTION__.8752(%rip), %rcx
	movl	$4342, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC169(%rip), %rdi
	call	__assert_fail@PLT
.L647:
	cmpl	$0, -172(%rbp)
	je	.L665
	movq	-184(%rbp), %rax
	movq	(%rax), %rsi
	movq	16(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	merge_vector
	movq	-184(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -88(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	-172(%rbp), %ecx
	movl	-176(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4354, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC170(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	-172(%rbp), %ecx
	movl	-176(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	je	.L650
	leaq	__PRETTY_FUNCTION__.8752(%rip), %rcx
	movl	$4354, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC170(%rip), %rdi
	call	__assert_fail@PLT
.L650:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rbp), %rdx
	leaq	8(%rdx), %rdi
	movl	$8, %ecx
	movl	$8, %edx
	movq	%rax, %rsi
	call	merge_vector
	movq	-184(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L651
.L658:
	movl	-136(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-132(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-136(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzwl	8(%rax), %eax
	movw	%ax, -144(%rbp)
	movl	-136(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzwl	10(%rax), %eax
	movw	%ax, -142(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L652
	movl	-132(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-136(%rbp), %edx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	16(%rbp), %rdx
	movq	%rax, %rdi
	call	merge_column
	movl	-132(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movl	-136(%rbp), %eax
	leal	1(%rax), %edx
	movq	-160(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mark_table_dirty
	addl	$1, -136(%rbp)
	addl	$1, -132(%rbp)
	jmp	.L651
.L652:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L653
	cmpw	$0, -144(%rbp)
	je	.L654
	movl	-136(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	$16, %eax
	cmpw	$16, -142(%rbp)
	cmovge	-142(%rbp), %ax
	movswl	%ax, %edx
	movswl	-144(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_count
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L654
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	%edi, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ctor_component
.L654:
	addl	$1, -136(%rbp)
	jmp	.L651
.L653:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jbe	.L651
	cmpw	$0, -144(%rbp)
	je	.L655
	movl	-132(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L656
	movl	-172(%rbp), %edi
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	%edi, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	dtor_component
.L656:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.L655:
	addl	$1, -132(%rbp)
.L651:
	movl	-136(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.L657
	movl	-132(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jl	.L658
.L657:
	movq	-184(%rbp), %rdi
	movq	-168(%rbp), %rcx
	movl	-176(%rbp), %edx
	movq	-160(%rbp), %rax
	subq	$8, %rsp
	movl	-172(%rbp), %esi
	pushq	%rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	move_switch_columns
	addq	$16, %rsp
	jmp	.L659
.L661:
	movl	-136(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -140(%rbp)
	movq	-16(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -138(%rbp)
	cmpw	$0, -140(%rbp)
	je	.L660
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	$16, %eax
	cmpw	$16, -138(%rbp)
	cmovge	-138(%rbp), %ax
	movswl	%ax, %edx
	movswl	-140(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_count
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L660
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movq	-88(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	%edi, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ctor_component
.L660:
	addl	$1, -136(%rbp)
.L659:
	movl	-136(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jl	.L661
	jmp	.L662
.L664:
	movl	-132(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L663
	movl	-172(%rbp), %edi
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	%edi, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	dtor_component
.L663:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	addl	$1, -132(%rbp)
.L662:
	movl	-132(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jl	.L664
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mark_table_dirty
	jmp	.L642
.L665:
	nop
.L642:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	merge_table_data, .-merge_table_data
	.globl	ecs_table_count
	.type	ecs_table_count, @function
ecs_table_count:
.LFB74:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4460, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L667
	leaq	__PRETTY_FUNCTION__.8780(%rip), %rcx
	movl	$4460, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L667:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L668
	movl	$0, %eax
	jmp	.L669
.L668:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_data_count
.L669:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ecs_table_count, .-ecs_table_count
	.section	.rodata
.LC171:
	.string	"record != NULL"
.LC172:
	.string	"record != ((void *)0)"
	.text
	.globl	flecs_table_merge
	.type	flecs_table_merge, @function
flecs_table_merge:
.LFB75:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	cmpq	$0, -88(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4476, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC153(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -88(%rbp)
	jne	.L671
	leaq	__PRETTY_FUNCTION__.8789(%rip), %rcx
	movl	$4476, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC154(%rip), %rdi
	call	__assert_fail@PLT
.L671:
	movq	-88(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4477, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC156(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L672
	leaq	__PRETTY_FUNCTION__.8789(%rip), %rcx
	movl	$4477, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC156(%rip), %rdi
	call	__assert_fail@PLT
.L672:
	movb	$0, -54(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L673
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_clear_data
	movl	$0, %eax
	jmp	.L674
.L673:
	movq	-80(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4486, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC155(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-80(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L675
	leaq	__PRETTY_FUNCTION__.8789(%rip), %rcx
	movl	$4486, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC155(%rip), %rdi
	call	__assert_fail@PLT
.L675:
	cmpq	$0, -104(%rbp)
	jne	.L676
	movl	$0, %eax
	jmp	.L674
.L676:
	cmpq	$0, -96(%rbp)
	jne	.L677
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_or_create_data
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L677
	movb	$1, -54(%rbp)
.L677:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -48(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -44(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L678
.L681:
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L679
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4514, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC171(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L680
	leaq	__PRETTY_FUNCTION__.8789(%rip), %rcx
	movl	$4514, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC172(%rip), %rdi
	call	__assert_fail@PLT
.L679:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_ensure
	movq	%rax, -40(%rbp)
.L680:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$31, %eax
	movb	%al, -53(%rbp)
	movzbl	-53(%rbp), %eax
	movl	-44(%rbp), %ecx
	movl	-52(%rbp), %edx
	addl	%ecx, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	flecs_row_to_record
	movq	-40(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	addl	$1, -52(%rbp)
.L678:
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L681
	cmpb	$0, -54(%rbp)
	je	.L682
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	jmp	.L683
.L682:
	movq	-104(%rbp), %r8
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	-96(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	merge_table_data
	addq	$16, %rsp
.L683:
	movq	-80(%rbp), %rax
	movl	112(%rax), %eax
	leal	1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 112(%rax)
	cmpl	$0, -44(%rbp)
	jne	.L684
	cmpl	$0, -48(%rbp)
	je	.L684
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	table_activate
.L684:
	movq	-96(%rbp), %rax
.L674:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	flecs_table_merge, .-flecs_table_merge
	.section	.rodata
.LC173:
	.string	"!data || data != table_data"
	.text
	.globl	flecs_table_replace_data
	.type	flecs_table_replace_data, @function
flecs_table_replace_data:
.LFB76:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L686
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L687
.L686:
	movl	$1, %eax
	jmp	.L688
.L687:
	movl	$0, %eax
.L688:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4548, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC173(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	je	.L689
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L689
	leaq	__PRETTY_FUNCTION__.8808(%rip), %rcx
	movl	$4548, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC173(%rip), %rdi
	call	__assert_fail@PLT
.L689:
	movq	-48(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4549, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-48(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L690
	leaq	__PRETTY_FUNCTION__.8808(%rip), %rcx
	movl	$4549, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L690:
	cmpq	$0, -24(%rbp)
	je	.L691
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	run_on_remove
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_clear_data
.L691:
	cmpq	$0, -56(%rbp)
	je	.L696
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_or_create_data
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_table_count
	movl	%eax, -28(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L695
	cmpl	$0, -28(%rbp)
	je	.L695
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	table_activate
	jmp	.L685
.L695:
	cmpl	$0, -32(%rbp)
	je	.L685
	cmpl	$0, -28(%rbp)
	jne	.L685
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	table_activate
	jmp	.L685
.L696:
	nop
.L685:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	flecs_table_replace_data, .-flecs_table_replace_data
	.globl	flecs_table_match_filter
	.type	flecs_table_match_filter, @function
flecs_table_match_filter:
.LFB77:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4578, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L698
	leaq	__PRETTY_FUNCTION__.8815(%rip), %rcx
	movl	$4578, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L698:
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4579, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L699
	leaq	__PRETTY_FUNCTION__.8815(%rip), %rcx
	movl	$4579, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L699:
	cmpq	$0, -40(%rbp)
	jne	.L700
	movl	$1, %eax
	jmp	.L701
.L700:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	1576(%rax), %rax
	testq	%rax, %rax
	je	.L702
	movq	-40(%rbp), %rax
	movl	1592(%rax), %eax
	cmpl	$3, %eax
	jne	.L703
	movq	-40(%rbp), %rax
	movq	1576(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L702
	movl	$0, %eax
	jmp	.L701
.L703:
	movq	-40(%rbp), %rax
	movl	1592(%rax), %eax
	cmpl	$2, %eax
	setne	%al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rax
	movq	1576(%rax), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	flecs_type_contains
	testq	%rax, %rax
	jne	.L702
	movl	$0, %eax
	jmp	.L701
.L702:
	movq	-40(%rbp), %rax
	movq	1584(%rax), %rax
	testq	%rax, %rax
	je	.L704
	movq	-40(%rbp), %rax
	movl	1596(%rax), %eax
	cmpl	$3, %eax
	jne	.L705
	movq	-40(%rbp), %rax
	movq	1584(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L704
	movl	$0, %eax
	jmp	.L701
.L705:
	movq	-40(%rbp), %rax
	movl	1596(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rax
	movq	1584(%rax), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	flecs_type_contains
	testq	%rax, %rax
	je	.L704
	movl	$0, %eax
	jmp	.L701
.L704:
	movl	$1, %eax
.L701:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	flecs_table_match_filter, .-flecs_table_match_filter
	.section	.rodata
.LC174:
	.string	"table->dirty_state != NULL"
	.align 8
.LC175:
	.string	"table->dirty_state != ((void *)0)"
	.text
	.globl	flecs_table_get_dirty_state
	.type	flecs_table_get_dirty_state, @function
flecs_table_get_dirty_state:
.LFB78:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4623, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	movl	$71, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	je	.L707
	leaq	__PRETTY_FUNCTION__.8820(%rip), %rcx
	movl	$4623, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC95(%rip), %rdi
	call	__assert_fail@PLT
.L707:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L708
	movq	32+ecs_os_api(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	20(%rdx), %edx
	addl	$1, %edx
	sall	$2, %edx
	movl	%edx, %edi
	call	*%rax
	movq	-8(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4627, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC174(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L708
	leaq	__PRETTY_FUNCTION__.8820(%rip), %rcx
	movl	$4627, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC175(%rip), %rdi
	call	__assert_fail@PLT
.L708:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	flecs_table_get_dirty_state, .-flecs_table_get_dirty_state
	.section	.rodata
.LC176:
	.string	"dirty_state != NULL"
.LC177:
	.string	"dirty_state != ((void *)0)"
	.text
	.globl	flecs_table_get_monitor
	.type	flecs_table_get_monitor, @function
flecs_table_get_monitor:
.LFB79:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_dirty_state
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4636, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC176(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L711
	leaq	__PRETTY_FUNCTION__.8825(%rip), %rcx
	movl	$4636, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC177(%rip), %rdi
	call	__assert_fail@PLT
.L711:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	leal	0(,%rax,4), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_os_memdup
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	flecs_table_get_monitor, .-flecs_table_get_monitor
	.globl	flecs_table_notify
	.type	flecs_table_notify, @function
flecs_table_notify:
.LFB80:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	682(%rax), %eax
	testb	%al, %al
	jne	.L720
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L716
	cmpl	$3, %eax
	ja	.L713
	cmpl	$2, %eax
	je	.L717
	cmpl	$2, %eax
	ja	.L713
	testl	%eax, %eax
	je	.L718
	cmpl	$1, %eax
	je	.L719
	jmp	.L713
.L718:
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	register_query
	jmp	.L713
.L719:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	unregister_query
	jmp	.L713
.L716:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	notify_component_info
	jmp	.L713
.L717:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	notify_trigger
	jmp	.L713
.L720:
	nop
.L713:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	flecs_table_notify, .-flecs_table_notify
	.globl	ecs_table_lock
	.type	ecs_table_lock, @function
ecs_table_lock:
.LFB81:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	jne	.L723
	movq	-8(%rbp), %rax
	movzbl	681(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L723
	movq	-16(%rbp), %rax
	movl	132(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 132(%rax)
.L723:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	ecs_table_lock, .-ecs_table_lock
	.section	.rodata
.LC178:
	.string	"table->lock >= 0"
	.text
	.globl	ecs_table_unlock
	.type	ecs_table_unlock, @function
ecs_table_unlock:
.LFB82:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	jne	.L726
	movq	-8(%rbp), %rax
	movzbl	681(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L726
	movq	-16(%rbp), %rax
	movl	132(%rax), %eax
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 132(%rax)
	movq	-16(%rbp), %rax
	movl	132(%rax), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4684, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC178(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-16(%rbp), %rax
	movl	132(%rax), %eax
	testl	%eax, %eax
	jns	.L726
	leaq	__PRETTY_FUNCTION__.8845(%rip), %rcx
	movl	$4684, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC178(%rip), %rdi
	call	__assert_fail@PLT
.L726:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	ecs_table_unlock, .-ecs_table_unlock
	.globl	ecs_table_has_module
	.type	ecs_table_has_module, @function
ecs_table_has_module:
.LFB83:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	ecs_table_has_module, .-ecs_table_has_module
	.globl	ecs_table_column_for_id
	.type	ecs_table_column_for_id, @function
ecs_table_column_for_id:
.LFB84:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_table_record
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L730
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L730
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	jmp	.L731
.L730:
	movl	$0, %eax
.L731:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	ecs_table_column_for_id, .-ecs_table_column_for_id
	.section	.rodata
	.align 8
.LC179:
	.string	"column_index < table->column_count"
.LC180:
	.string	"size != 0"
	.text
	.type	get_component_w_index, @function
get_component_w_index:
.LFB85:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -44(%rbp)
	setl	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4726, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC179(%rip), %rdx
	movl	$22, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L733
	leaq	__PRETTY_FUNCTION__.8868(%rip), %rcx
	movl	$4726, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC179(%rip), %rdi
	call	__assert_fail@PLT
.L733:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %eax
	cwtl
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4734, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC180(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -28(%rbp)
	jne	.L734
	leaq	__PRETTY_FUNCTION__.8868(%rip), %rcx
	movl	$4734, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC180(%rip), %rdi
	call	__assert_fail@PLT
.L734:
	movq	-16(%rbp), %rax
	movzwl	10(%rax), %eax
	movl	$16, %edx
	cmpw	$16, %ax
	cmovl	%edx, %eax
	movswl	%ax, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	imull	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	get_component_w_index, .-get_component_w_index
	.type	get_component, @function
get_component:
.LFB86:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_id_record
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L737
	movl	$0, %eax
	jmp	.L738
.L737:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L739
	movl	$0, %eax
	jmp	.L738
.L739:
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_component_w_index
.L738:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	get_component, .-get_component
	.section	.rodata
	.align 8
.LC181:
	.string	"recur_depth < ECS_MAX_RECURSION"
.LC182:
	.string	"recur_depth < (512)"
.LC183:
	.string	"idr != NULL"
.LC184:
	.string	"idr != ((void *)0)"
.LC185:
	.string	"tr_isa != NULL"
.LC186:
	.string	"tr_isa != ((void *)0)"
	.text
	.type	get_base_component, @function
get_base_component:
.LFB87:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	%r9d, -140(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$511, -140(%rbp)
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4771, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC181(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$511, -140(%rbp)
	jle	.L741
	leaq	__PRETTY_FUNCTION__.8889(%rip), %rcx
	movl	$4771, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC182(%rip), %rdi
	call	__assert_fail@PLT
.L741:
	movq	-112(%rbp), %rax
	movl	16(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L742
	movl	$0, %eax
	jmp	.L743
.L742:
	movl	$271, %eax
	movl	%eax, %edx
	movabsq	$17179869184, %rax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rdx, %rax
	cmpq	%rax, -120(%rbp)
	jne	.L744
	movl	$0, %eax
	jmp	.L743
.L744:
	cmpq	$0, -136(%rbp)
	jne	.L745
	movl	$277, %eax
	salq	$32, %rax
	movl	$266, %edx
	movl	%edx, %edx
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_id_record
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4787, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC183(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L746
	leaq	__PRETTY_FUNCTION__.8889(%rip), %rcx
	movl	$4787, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC184(%rip), %rdi
	call	__assert_fail@PLT
.L746:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
.L745:
	movq	-112(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_get
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4795, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	jne	.L747
	leaq	__PRETTY_FUNCTION__.8889(%rip), %rcx
	movl	$4795, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC186(%rip), %rdi
	call	__assert_fail@PLT
.L747:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -92(%rbp)
	movq	-64(%rbp), %rax
	movl	12(%rax), %edx
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -88(%rbp)
	movq	$0, -80(%rbp)
.L753:
	movl	-92(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -92(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L755
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L756
	movq	-112(%rbp), %rax
	movq	(%rax), %rdx
	movq	-128(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L751
	movl	-140(%rbp), %eax
	leal	1(%rax), %r8d
	movq	-136(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	get_base_component
	movq	%rax, -80(%rbp)
	jmp	.L749
.L751:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leaq	-93(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	flecs_record_to_row
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-84(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_component_w_index
	movq	%rax, -80(%rbp)
	jmp	.L749
.L755:
	nop
	jmp	.L749
.L756:
	nop
.L749:
	cmpq	$0, -80(%rbp)
	jne	.L752
	movl	-92(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jl	.L753
.L752:
	movq	-80(%rbp), %rax
.L743:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L754
	call	__stack_chk_fail@PLT
.L754:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	get_base_component, .-get_base_component
	.type	set_row_info, @function
set_row_info:
.LFB88:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	28(%rax), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	flecs_record_to_row
	movq	-8(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	set_row_info, .-set_row_info
	.section	.rodata
	.align 8
.LC187:
	.string	"ecs_vector_count(data->entities) > info->row"
	.text
	.type	set_info_from_record, @function
set_info_from_record:
.LFB89:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4846, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC171(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L760
	leaq	__PRETTY_FUNCTION__.8914(%rip), %rcx
	movl	$4846, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC172(%rip), %rdi
	call	__assert_fail@PLT
.L760:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_row_info
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L764
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4860, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L763
	leaq	__PRETTY_FUNCTION__.8914(%rip), %rcx
	movl	$4860, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC123(%rip), %rdi
	call	__assert_fail@PLT
.L763:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movq	-24(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	%edx, %eax
	setg	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4864, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC187(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movq	-24(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	%edx, %eax
	jg	.L759
	leaq	__PRETTY_FUNCTION__.8914(%rip), %rcx
	movl	$4864, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC187(%rip), %rdi
	call	__assert_fail@PLT
.L764:
	nop
.L759:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	set_info_from_record, .-set_info_from_record
	.type	get_c_info, @function
get_c_info:
.LFB90:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_typeid
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L766
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_c_info
	jmp	.L767
.L766:
	movl	$0, %eax
.L767:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	get_c_info, .-get_c_info
	.type	get_column_info, @function
get_column_info:
.LFB91:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, %eax
	movb	%al, -116(%rbp)
	movq	-96(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -60(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -48(%rbp)
	cmpb	$0, -116(%rbp)
	je	.L769
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -52(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L770
.L771:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_c_info
	movq	%rax, 8(%rbx)
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	movl	%eax, 16(%rdx)
	addl	$1, -72(%rbp)
.L770:
	movl	-72(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L771
	movl	-52(%rbp), %eax
	jmp	.L772
.L769:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L773
.L778:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_c_info
	movq	%rax, 8(%rbx)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	$-1, 16(%rax)
	movl	$0, -64(%rbp)
	jmp	.L774
.L777:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L775
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	movl	%eax, 16(%rdx)
	jmp	.L776
.L775:
	addl	$1, -64(%rbp)
.L774:
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L777
.L776:
	addl	$1, -68(%rbp)
.L773:
	movl	-68(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L778
	movl	-56(%rbp), %eax
.L772:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	get_column_info, .-get_column_info
	.type	run_set_systems_for_entities, @function
run_set_systems_for_entities:
.LFB92:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movl	%r8d, -112(%rbp)
	movq	%r9, -120(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -124(%rbp)
	cmpb	$0, -124(%rbp)
	je	.L780
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L781
.L782:
	movl	-76(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-120(%rbp), %r8
	movl	-112(%rbp), %edi
	movl	-108(%rbp), %ecx
	movq	-96(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	flecs_run_monitor
	addl	$1, -76(%rbp)
.L781:
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L782
	jmp	.L787
.L780:
	movq	-104(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L787
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_type_index_of
	movl	%eax, -68(%rbp)
	cmpl	$-1, -68(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4961, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$-1, -68(%rbp)
	jne	.L784
	leaq	__PRETTY_FUNCTION__.8967(%rip), %rcx
	movl	$4961, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC110(%rip), %rdi
	call	__assert_fail@PLT
.L784:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -40(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L785
.L786:
	movl	-72(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %r8
	movl	-112(%rbp), %edi
	movl	-108(%rbp), %ecx
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	flecs_run_monitor
	addl	$1, -72(%rbp)
.L785:
	movl	-72(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L786
.L787:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	run_set_systems_for_entities, .-run_set_systems_for_entities
	.section	.rodata
.LC188:
	.string	"count != 0"
	.text
	.type	notify, @function
notify:
.LFB93:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4982, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L789
	leaq	__PRETTY_FUNCTION__.8985(%rip), %rcx
	movl	$4982, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC123(%rip), %rdi
	call	__assert_fail@PLT
.L789:
	cmpl	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$4983, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC188(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -48(%rbp)
	jne	.L790
	leaq	__PRETTY_FUNCTION__.8985(%rip), %rcx
	movl	$4983, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC188(%rip), %rdi
	call	__assert_fail@PLT
.L790:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L791
.L792:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-44(%rbp), %r9d
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	movl	-48(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	flecs_triggers_notify
	addq	$16, %rsp
	addl	$1, -16(%rbp)
.L791:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L792
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	notify, .-notify
	.section	.rodata
.LC189:
	.string	"base_index != -1"
.LC190:
	.string	"i_table != NULL"
.LC191:
	.string	"i_table != ((void *)0)"
.LC192:
	.string	"child != instance"
	.text
	.type	instantiate_children, @function
instantiate_children:
.LFB94:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movl	%r8d, -228(%rbp)
	movl	%r9d, -232(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L821
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_data_count
	testl	%eax, %eax
	je	.L821
	movq	-240(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -164(%rbp)
	movq	-152(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -160(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	-160(%rbp), %eax
	addl	$1, %eax
	sall	$3, %eax
	cltq
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L797:
	cmpq	%rdx, %rsp
	je	.L798
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L797
.L798:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L799
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L799:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -48(%rbp)
	movl	-164(%rbp), %eax
	sall	$3, %eax
	cltq
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L800:
	cmpq	%rdx, %rsp
	je	.L801
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L800
.L801:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L802
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L802:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -128(%rbp)
	movl	$-1, -176(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -180(%rbp)
	jmp	.L803
.L809:
	movl	-180(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$260, %eax
	cmpq	%rax, -64(%rbp)
	je	.L822
	movabsq	$-72057594037927936, %rax
	andq	-64(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L806
	movq	-64(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movl	$276, %edx
	cmpq	%rdx, %rax
	jne	.L806
	movq	-64(%rbp), %rax
	movl	%eax, %eax
	cmpq	%rax, -208(%rbp)
	jne	.L806
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
.L806:
	movl	-180(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jge	.L807
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movl	-180(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %eax
	movl	$16, %edx
	cmpw	$16, %ax
	cmovl	%edx, %eax
	movswl	%ax, %edx
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-172(%rbp), %esi
	movslq	%esi, %rsi
	leaq	0(,%rsi,8), %rdi
	movq	-128(%rbp), %rsi
	leaq	(%rdi,%rsi), %rbx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, (%rbx)
	jmp	.L808
.L807:
	movl	-172(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jge	.L808
	movl	-172(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
.L808:
	movq	-48(%rbp), %rax
	movl	-172(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -172(%rbp)
	jmp	.L805
.L822:
	nop
.L805:
	addl	$1, -180(%rbp)
.L803:
	movl	-180(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jl	.L809
	cmpl	$-1, -176(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5065, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC189(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$-1, -176(%rbp)
	jne	.L810
	leaq	__PRETTY_FUNCTION__.9024(%rip), %rcx
	movl	$5065, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC189(%rip), %rdi
	call	__assert_fail@PLT
.L810:
	movq	-216(%rbp), %rax
	movl	16(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L811
	movq	-48(%rbp), %rax
	movl	-172(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	$260, %edx
	movq	%rdx, (%rax)
	addl	$1, -172(%rbp)
.L811:
	movl	-172(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -156(%rbp)
	movl	-228(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	.L812
.L819:
	movl	-180(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movl	$276, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movl	%eax, %eax
	leaq	(%rdx,%rax), %rsi
	movabsq	$-432345564227567616, %rcx
	movq	-48(%rbp), %rax
	movl	-176(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	orq	%rcx, %rsi
	movq	%rsi, %rdx
	movq	%rdx, (%rax)
	leaq	-48(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_find_or_create
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5087, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC190(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -104(%rbp)
	jne	.L813
	leaq	__PRETTY_FUNCTION__.9024(%rip), %rcx
	movl	$5087, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC191(%rip), %rdi
	call	__assert_fail@PLT
.L813:
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -96(%rbp)
	movl	$0, -168(%rbp)
	jmp	.L814
.L816:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-112(%rbp), %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5098, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC192(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.L815
	leaq	__PRETTY_FUNCTION__.9024(%rip), %rcx
	movl	$5098, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC192(%rip), %rdi
	call	__assert_fail@PLT
.L815:
	addl	$1, -168(%rbp)
.L814:
	movl	-168(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jl	.L816
	leaq	-184(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movl	-156(%rbp), %edx
	movq	-104(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	new_w_data
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -88(%rbp)
	movl	$0, -168(%rbp)
	jmp	.L817
.L818:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-184(%rbp), %edx
	movl	-168(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movq	-88(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$1, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	instantiate
	addl	$1, -168(%rbp)
.L817:
	movl	-168(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jl	.L818
	addl	$1, -180(%rbp)
.L812:
	movl	-232(%rbp), %edx
	movl	-228(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -180(%rbp)
	jl	.L819
	jmp	.L793
.L821:
	nop
.L793:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L820
	call	__stack_chk_fail@PLT
.L820:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	instantiate_children, .-instantiate_children
	.type	instantiate, @function
instantiate:
.LFB95:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$276, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movl	%eax, %eax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_id_record
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L828
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L828
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L825
.L826:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movl	-104(%rbp), %r9d
	movl	-100(%rbp), %r8d
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	instantiate_children
	addq	$16, %rsp
.L825:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L826
.L828:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L827
	call	__stack_chk_fail@PLT
.L827:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	instantiate, .-instantiate
	.section	.rodata
.LC193:
	.string	"component != 0"
	.text
	.type	override_from_base, @function
override_from_base:
.LFB96:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movl	%r9d, -172(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -152(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5158, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC193(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -152(%rbp)
	jne	.L830
	leaq	__PRETTY_FUNCTION__.9075(%rip), %rcx
	movl	$5158, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC193(%rip), %rdi
	call	__assert_fail@PLT
.L830:
	cmpq	$0, -152(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5161, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC193(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -152(%rbp)
	jne	.L831
	leaq	__PRETTY_FUNCTION__.9075(%rip), %rcx
	movl	$5161, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC193(%rip), %rdi
	call	__assert_fail@PLT
.L831:
	movq	-144(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	xorl	$1, %eax
	testb	%al, %al
	jne	.L832
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L833
.L832:
	movl	$0, %eax
	jmp	.L844
.L833:
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-152(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	get_component
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L835
	movq	-168(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -118(%rbp)
	movq	-168(%rbp), %rax
	movzwl	10(%rax), %eax
	movl	$16, %edx
	cmpw	$16, %ax
	cmovl	%edx, %eax
	movswl	%ax, %edx
	movq	-168(%rbp), %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %ecx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -88(%rbp)
	movswl	-118(%rbp), %eax
	imull	-172(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_typeid
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_c_info
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L836
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L837
.L836:
	movl	$0, %eax
.L837:
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L838
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L839
.L840:
	movswq	-118(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rcx
	movl	-172(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-104(%rbp), %r9
	movq	-112(%rbp), %r8
	leaq	-144(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	pushq	$1
	pushq	%rcx
	movq	-72(%rbp), %r10
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	movswq	-118(%rbp), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	addl	$1, -116(%rbp)
.L839:
	movl	-116(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L840
	jmp	.L841
.L838:
	movl	$0, -116(%rbp)
	jmp	.L842
.L843:
	movswq	-118(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movswq	-118(%rbp), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	addl	$1, -116(%rbp)
.L842:
	movl	-116(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L843
.L841:
	movl	$1, %eax
	jmp	.L844
.L835:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	-172(%rbp), %r9d
	movq	-168(%rbp), %r8
	movq	-160(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	override_component
	addq	$16, %rsp
.L844:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L845
	call	__stack_chk_fail@PLT
.L845:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	override_from_base, .-override_from_base
	.type	override_component, @function
override_component:
.LFB97:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movq	-56(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
.L851:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L852
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L849
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movl	$277, %edx
	cmpq	%rdx, %rax
	jne	.L849
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
	movq	%rax, %rdi
	movl	-76(%rbp), %r9d
	movq	-72(%rbp), %r8
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	movl	16(%rbp), %esi
	pushq	%rsi
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	override_from_base
	addq	$16, %rsp
	testb	%al, %al
	je	.L849
	movl	$1, %eax
	jmp	.L850
.L849:
	subl	$1, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L851
	jmp	.L848
.L852:
	nop
.L848:
	movl	$0, %eax
.L850:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	override_component, .-override_component
	.section	.rodata
.LC194:
	.string	"component_count != 0"
.LC195:
	.string	"component_info != NULL"
.LC196:
	.string	"component_info != ((void *)0)"
.LC197:
	.string	"base != 0"
.LC198:
	.string	"data->columns != NULL"
.LC199:
	.string	"data->columns != ((void *)0)"
	.text
	.type	components_override, @function
components_override:
.LFB98:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movl	%r8d, -128(%rbp)
	movq	%r9, -136(%rbp)
	movl	24(%rbp), %eax
	movb	%al, -140(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -120(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5251, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -120(%rbp)
	jne	.L854
	leaq	__PRETTY_FUNCTION__.9118(%rip), %rcx
	movl	$5251, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC123(%rip), %rdi
	call	__assert_fail@PLT
.L854:
	cmpl	$0, 16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5252, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC194(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, 16(%rbp)
	jne	.L855
	leaq	__PRETTY_FUNCTION__.9118(%rip), %rcx
	movl	$5252, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC194(%rip), %rdi
	call	__assert_fail@PLT
.L855:
	cmpq	$0, -136(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5253, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC195(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -136(%rbp)
	jne	.L856
	leaq	__PRETTY_FUNCTION__.9118(%rip), %rcx
	movl	$5253, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC196(%rip), %rdi
	call	__assert_fail@PLT
.L856:
	movq	-112(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -88(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L857
.L867:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$255, %rax
	jbe	.L858
	movq	-80(%rbp), %rax
	movabsq	$-72057594037927936, %rdx
	andq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	cmpq	%rax, %rdx
	jne	.L858
	movq	-80(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movl	$277, %edx
	cmpq	%rdx, %rax
	jne	.L858
	movq	-80(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5269, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC197(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -48(%rbp)
	jne	.L859
	leaq	__PRETTY_FUNCTION__.9118(%rip), %rcx
	movl	$5269, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC197(%rip), %rdi
	call	__assert_fail@PLT
.L859:
	movl	-128(%rbp), %r8d
	movl	-124(%rbp), %edi
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	instantiate
	leaq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -24(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -72(%rbp)
.L858:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %eax
	movl	%eax, -84(%rbp)
	cmpl	$-1, -84(%rbp)
	je	.L870
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.L870
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5294, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC198(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L863
	leaq	__PRETTY_FUNCTION__.9118(%rip), %rcx
	movl	$5294, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC199(%rip), %rdi
	call	__assert_fail@PLT
.L863:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzwl	8(%rax), %eax
	testw	%ax, %ax
	je	.L871
	movl	-84(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movq	-40(%rbp), %r8
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	movl	-128(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	override_component
	addq	$16, %rsp
	testb	%al, %al
	je	.L866
	leaq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -24(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -72(%rbp)
	jmp	.L866
.L870:
	nop
	jmp	.L866
.L871:
	nop
.L866:
	addl	$1, -92(%rbp)
.L857:
	movl	-92(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L867
	cmpb	$0, -140(%rbp)
	je	.L872
	movq	-72(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L872
	movq	-72(%rbp), %rax
	movq	80(%rax), %r8
	movq	-112(%rbp), %rax
	movq	80(%rax), %rdx
	movl	-128(%rbp), %edi
	movl	-124(%rbp), %ecx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	flecs_run_monitors
.L872:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L869
	call	__stack_chk_fail@PLT
.L869:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	components_override, .-components_override
	.section	.rodata
.LC200:
	.string	"sw_case != 0"
.LC201:
	.string	"sw_index != -1"
.LC202:
	.string	"sw != NULL"
.LC203:
	.string	"sw != ((void *)0)"
	.text
	.type	set_switch, @function
set_switch:
.LFB99:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -92(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L874
.L881:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-16(%rbp), %rax
	movabsq	$-288230376151711744, %rdx
	cmpq	%rdx, %rax
	jne	.L875
	movabsq	$72057594037927935, %rax
	andq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	movzbl	-92(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L876
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5343, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC200(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L876
	leaq	__PRETTY_FUNCTION__.9148(%rip), %rcx
	movl	$5343, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC200(%rip), %rdi
	call	__assert_fail@PLT
.L876:
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_switch_from_case
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5347, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC201(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$-1, -36(%rbp)
	jne	.L877
	leaq	__PRETTY_FUNCTION__.9148(%rip), %rcx
	movl	$5347, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC201(%rip), %rdi
	call	__assert_fail@PLT
.L877:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5349, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC202(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L878
	leaq	__PRETTY_FUNCTION__.9148(%rip), %rcx
	movl	$5349, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC203(%rip), %rdi
	call	__assert_fail@PLT
.L878:
	movl	$0, -44(%rbp)
	jmp	.L879
.L880:
	movl	-76(%rbp), %edx
	movl	-44(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	flecs_switch_set
	addl	$1, -44(%rbp)
.L879:
	movl	-44(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L880
.L875:
	addl	$1, -48(%rbp)
.L874:
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L881
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	set_switch, .-set_switch
	.type	ecs_components_switch, @function
ecs_components_switch:
.LFB100:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L883
	movq	-40(%rbp), %r8
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	set_switch
	addq	$16, %rsp
.L883:
	cmpq	$0, 16(%rbp)
	je	.L885
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movq	16(%rbp), %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	set_switch
	addq	$16, %rsp
.L885:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	ecs_components_switch, .-ecs_components_switch
	.section	.rodata
.LC204:
	.string	"added != NULL"
.LC205:
	.string	"added != ((void *)0)"
	.align 8
.LC206:
	.string	"ecs_vector_count(new_data[0].entities) > new_row"
	.text
	.type	new_entity, @function
new_entity:
.LFB101:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, %eax
	movb	%al, -76(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_or_create_data
	movq	%rax, -8(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5390, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC204(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L887
	leaq	__PRETTY_FUNCTION__.9178(%rip), %rcx
	movl	$5390, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC205(%rip), %rdi
	call	__assert_fail@PLT
.L887:
	cmpq	$0, -16(%rbp)
	jne	.L888
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_ensure
	movq	%rax, -16(%rbp)
.L888:
	movzbl	-76(%rbp), %r8d
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	flecs_table_append
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movzbl	28(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	flecs_row_to_record
	movq	-16(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -20(%rbp)
	setl	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5402, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC206(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -20(%rbp)
	jl	.L889
	leaq	__PRETTY_FUNCTION__.9178(%rip), %rcx
	movl	$5402, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC206(%rip), %rdi
	call	__assert_fail@PLT
.L889:
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$108676, %eax
	testl	%eax, %eax
	je	.L890
	movq	-72(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	$1
	pushq	$1
	movq	%rdi, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	flecs_run_add_actions
	addq	$16, %rsp
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L890
	movq	-64(%rbp), %rax
	movq	64(%rax), %rdx
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	flecs_run_monitors
.L890:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	new_entity, .-new_entity
	.section	.rodata
.LC207:
	.string	"src_data != dst_data"
.LC208:
	.string	"ecs_is_alive(world, entity)"
.LC209:
	.string	"src_table != NULL"
.LC210:
	.string	"src_table != ((void *)0)"
.LC211:
	.string	"src_data != NULL"
.LC212:
	.string	"src_data != ((void *)0)"
.LC213:
	.string	"src_row >= 0"
	.align 8
.LC214:
	.string	"ecs_vector_count(src_data->entities) > src_row"
	.align 8
.LC215:
	.string	"!record || record == ecs_eis_get(world, entity)"
	.align 8
.LC216:
	.string	"!record || record == ((ecs_record_t*)_flecs_sparse_get((world->store).entity_index, sizeof(ecs_record_t), entity))"
	.text
	.type	move_entity, @function
move_entity:
.LFB102:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movl	40(%rbp), %eax
	movb	%al, -80(%rbp)
	movq	16(%rbp), %rdi
	call	flecs_table_get_or_create_data
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5435, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC207(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L893
	leaq	__PRETTY_FUNCTION__.9192(%rip), %rcx
	movl	$5435, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC207(%rip), %rdi
	call	__assert_fail@PLT
.L893:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_alive
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5436, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC208(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_alive
	testb	%al, %al
	jne	.L894
	leaq	__PRETTY_FUNCTION__.9192(%rip), %rcx
	movl	$5436, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC208(%rip), %rdi
	call	__assert_fail@PLT
.L894:
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5437, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC209(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	jne	.L895
	leaq	__PRETTY_FUNCTION__.9192(%rip), %rcx
	movl	$5437, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC210(%rip), %rdi
	call	__assert_fail@PLT
.L895:
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5438, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC211(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L896
	leaq	__PRETTY_FUNCTION__.9192(%rip), %rcx
	movl	$5438, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC212(%rip), %rdi
	call	__assert_fail@PLT
.L896:
	movl	-76(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5439, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC213(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -76(%rbp)
	jns	.L897
	leaq	__PRETTY_FUNCTION__.9192(%rip), %rcx
	movl	$5439, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC213(%rip), %rdi
	call	__assert_fail@PLT
.L897:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -76(%rbp)
	setl	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5440, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC214(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -76(%rbp)
	jl	.L898
	leaq	__PRETTY_FUNCTION__.9192(%rip), %rcx
	movl	$5440, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC214(%rip), %rdi
	call	__assert_fail@PLT
.L898:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L899
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	cmpq	%rax, -8(%rbp)
	jne	.L900
.L899:
	movl	$1, %eax
	jmp	.L901
.L900:
	movl	$0, %eax
.L901:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5444, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC215(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	je	.L902
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	cmpq	%rax, -8(%rbp)
	je	.L902
	leaq	__PRETTY_FUNCTION__.9192(%rip), %rcx
	movl	$5444, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC216(%rip), %rdi
	call	__assert_fail@PLT
.L902:
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_table_append
	movl	%eax, -20(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -76(%rbp)
	setl	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5450, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC214(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -76(%rbp)
	jl	.L903
	leaq	__PRETTY_FUNCTION__.9192(%rip), %rcx
	movl	$5450, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC214(%rip), %rdi
	call	__assert_fail@PLT
.L903:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L904
	cmpq	$0, 32(%rbp)
	je	.L905
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$53508, %eax
	testl	%eax, %eax
	je	.L905
	movq	16(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	96(%rax), %rdx
	movl	-76(%rbp), %ecx
	movq	-40(%rbp), %rax
	movq	%rsi, %r9
	movl	$1, %r8d
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_run_monitors
	movq	32(%rbp), %rdi
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	flecs_run_remove_actions
.L905:
	movzbl	-80(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%rcx
	movl	-76(%rbp), %ecx
	pushq	%rcx
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	16(%rbp), %rcx
	movq	%rax, %rdi
	call	flecs_table_move
	addq	$32, %rsp
.L904:
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movzbl	28(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	flecs_row_to_record
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	flecs_table_delete
	movq	-64(%rbp), %rax
	cmpq	16(%rbp), %rax
	jne	.L906
	cmpq	$0, 24(%rbp)
	je	.L907
	movq	24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L907
.L906:
	cmpq	$0, 24(%rbp)
	je	.L908
	movq	16(%rbp), %rax
	movl	16(%rax), %eax
	andl	$108676, %eax
	testl	%eax, %eax
	je	.L908
	movq	24(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	pushq	$1
	pushq	$0
	movq	%rsi, %r9
	movl	$1, %r8d
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_run_add_actions
	addq	$16, %rsp
.L908:
	movq	16(%rbp), %rax
	movl	16(%rax), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L909
	movq	-64(%rbp), %rax
	movq	64(%rax), %rsi
	movq	16(%rbp), %rax
	movq	64(%rax), %rdx
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rax
	movq	%rsi, %r9
	movl	$1, %r8d
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_run_monitors
.L909:
	cmpq	$0, 32(%rbp)
	je	.L907
	movq	16(%rbp), %rax
	movl	16(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L907
	movq	16(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rax
	movq	%rsi, %r9
	movl	$1, %r8d
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_run_monitors
.L907:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	move_entity, .-move_entity
	.type	delete_entity, @function
delete_entity:
.LFB103:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L912
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdx
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	flecs_run_monitors
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	andl	$53508, %eax
	testl	%eax, %eax
	je	.L912
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	flecs_run_remove_actions
.L912:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	flecs_table_delete
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	delete_entity, .-delete_entity
	.type	update_component_monitor_w_array, @function
update_component_monitor_w_array:
.LFB104:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -112(%rbp)
	je	.L922
	movl	$0, -68(%rbp)
	jmp	.L916
.L920:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-64(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L917
	movq	-64(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L917
	movq	-56(%rbp), %rax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movl	%eax, %eax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_id_record
	testq	%rax, %rax
	je	.L917
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	update_component_monitor_w_array
.L917:
	movabsq	$-72057594037927936, %rax
	andq	-64(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L918
	movq	-64(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movl	$277, %edx
	cmpq	%rdx, %rax
	jne	.L918
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_type
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-32(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	update_component_monitor_w_array
	jmp	.L919
.L918:
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_monitor_mark_dirty
.L919:
	addl	$1, -68(%rbp)
.L916:
	movq	-112(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jl	.L920
	jmp	.L913
.L922:
	nop
.L913:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L921
	call	__stack_chk_fail@PLT
.L921:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	update_component_monitor_w_array, .-update_component_monitor_w_array
	.type	update_component_monitors, @function
update_component_monitors:
.LFB105:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	update_component_monitor_w_array
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	update_component_monitor_w_array
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	update_component_monitors, .-update_component_monitors
	.section	.rodata
.LC217:
	.string	"!world->is_readonly"
.LC218:
	.string	"dst_table != NULL"
.LC219:
	.string	"dst_table != ((void *)0)"
	.align 8
.LC220:
	.string	"!world->stats.max_id || entity <= world->stats.max_id"
.LC221:
	.string	"entity >= world->stats.min_id"
	.text
	.type	commit, @function
commit:
.LFB106:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movzbl	681(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5597, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC217(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-56(%rbp), %rax
	movzbl	681(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L925
	leaq	__PRETTY_FUNCTION__.9232(%rip), %rcx
	movl	$5597, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC217(%rip), %rdi
	call	__assert_fail@PLT
.L925:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L926
	cmpq	$0, -88(%rbp)
	je	.L927
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L928
.L927:
	cmpq	$0, -96(%rbp)
	je	.L942
	movq	-96(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L942
.L928:
	cmpq	$0, -48(%rbp)
	je	.L942
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L942
	movq	-72(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-96(%rbp)
	movq	%rdi, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	ecs_components_switch
	addq	$16, %rsp
	jmp	.L942
.L926:
	cmpq	$0, -48(%rbp)
	je	.L931
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -80(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5616, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC218(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -80(%rbp)
	jne	.L932
	leaq	__PRETTY_FUNCTION__.9232(%rip), %rcx
	movl	$5616, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC219(%rip), %rdi
	call	__assert_fail@PLT
.L932:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L933
	movzbl	-100(%rbp), %edi
	movq	-72(%rbp), %rax
	movl	24(%rax), %r9d
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	%rdi
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	movq	%rax, %rdi
	call	move_entity
	addq	$32, %rsp
	movq	-72(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L934
.L933:
	movq	-72(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	delete_entity
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movzbl	28(%rax), %eax
	movzbl	%al, %eax
	negl	%eax
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_set
	jmp	.L934
.L931:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L934
	movzbl	-100(%rbp), %r8d
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	new_entity
	movq	-72(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L934:
	movq	-72(%rbp), %rax
	movzbl	28(%rax), %eax
	testb	%al, %al
	je	.L935
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	update_component_monitors
.L935:
	cmpq	$0, -48(%rbp)
	je	.L936
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L924
.L936:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L924
	movq	-56(%rbp), %rax
	movq	552(%rax), %rax
	testq	%rax, %rax
	je	.L937
	movq	-56(%rbp), %rax
	movq	552(%rax), %rax
	cmpq	%rax, -64(%rbp)
	ja	.L938
.L937:
	movl	$1, %eax
	jmp	.L939
.L938:
	movl	$0, %eax
.L939:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5647, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC220(%rip), %rdx
	movl	$5, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-56(%rbp), %rax
	movq	552(%rax), %rax
	testq	%rax, %rax
	je	.L940
	movq	-56(%rbp), %rax
	movq	552(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jbe	.L940
	leaq	__PRETTY_FUNCTION__.9232(%rip), %rcx
	movl	$5647, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC220(%rip), %rdi
	call	__assert_fail@PLT
.L940:
	movq	-56(%rbp), %rax
	movq	544(%rax), %rax
	cmpq	%rax, -64(%rbp)
	setnb	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5648, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC221(%rip), %rdx
	movl	$5, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-56(%rbp), %rax
	movq	544(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L924
	leaq	__PRETTY_FUNCTION__.9232(%rip), %rcx
	movl	$5648, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC221(%rip), %rdi
	call	__assert_fail@PLT
.L942:
	nop
.L924:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L941
	call	__stack_chk_fail@PLT
.L941:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	commit, .-commit
	.type	new, @function
new:
.LFB107:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	leaq	88(%rax), %rsi
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	new_entity
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L944
	call	__stack_chk_fail@PLT
.L944:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	new, .-new
	.section	.rodata
.LC222:
	.string	"ids != NULL"
.LC223:
	.string	"ids != ((void *)0)"
.LC224:
	.string	"table_index >= 0"
	.text
	.type	new_w_data, @function
new_w_data:
.LFB108:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movl	%ecx, -220(%rbp)
	movq	%r8, -232(%rbp)
	movq	%r9, -240(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -200(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5673, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -200(%rbp)
	jne	.L946
	leaq	__PRETTY_FUNCTION__.9251(%rip), %rcx
	movl	$5673, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L946:
	cmpq	$0, -208(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5674, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -208(%rbp)
	jne	.L947
	leaq	__PRETTY_FUNCTION__.9251(%rip), %rcx
	movl	$5674, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L947:
	cmpl	$0, -220(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5675, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC188(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -220(%rbp)
	jne	.L948
	leaq	__PRETTY_FUNCTION__.9251(%rip), %rcx
	movl	$5675, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC188(%rip), %rdi
	call	__assert_fail@PLT
.L948:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -180(%rbp)
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movl	-220(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_sparse_new_ids
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5679, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC222(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -168(%rbp)
	jne	.L949
	leaq	__PRETTY_FUNCTION__.9251(%rip), %rcx
	movl	$5679, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC223(%rip), %rdi
	call	__assert_fail@PLT
.L949:
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L950
	movq	-168(%rbp), %rax
	jmp	.L965
.L950:
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.L952
	leaq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-160(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -80(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -72(%rbp)
.L952:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_or_create_data
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rdi
	movl	-220(%rbp), %ecx
	movq	-152(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	flecs_table_appendn
	movl	%eax, -176(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -144(%rbp)
	movl	$0, -188(%rbp)
	jmp	.L953
.L954:
	movq	-208(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-176(%rbp), %edx
	movl	-188(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-188(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movl	-176(%rbp), %esi
	movl	-188(%rbp), %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	leaq	0(,%rcx,8), %rsi
	movq	-144(%rbp), %rcx
	leaq	(%rsi,%rcx), %rbx
	leaq	-48(%rbp), %rcx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_set
	movq	%rax, (%rbx)
	addl	$1, -188(%rbp)
.L953:
	movl	-188(%rbp), %eax
	cmpl	-220(%rbp), %eax
	jl	.L954
	movq	-200(%rbp), %rax
	leaq	368(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_none
	cmpq	$0, -232(%rbp)
	sete	%al
	movzbl	%al, %edi
	leaq	-64(%rbp), %r9
	movl	-220(%rbp), %r8d
	movl	-176(%rbp), %ecx
	movq	-152(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	pushq	%rdi
	pushq	$1
	movq	%rax, %rdi
	call	flecs_run_add_actions
	addq	$16, %rsp
	cmpq	$0, -232(%rbp)
	je	.L955
	movl	$0, -184(%rbp)
	jmp	.L956
.L963:
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movl	-184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_type_index_of
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5723, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC224(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -172(%rbp)
	jns	.L957
	leaq	__PRETTY_FUNCTION__.9251(%rip), %rcx
	movl	$5723, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC224(%rip), %rdi
	call	__assert_fail@PLT
.L957:
	movq	-208(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -172(%rbp)
	jge	.L967
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movl	-172(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -192(%rbp)
	cmpw	$0, -192(%rbp)
	je	.L968
	movq	-128(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -190(%rbp)
	movl	$16, %eax
	cmpw	$16, -190(%rbp)
	cmovge	-190(%rbp), %ax
	movswl	%ax, %edx
	movswl	-192(%rbp), %ecx
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -120(%rbp)
	movswl	-192(%rbp), %eax
	imull	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movl	-184(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L969
	movq	-136(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_c_info
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L962
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L962
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rbx
	movswq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-112(%rbp), %r9
	movq	-120(%rbp), %r11
	movq	-88(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-200(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movl	-220(%rbp), %r8d
	pushq	%r8
	pushq	%rdi
	movq	-96(%rbp), %r10
	movq	%r11, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L959
.L962:
	movswl	-192(%rbp), %eax
	imull	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L959
.L967:
	nop
	jmp	.L959
.L968:
	nop
	jmp	.L959
.L969:
	nop
.L959:
	addl	$1, -184(%rbp)
.L956:
	movq	-216(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -184(%rbp)
	jl	.L963
	movl	-176(%rbp), %edi
	movq	-152(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rax
	pushq	$1
	movl	-220(%rbp), %esi
	pushq	%rsi
	movl	%edi, %r9d
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	flecs_run_set_systems
	addq	$16, %rsp
.L955:
	movq	-208(%rbp), %rax
	movq	64(%rax), %rdx
	movl	-220(%rbp), %edi
	movl	-176(%rbp), %ecx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	flecs_run_monitors
	movq	-200(%rbp), %rax
	leaq	368(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	cmpq	$0, -240(%rbp)
	je	.L964
	movq	-240(%rbp), %rax
	movl	-176(%rbp), %edx
	movl	%edx, (%rax)
.L964:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_ids
	movq	%rax, -168(%rbp)
	movl	-180(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
.L965:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L966
	call	__stack_chk_fail@PLT
.L966:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	new_w_data, .-new_w_data
	.type	has_type, @function
has_type:
.LFB109:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, %eax
	movl	%r8d, %edx
	movb	%al, -44(%rbp)
	movl	%edx, %eax
	movb	%al, -48(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5779, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L971
	leaq	__PRETTY_FUNCTION__.9287(%rip), %rcx
	movl	$5779, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L971:
	cmpq	$0, -32(%rbp)
	jne	.L972
	movl	$0, %eax
	jmp	.L973
.L972:
	cmpq	$0, -40(%rbp)
	jne	.L974
	movl	$1, %eax
	jmp	.L973
.L974:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_type
	movq	%rax, -8(%rbp)
	movzbl	-48(%rbp), %edi
	movzbl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	flecs_type_contains
	testq	%rax, %rax
	setne	%al
.L973:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	has_type, .-has_type
	.section	.rodata
	.align 8
.LC225:
	.string	"world->magic == ECS_WORLD_MAGIC"
.LC226:
	.string	"world->magic == (0x65637377)"
	.align 8
.LC227:
	.string	"to_add->count < ECS_MAX_ADD_REMOVE"
.LC228:
	.string	"to_add->count < (32)"
	.align 8
.LC229:
	.string	"to_remove->count < ECS_MAX_ADD_REMOVE"
.LC230:
	.string	"to_remove->count < (32)"
	.text
	.type	add_remove, @function
add_remove:
.LFB110:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$640, %rsp
	movq	%rdi, -616(%rbp)
	movq	%rsi, -624(%rbp)
	movq	%rdx, -632(%rbp)
	movq	%rcx, -640(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -616(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5802, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -616(%rbp)
	jne	.L976
	leaq	__PRETTY_FUNCTION__.9295(%rip), %rcx
	movl	$5802, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L976:
	movq	-616(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5803, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-616(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L977
	leaq	__PRETTY_FUNCTION__.9295(%rip), %rcx
	movl	$5803, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L977:
	movq	-632(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5804, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC227(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-632(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	jle	.L978
	leaq	__PRETTY_FUNCTION__.9295(%rip), %rcx
	movl	$5804, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC228(%rip), %rdi
	call	__assert_fail@PLT
.L978:
	movq	-640(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5805, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC229(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-640(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	jle	.L979
	leaq	__PRETTY_FUNCTION__.9295(%rip), %rcx
	movl	$5805, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC230(%rip), %rdi
	call	__assert_fail@PLT
.L979:
	leaq	-560(%rbp), %rdx
	movq	-624(%rbp), %rcx
	movq	-616(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, -592(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -568(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -608(%rbp)
	leaq	-576(%rbp), %rcx
	movq	-640(%rbp), %rdx
	movq	-608(%rbp), %rsi
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -600(%rbp)
	leaq	-592(%rbp), %rcx
	movq	-632(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -600(%rbp)
	leaq	-576(%rbp), %r8
	leaq	-592(%rbp), %rdi
	movq	-600(%rbp), %rcx
	leaq	-560(%rbp), %rdx
	movq	-624(%rbp), %rsi
	movq	-616(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	commit
	addq	$16, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L980
	call	__stack_chk_fail@PLT
.L980:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	add_remove, .-add_remove
	.section	.rodata
	.align 8
.LC231:
	.string	"components->count < ECS_MAX_ADD_REMOVE"
.LC232:
	.string	"components->count < (32)"
	.text
	.type	add_ids_w_info, @function
add_ids_w_info:
.LFB111:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movl	%r8d, %eax
	movb	%al, -340(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-336(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5834, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC231(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-336(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	jle	.L982
	leaq	__PRETTY_FUNCTION__.9310(%rip), %rcx
	movl	$5834, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC232(%rip), %rdi
	call	__assert_fail@PLT
.L982:
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)
	leaq	-288(%rbp), %rcx
	movq	-336(%rbp), %rdx
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -296(%rbp)
	movzbl	-340(%rbp), %edi
	leaq	-288(%rbp), %r8
	movq	-296(%rbp), %rcx
	movq	-328(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movq	-312(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movl	$0, %r9d
	movq	%rax, %rdi
	call	commit
	addq	$16, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L983
	call	__stack_chk_fail@PLT
.L983:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	add_ids_w_info, .-add_ids_w_info
	.type	remove_ids_w_info, @function
remove_ids_w_info:
.LFB112:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-336(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5852, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC231(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-336(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	jle	.L985
	leaq	__PRETTY_FUNCTION__.9321(%rip), %rcx
	movl	$5852, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC232(%rip), %rdi
	call	__assert_fail@PLT
.L985:
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)
	leaq	-288(%rbp), %rcx
	movq	-336(%rbp), %rdx
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -296(%rbp)
	leaq	-288(%rbp), %rdi
	movq	-296(%rbp), %rcx
	movq	-328(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movq	-312(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	commit
	addq	$16, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L986
	call	__stack_chk_fail@PLT
.L986:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	remove_ids_w_info, .-remove_ids_w_info
	.type	add_ids, @function
add_ids:
.LFB113:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-360(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5869, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-360(%rbp), %rax
	testq	%rax, %rax
	jne	.L988
	leaq	__PRETTY_FUNCTION__.9331(%rip), %rcx
	movl	$5869, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L988:
	movq	-376(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5870, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC231(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-376(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	jle	.L989
	leaq	__PRETTY_FUNCTION__.9331(%rip), %rcx
	movl	$5870, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC232(%rip), %rdi
	call	__assert_fail@PLT
.L989:
	leaq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -344(%rbp)
	movq	-360(%rbp), %rax
	movq	-376(%rbp), %rcx
	movq	-368(%rbp), %rdx
	movq	-344(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_defer_add
	testb	%al, %al
	jne	.L993
	movq	-360(%rbp), %rax
	leaq	-304(%rbp), %rdx
	movq	-368(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-360(%rbp), %rax
	leaq	-320(%rbp), %rcx
	movq	-376(%rbp), %rdx
	movq	-336(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -328(%rbp)
	movq	-360(%rbp), %rax
	leaq	-320(%rbp), %rdi
	movq	-328(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-368(%rbp), %rsi
	subq	$8, %rsp
	pushq	$1
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	commit
	addq	$16, %rsp
	movq	-360(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	jmp	.L987
.L993:
	nop
.L987:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L992
	call	__stack_chk_fail@PLT
.L992:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	add_ids, .-add_ids
	.type	remove_ids, @function
remove_ids:
.LFB114:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-360(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5898, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-360(%rbp), %rax
	testq	%rax, %rax
	jne	.L995
	leaq	__PRETTY_FUNCTION__.9343(%rip), %rcx
	movl	$5898, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L995:
	movq	-376(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5899, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC231(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-376(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$31, %eax
	jle	.L996
	leaq	__PRETTY_FUNCTION__.9343(%rip), %rcx
	movl	$5899, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC232(%rip), %rdi
	call	__assert_fail@PLT
.L996:
	leaq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -344(%rbp)
	movq	-360(%rbp), %rax
	movq	-376(%rbp), %rcx
	movq	-368(%rbp), %rdx
	movq	-344(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_defer_remove
	testb	%al, %al
	jne	.L1000
	movq	-360(%rbp), %rax
	leaq	-304(%rbp), %rdx
	movq	-368(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-360(%rbp), %rax
	leaq	-320(%rbp), %rcx
	movq	-376(%rbp), %rdx
	movq	-336(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -328(%rbp)
	movq	-360(%rbp), %rax
	leaq	-320(%rbp), %rdi
	movq	-328(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-368(%rbp), %rsi
	subq	$8, %rsp
	pushq	$1
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	commit
	addq	$16, %rsp
	movq	-360(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	jmp	.L994
.L1000:
	nop
.L994:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L999
	call	__stack_chk_fail@PLT
.L999:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	remove_ids, .-remove_ids
	.section	.rodata
	.align 8
.LC233:
	.string	"(component & ECS_COMPONENT_MASK) == component || ECS_HAS_ROLE(component, PAIR)"
	.align 8
.LC234:
	.string	"(component & (~(0xFFull << 56))) == component || ((component & (0xFFull << 56)) == ECS_PAIR)"
.LC235:
	.string	"info->table != NULL"
.LC236:
	.string	"info->table != ((void *)0)"
	.text
	.type	get_mutable, @function
get_mutable:
.LFB115:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5929, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L1002
	leaq	__PRETTY_FUNCTION__.9357(%rip), %rcx
	movl	$5929, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1002:
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5930, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC193(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L1003
	leaq	__PRETTY_FUNCTION__.9357(%rip), %rcx
	movl	$5930, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC193(%rip), %rdi
	call	__assert_fail@PLT
.L1003:
	movq	-72(%rbp), %rax
	movabsq	$72057594037927935, %rdx
	andq	%rax, %rdx
	movq	-72(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L1004
	movq	-72(%rbp), %rax
	movabsq	$-72057594037927936, %rdx
	andq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	cmpq	%rax, %rdx
	jne	.L1005
.L1004:
	movl	$1, %eax
	jmp	.L1006
.L1005:
	movl	$0, %eax
.L1006:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5931, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC233(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movabsq	$72057594037927935, %rdx
	andq	%rax, %rdx
	movq	-72(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L1007
	movq	-72(%rbp), %rax
	movabsq	$-72057594037927936, %rdx
	andq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	cmpq	%rax, %rdx
	je	.L1007
	leaq	__PRETTY_FUNCTION__.9357(%rip), %rcx
	movl	$5931, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC234(%rip), %rdi
	call	__assert_fail@PLT
.L1007:
	movq	$0, -48(%rbp)
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	testb	%al, %al
	je	.L1008
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1008
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	24(%rax), %edx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_component
	movq	%rax, -48(%rbp)
.L1008:
	cmpq	$0, -48(%rbp)
	jne	.L1009
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -24(%rbp)
	leaq	-32(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	add_ids_w_info
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5950, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC235(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L1010
	leaq	__PRETTY_FUNCTION__.9357(%rip), %rcx
	movl	$5950, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC236(%rip), %rdi
	call	__assert_fail@PLT
.L1010:
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	24(%rax), %edx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	get_component
	movq	%rax, -48(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L1011
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -40(%rbp)
	setne	%dl
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
.L1011:
	movq	-48(%rbp), %rax
	jmp	.L1012
.L1009:
	cmpq	$0, -88(%rbp)
	je	.L1013
	movq	-88(%rbp), %rax
	movb	$0, (%rax)
.L1013:
	movq	-48(%rbp), %rax
.L1012:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1014
	call	__stack_chk_fail@PLT
.L1014:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	get_mutable, .-get_mutable
	.globl	flecs_run_add_actions
	.type	flecs_run_add_actions, @function
flecs_run_add_actions:
.LFB116:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$848, %rsp
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	%rdx, -824(%rbp)
	movl	%ecx, -828(%rbp)
	movl	%r8d, -832(%rbp)
	movq	%r9, -840(%rbp)
	movl	16(%rbp), %edx
	movl	24(%rbp), %eax
	movb	%dl, -844(%rbp)
	movb	%al, -848(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -840(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$5981, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC204(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -840(%rbp)
	jne	.L1016
	leaq	__PRETTY_FUNCTION__.9371(%rip), %rcx
	movl	$5981, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC205(%rip), %rdi
	call	__assert_fail@PLT
.L1016:
	movq	-816(%rbp), %rax
	movl	16(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1017
	movzbl	-844(%rbp), %edi
	leaq	-784(%rbp), %rcx
	movq	-840(%rbp), %rdx
	movq	-816(%rbp), %rsi
	movq	-808(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	get_column_info
	movl	%eax, -788(%rbp)
	movzbl	-848(%rbp), %edi
	leaq	-784(%rbp), %r9
	movl	-832(%rbp), %r8d
	movl	-828(%rbp), %ecx
	movq	-824(%rbp), %rdx
	movq	-816(%rbp), %rsi
	movq	-808(%rbp), %rax
	pushq	%rdi
	movl	-788(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	components_override
	addq	$16, %rsp
.L1017:
	movq	-816(%rbp), %rax
	movl	16(%rax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1018
	movq	-840(%rbp), %r8
	movl	-832(%rbp), %edi
	movl	-828(%rbp), %ecx
	movq	-824(%rbp), %rdx
	movq	-816(%rbp), %rsi
	movq	-808(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ecs_components_switch
	addq	$16, %rsp
.L1018:
	movq	-816(%rbp), %rax
	movl	16(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L1021
	movl	$286, %r8d
	movl	-832(%rbp), %edi
	movl	-828(%rbp), %ecx
	movq	-824(%rbp), %rdx
	movq	-816(%rbp), %rsi
	movq	-808(%rbp), %rax
	subq	$8, %rsp
	pushq	-840(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	notify
	addq	$16, %rsp
.L1021:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1020
	call	__stack_chk_fail@PLT
.L1020:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	flecs_run_add_actions, .-flecs_run_add_actions
	.section	.rodata
.LC237:
	.string	"removed != NULL"
.LC238:
	.string	"removed != ((void *)0)"
	.text
	.globl	flecs_run_remove_actions
	.type	flecs_run_remove_actions, @function
flecs_run_remove_actions:
.LFB117:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6011, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC237(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1023
	leaq	__PRETTY_FUNCTION__.9382(%rip), %rcx
	movl	$6011, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC238(%rip), %rdi
	call	__assert_fail@PLT
.L1023:
	cmpl	$0, -32(%rbp)
	je	.L1026
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L1025
	movl	$289, %r8d
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	notify
	addq	$16, %rsp
.L1025:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1026
	movl	$287, %r8d
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	notify
	addq	$16, %rsp
.L1026:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	flecs_run_remove_actions, .-flecs_run_remove_actions
	.globl	flecs_get_info
	.type	flecs_get_info, @function
flecs_get_info:
.LFB118:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movb	$0, 28(%rax)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jns	.L1028
	movl	$0, %eax
	jmp	.L1029
.L1028:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1030
	movl	$0, %eax
	jmp	.L1029
.L1030:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_info_from_record
	movl	$1, %eax
.L1029:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	flecs_get_info, .-flecs_get_info
	.section	.rodata
.LC239:
	.string	"set_all || column != NULL"
	.align 8
.LC240:
	.string	"set_all || column != ((void *)0)"
.LC241:
	.string	"!column || column->size != 0"
.LC242:
	.string	"entities != NULL"
.LC243:
	.string	"entities != ((void *)0)"
	.align 8
.LC244:
	.string	"row < ecs_vector_count(data->entities)"
	.align 8
.LC245:
	.string	"(row + count) <= ecs_vector_count(data->entities)"
	.text
	.globl	flecs_run_set_systems
	.type	flecs_run_set_systems, @function
flecs_run_set_systems:
.LFB119:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movl	%r9d, -204(%rbp)
	movl	24(%rbp), %eax
	movb	%al, -208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpb	$0, -208(%rbp)
	jne	.L1032
	cmpq	$0, -200(%rbp)
	je	.L1033
.L1032:
	movl	$1, %eax
	jmp	.L1034
.L1033:
	movl	$0, %eax
.L1034:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6058, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC239(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpb	$0, -208(%rbp)
	jne	.L1035
	cmpq	$0, -200(%rbp)
	jne	.L1035
	leaq	__PRETTY_FUNCTION__.9399(%rip), %rcx
	movl	$6058, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC240(%rip), %rdi
	call	__assert_fail@PLT
.L1035:
	cmpq	$0, -200(%rbp)
	je	.L1036
	movq	-200(%rbp), %rax
	movzwl	8(%rax), %eax
	testw	%ax, %ax
	je	.L1037
.L1036:
	movl	$1, %eax
	jmp	.L1038
.L1037:
	movl	$0, %eax
.L1038:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6059, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC241(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -200(%rbp)
	je	.L1039
	movq	-200(%rbp), %rax
	movzwl	8(%rax), %eax
	testw	%ax, %ax
	jne	.L1039
	leaq	__PRETTY_FUNCTION__.9399(%rip), %rcx
	movl	$6059, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC241(%rip), %rdi
	call	__assert_fail@PLT
.L1039:
	cmpl	$0, 16(%rbp)
	je	.L1059
	cmpq	$0, -192(%rbp)
	je	.L1059
	cmpq	$0, -200(%rbp)
	je	.L1041
	movq	-200(%rbp), %rax
	movzwl	8(%rax), %eax
	testw	%ax, %ax
	je	.L1059
.L1041:
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6066, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC242(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -136(%rbp)
	jne	.L1043
	leaq	__PRETTY_FUNCTION__.9399(%rip), %rcx
	movl	$6066, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC243(%rip), %rdi
	call	__assert_fail@PLT
.L1043:
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -204(%rbp)
	setl	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6067, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC244(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -204(%rbp)
	jl	.L1044
	leaq	__PRETTY_FUNCTION__.9399(%rip), %rcx
	movl	$6067, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC244(%rip), %rdi
	call	__assert_fail@PLT
.L1044:
	movl	-204(%rbp), %edx
	movl	16(%rbp), %eax
	leal	(%rdx,%rax), %ebx
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, %ebx
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6068, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC245(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-204(%rbp), %edx
	movl	16(%rbp), %eax
	leal	(%rdx,%rax), %ebx
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, %ebx
	jle	.L1045
	leaq	__PRETTY_FUNCTION__.9399(%rip), %rcx
	movl	$6068, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC245(%rip), %rdi
	call	__assert_fail@PLT
.L1045:
	movl	-204(%rbp), %eax
	sall	$3, %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movzbl	-208(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1046
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_c_info
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L1047
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L1047
	movq	-200(%rbp), %rax
	movzwl	8(%rax), %eax
	cwtl
	movl	%eax, -144(%rbp)
	movq	-200(%rbp), %rax
	movzwl	10(%rax), %eax
	movl	$16, %edx
	cmpw	$16, %ax
	cmovl	%edx, %eax
	movswl	%ax, %edx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	-204(%rbp), %ecx
	movl	-144(%rbp), %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rbx
	movl	-144(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-176(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-168(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	-72(%rbp), %r10
	movl	16(%rbp), %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
.L1047:
	movq	-176(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	-176(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movl	%eax, -40(%rbp)
	jmp	.L1048
.L1046:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -152(%rbp)
	movl	$0, -160(%rbp)
	jmp	.L1049
.L1052:
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_c_info
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L1050
	movq	-112(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L1050
	movq	-192(%rbp), %rax
	movq	16(%rax), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movzwl	8(%rax), %eax
	cwtl
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	.L1060
	movq	-96(%rbp), %rax
	movzwl	10(%rax), %eax
	movl	$16, %edx
	cmpw	$16, %ax
	cmovl	%edx, %eax
	movswl	%ax, %edx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-204(%rbp), %ecx
	movl	-148(%rbp), %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rbx
	movl	-148(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	-88(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-168(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	-104(%rbp), %r10
	movl	16(%rbp), %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	jmp	.L1050
.L1060:
	nop
.L1050:
	addl	$1, -160(%rbp)
.L1049:
	movl	-160(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.L1052
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -40(%rbp)
.L1048:
	movzbl	-208(%rbp), %edi
	movq	-136(%rbp), %r8
	movl	-204(%rbp), %ecx
	movq	-184(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-168(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%r8, %r9
	movl	16(%rbp), %r8d
	movq	%rax, %rdi
	call	run_set_systems_for_entities
	addq	$16, %rsp
	movq	-184(%rbp), %rax
	movl	16(%rax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1031
	movzbl	-208(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1054
	movl	$288, %r8d
	movl	-204(%rbp), %ecx
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-168(%rbp), %rax
	subq	$8, %rsp
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	movq	%r8, %r9
	movl	16(%rbp), %r8d
	movq	%rax, %rdi
	call	notify
	addq	$16, %rsp
	jmp	.L1031
.L1054:
	movq	-184(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -140(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L1055
.L1057:
	movq	-192(%rbp), %rax
	movq	16(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	testw	%ax, %ax
	je	.L1056
	movl	$288, %r8d
	movl	-204(%rbp), %ecx
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-168(%rbp), %rax
	subq	$8, %rsp
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	movq	%r8, %r9
	movl	16(%rbp), %r8d
	movq	%rax, %rdi
	call	notify
	addq	$16, %rsp
.L1056:
	addl	$1, -156(%rbp)
.L1055:
	movl	-156(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jl	.L1057
	jmp	.L1031
.L1059:
	nop
.L1031:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1058
	call	__stack_chk_fail@PLT
.L1058:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	flecs_run_set_systems, .-flecs_run_set_systems
	.section	.rodata
	.align 8
.LC246:
	.string	"!(dst_table->flags & EcsTableIsPrefab)"
.LC247:
	.string	"!(dst_table->flags & 2u)"
.LC248:
	.string	"system != 0"
	.text
	.globl	flecs_run_monitors
	.type	flecs_run_monitors, @function
flecs_run_monitors:
.LFB120:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movl	%r8d, -112(%rbp)
	movq	%r9, -120(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.L1078
	cmpq	$0, -104(%rbp)
	je	.L1079
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6160, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC246(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1065
	leaq	__PRETTY_FUNCTION__.9435(%rip), %rcx
	movl	$6160, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC247(%rip), %rdi
	call	__assert_fail@PLT
.L1065:
	cmpq	$0, -120(%rbp)
	jne	.L1066
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -60(%rbp)
	movq	-104(%rbp), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	$0, -80(%rbp)
	jmp	.L1067
.L1068:
	movl	-80(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-112(%rbp), %ecx
	movl	-108(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	flecs_run_monitor
	addl	$1, -80(%rbp)
.L1067:
	movl	-80(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L1068
	jmp	.L1061
.L1066:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -64(%rbp)
	movq	-104(%rbp), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -40(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L1069
.L1077:
	movl	-76(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	1632(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6178, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC248(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1070
	leaq	__PRETTY_FUNCTION__.9435(%rip), %rcx
	movl	$6178, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC248(%rip), %rdi
	call	__assert_fail@PLT
.L1070:
	movq	$0, -56(%rbp)
	jmp	.L1071
.L1074:
	movl	-72(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	1632(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jbe	.L1080
	addl	$1, -72(%rbp)
.L1071:
	movl	-72(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L1074
	jmp	.L1073
.L1080:
	nop
.L1073:
	cmpq	$0, -56(%rbp)
	je	.L1075
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	1632(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L1081
.L1075:
	movl	-112(%rbp), %ecx
	movl	-108(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	flecs_run_monitor
	jmp	.L1076
.L1081:
	nop
.L1076:
	addl	$1, -76(%rbp)
.L1069:
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L1077
	jmp	.L1061
.L1078:
	nop
	jmp	.L1061
.L1079:
	nop
.L1061:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	flecs_run_monitors, .-flecs_run_monitors
	.globl	flecs_record_to_row
	.type	flecs_record_to_row, @function
flecs_record_to_row:
.LFB121:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %eax
	shrl	$31, %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	addl	%eax, %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movzbl	-1(%rbp), %edx
	movb	%dl, (%rax)
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	flecs_record_to_row, .-flecs_record_to_row
	.globl	flecs_row_to_record
	.type	flecs_row_to_record, @function
flecs_row_to_record:
.LFB122:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, %eax
	movb	%al, -8(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movzbl	-8(%rbp), %eax
	addl	%eax, %eax
	movl	$1, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	imull	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	flecs_row_to_record, .-flecs_row_to_record
	.globl	flecs_type_to_ids
	.type	flecs_type_to_ids, @function
flecs_type_to_ids:
.LFB123:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movq	%rbx, %r12
	movl	%eax, %edx
	movq	%r13, %rcx
	movabsq	$-4294967296, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movq	%rax, %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	flecs_type_to_ids, .-flecs_type_to_ids
	.globl	flecs_set_watch
	.type	flecs_set_watch, @function
flecs_set_watch:
.LFB124:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L1089
	movq	$0, -32(%rbp)
	movl	$-1, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_set
	jmp	.L1093
.L1089:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L1091
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L1093
.L1091:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L1093
	movq	-40(%rbp), %rax
	movl	$-1, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L1093:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1092
	call	__stack_chk_fail@PLT
.L1092:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	flecs_set_watch, .-flecs_set_watch
	.globl	ecs_commit
	.type	ecs_commit, @function
ecs_commit:
.LFB125:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6260, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L1095
	leaq	__PRETTY_FUNCTION__.9486(%rip), %rcx
	movl	$6260, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1095:
	movq	$0, -56(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L1096
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	-80(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.L1096:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L1097
	movq	-88(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_info_from_record
.L1097:
	movq	-112(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	commit
	addq	$16, %rsp
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	setne	%al
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1099
	call	__stack_chk_fail@PLT
.L1099:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	ecs_commit, .-ecs_commit
	.section	.rodata
	.align 8
.LC249:
	.string	"unsafe_world->stats.last_id < UINT_MAX"
	.align 8
.LC250:
	.string	"unsafe_world->stats.last_id < (0x7fffffff * 2U + 1U)"
	.align 8
.LC251:
	.string	"!unsafe_world->stats.max_id || ecs_entity_t_lo(entity) <= unsafe_world->stats.max_id"
	.align 8
.LC252:
	.string	"!unsafe_world->stats.max_id || ((uint32_t)(entity)) <= unsafe_world->stats.max_id"
	.text
	.globl	ecs_new_id
	.type	ecs_new_id, @function
ecs_new_id:
.LFB126:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6281, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1101
	leaq	__PRETTY_FUNCTION__.9492(%rip), %rcx
	movl	$6281, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1101:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_readonly_world
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_stage_count
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movzbl	81(%rax), %eax
	testb	%al, %al
	jne	.L1102
	call	ecs_os_has_threading
	testb	%al, %al
	je	.L1103
	cmpl	$1, -28(%rbp)
	jle	.L1103
.L1102:
	movq	-8(%rbp), %rax
	movq	536(%rax), %rax
	movl	$4294967294, %edx
	cmpq	%rdx, %rax
	setbe	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6296, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC249(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	536(%rax), %rax
	movl	$4294967294, %edx
	cmpq	%rdx, %rax
	jbe	.L1104
	leaq	__PRETTY_FUNCTION__.9492(%rip), %rcx
	movl	$6296, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC250(%rip), %rdi
	call	__assert_fail@PLT
.L1104:
	movq	72+ecs_os_api(%rip), %rax
	movq	-8(%rbp), %rdx
	addq	$536, %rdx
	movq	%rdx, %rdi
	call	*%rax
	cltq
	movq	%rax, -24(%rbp)
	jmp	.L1105
.L1103:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_new_id
	movq	%rax, -24(%rbp)
.L1105:
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	testq	%rax, %rax
	je	.L1106
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	cmpq	%rax, %rdx
	ja	.L1107
.L1106:
	movl	$1, %eax
	jmp	.L1108
.L1107:
	movl	$0, %eax
.L1108:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6305, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC251(%rip), %rdx
	movl	$5, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	testq	%rax, %rax
	je	.L1109
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L1109
	leaq	__PRETTY_FUNCTION__.9492(%rip), %rcx
	movl	$6305, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC252(%rip), %rdi
	call	__assert_fail@PLT
.L1109:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	ecs_new_id, .-ecs_new_id
	.globl	ecs_set_with
	.type	ecs_set_with, @function
ecs_set_with:
.LFB127:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	ecs_set_with, .-ecs_set_with
	.globl	ecs_get_with
	.type	ecs_get_with, @function
ecs_get_with:
.LFB128:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_readonly_world
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	ecs_get_with, .-ecs_get_with
	.section	.rodata
	.align 8
.LC253:
	.string	"ecs_get_stage_count(world) <= 1"
	.text
	.globl	ecs_new_component_id
	.type	ecs_new_component_id, @function
ecs_new_component_id:
.LFB129:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6332, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1116
	leaq	__PRETTY_FUNCTION__.9510(%rip), %rcx
	movl	$6332, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1116:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	681(%rax), %eax
	testb	%al, %al
	je	.L1117
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_stage_count
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6342, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC253(%rip), %rdx
	movl	$70, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_stage_count
	cmpl	$1, %eax
	jle	.L1117
	leaq	__PRETTY_FUNCTION__.9510(%rip), %rcx
	movl	$6342, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC253(%rip), %rdi
	call	__assert_fail@PLT
.L1117:
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	cmpq	$255, %rax
	ja	.L1118
.L1119:
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 528(%rdx)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_exists
	testb	%al, %al
	je	.L1118
	cmpq	$255, -16(%rbp)
	jbe	.L1119
.L1118:
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	cmpq	$255, %rax
	jbe	.L1120
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_new_id
	movq	%rax, -16(%rbp)
.L1120:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	ecs_new_component_id, .-ecs_new_component_id
	.globl	ecs_new_w_type
	.type	ecs_new_w_type, @function
ecs_new_w_type:
.LFB130:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6366, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	jne	.L1123
	leaq	__PRETTY_FUNCTION__.9519(%rip), %rcx
	movl	$6366, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1123:
	cmpq	$0, -112(%rbp)
	jne	.L1124
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_new_w_id
	jmp	.L1125
.L1124:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_new_id
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-104(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_defer_new
	testb	%al, %al
	je	.L1126
	cmpq	$0, -80(%rbp)
	je	.L1127
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
.L1127:
	cmpq	$0, -72(%rbp)
	je	.L1128
	movl	$276, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movl	%eax, %eax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
.L1128:
	movq	-88(%rbp), %rax
	jmp	.L1125
.L1126:
	movq	-104(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	new
	leaq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -56(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L1129
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	cltq
	movq	-80(%rbp), %rdx
	movq	%rdx, -48(%rbp,%rax,8)
.L1129:
	cmpq	$0, -72(%rbp)
	je	.L1130
	movl	$276, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movl	%eax, %eax
	leaq	(%rdx,%rax), %rsi
	movabsq	$-432345564227567616, %rcx
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	orq	%rcx, %rsi
	movq	%rsi, %rdx
	cltq
	movq	%rdx, -48(%rbp,%rax,8)
.L1130:
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	je	.L1131
	movq	-104(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_ids
.L1131:
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	movq	-88(%rbp), %rax
.L1125:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1133
	call	__stack_chk_fail@PLT
.L1133:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	ecs_new_w_type, .-ecs_new_w_type
	.globl	ecs_new_w_id
	.type	ecs_new_w_id, @function
ecs_new_w_id:
.LFB131:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6413, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	jne	.L1135
	leaq	__PRETTY_FUNCTION__.9531(%rip), %rcx
	movl	$6413, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1135:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_new_id
	movq	%rax, -88(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -56(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L1136
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	cltq
	movq	-112(%rbp), %rdx
	movq	%rdx, -32(%rbp,%rax,8)
.L1136:
	movq	-96(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L1137
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	cltq
	movq	-80(%rbp), %rdx
	movq	%rdx, -32(%rbp,%rax,8)
.L1137:
	movq	-96(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L1138
	cmpq	$0, -112(%rbp)
	je	.L1139
	movabsq	$-72057594037927936, %rax
	andq	-112(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L1139
	movq	-112(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movl	$276, %edx
	cmpq	%rdx, %rax
	je	.L1138
.L1139:
	movl	$276, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movl	%eax, %eax
	leaq	(%rdx,%rax), %rsi
	movabsq	$-432345564227567616, %rcx
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	orq	%rcx, %rsi
	movq	%rsi, %rdx
	cltq
	movq	%rdx, -32(%rbp,%rax,8)
.L1138:
	movq	-104(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_defer_new
	testb	%al, %al
	je	.L1140
	movq	-88(%rbp), %rax
	jmp	.L1144
.L1140:
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	je	.L1142
	movq	-104(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	new
	jmp	.L1143
.L1142:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_set
.L1143:
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	movq	-88(%rbp), %rax
.L1144:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1145
	call	__stack_chk_fail@PLT
.L1145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	ecs_new_w_id, .-ecs_new_w_id
	.section	.rodata
	.align 8
.LC254:
	.string	"invalid non-trivial term in add expression"
.LC255:
	.string	"expected type for AND role"
	.text
	.type	traverse_from_expr, @function
traverse_from_expr:
.LFB132:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%rcx, -304(%rbp)
	movq	%r8, -312(%rbp)
	movl	%r9d, %edx
	movl	16(%rbp), %eax
	movb	%dl, -316(%rbp)
	movb	%al, -320(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-312(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -268(%rbp)
	cmpl	$31, -268(%rbp)
	jg	.L1147
	movl	$32, -268(%rbp)
.L1147:
	movq	-304(%rbp), %rax
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	je	.L1148
	leaq	-208(%rbp), %rdx
	movl	$0, %eax
	movl	$24, %ecx
	movq	%rdx, %rdi
	rep stosq
	jmp	.L1149
.L1169:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_is_initialized
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1171
	leaq	-208(%rbp), %rcx
	movq	-304(%rbp), %rdx
	movq	-296(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_finalize
	testl	%eax, %eax
	je	.L1152
	movl	$0, %eax
	jmp	.L1153
.L1152:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_is_trivial
	xorl	$1, %eax
	testb	%al, %al
	je	.L1154
	movq	-256(%rbp), %rax
	subq	-304(%rbp), %rax
	movq	%rax, %rdx
	movq	-304(%rbp), %rsi
	movq	-296(%rbp), %rax
	leaq	.LC254(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L1154:
	movq	-312(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -268(%rbp)
	jne	.L1155
	sall	-268(%rbp)
	movq	16+ecs_os_api(%rip), %rax
	movl	-268(%rbp), %edx
	sall	$3, %edx
	movl	%edx, %edi
	call	*%rax
	movq	%rax, -248(%rbp)
	movq	-312(%rbp), %rax
	movl	8(%rax), %eax
	sall	$3, %eax
	movslq	%eax, %rdx
	movq	-312(%rbp), %rax
	movq	(%rax), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-312(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$32, %eax
	je	.L1156
	movq	40+ecs_os_api(%rip), %rdx
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1156:
	movq	-312(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, (%rax)
.L1155:
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L1157
	movzbl	-320(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1158
.L1157:
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movl	$1, -216(%rbp)
	cmpb	$0, -316(%rbp)
	je	.L1159
	movq	-312(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -288(%rbp)
	jmp	.L1160
.L1159:
	movq	-312(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -288(%rbp)
.L1160:
	cmpq	$0, -288(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6513, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -288(%rbp)
	jne	.L1172
	leaq	__PRETTY_FUNCTION__.9554(%rip), %rcx
	movl	$6513, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L1158:
	movl	-48(%rbp), %eax
	cmpl	$4, %eax
	jne	.L1162
	movq	-208(%rbp), %rcx
	movq	-280(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.L1163
	movq	-256(%rbp), %rax
	subq	-304(%rbp), %rax
	movq	%rax, %rdx
	movq	-304(%rbp), %rsi
	movq	-296(%rbp), %rax
	leaq	.LC255(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L1163:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -232(%rbp)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -260(%rbp)
	movl	$0, -264(%rbp)
	jmp	.L1164
.L1168:
	movl	-264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movl	$1, -216(%rbp)
	cmpb	$0, -316(%rbp)
	je	.L1165
	movq	-312(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -288(%rbp)
	jmp	.L1166
.L1165:
	movq	-312(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -288(%rbp)
.L1166:
	cmpq	$0, -288(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6535, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -288(%rbp)
	jne	.L1167
	leaq	__PRETTY_FUNCTION__.9554(%rip), %rcx
	movl	$6535, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L1167:
	addl	$1, -264(%rbp)
.L1164:
	movl	-264(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L1168
	jmp	.L1162
.L1172:
	nop
.L1162:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_fini
.L1149:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L1148
	leaq	-208(%rbp), %rdi
	movq	-256(%rbp), %rcx
	movq	-304(%rbp), %rdx
	movq	-296(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ecs_parse_term
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	jne	.L1169
	jmp	.L1148
.L1171:
	nop
.L1148:
	movq	-288(%rbp), %rax
.L1153:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1170
	call	__stack_chk_fail@PLT
.L1170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	traverse_from_expr, .-traverse_from_expr
	.type	defer_from_expr, @function
defer_from_expr:
.LFB133:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -276(%rbp)
	movl	%edx, %eax
	movb	%al, -280(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-272(%rbp), %rax
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L1173
	leaq	-208(%rbp), %rdx
	movl	$0, %eax
	movl	$24, %ecx
	movq	%rdx, %rdi
	rep stosq
	jmp	.L1175
.L1190:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_is_initialized
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1192
	leaq	-208(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_finalize
	testl	%eax, %eax
	jne	.L1193
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_is_trivial
	xorl	$1, %eax
	testb	%al, %al
	je	.L1179
	movq	-232(%rbp), %rax
	subq	-272(%rbp), %rax
	movq	%rax, %rdx
	movq	-272(%rbp), %rsi
	movq	-264(%rbp), %rax
	leaq	.LC254(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L1179:
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L1180
	movzbl	-280(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1181
.L1180:
	cmpb	$0, -276(%rbp)
	je	.L1182
	movq	-208(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
	jmp	.L1184
.L1182:
	movq	-208(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_remove_id
	jmp	.L1184
.L1181:
	movl	-48(%rbp), %eax
	cmpl	$4, %eax
	jne	.L1184
	movq	-208(%rbp), %rcx
	movq	-248(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.L1185
	movq	-232(%rbp), %rax
	subq	-272(%rbp), %rax
	movq	%rax, %rdx
	movq	-272(%rbp), %rsi
	movq	-264(%rbp), %rax
	leaq	.LC255(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L1185:
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -216(%rbp)
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -236(%rbp)
	movl	$0, -240(%rbp)
	jmp	.L1186
.L1189:
	cmpb	$0, -276(%rbp)
	je	.L1187
	movl	-240(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
	jmp	.L1188
.L1187:
	movl	-240(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_remove_id
.L1188:
	addl	$1, -240(%rbp)
.L1186:
	movl	-240(%rbp), %eax
	cmpl	-236(%rbp), %eax
	jl	.L1189
.L1184:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_fini
.L1175:
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L1173
	leaq	-208(%rbp), %rdi
	movq	-232(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ecs_parse_term
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.L1190
	jmp	.L1173
.L1192:
	nop
	jmp	.L1173
.L1193:
	nop
.L1173:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1191
	call	__stack_chk_fail@PLT
.L1191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	defer_from_expr, .-defer_from_expr
	.section	.rodata
	.align 8
.LC256:
	.string	"ecs_get_name(world, result) != NULL"
	.align 8
.LC257:
	.string	"ecs_get_name(world, result) != ((void *)0)"
	.align 8
.LC258:
	.string	"!ecs_os_strcmp(desc->symbol, sym)"
.LC259:
	.string	"!strcmp(desc->symbol, sym)"
	.text
	.type	traverse_add_remove, @function
traverse_add_remove:
.LFB134:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$744, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -696(%rbp)
	movq	%rsi, -704(%rbp)
	movq	%rdx, -712(%rbp)
	movq	%rcx, -720(%rbp)
	movq	%r8, -728(%rbp)
	movq	%r9, -736(%rbp)
	movl	16(%rbp), %edx
	movl	24(%rbp), %eax
	movb	%dl, -740(%rbp)
	movb	%al, -744(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-720(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -560(%rbp)
	movq	$0, -552(%rbp)
	movq	$0, -648(%rbp)
	movq	$0, -664(%rbp)
	movzbl	-740(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1195
	leaq	-576(%rbp), %rdx
	movq	-704(%rbp), %rcx
	movq	-696(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	testb	%al, %al
	je	.L1195
	movq	-568(%rbp), %rax
	movq	%rax, -664(%rbp)
.L1195:
	movq	$0, -624(%rbp)
	movq	$0, -616(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, -624(%rbp)
	movq	$0, -608(%rbp)
	movq	$0, -600(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -608(%rbp)
	cmpb	$0, -740(%rbp)
	je	.L1196
	cmpb	$0, -740(%rbp)
	je	.L1197
	cmpq	$0, -728(%rbp)
	je	.L1197
	cmpq	$0, -712(%rbp)
	jne	.L1197
	movzbl	-744(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1197
	movl	$276, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-728(%rbp), %rax
	movl	%eax, %eax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rdx, %rax
	movq	%rax, -672(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, -592(%rbp)
	movl	$1, -584(%rbp)
	leaq	-624(%rbp), %rcx
	leaq	-592(%rbp), %rdx
	movq	-664(%rbp), %rsi
	movq	-696(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -664(%rbp)
	cmpq	$0, -664(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6647, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -664(%rbp)
	jne	.L1197
	leaq	__PRETTY_FUNCTION__.9605(%rip), %rcx
	movl	$6647, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L1197:
	movq	-736(%rbp), %rax
	testq	%rax, %rax
	je	.L1196
	leaq	-736(%rbp), %rax
	movq	%rax, -592(%rbp)
	movl	$1, -584(%rbp)
	leaq	-624(%rbp), %rcx
	leaq	-592(%rbp), %rdx
	movq	-664(%rbp), %rsi
	movq	-696(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -664(%rbp)
	cmpq	$0, -664(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6653, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -664(%rbp)
	jne	.L1196
	leaq	__PRETTY_FUNCTION__.9605(%rip), %rcx
	movl	$6653, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L1196:
	cmpq	$0, -712(%rbp)
	je	.L1200
	movzbl	-744(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1200
	movl	$271, %eax
	movl	%eax, %edx
	movabsq	$17179869184, %rax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rdx, %rax
	movq	%rax, -672(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, -592(%rbp)
	movl	$1, -584(%rbp)
	leaq	-624(%rbp), %rcx
	leaq	-592(%rbp), %rdx
	movq	-664(%rbp), %rsi
	movq	-696(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -664(%rbp)
	cmpq	$0, -664(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6662, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -664(%rbp)
	jne	.L1200
	leaq	__PRETTY_FUNCTION__.9605(%rip), %rcx
	movl	$6662, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L1200:
	movl	$0, -676(%rbp)
	movq	-720(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -640(%rbp)
	jmp	.L1202
.L1205:
	leaq	-672(%rbp), %rax
	movq	%rax, -592(%rbp)
	movl	$1, -584(%rbp)
	leaq	-624(%rbp), %rcx
	leaq	-592(%rbp), %rdx
	movq	-664(%rbp), %rsi
	movq	-696(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -664(%rbp)
	cmpq	$0, -664(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6672, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -664(%rbp)
	jne	.L1202
	leaq	__PRETTY_FUNCTION__.9605(%rip), %rcx
	movl	$6672, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L1202:
	cmpl	$31, -676(%rbp)
	jg	.L1204
	movl	-676(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -676(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-640(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rax
	testq	%rax, %rax
	jne	.L1205
.L1204:
	movl	$0, -676(%rbp)
	movq	-720(%rbp), %rax
	addq	$304, %rax
	movq	%rax, -640(%rbp)
	jmp	.L1206
.L1209:
	leaq	-672(%rbp), %rax
	movq	%rax, -592(%rbp)
	movl	$1, -584(%rbp)
	leaq	-608(%rbp), %rcx
	leaq	-592(%rbp), %rdx
	movq	-664(%rbp), %rsi
	movq	-696(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -664(%rbp)
	cmpq	$0, -664(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6681, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -664(%rbp)
	jne	.L1206
	leaq	__PRETTY_FUNCTION__.9605(%rip), %rcx
	movl	$6681, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L1206:
	cmpl	$31, -676(%rbp)
	jg	.L1208
	movl	-676(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -676(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-640(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rax
	testq	%rax, %rax
	jne	.L1209
.L1208:
	movq	-720(%rbp), %rax
	movq	560(%rax), %rax
	testq	%rax, %rax
	je	.L1210
	movq	-720(%rbp), %rax
	movq	560(%rax), %rcx
	leaq	-624(%rbp), %rdi
	movq	-712(%rbp), %rdx
	movq	-664(%rbp), %rsi
	movq	-696(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	traverse_from_expr
	addq	$16, %rsp
	movq	%rax, -664(%rbp)
.L1210:
	movq	-720(%rbp), %rax
	movq	568(%rax), %rax
	testq	%rax, %rax
	je	.L1211
	movq	-720(%rbp), %rax
	movq	568(%rax), %rcx
	leaq	-608(%rbp), %rdi
	movq	-712(%rbp), %rdx
	movq	-664(%rbp), %rsi
	movq	-696(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	traverse_from_expr
	addq	$16, %rsp
	movq	%rax, -664(%rbp)
.L1211:
	movq	-648(%rbp), %rax
	cmpq	-664(%rbp), %rax
	je	.L1212
	leaq	-608(%rbp), %r8
	leaq	-624(%rbp), %rdi
	movq	-664(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	movq	-704(%rbp), %rsi
	movq	-696(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	commit
	addq	$16, %rsp
.L1212:
	cmpq	$0, -712(%rbp)
	je	.L1213
	movzbl	-744(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1213
	movq	-656(%rbp), %rdi
	movq	-712(%rbp), %rcx
	movq	-728(%rbp), %rdx
	movq	-704(%rbp), %rsi
	movq	-696(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ecs_add_path_w_sep
	movq	-704(%rbp), %rdx
	movq	-696(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_name
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6712, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC256(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-704(%rbp), %rdx
	movq	-696(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_name
	testq	%rax, %rax
	jne	.L1213
	leaq	__PRETTY_FUNCTION__.9605(%rip), %rcx
	movl	$6712, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC257(%rip), %rdi
	call	__assert_fail@PLT
.L1213:
	movq	-720(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L1214
	movq	-704(%rbp), %rdx
	movq	-696(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_symbol
	movq	%rax, -632(%rbp)
	cmpq	$0, -632(%rbp)
	je	.L1215
	movq	-720(%rbp), %rax
	movq	32(%rax), %rbx
	movq	-720(%rbp), %rax
	movq	32(%rax), %rax
	movq	-632(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movq	%rbx, %r9
	movl	$6719, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC258(%rip), %rdx
	movl	$20, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-720(%rbp), %rax
	movq	32(%rax), %rax
	movq	-632(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1214
	leaq	__PRETTY_FUNCTION__.9605(%rip), %rcx
	movl	$6719, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC259(%rip), %rdi
	call	__assert_fail@PLT
.L1215:
	movq	-720(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-704(%rbp), %rcx
	movq	-696(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_set_symbol
.L1214:
	movl	-616(%rbp), %eax
	cmpl	$32, %eax
	jle	.L1216
	movq	40+ecs_os_api(%rip), %rdx
	movq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1216:
	movl	-600(%rbp), %eax
	cmpl	$32, %eax
	jle	.L1219
	movq	40+ecs_os_api(%rip), %rdx
	movq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1219:
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1218
	call	__stack_chk_fail@PLT
.L1218:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	traverse_add_remove, .-traverse_add_remove
	.section	.rodata
	.align 8
.LC260:
	.string	"!ecs_os_strcmp(sym, desc->symbol)"
.LC261:
	.string	"!strcmp(sym, desc->symbol)"
	.text
	.type	deferred_add_remove, @function
deferred_add_remove:
.LFB135:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movl	16(%rbp), %edx
	movl	24(%rbp), %eax
	movb	%dl, -100(%rbp)
	movb	%al, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpb	$0, -100(%rbp)
	je	.L1221
	cmpb	$0, -100(%rbp)
	je	.L1222
	cmpq	$0, -88(%rbp)
	je	.L1222
	cmpq	$0, -72(%rbp)
	jne	.L1222
	movzbl	-104(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1222
	movl	$276, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movl	%eax, %eax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
.L1222:
	cmpq	$0, -96(%rbp)
	je	.L1221
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
.L1221:
	movl	$0, -36(%rbp)
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -24(%rbp)
	jmp	.L1223
.L1225:
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
.L1223:
	cmpl	$31, -36(%rbp)
	jg	.L1224
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1225
.L1224:
	movl	$0, -36(%rbp)
	movq	-80(%rbp), %rax
	addq	$304, %rax
	movq	%rax, -24(%rbp)
	jmp	.L1226
.L1228:
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_remove_id
.L1226:
	cmpl	$31, -36(%rbp)
	jg	.L1227
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1228
.L1227:
	movq	-80(%rbp), %rax
	movq	560(%rax), %rax
	testq	%rax, %rax
	je	.L1229
	movq	-80(%rbp), %rax
	movq	560(%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	defer_from_expr
.L1229:
	movq	-80(%rbp), %rax
	movq	568(%rax), %rax
	testq	%rax, %rax
	je	.L1230
	movq	-80(%rbp), %rax
	movq	568(%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	defer_from_expr
.L1230:
	cmpq	$0, -72(%rbp)
	je	.L1231
	movzbl	-104(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1231
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ecs_add_path_w_sep
.L1231:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L1233
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_symbol
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6802, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC260(%rip), %rdx
	movl	$6, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1233
	leaq	__PRETTY_FUNCTION__.9642(%rip), %rcx
	movl	$6802, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC261(%rip), %rdi
	call	__assert_fail@PLT
.L1233:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	deferred_add_remove, .-deferred_add_remove
	.section	.rodata
.LC262:
	.string	"desc != NULL"
.LC263:
	.string	"desc != ((void *)0)"
.LC264:
	.string	"."
	.align 8
.LC265:
	.string	"ecs_get_type(world, result) == NULL"
	.align 8
.LC266:
	.string	"ecs_get_type(world, result) == ((void *)0)"
.LC267:
	.string	"ecs_is_valid(world, result)"
	.align 8
.LC268:
	.string	"name_assigned == ecs_has_pair( world, result, ecs_id(EcsIdentifier), EcsName)"
	.align 8
.LC269:
	.string	"name_assigned == ecs_has_id(world, result, (ECS_PAIR | ((((uint64_t)((4))) << 32) + ((uint32_t)(EcsName)))))"
	.text
	.globl	ecs_entity_init
	.type	ecs_entity_init, @function
ecs_entity_init:
.LFB136:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6811, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L1235
	leaq	__PRETTY_FUNCTION__.9647(%rip), %rcx
	movl	$6811, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1235:
	cmpq	$0, -96(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6812, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC262(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -96(%rbp)
	jne	.L1236
	leaq	__PRETTY_FUNCTION__.9647(%rip), %rcx
	movl	$6812, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC263(%rip), %rdi
	call	__assert_fail@PLT
.L1236:
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_scope
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_with
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L1237
	leaq	.LC264(%rip), %rax
	movq	%rax, -64(%rbp)
.L1237:
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movb	$0, -78(%rbp)
	movb	$0, -77(%rbp)
	movq	-88(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L1238
	cmpq	$0, -16(%rbp)
	je	.L1238
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1238
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L1239
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	jne	.L1238
.L1239:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	jne	.L1240
	movl	-76(%rbp), %eax
	cltq
	addq	$1, %rax
	addq	%rax, -72(%rbp)
	jmp	.L1238
.L1240:
	movl	-76(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
.L1238:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L1241
	cmpq	$0, -72(%rbp)
	je	.L1242
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ecs_lookup_path_w_sep
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L1242
	movb	$1, -77(%rbp)
.L1242:
	cmpq	$0, -56(%rbp)
	jne	.L1243
	movq	-96(%rbp), %rax
	movzbl	40(%rax), %eax
	testb	%al, %al
	je	.L1244
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_new_component_id
	movq	%rax, -56(%rbp)
	jmp	.L1245
.L1244:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_new_id
	movq	%rax, -56(%rbp)
.L1245:
	movb	$1, -78(%rbp)
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_type
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6868, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC265(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_type
	testq	%rax, %rax
	je	.L1243
	leaq	__PRETTY_FUNCTION__.9647(%rip), %rcx
	movl	$6868, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC266(%rip), %rdi
	call	__assert_fail@PLT
.L1241:
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6872, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1246
	leaq	__PRETTY_FUNCTION__.9647(%rip), %rcx
	movl	$6872, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC267(%rip), %rdi
	call	__assert_fail@PLT
.L1246:
	movl	$271, %eax
	movl	%eax, %edx
	movabsq	$17179869184, %rax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	movb	%al, -77(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L1243
	cmpb	$0, -77(%rbp)
	je	.L1243
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ecs_get_path_w_sep
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1243
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1247
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	$0, %eax
	jmp	.L1248
.L1247:
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1243:
	movl	$271, %eax
	movl	%eax, %edx
	movabsq	$17179869184, %rax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	cmpb	%al, -77(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6890, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC268(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	$271, %eax
	movl	%eax, %edx
	movabsq	$17179869184, %rax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	cmpb	%al, -77(%rbp)
	je	.L1249
	leaq	__PRETTY_FUNCTION__.9647(%rip), %rcx
	movl	$6890, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC269(%rip), %rdi
	call	__assert_fail@PLT
.L1249:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L1250
	movzbl	-77(%rbp), %r8d
	movzbl	-78(%rbp), %edi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %r10
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	deferred_add_remove
	addq	$16, %rsp
	jmp	.L1251
.L1250:
	movzbl	-77(%rbp), %r8d
	movzbl	-78(%rbp), %edi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %r10
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	traverse_add_remove
	addq	$16, %rsp
.L1251:
	movq	-56(%rbp), %rax
.L1248:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	ecs_entity_init, .-ecs_entity_init
	.section	.rodata
.LC270:
	.string	"result != 0"
	.align 8
.LC271:
	.string	"ecs_has(world, result, EcsComponent)"
	.align 8
.LC272:
	.string	"ecs_has_type(world, result, FLECS__TEcsComponent)"
	.text
	.globl	ecs_component_init
	.type	ecs_component_init, @function
ecs_component_init:
.LFB137:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$680, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -680(%rbp)
	movq	%rsi, -688(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -680(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6909, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -680(%rbp)
	jne	.L1253
	leaq	__PRETTY_FUNCTION__.9664(%rip), %rcx
	movl	$6909, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1253:
	movq	-680(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	movzbl	681(%rax), %eax
	movb	%al, -662(%rbp)
	movq	-680(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_is_deferred
	movb	%al, -661(%rbp)
	movl	$0, -660(%rbp)
	movq	$0, -648(%rbp)
	movq	$0, -640(%rbp)
	cmpb	$0, -662(%rbp)
	jne	.L1254
	cmpb	$0, -661(%rbp)
	je	.L1255
.L1254:
	movq	-680(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_stage_count
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6922, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC253(%rip), %rdx
	movl	$70, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-680(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_stage_count
	cmpl	$1, %eax
	jle	.L1256
	leaq	__PRETTY_FUNCTION__.9664(%rip), %rcx
	movl	$6922, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC253(%rip), %rdi
	call	__assert_fail@PLT
.L1256:
	movq	-680(%rbp), %rax
	movb	$0, 681(%rax)
	movq	-680(%rbp), %rax
	movq	%rax, -656(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -660(%rbp)
	movq	-640(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	-640(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-640(%rbp), %rax
	movq	$0, 16(%rax)
.L1255:
	movq	-688(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movl	$72, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	movb	$1, -568(%rbp)
	movq	-576(%rbp), %rax
	testq	%rax, %rax
	jne	.L1257
	movq	-600(%rbp), %rax
	movq	%rax, -576(%rbp)
.L1257:
	movq	-688(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	leaq	-608(%rbp), %rdx
	movq	-680(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_entity_init
	movq	%rax, -624(%rbp)
	cmpq	$0, -624(%rbp)
	jne	.L1258
	movl	$0, %eax
	jmp	.L1268
.L1258:
	movb	$0, -656(%rbp)
	leaq	-656(%rbp), %rdx
	movq	-624(%rbp), %rsi
	movq	-680(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ecs_get_mut_id
	movq	%rax, -616(%rbp)
	movzbl	-656(%rbp), %eax
	testb	%al, %al
	je	.L1260
	movq	-688(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movq	-616(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-688(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movq	-616(%rbp), %rdx
	movl	%eax, 4(%rdx)
	jmp	.L1261
.L1260:
	movq	-616(%rbp), %rax
	movl	(%rax), %ebx
	movq	-688(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	cmpl	%eax, %ebx
	je	.L1262
	movq	-688(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movl	$6957, %edx
	leaq	.LC74(%rip), %rsi
	movl	$23, %edi
	movl	$0, %eax
	call	_ecs_abort
	call	abort@PLT
.L1262:
	movq	-616(%rbp), %rax
	movl	4(%rax), %ebx
	movq	-688(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	cmpl	%eax, %ebx
	je	.L1261
	movq	-688(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movl	$6960, %edx
	leaq	.LC74(%rip), %rsi
	movl	$24, %edi
	movl	$0, %eax
	call	_ecs_abort
	call	abort@PLT
.L1261:
	movq	-624(%rbp), %rcx
	movq	-680(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_modified_id
	movq	-680(%rbp), %rax
	movq	528(%rax), %rax
	cmpq	%rax, -632(%rbp)
	jbe	.L1263
	cmpq	$255, -632(%rbp)
	ja	.L1263
	movq	-632(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-680(%rbp), %rax
	movq	%rdx, 528(%rax)
.L1263:
	movl	$290, %eax
	salq	$32, %rax
	movl	$308, %edx
	movl	%edx, %edx
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-624(%rbp), %rcx
	movq	-680(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
	cmpb	$0, -662(%rbp)
	jne	.L1264
	cmpb	$0, -661(%rbp)
	je	.L1265
.L1264:
	movq	-680(%rbp), %rax
	movzbl	-662(%rbp), %edx
	movb	%dl, 681(%rax)
	movq	-640(%rbp), %rax
	movl	-660(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-640(%rbp), %rax
	movq	-648(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L1265:
	cmpq	$0, -624(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6980, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC270(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -624(%rbp)
	jne	.L1266
	leaq	__PRETTY_FUNCTION__.9664(%rip), %rcx
	movl	$6980, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC270(%rip), %rdi
	call	__assert_fail@PLT
.L1266:
	movq	FLECS__TEcsComponent(%rip), %rdx
	movq	-624(%rbp), %rcx
	movq	-680(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_type
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$6981, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC271(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	FLECS__TEcsComponent(%rip), %rdx
	movq	-624(%rbp), %rcx
	movq	-680(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_type
	testb	%al, %al
	jne	.L1267
	leaq	__PRETTY_FUNCTION__.9664(%rip), %rcx
	movl	$6981, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC272(%rip), %rdi
	call	__assert_fail@PLT
.L1267:
	movq	-624(%rbp), %rax
.L1268:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1269
	call	__stack_chk_fail@PLT
.L1269:
	addq	$680, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	ecs_component_init, .-ecs_component_init
	.globl	ecs_type_init
	.type	ecs_type_init, @function
ecs_type_init:
.LFB138:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400, %rsp
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-400(%rbp), %rdx
	movq	-392(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_entity_init
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	testq	%rax, %rax
	jne	.L1271
	movl	$0, %eax
	jmp	.L1285
.L1271:
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	$0, -372(%rbp)
	movq	-400(%rbp), %rax
	addq	$576, %rax
	movq	%rax, -320(%rbp)
	jmp	.L1273
.L1276:
	leaq	-360(%rbp), %rax
	movq	%rax, -288(%rbp)
	movl	$1, -280(%rbp)
	leaq	-304(%rbp), %rcx
	leaq	-288(%rbp), %rdx
	movq	-344(%rbp), %rsi
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -344(%rbp)
	leaq	-304(%rbp), %rcx
	leaq	-288(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -352(%rbp)
	cmpq	$0, -352(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7010, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -352(%rbp)
	jne	.L1273
	leaq	__PRETTY_FUNCTION__.9689(%rip), %rcx
	movl	$7010, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L1273:
	cmpl	$31, -372(%rbp)
	jg	.L1275
	movl	-372(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -372(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-320(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	testq	%rax, %rax
	jne	.L1276
.L1275:
	movq	-400(%rbp), %rax
	movq	832(%rax), %rax
	testq	%rax, %rax
	je	.L1277
	movq	-400(%rbp), %rax
	movq	832(%rax), %rcx
	movq	-400(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-304(%rbp), %rdi
	movq	-344(%rbp), %rsi
	movq	-392(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	traverse_from_expr
	addq	$16, %rsp
	movq	%rax, -344(%rbp)
	movq	-400(%rbp), %rax
	movq	832(%rax), %rcx
	movq	-400(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-304(%rbp), %rdi
	movq	-352(%rbp), %rsi
	movq	-392(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	traverse_from_expr
	addq	$16, %rsp
	movq	%rax, -352(%rbp)
.L1277:
	movl	-296(%rbp), %eax
	cmpl	$32, %eax
	jle	.L1278
	movq	40+ecs_os_api(%rip), %rdx
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1278:
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	cmpq	$0, -352(%rbp)
	je	.L1279
	movq	-352(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -336(%rbp)
.L1279:
	cmpq	$0, -344(%rbp)
	je	.L1280
	movq	-344(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -328(%rbp)
.L1280:
	movb	$0, -288(%rbp)
	movq	-368(%rbp), %rsi
	leaq	-288(%rbp), %rdx
	movq	-392(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	ecs_get_mut_id
	movq	%rax, -312(%rbp)
	movzbl	-288(%rbp), %eax
	testb	%al, %al
	je	.L1281
	movq	-312(%rbp), %rax
	movq	-336(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-312(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -336(%rbp)
	je	.L1282
	movq	-336(%rbp), %rdx
	movq	-392(%rbp), %rax
	movq	296(%rax), %rax
	leaq	-368(%rbp), %rcx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_map_set
.L1282:
	movq	-368(%rbp), %rcx
	movq	-392(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_modified_id
	jmp	.L1283
.L1281:
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -336(%rbp)
	je	.L1284
	movq	-400(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movl	$7056, %edx
	leaq	.LC74(%rip), %rsi
	movl	$8, %edi
	movl	$0, %eax
	call	_ecs_abort
	call	abort@PLT
.L1284:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -328(%rbp)
	je	.L1283
	movq	-400(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movl	$7059, %edx
	leaq	.LC74(%rip), %rsi
	movl	$8, %edi
	movl	$0, %eax
	call	_ecs_abort
	call	abort@PLT
.L1283:
	movq	-368(%rbp), %rax
.L1285:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1286
	call	__stack_chk_fail@PLT
.L1286:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	ecs_type_init, .-ecs_type_init
	.globl	ecs_bulk_new_w_data
	.type	ecs_bulk_new_w_data, @function
ecs_bulk_new_w_data:
.LFB139:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7072, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L1288
	leaq	__PRETTY_FUNCTION__.9703(%rip), %rcx
	movl	$7072, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1288:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	-32(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	flecs_defer_bulk_new
	testb	%al, %al
	je	.L1289
	movq	-32(%rbp), %rax
	jmp	.L1291
.L1289:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_find_or_create
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	new_w_data
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	movq	-32(%rbp), %rax
.L1291:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1292
	call	__stack_chk_fail@PLT
.L1292:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	ecs_bulk_new_w_data, .-ecs_bulk_new_w_data
	.globl	ecs_bulk_new_w_type
	.type	ecs_bulk_new_w_type, @function
ecs_bulk_new_w_type:
.LFB140:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7091, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L1294
	leaq	__PRETTY_FUNCTION__.9712(%rip), %rcx
	movl	$7091, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1294:
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-72(%rbp), %rax
	leaq	-56(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	movl	-84(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	flecs_defer_bulk_new
	testb	%al, %al
	je	.L1295
	movq	-56(%rbp), %rax
	jmp	.L1297
.L1295:
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_table_from_type
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	-84(%rbp), %edx
	movq	-40(%rbp), %rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	new_w_data
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	movq	-56(%rbp), %rax
.L1297:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1298
	call	__stack_chk_fail@PLT
.L1298:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	ecs_bulk_new_w_type, .-ecs_bulk_new_w_type
	.section	.rodata
.LC273:
	.string	"ecs_is_valid(world, id)"
	.text
	.globl	ecs_bulk_new_w_id
	.type	ecs_bulk_new_w_id, @function
ecs_bulk_new_w_id:
.LFB141:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7110, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L1300
	leaq	__PRETTY_FUNCTION__.9722(%rip), %rcx
	movl	$7110, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1300:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7111, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC273(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1301
	leaq	__PRETTY_FUNCTION__.9722(%rip), %rcx
	movl	$7111, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC273(%rip), %rdi
	call	__assert_fail@PLT
.L1301:
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -24(%rbp)
	movq	-72(%rbp), %rax
	leaq	-56(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	movl	-84(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	flecs_defer_bulk_new
	testb	%al, %al
	je	.L1302
	movq	-56(%rbp), %rax
	jmp	.L1304
.L1302:
	movq	-72(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_find_or_create
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	-84(%rbp), %edx
	movq	-40(%rbp), %rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	new_w_data
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	movq	-56(%rbp), %rax
.L1304:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1305
	call	__stack_chk_fail@PLT
.L1305:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	ecs_bulk_new_w_id, .-ecs_bulk_new_w_id
	.section	.rodata
.LC274:
	.string	"ecs_is_valid(world, entity)"
	.text
	.globl	ecs_clear
	.type	ecs_clear, @function
ecs_clear:
.LFB142:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7132, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	jne	.L1307
	leaq	__PRETTY_FUNCTION__.9731(%rip), %rcx
	movl	$7132, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1307:
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7133, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1308
	leaq	__PRETTY_FUNCTION__.9731(%rip), %rcx
	movl	$7133, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1308:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_clear
	testb	%al, %al
	jne	.L1313
	movq	$0, -40(%rbp)
	movq	-104(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L1311
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-104(%rbp), %rax
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	call	remove_ids_w_info
.L1311:
	movq	-104(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	jmp	.L1306
.L1313:
	nop
.L1306:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1312
	call	__stack_chk_fail@PLT
.L1312:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	ecs_clear, .-ecs_clear
	.type	throw_invalid_delete, @function
throw_invalid_delete:
.LFB143:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-272(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-280(%rbp), %rax
	movl	$256, %ecx
	movq	%rax, %rdi
	call	ecs_id_str
	leaq	-272(%rbp), %rax
	movq	%rax, %rcx
	movl	$7169, %edx
	leaq	.LC74(%rip), %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	_ecs_abort
	call	abort@PLT
	.cfi_endproc
.LFE143:
	.size	throw_invalid_delete, .-throw_invalid_delete
	.section	.rodata
	.align 8
.LC275:
	.string	"!is_role || ((ids[column] & ECS_ROLE_MASK) != 0)"
	.align 8
.LC276:
	.string	"!is_role || ((ids[column] & (0xFFull << 56)) != 0)"
	.text
	.type	remove_from_table, @function
remove_from_table:
.LFB144:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$416, %rsp
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%rdx, -408(%rbp)
	movl	%ecx, -412(%rbp)
	movl	%r8d, -416(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -304(%rbp)
	cmpl	$32, -416(%rbp)
	jle	.L1317
	movq	16+ecs_os_api(%rip), %rax
	movl	-416(%rbp), %edx
	sall	$3, %edx
	movl	%edx, %edi
	call	*%rax
	movq	%rax, -304(%rbp)
.L1317:
	movq	-400(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-400(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -336(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-408(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	sete	%al
	movb	%al, -371(%rbp)
	cmpb	$0, -371(%rbp)
	je	.L1318
	movl	-412(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movabsq	$-72057594037927936, %rdx
	andq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	cmpq	%rax, %rdx
	je	.L1318
	movl	$1, %eax
	jmp	.L1319
.L1318:
	movl	$0, %eax
.L1319:
	movb	%al, -370(%rbp)
	andb	$1, -370(%rbp)
	movzbl	-370(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1320
	movl	-412(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movabsq	$-72057594037927936, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L1321
.L1320:
	movl	$1, %eax
	jmp	.L1322
.L1321:
	movl	$0, %eax
.L1322:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7194, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC275(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movzbl	-370(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1323
	movl	-412(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movabsq	$-72057594037927936, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	.L1323
	leaq	__PRETTY_FUNCTION__.9758(%rip), %rcx
	movl	$7194, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC276(%rip), %rdi
	call	__assert_fail@PLT
.L1323:
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_id_is_wildcard
	movb	%al, -369(%rbp)
	movq	-400(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -360(%rbp)
	movl	$0, -364(%rbp)
	movq	-408(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movq	%rax, -328(%rbp)
	movl	-412(%rbp), %eax
	movl	%eax, -368(%rbp)
	jmp	.L1324
.L1331:
	movl	-368(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	cmpb	$0, -370(%rbp)
	je	.L1325
	movq	-352(%rbp), %rax
	movabsq	$72057594037927935, %rdx
	andq	%rdx, %rax
	cmpq	%rax, -328(%rbp)
	je	.L1326
	jmp	.L1330
.L1325:
	cmpb	$0, -369(%rbp)
	je	.L1326
	movq	-352(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_id_match
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1338
.L1326:
	leaq	-352(%rbp), %rax
	movq	%rax, -288(%rbp)
	movl	$1, -280(%rbp)
	leaq	-304(%rbp), %rcx
	leaq	-288(%rbp), %rdx
	movq	-344(%rbp), %rsi
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -344(%rbp)
	addl	$1, -364(%rbp)
	movl	-364(%rbp), %eax
	cmpl	-416(%rbp), %eax
	je	.L1339
	jmp	.L1330
.L1338:
	nop
.L1330:
	addl	$1, -368(%rbp)
.L1324:
	movl	-368(%rbp), %eax
	cmpl	-360(%rbp), %eax
	jl	.L1331
	jmp	.L1329
.L1339:
	nop
.L1329:
	cmpq	$0, -344(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7222, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC218(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -344(%rbp)
	jne	.L1332
	leaq	__PRETTY_FUNCTION__.9758(%rip), %rcx
	movl	$7222, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC219(%rip), %rdi
	call	__assert_fail@PLT
.L1332:
	movq	-344(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L1333
	movq	-400(%rbp), %rdx
	movq	-392(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_clear_entities
	jmp	.L1334
.L1333:
	movq	-344(%rbp), %rax
	cmpq	-400(%rbp), %rax
	je	.L1334
	movq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -320(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_table_count
	movl	%eax, -356(%rbp)
	movl	-296(%rbp), %eax
	testl	%eax, %eax
	je	.L1335
	cmpq	$0, -320(%rbp)
	je	.L1335
	leaq	-304(%rbp), %rdi
	movl	-356(%rbp), %ecx
	movq	-320(%rbp), %rdx
	movq	-400(%rbp), %rsi
	movq	-392(%rbp), %rax
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	flecs_run_remove_actions
.L1335:
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -312(%rbp)
	movq	-320(%rbp), %rdi
	movq	-312(%rbp), %rcx
	movq	-400(%rbp), %rdx
	movq	-344(%rbp), %rsi
	movq	-392(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	flecs_table_merge
.L1334:
	cmpl	$32, -416(%rbp)
	jle	.L1340
	movq	40+ecs_os_api(%rip), %rdx
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1340:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1337
	call	__stack_chk_fail@PLT
.L1337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	remove_from_table, .-remove_from_table
	.type	delete_objects, @function
delete_objects:
.LFB145:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L1346
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L1343
.L1345:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1344
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jns	.L1344
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	on_delete_action
.L1344:
	addl	$1, -40(%rbp)
.L1343:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L1345
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_delete_entities
.L1346:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	delete_objects, .-delete_objects
	.type	delete_tables_for_id_record, @function
delete_tables_for_id_record:
.LFB146:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movzbl	682(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1352
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	leaq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L1349
.L1350:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_delete_table
.L1349:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L1350
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_clear_id_record
.L1352:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1351
	call	__stack_chk_fail@PLT
.L1351:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	delete_tables_for_id_record, .-delete_tables_for_id_record
	.section	.rodata
.LC277:
	.string	"rel_id != NULL"
.LC278:
	.string	"rel_id != ((void *)0)"
.LC279:
	.string	"rel != 0"
	.text
	.type	on_delete_object_action, @function
on_delete_object_action:
.LFB147:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_id_record
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L1366
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	-48(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L1355
.L1364:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_table_count
	testl	%eax, %eax
	jne	.L1356
	jmp	.L1355
.L1356:
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7325, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC277(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -80(%rbp)
	jne	.L1357
	leaq	__PRETTY_FUNCTION__.9808(%rip), %rcx
	movl	$7325, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC278(%rip), %rdi
	call	__assert_fail@PLT
.L1357:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7329, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC279(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L1358
	leaq	__PRETTY_FUNCTION__.9808(%rip), %rcx
	movl	$7329, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC279(%rip), %rdi
	call	__assert_fail@PLT
.L1358:
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_id_record
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L1359
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L1360
	movl	$306, %eax
	cmpq	%rax, -56(%rbp)
	jne	.L1361
.L1360:
	movq	-96(%rbp), %rax
	movl	12(%rax), %edi
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-128(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	remove_from_table
	leaq	-160(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L1355
.L1361:
	movl	$307, %eax
	cmpq	%rax, -56(%rbp)
	jne	.L1363
	movq	-88(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_objects
	jmp	.L1355
.L1363:
	movl	$308, %eax
	cmpq	%rax, -56(%rbp)
	jne	.L1355
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	throw_invalid_delete
	jmp	.L1355
.L1359:
	movq	-96(%rbp), %rax
	movl	12(%rax), %edi
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-128(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	remove_from_table
	leaq	-160(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
.L1355:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L1364
	movq	-112(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	delete_tables_for_id_record
.L1366:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1365
	call	__stack_chk_fail@PLT
.L1365:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	on_delete_object_action, .-on_delete_object_action
	.type	on_delete_relation_action, @function
on_delete_relation_action:
.LFB148:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-368(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_id_record
	movq	%rax, -352(%rbp)
	leaq	-272(%rbp), %rdx
	movq	-368(%rbp), %rsi
	movq	-360(%rbp), %rax
	movl	$255, %ecx
	movq	%rax, %rdi
	call	ecs_id_str
	cmpq	$0, -352(%rbp)
	je	.L1375
	movq	-352(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -344(%rbp)
	movl	$308, %eax
	cmpq	%rax, -344(%rbp)
	jne	.L1369
	movq	-368(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	throw_invalid_delete
.L1369:
	movq	-352(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	leaq	-304(%rbp), %rax
	movq	-336(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L1370
.L1373:
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-352(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)
	cmpq	$0, -312(%rbp)
	je	.L1371
	movl	$306, %eax
	cmpq	%rax, -312(%rbp)
	jne	.L1372
.L1371:
	movq	-328(%rbp), %rax
	movl	12(%rax), %edi
	movq	-328(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-368(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movq	-360(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	remove_from_table
	jmp	.L1370
.L1372:
	movl	$307, %eax
	cmpq	%rax, -312(%rbp)
	jne	.L1370
	movq	-320(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_objects
.L1370:
	leaq	-304(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	jne	.L1373
	movq	-352(%rbp), %rdx
	movq	-368(%rbp), %rcx
	movq	-360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	delete_tables_for_id_record
.L1375:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1374
	call	__stack_chk_fail@PLT
.L1374:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	on_delete_relation_action, .-on_delete_relation_action
	.type	on_delete_action, @function
on_delete_action:
.LFB149:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	on_delete_relation_action
	movq	-16(%rbp), %rax
	salq	$32, %rax
	movl	$266, %edx
	movl	%edx, %edx
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	on_delete_relation_action
	movl	$266, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movl	%eax, %eax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	on_delete_object_action
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	on_delete_action, .-on_delete_action
	.globl	ecs_delete_children
	.type	ecs_delete_children, @function
ecs_delete_children:
.LFB150:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	on_delete_action
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	ecs_delete_children, .-ecs_delete_children
	.section	.rodata
.LC280:
	.string	"entity != 0"
.LC281:
	.string	"!table_id || table"
	.text
	.globl	ecs_delete
	.type	ecs_delete, @function
ecs_delete:
.LFB151:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7409, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jne	.L1379
	leaq	__PRETTY_FUNCTION__.9841(%rip), %rcx
	movl	$7409, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1379:
	cmpq	$0, -128(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7410, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC280(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -128(%rbp)
	jne	.L1380
	leaq	__PRETTY_FUNCTION__.9841(%rip), %rcx
	movl	$7410, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC280(%rip), %rdi
	call	__assert_fail@PLT
.L1380:
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_delete
	testb	%al, %al
	jne	.L1394
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-128(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L1383
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_info_from_record
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -96(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L1384
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
.L1384:
	movzbl	-20(%rbp), %eax
	testb	%al, %al
	je	.L1385
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	on_delete_action
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_info_from_record
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L1386
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.L1387
.L1386:
	movq	$0, -96(%rbp)
.L1387:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1385
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-120(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	update_component_monitors
.L1385:
	cmpq	$0, -96(%rbp)
	je	.L1388
	cmpq	$0, -104(%rbp)
	je	.L1389
.L1388:
	movl	$1, %eax
	jmp	.L1390
.L1389:
	movl	$0, %eax
.L1390:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7455, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC281(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -96(%rbp)
	je	.L1391
	cmpq	$0, -104(%rbp)
	jne	.L1391
	leaq	__PRETTY_FUNCTION__.9841(%rip), %rcx
	movl	$7455, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC281(%rip), %rdi
	call	__assert_fail@PLT
.L1391:
	cmpq	$0, -96(%rbp)
	je	.L1392
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_is_alive
	testb	%al, %al
	je	.L1392
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-120(%rbp), %rax
	leaq	-64(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	delete_entity
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
.L1392:
	movq	-80(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_remove
.L1383:
	movq	-120(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	jmp	.L1378
.L1394:
	nop
.L1378:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1393
	call	__stack_chk_fail@PLT
.L1393:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	ecs_delete, .-ecs_delete
	.globl	ecs_add_type
	.type	ecs_add_type, @function
ecs_add_type:
.LFB152:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7480, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1396
	leaq	__PRETTY_FUNCTION__.9855(%rip), %rcx
	movl	$7480, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1396:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7481, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1397
	leaq	__PRETTY_FUNCTION__.9855(%rip), %rcx
	movl	$7481, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1397:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_ids
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1398
	call	__stack_chk_fail@PLT
.L1398:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	ecs_add_type, .-ecs_add_type
	.globl	ecs_add_id
	.type	ecs_add_id, @function
ecs_add_id:
.LFB153:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7492, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1400
	leaq	__PRETTY_FUNCTION__.9862(%rip), %rcx
	movl	$7492, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1400:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7493, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC273(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1401
	leaq	__PRETTY_FUNCTION__.9862(%rip), %rcx
	movl	$7493, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC273(%rip), %rdi
	call	__assert_fail@PLT
.L1401:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7494, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1402
	leaq	__PRETTY_FUNCTION__.9862(%rip), %rcx
	movl	$7494, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1402:
	leaq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -24(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_ids
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1403
	call	__stack_chk_fail@PLT
.L1403:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	ecs_add_id, .-ecs_add_id
	.globl	ecs_remove_type
	.type	ecs_remove_type, @function
ecs_remove_type:
.LFB154:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7505, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1405
	leaq	__PRETTY_FUNCTION__.9869(%rip), %rcx
	movl	$7505, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1405:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7506, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1406
	leaq	__PRETTY_FUNCTION__.9869(%rip), %rcx
	movl	$7506, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1406:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remove_ids
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1407
	call	__stack_chk_fail@PLT
.L1407:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	ecs_remove_type, .-ecs_remove_type
	.globl	ecs_remove_id
	.type	ecs_remove_id, @function
ecs_remove_id:
.LFB155:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7517, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1409
	leaq	__PRETTY_FUNCTION__.9876(%rip), %rcx
	movl	$7517, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1409:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7518, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1410
	leaq	__PRETTY_FUNCTION__.9876(%rip), %rcx
	movl	$7518, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1410:
	leaq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -24(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remove_ids
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1411
	call	__stack_chk_fail@PLT
.L1411:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	ecs_remove_id, .-ecs_remove_id
	.section	.rodata
.LC282:
	.string	"ecs_is_valid(world, id_add)"
	.align 8
.LC283:
	.string	"ecs_is_valid(world, id_remove)"
	.text
	.globl	ecs_add_remove_entity
	.type	ecs_add_remove_entity, @function
ecs_add_remove_entity:
.LFB156:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7531, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L1413
	leaq	__PRETTY_FUNCTION__.9884(%rip), %rcx
	movl	$7531, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1413:
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7532, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC282(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1414
	leaq	__PRETTY_FUNCTION__.9884(%rip), %rcx
	movl	$7532, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC282(%rip), %rdi
	call	__assert_fail@PLT
.L1414:
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7533, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC283(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1415
	leaq	__PRETTY_FUNCTION__.9884(%rip), %rcx
	movl	$7533, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC283(%rip), %rdi
	call	__assert_fail@PLT
.L1415:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7534, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1416
	leaq	__PRETTY_FUNCTION__.9884(%rip), %rcx
	movl	$7534, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1416:
	leaq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -40(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -24(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	add_remove
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1417
	call	__stack_chk_fail@PLT
.L1417:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	ecs_add_remove_entity, .-ecs_add_remove_entity
	.globl	ecs_add_remove_type
	.type	ecs_add_remove_type, @function
ecs_add_remove_type:
.LFB157:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7547, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L1419
	leaq	__PRETTY_FUNCTION__.9893(%rip), %rcx
	movl	$7547, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1419:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7548, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1420
	leaq	__PRETTY_FUNCTION__.9893(%rip), %rcx
	movl	$7548, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1420:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	add_remove
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1421
	call	__stack_chk_fail@PLT
.L1421:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE157:
	.size	ecs_add_remove_type, .-ecs_add_remove_type
	.section	.rodata
.LC284:
	.string	"src != 0"
.LC285:
	.string	"ecs_is_valid(world, src)"
	.text
	.globl	ecs_clone
	.type	ecs_clone, @function
ecs_clone:
.LFB158:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movl	%ecx, %eax
	movb	%al, -156(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7561, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	jne	.L1423
	leaq	__PRETTY_FUNCTION__.9902(%rip), %rcx
	movl	$7561, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1423:
	cmpq	$0, -152(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7562, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC284(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -152(%rbp)
	jne	.L1424
	leaq	__PRETTY_FUNCTION__.9902(%rip), %rcx
	movl	$7562, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC284(%rip), %rdi
	call	__assert_fail@PLT
.L1424:
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7563, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC285(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1425
	leaq	__PRETTY_FUNCTION__.9902(%rip), %rcx
	movl	$7563, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC285(%rip), %rdi
	call	__assert_fail@PLT
.L1425:
	leaq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -120(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.L1426
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_new_id
	movq	%rax, -144(%rbp)
.L1426:
	movzbl	-156(%rbp), %edi
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	flecs_defer_clone
	testb	%al, %al
	je	.L1427
	movq	-144(%rbp), %rax
	jmp	.L1432
.L1427:
	movq	-136(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	movb	%al, -121(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movzbl	-121(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1429
	cmpq	$0, -112(%rbp)
	jne	.L1430
.L1429:
	movq	-144(%rbp), %rax
	jmp	.L1432
.L1430:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-136(%rbp), %rax
	leaq	-96(%rbp), %rdi
	movq	-112(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	new_entity
	movl	%eax, -24(%rbp)
	cmpb	$0, -156(%rbp)
	je	.L1431
	movl	-56(%rbp), %r8d
	movq	-64(%rbp), %rdi
	movl	-24(%rbp), %r9d
	movq	-32(%rbp), %r10
	movq	-136(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rsi
	pushq	$1
	pushq	%r8
	pushq	%rdi
	pushq	-112(%rbp)
	movq	%r10, %r8
	movq	%rax, %rdi
	call	flecs_table_move
	addq	$32, %rsp
	movl	-24(%rbp), %esi
	movq	-64(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	-112(%rbp), %rdx
	pushq	$1
	pushq	$1
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	flecs_run_set_systems
	addq	$16, %rsp
.L1431:
	movq	-136(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	movq	-144(%rbp), %rax
.L1432:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1433
	call	__stack_chk_fail@PLT
.L1433:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE158:
	.size	ecs_clone, .-ecs_clone
	.section	.rodata
	.align 8
.LC286:
	.string	"flecs_stage_from_readonly_world(world)->asynchronous == false"
	.align 8
.LC287:
	.string	"flecs_stage_from_readonly_world(world)->asynchronous == 0"
	.text
	.globl	ecs_get_id
	.type	ecs_get_id, @function
ecs_get_id:
.LFB159:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7607, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L1435
	leaq	__PRETTY_FUNCTION__.9915(%rip), %rcx
	movl	$7607, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1435:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7608, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1436
	leaq	__PRETTY_FUNCTION__.9915(%rip), %rcx
	movl	$7608, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1436:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_readonly_world
	movzbl	81(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7609, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC286(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_readonly_world
	movzbl	81(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1437
	leaq	__PRETTY_FUNCTION__.9915(%rip), %rcx
	movl	$7609, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC287(%rip), %rdi
	call	__assert_fail@PLT
.L1437:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L1438
	movl	$0, %eax
	jmp	.L1443
.L1438:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L1440
	movl	$0, %eax
	jmp	.L1443
.L1440:
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_id_record
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L1441
	movl	$0, %eax
	jmp	.L1443
.L1441:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1442
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	get_base_component
	jmp	.L1443
.L1442:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	leaq	-45(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	flecs_record_to_row
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-44(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_component_w_index
.L1443:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1444
	call	__stack_chk_fail@PLT
.L1444:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE159:
	.size	ecs_get_id, .-ecs_get_id
	.section	.rodata
.LC288:
	.string	"ref != NULL"
.LC289:
	.string	"ref != ((void *)0)"
	.align 8
.LC290:
	.string	"!entity || !ref->entity || entity == ref->entity"
	.align 8
.LC291:
	.string	"!id || !ref->component || id == ref->component"
	.text
	.globl	ecs_get_ref_w_id
	.type	ecs_get_ref_w_id, @function
ecs_get_ref_w_id:
.LFB160:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7647, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1446
	leaq	__PRETTY_FUNCTION__.9928(%rip), %rcx
	movl	$7647, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1446:
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7648, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC288(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -48(%rbp)
	jne	.L1447
	leaq	__PRETTY_FUNCTION__.9928(%rip), %rcx
	movl	$7648, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC289(%rip), %rdi
	call	__assert_fail@PLT
.L1447:
	cmpq	$0, -56(%rbp)
	je	.L1448
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1448
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L1449
.L1448:
	movl	$1, %eax
	jmp	.L1450
.L1449:
	movl	$0, %eax
.L1450:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7649, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC290(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	je	.L1451
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1451
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	je	.L1451
	leaq	__PRETTY_FUNCTION__.9928(%rip), %rcx
	movl	$7649, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC290(%rip), %rdi
	call	__assert_fail@PLT
.L1451:
	cmpq	$0, -64(%rbp)
	je	.L1452
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1452
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jne	.L1453
.L1452:
	movl	$1, %eax
	jmp	.L1454
.L1453:
	movl	$0, %eax
.L1454:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7650, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC291(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	je	.L1455
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1455
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -64(%rbp)
	je	.L1455
	leaq	__PRETTY_FUNCTION__.9928(%rip), %rcx
	movl	$7650, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC291(%rip), %rdi
	call	__assert_fail@PLT
.L1455:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	orq	%rax, -56(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L1456
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -24(%rbp)
.L1456:
	cmpq	$0, -24(%rbp)
	je	.L1457
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L1458
.L1457:
	movl	$0, %eax
	jmp	.L1459
.L1458:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L1460
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L1460
	movq	-48(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jne	.L1460
	movq	-48(%rbp), %rax
	movl	28(%rax), %edx
	movq	-16(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	%eax, %edx
	jne	.L1460
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L1459
.L1460:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	orq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	112(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 28(%rax)
	cmpq	$0, -16(%rbp)
	je	.L1461
	leaq	-29(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	flecs_record_to_row
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_component
	movq	-48(%rbp), %rdx
	movq	%rax, 40(%rdx)
.L1461:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
.L1459:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1462
	call	__stack_chk_fail@PLT
.L1462:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	ecs_get_ref_w_id, .-ecs_get_ref_w_id
	.section	.rodata
.LC292:
	.string	"false"
.LC293:
	.string	"0"
	.text
	.globl	ecs_get_mut_id
	.type	ecs_get_mut_id, @function
ecs_get_mut_id:
.LFB161:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7703, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L1464
	leaq	__PRETTY_FUNCTION__.9939(%rip), %rcx
	movl	$7703, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1464:
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7704, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1465
	leaq	__PRETTY_FUNCTION__.9939(%rip), %rcx
	movl	$7704, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1465:
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7705, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC273(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1466
	leaq	__PRETTY_FUNCTION__.9939(%rip), %rcx
	movl	$7705, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC273(%rip), %rdi
	call	__assert_fail@PLT
.L1466:
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rsi
	subq	$8, %rsp
	pushq	-112(%rbp)
	leaq	-72(%rbp), %rcx
	pushq	%rcx
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	flecs_defer_set
	addq	$32, %rsp
	testb	%al, %al
	je	.L1467
	movq	-72(%rbp), %rax
	jmp	.L1473
.L1467:
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	get_mutable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7721, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L1469
	leaq	__PRETTY_FUNCTION__.9939(%rip), %rcx
	movl	$7721, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L1469:
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, -80(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L1470
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	112(%rax), %eax
	cmpl	%eax, -80(%rbp)
	jne	.L1470
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -76(%rbp)
	je	.L1471
.L1470:
	movq	-88(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	testb	%al, %al
	je	.L1472
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L1472
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, %rdi
	call	get_component
	movq	%rax, -72(%rbp)
	jmp	.L1471
.L1472:
	movl	$0, %r9d
	movl	$7744, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC292(%rip), %rdx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	_ecs_assert
	leaq	__PRETTY_FUNCTION__.9939(%rip), %rcx
	movl	$7744, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC293(%rip), %rdi
	call	__assert_fail@PLT
.L1471:
	movq	-72(%rbp), %rax
.L1473:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1474
	call	__stack_chk_fail@PLT
.L1474:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ecs_get_mut_id, .-ecs_get_mut_id
	.section	.rodata
	.align 8
.LC294:
	.string	"!ecs_has_id(world, entity, id)"
	.text
	.globl	ecs_emplace_id
	.type	ecs_emplace_id, @function
ecs_emplace_id:
.LFB162:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7756, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	jne	.L1476
	leaq	__PRETTY_FUNCTION__.9951(%rip), %rcx
	movl	$7756, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1476:
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7757, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1477
	leaq	__PRETTY_FUNCTION__.9951(%rip), %rcx
	movl	$7757, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1477:
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7758, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC273(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1478
	leaq	__PRETTY_FUNCTION__.9951(%rip), %rcx
	movl	$7758, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC273(%rip), %rdi
	call	__assert_fail@PLT
.L1478:
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7759, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC294(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1479
	leaq	__PRETTY_FUNCTION__.9951(%rip), %rcx
	movl	$7759, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC294(%rip), %rdi
	call	__assert_fail@PLT
.L1479:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	leaq	-88(%rbp), %rcx
	pushq	%rcx
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	flecs_defer_set
	addq	$32, %rsp
	testb	%al, %al
	je	.L1480
	movq	-88(%rbp), %rax
	jmp	.L1482
.L1480:
	movq	-104(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	leaq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -56(%rbp)
	movq	-104(%rbp), %rax
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	call	add_ids_w_info
	movq	-120(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	get_component
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	movq	-72(%rbp), %rax
.L1482:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1483
	call	__stack_chk_fail@PLT
.L1483:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ecs_emplace_id, .-ecs_emplace_id
	.section	.rodata
.LC295:
	.string	"ecs_has_id(world, entity, id)"
.LC296:
	.string	"column != NULL"
.LC297:
	.string	"column != ((void *)0)"
	.text
	.globl	ecs_modified_id
	.type	ecs_modified_id, @function
ecs_modified_id:
.LFB163:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7793, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L1485
	leaq	__PRETTY_FUNCTION__.9962(%rip), %rcx
	movl	$7793, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1485:
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7794, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1486
	leaq	__PRETTY_FUNCTION__.9962(%rip), %rcx
	movl	$7794, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1486:
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7795, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC273(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1487
	leaq	__PRETTY_FUNCTION__.9962(%rip), %rcx
	movl	$7795, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC273(%rip), %rdi
	call	__assert_fail@PLT
.L1487:
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_defer_modified
	testb	%al, %al
	jne	.L1494
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7807, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC295(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	testb	%al, %al
	jne	.L1490
	leaq	__PRETTY_FUNCTION__.9962(%rip), %rcx
	movl	$7807, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC295(%rip), %rdi
	call	__assert_fail@PLT
.L1490:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	testb	%al, %al
	je	.L1491
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_table_column_for_id
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7813, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC296(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L1492
	leaq	__PRETTY_FUNCTION__.9962(%rip), %rcx
	movl	$7813, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC297(%rip), %rdi
	call	__assert_fail@PLT
.L1492:
	movl	-24(%rbp), %r8d
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rsi
	pushq	$0
	pushq	$1
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	flecs_run_set_systems
	addq	$16, %rsp
.L1491:
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_mark_dirty
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	jmp	.L1484
.L1494:
	nop
.L1484:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1493
	call	__stack_chk_fail@PLT
.L1493:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	ecs_modified_id, .-ecs_modified_id
	.type	assign_ptr_w_id, @function
assign_ptr_w_id:
.LFB164:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movl	%r9d, %edx
	movl	16(%rbp), %eax
	movb	%dl, -156(%rbp)
	movb	%al, -160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	jne	.L1496
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_new_id
	movq	%rax, -128(%rbp)
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L1496
	movl	$276, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movl	%eax, %eax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
.L1496:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	-112(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	-152(%rbp)
	movl	%ecx, %r9d
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$5, %edx
	movq	%rax, %rdi
	call	flecs_defer_set
	addq	$32, %rsp
	testb	%al, %al
	je	.L1497
	movq	-128(%rbp), %rax
	jmp	.L1507
.L1497:
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	leaq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movl	$0, %r8d
	movq	%rax, %rdi
	call	get_mutable
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7854, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC147(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -96(%rbp)
	jne	.L1499
	leaq	__PRETTY_FUNCTION__.9979(%rip), %rcx
	movl	$7854, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC148(%rip), %rdi
	call	__assert_fail@PLT
.L1499:
	cmpq	$0, -152(%rbp)
	je	.L1500
	movq	-120(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_typeid
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_c_info
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L1501
	cmpb	$0, -156(%rbp)
	je	.L1502
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L1503
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	-152(%rbp), %r9
	movq	-96(%rbp), %r8
	leaq	-128(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movq	-88(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rdi
	pushq	$1
	pushq	-144(%rbp)
	movq	-64(%rbp), %r10
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L1504
.L1503:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movslq	%eax, %rdx
	movq	-152(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L1504
.L1502:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L1505
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	-152(%rbp), %r9
	movq	-96(%rbp), %r8
	leaq	-128(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movq	-88(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rdi
	pushq	$1
	pushq	-144(%rbp)
	movq	-72(%rbp), %r10
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L1504
.L1505:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movslq	%eax, %rdx
	movq	-152(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L1504
.L1501:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movslq	%eax, %rdx
	movq	-152(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L1504
.L1500:
	movq	-144(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L1504:
	movq	-40(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_mark_dirty
	cmpb	$0, -160(%rbp)
	je	.L1506
	movq	-40(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_table_column_for_id
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %r8d
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	-136(%rbp), %rsi
	pushq	$0
	pushq	$1
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	flecs_run_set_systems
	addq	$16, %rsp
.L1506:
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	movq	-128(%rbp), %rax
.L1507:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1508
	call	__stack_chk_fail@PLT
.L1508:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	assign_ptr_w_id, .-assign_ptr_w_id
	.section	.rodata
	.align 8
.LC298:
	.string	"!entity || ecs_is_valid(world, entity)"
	.text
	.globl	ecs_set_id
	.type	ecs_set_id, @function
ecs_set_id:
.LFB165:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7904, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1510
	leaq	__PRETTY_FUNCTION__.9992(%rip), %rcx
	movl	$7904, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1510:
	cmpq	$0, -16(%rbp)
	je	.L1511
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	je	.L1512
.L1511:
	movl	$1, %eax
	jmp	.L1513
.L1512:
	movl	$0, %eax
.L1513:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7905, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC298(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	je	.L1514
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1514
	leaq	__PRETTY_FUNCTION__.9992(%rip), %rcx
	movl	$7905, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC298(%rip), %rdi
	call	__assert_fail@PLT
.L1514:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7906, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC273(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1515
	leaq	__PRETTY_FUNCTION__.9992(%rip), %rcx
	movl	$7906, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC273(%rip), %rdi
	call	__assert_fail@PLT
.L1515:
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	assign_ptr_w_id
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	ecs_set_id, .-ecs_set_id
	.section	.rodata
.LC299:
	.string	"ecs_is_valid(world, sw_id)"
.LC300:
	.string	"index >= 0"
.LC301:
	.string	"info.data != NULL"
.LC302:
	.string	"info.data != ((void *)0)"
	.text
	.globl	ecs_get_case
	.type	ecs_get_case, @function
ecs_get_case:
.LFB166:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -88(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7918, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -88(%rbp)
	jne	.L1518
	leaq	__PRETTY_FUNCTION__.9998(%rip), %rcx
	movl	$7918, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1518:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7919, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1519
	leaq	__PRETTY_FUNCTION__.9998(%rip), %rcx
	movl	$7919, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1519:
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7920, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC299(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1520
	leaq	__PRETTY_FUNCTION__.9998(%rip), %rcx
	movl	$7920, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC299(%rip), %rdi
	call	__assert_fail@PLT
.L1520:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -88(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1521
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L1522
.L1521:
	movl	$0, %eax
	jmp	.L1527
.L1522:
	movabsq	$-360287970189639680, %rax
	orq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_type_index_of
	movl	%eax, -76(%rbp)
	cmpl	$-1, -76(%rbp)
	jne	.L1524
	movl	$0, %eax
	jmp	.L1527
.L1524:
	movq	-72(%rbp), %rax
	movl	120(%rax), %eax
	subl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7939, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC300(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -76(%rbp)
	jns	.L1525
	leaq	__PRETTY_FUNCTION__.9998(%rip), %rcx
	movl	$7939, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC300(%rip), %rdi
	call	__assert_fail@PLT
.L1525:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7942, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC301(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L1526
	leaq	__PRETTY_FUNCTION__.9998(%rip), %rcx
	movl	$7942, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC302(%rip), %rdi
	call	__assert_fail@PLT
.L1526:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_switch_get
.L1527:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1528
	call	__stack_chk_fail@PLT
.L1528:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	ecs_get_case, .-ecs_get_case
	.section	.rodata
.LC303:
	.string	"bs != NULL"
.LC304:
	.string	"bs != ((void *)0)"
	.text
	.globl	ecs_enable_component_w_id
	.type	ecs_enable_component_w_id, @function
ecs_enable_component_w_id:
.LFB167:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, %eax
	movb	%al, -124(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7953, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	jne	.L1530
	leaq	__PRETTY_FUNCTION__.10010(%rip), %rcx
	movl	$7953, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1530:
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7954, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1531
	leaq	__PRETTY_FUNCTION__.10010(%rip), %rcx
	movl	$7954, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1531:
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7955, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC273(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1532
	leaq	__PRETTY_FUNCTION__.10010(%rip), %rcx
	movl	$7955, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC273(%rip), %rdi
	call	__assert_fail@PLT
.L1532:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -80(%rbp)
	movzbl	-124(%rbp), %edi
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	flecs_defer_enable
	testb	%al, %al
	jne	.L1542
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	movabsq	$72057594037927935, %rax
	andq	-120(%rbp), %rax
	movabsq	$-864691128455135232, %rdx
	orq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$-1, -84(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L1535
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_type_index_of
	movl	%eax, -84(%rbp)
.L1535:
	cmpl	$-1, -84(%rbp)
	jne	.L1536
	movq	-104(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
	movzbl	-124(%rbp), %ecx
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	call	ecs_enable_component_w_id
	jmp	.L1529
.L1536:
	movq	-64(%rbp), %rax
	movl	128(%rax), %eax
	subl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7986, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC300(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -84(%rbp)
	jns	.L1537
	leaq	__PRETTY_FUNCTION__.10010(%rip), %rcx
	movl	$7986, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC300(%rip), %rdi
	call	__assert_fail@PLT
.L1537:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7989, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC301(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L1538
	leaq	__PRETTY_FUNCTION__.10010(%rip), %rcx
	movl	$7989, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC302(%rip), %rdi
	call	__assert_fail@PLT
.L1538:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$7991, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC303(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L1539
	leaq	__PRETTY_FUNCTION__.10010(%rip), %rcx
	movl	$7991, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC304(%rip), %rdi
	call	__assert_fail@PLT
.L1539:
	movzbl	-124(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	flecs_bitset_set
	jmp	.L1529
.L1542:
	nop
.L1529:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1541
	call	__stack_chk_fail@PLT
.L1541:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	ecs_enable_component_w_id, .-ecs_enable_component_w_id
	.globl	ecs_is_component_enabled_w_id
	.type	ecs_is_component_enabled_w_id, @function
ecs_is_component_enabled_w_id:
.LFB168:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -104(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8001, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -104(%rbp)
	jne	.L1544
	leaq	__PRETTY_FUNCTION__.10022(%rip), %rcx
	movl	$8001, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1544:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8002, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1545
	leaq	__PRETTY_FUNCTION__.10022(%rip), %rcx
	movl	$8002, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1545:
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8003, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC273(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1546
	leaq	__PRETTY_FUNCTION__.10022(%rip), %rcx
	movl	$8003, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC273(%rip), %rdi
	call	__assert_fail@PLT
.L1546:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -104(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1547
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L1548
.L1547:
	movl	$0, %eax
	jmp	.L1553
.L1548:
	movabsq	$72057594037927935, %rax
	andq	-120(%rbp), %rax
	movabsq	$-864691128455135232, %rdx
	orq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_type_index_of
	movl	%eax, -84(%rbp)
	cmpl	$-1, -84(%rbp)
	jne	.L1550
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	jmp	.L1553
.L1550:
	movq	-80(%rbp), %rax
	movl	128(%rax), %eax
	subl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8025, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC300(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -84(%rbp)
	jns	.L1551
	leaq	__PRETTY_FUNCTION__.10022(%rip), %rcx
	movl	$8025, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC300(%rip), %rdi
	call	__assert_fail@PLT
.L1551:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8028, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC301(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L1552
	leaq	__PRETTY_FUNCTION__.10022(%rip), %rcx
	movl	$8028, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC302(%rip), %rdi
	call	__assert_fail@PLT
.L1552:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_bitset_get
.L1553:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1554
	call	__stack_chk_fail@PLT
.L1554:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	ecs_is_component_enabled_w_id, .-ecs_is_component_enabled_w_id
	.section	.rodata
	.align 8
.LC305:
	.string	"index < table->sw_column_count"
	.text
	.globl	ecs_has_id
	.type	ecs_has_id, @function
ecs_has_id:
.LFB169:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -104(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8039, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -104(%rbp)
	jne	.L1556
	leaq	__PRETTY_FUNCTION__.10034(%rip), %rcx
	movl	$8039, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1556:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8040, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1557
	leaq	__PRETTY_FUNCTION__.10034(%rip), %rcx
	movl	$8040, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1557:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -104(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-120(%rbp), %rax
	movabsq	$-288230376151711744, %rdx
	cmpq	%rdx, %rax
	jne	.L1558
	leaq	-48(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_info
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1559
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L1560
.L1559:
	movl	$0, %eax
	jmp	.L1563
.L1560:
	movq	-120(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_switch_from_case
	movl	%eax, -92(%rbp)
	movq	-80(%rbp), %rax
	movl	116(%rax), %eax
	cmpl	%eax, -92(%rbp)
	setl	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8053, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC305(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-80(%rbp), %rax
	movl	116(%rax), %eax
	cmpl	%eax, -92(%rbp)
	jl	.L1562
	leaq	__PRETTY_FUNCTION__.10034(%rip), %rcx
	movl	$8053, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC305(%rip), %rdi
	call	__assert_fail@PLT
.L1562:
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-24(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_switch_get
	movq	%rax, -56(%rbp)
	movabsq	$72057594037927935, %rax
	andq	-120(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	sete	%al
	jmp	.L1563
.L1558:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_table
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L1564
	movl	$0, %eax
	jmp	.L1563
.L1564:
	movl	$277, %edi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ecs_type_match
	addq	$32, %rsp
	cmpl	$-1, %eax
	setne	%al
.L1563:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1565
	call	__stack_chk_fail@PLT
.L1565:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	ecs_has_id, .-ecs_has_id
	.globl	ecs_has_type
	.type	ecs_has_type, @function
ecs_has_type:
.LFB170:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8076, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1567
	leaq	__PRETTY_FUNCTION__.10047(%rip), %rcx
	movl	$8076, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1567:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8077, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1568
	leaq	__PRETTY_FUNCTION__.10047(%rip), %rcx
	movl	$8077, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1568:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	has_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	ecs_has_type, .-ecs_has_type
	.globl	ecs_get_object
	.type	ecs_get_object, @function
ecs_get_object:
.LFB171:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8087, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1571
	leaq	__PRETTY_FUNCTION__.10054(%rip), %rcx
	movl	$8087, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1571:
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8088, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC279(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L1572
	leaq	__PRETTY_FUNCTION__.10054(%rip), %rcx
	movl	$8088, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC279(%rip), %rdi
	call	__assert_fail@PLT
.L1572:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -40(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L1573
	movl	$0, %eax
	jmp	.L1574
.L1573:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_table
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L1575
	movl	$0, %eax
	jmp	.L1574
.L1575:
	movq	-56(%rbp), %rax
	salq	$32, %rax
	movl	$266, %edx
	movl	%edx, %edx
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_get_table_record
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1576
	movl	$0, %eax
	jmp	.L1574
.L1576:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L1577
	movl	$0, %eax
	jmp	.L1574
.L1577:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
.L1574:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	ecs_get_object, .-ecs_get_object
	.globl	ecs_get_name
	.type	ecs_get_name, @function
ecs_get_name:
.LFB172:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8119, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1579
	leaq	__PRETTY_FUNCTION__.10063(%rip), %rcx
	movl	$8119, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1579:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8120, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1580
	leaq	__PRETTY_FUNCTION__.10063(%rip), %rcx
	movl	$8120, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1580:
	movl	$271, %eax
	movl	%eax, %edx
	movabsq	$17179869184, %rax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1581
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L1582
.L1581:
	movl	$0, %eax
.L1582:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	ecs_get_name, .-ecs_get_name
	.globl	ecs_get_symbol
	.type	ecs_get_symbol, @function
ecs_get_symbol:
.LFB173:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8136, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1584
	leaq	__PRETTY_FUNCTION__.10069(%rip), %rcx
	movl	$8136, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1584:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8137, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1585
	leaq	__PRETTY_FUNCTION__.10069(%rip), %rcx
	movl	$8137, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1585:
	movl	$272, %eax
	movl	%eax, %edx
	movabsq	$17179869184, %rax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1586
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L1587
.L1586:
	movl	$0, %eax
.L1587:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	ecs_get_symbol, .-ecs_get_symbol
	.globl	ecs_set_name
	.type	ecs_set_name, @function
ecs_set_name:
.LFB174:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8154, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1589
	leaq	__PRETTY_FUNCTION__.10076(%rip), %rcx
	movl	$8154, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1589:
	cmpq	$0, -48(%rbp)
	jne	.L1590
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_new_id
	movq	%rax, -48(%rbp)
.L1590:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$271, %eax
	movl	%eax, %edx
	movabsq	$17179869184, %rax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$24, %ecx
	movq	%rax, %rdi
	call	ecs_set_id
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1592
	call	__stack_chk_fail@PLT
.L1592:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	ecs_set_name, .-ecs_set_name
	.globl	ecs_set_symbol
	.type	ecs_set_symbol, @function
ecs_set_symbol:
.LFB175:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8170, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1594
	leaq	__PRETTY_FUNCTION__.10083(%rip), %rcx
	movl	$8170, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1594:
	cmpq	$0, -48(%rbp)
	jne	.L1595
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_new_id
	movq	%rax, -48(%rbp)
.L1595:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$272, %eax
	movl	%eax, %edx
	movabsq	$17179869184, %rax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$24, %ecx
	movq	%rax, %rdi
	call	ecs_set_id
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1597
	call	__stack_chk_fail@PLT
.L1597:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	ecs_set_symbol, .-ecs_set_symbol
	.globl	ecs_type_from_id
	.type	ecs_type_from_id, @function
ecs_type_from_id:
.LFB176:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8187, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L1599
	leaq	__PRETTY_FUNCTION__.10089(%rip), %rcx
	movl	$8187, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1599:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8188, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC273(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1600
	leaq	__PRETTY_FUNCTION__.10089(%rip), %rcx
	movl	$8188, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC273(%rip), %rdi
	call	__assert_fail@PLT
.L1600:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L1601
	movl	$0, %eax
	jmp	.L1605
.L1601:
	movq	-64(%rbp), %rax
	movabsq	$-72057594037927936, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	.L1603
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L1603
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L1605
.L1603:
	leaq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -24(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_find_or_create
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8207, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1604
	leaq	__PRETTY_FUNCTION__.10089(%rip), %rcx
	movl	$8207, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L1604:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
.L1605:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1606
	call	__stack_chk_fail@PLT
.L1606:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	ecs_type_from_id, .-ecs_type_from_id
	.globl	ecs_type_to_id
	.type	ecs_type_to_id, @function
ecs_type_to_id:
.LFB177:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1608
	movl	$0, %eax
	jmp	.L1609
.L1608:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	$1, %eax
	je	.L1610
	movl	$0, %ecx
	movl	$8224, %edx
	leaq	.LC74(%rip), %rsi
	movl	$60, %edi
	movl	$0, %eax
	call	_ecs_abort
	call	abort@PLT
.L1610:
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	(%rax), %rax
.L1609:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	ecs_type_to_id, .-ecs_type_to_id
	.globl	ecs_make_pair
	.type	ecs_make_pair, @function
ecs_make_pair:
.LFB178:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movl	%eax, %eax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	ecs_make_pair, .-ecs_make_pair
	.globl	ecs_is_valid
	.type	ecs_is_valid, @function
ecs_is_valid:
.LFB179:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8241, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1614
	leaq	__PRETTY_FUNCTION__.10105(%rip), %rcx
	movl	$8241, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1614:
	cmpq	$0, -32(%rbp)
	jne	.L1615
	movl	$0, %eax
	jmp	.L1616
.L1615:
	movabsq	$71776119061217280, %rax
	andq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L1617
	movl	$0, %eax
	jmp	.L1616
.L1617:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -24(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-32(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L1618
	movq	-32(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1619
	cmpq	$0, -8(%rbp)
	je	.L1619
	movl	$1, %eax
	jmp	.L1620
.L1619:
	movl	$0, %eax
.L1620:
	andl	$1, %eax
	jmp	.L1616
.L1618:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jns	.L1621
	movq	-32(%rbp), %rax
	testl	%eax, %eax
	setne	%al
	jmp	.L1616
.L1621:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_exists
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1622
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_alive
	testb	%al, %al
	je	.L1623
.L1622:
	movl	$1, %eax
	jmp	.L1624
.L1623:
	movl	$0, %eax
.L1624:
	andl	$1, %eax
.L1616:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	ecs_is_valid, .-ecs_is_valid
	.globl	ecs_is_alive
	.type	ecs_is_alive, @function
ecs_is_alive:
.LFB180:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8278, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1626
	leaq	__PRETTY_FUNCTION__.10112(%rip), %rcx
	movl	$8278, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1626:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8279, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC280(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L1627
	leaq	__PRETTY_FUNCTION__.10112(%rip), %rcx
	movl	$8279, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC280(%rip), %rdi
	call	__assert_fail@PLT
.L1627:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_is_alive
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	ecs_is_alive, .-ecs_is_alive
	.section	.rodata
.LC306:
	.string	"(uint32_t)entity == entity"
	.text
	.globl	ecs_get_alive
	.type	ecs_get_alive, @function
ecs_get_alive:
.LFB181:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8291, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1630
	leaq	__PRETTY_FUNCTION__.10117(%rip), %rcx
	movl	$8291, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1630:
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8292, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC280(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L1631
	leaq	__PRETTY_FUNCTION__.10117(%rip), %rcx
	movl	$8292, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC280(%rip), %rdi
	call	__assert_fail@PLT
.L1631:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_alive
	testb	%al, %al
	je	.L1632
	movq	-32(%rbp), %rax
	jmp	.L1633
.L1632:
	movq	-32(%rbp), %rax
	movl	%eax, %eax
	cmpq	%rax, -32(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8300, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC306(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rax
	movl	%eax, %eax
	cmpq	%rax, -32(%rbp)
	je	.L1634
	leaq	__PRETTY_FUNCTION__.10117(%rip), %rcx
	movl	$8300, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC306(%rip), %rdi
	call	__assert_fail@PLT
.L1634:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_get_alive
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1635
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_alive
	xorl	$1, %eax
	testb	%al, %al
	je	.L1636
.L1635:
	movl	$0, %eax
	jmp	.L1633
.L1636:
	movq	-8(%rbp), %rax
.L1633:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	ecs_get_alive, .-ecs_get_alive
	.globl	ecs_ensure
	.type	ecs_ensure, @function
ecs_ensure:
.LFB182:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8317, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1638
	leaq	__PRETTY_FUNCTION__.10123(%rip), %rcx
	movl	$8317, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1638:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8318, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L1639
	leaq	__PRETTY_FUNCTION__.10123(%rip), %rcx
	movl	$8318, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L1639:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8319, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC280(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L1640
	leaq	__PRETTY_FUNCTION__.10123(%rip), %rcx
	movl	$8319, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC280(%rip), %rdi
	call	__assert_fail@PLT
.L1640:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_is_alive
	testb	%al, %al
	jne	.L1643
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_ensure
	jmp	.L1637
.L1643:
	nop
.L1637:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	ecs_ensure, .-ecs_ensure
	.globl	ecs_exists
	.type	ecs_exists, @function
ecs_exists:
.LFB183:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8335, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1645
	leaq	__PRETTY_FUNCTION__.10128(%rip), %rcx
	movl	$8335, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1645:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8336, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC280(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L1646
	leaq	__PRETTY_FUNCTION__.10128(%rip), %rcx
	movl	$8336, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC280(%rip), %rdi
	call	__assert_fail@PLT
.L1646:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_exists
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	ecs_exists, .-ecs_exists
	.globl	ecs_get_table
	.type	ecs_get_table, @function
ecs_get_table:
.LFB184:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8348, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1649
	leaq	__PRETTY_FUNCTION__.10133(%rip), %rcx
	movl	$8348, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1649:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8349, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1650
	leaq	__PRETTY_FUNCTION__.10133(%rip), %rcx
	movl	$8349, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC274(%rip), %rdi
	call	__assert_fail@PLT
.L1650:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1651
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1651
	movq	-8(%rbp), %rax
	jmp	.L1652
.L1651:
	movl	$0, %eax
.L1652:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	ecs_get_table, .-ecs_get_table
	.globl	ecs_get_type
	.type	ecs_get_type, @function
ecs_get_type:
.LFB185:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_table
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1654
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L1655
.L1654:
	movl	$0, %eax
.L1655:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	ecs_get_type, .-ecs_get_type
	.globl	ecs_get_typeid
	.type	ecs_get_typeid, @function
ecs_get_typeid:
.LFB186:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8379, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1657
	leaq	__PRETTY_FUNCTION__.10145(%rip), %rcx
	movl	$8379, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1657:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8380, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC273(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_valid
	testb	%al, %al
	jne	.L1658
	leaq	__PRETTY_FUNCTION__.10145(%rip), %rcx
	movl	$8380, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC273(%rip), %rdi
	call	__assert_fail@PLT
.L1658:
	movabsq	$-72057594037927936, %rax
	andq	-48(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L1659
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
	movq	%rax, -24(%rbp)
	movl	$270, %edx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	testb	%al, %al
	je	.L1660
	movl	$0, %eax
	jmp	.L1661
.L1660:
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1662
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1662
	movq	-24(%rbp), %rax
	jmp	.L1661
.L1662:
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1663
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1663
	movq	-8(%rbp), %rax
	jmp	.L1661
.L1663:
	movl	$0, %eax
	jmp	.L1661
.L1659:
	movabsq	$-72057594037927936, %rax
	andq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L1664
	movl	$0, %eax
	jmp	.L1661
.L1664:
	movq	-48(%rbp), %rax
.L1661:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	ecs_get_typeid, .-ecs_get_typeid
	.globl	ecs_count_type
	.type	ecs_count_type, @function
ecs_count_type:
.LFB187:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1632, %rsp
	movq	%rdi, -1624(%rbp)
	movq	%rsi, -1632(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -1624(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8419, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -1624(%rbp)
	jne	.L1666
	leaq	__PRETTY_FUNCTION__.10153(%rip), %rcx
	movl	$8419, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1666:
	cmpq	$0, -1632(%rbp)
	jne	.L1667
	movl	$0, %eax
	jmp	.L1669
.L1667:
	movq	-1624(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -1624(%rbp)
	leaq	-1616(%rbp), %rdx
	movl	$0, %eax
	movl	$200, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-1632(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-1616(%rbp), %rdx
	movq	-1624(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_count_filter
.L1669:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1670
	call	__stack_chk_fail@PLT
.L1670:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	ecs_count_type, .-ecs_count_type
	.globl	ecs_count_id
	.type	ecs_count_id, @function
ecs_count_id:
.LFB188:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1680, %rsp
	movq	%rdi, -1672(%rbp)
	movq	%rsi, -1680(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -1672(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8437, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -1672(%rbp)
	jne	.L1672
	leaq	__PRETTY_FUNCTION__.10159(%rip), %rcx
	movl	$8437, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1672:
	movq	-1680(%rbp), %rax
	testq	%rax, %rax
	jne	.L1673
	movl	$0, %eax
	jmp	.L1675
.L1673:
	movq	-1672(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -1672(%rbp)
	movq	$0, -1648(%rbp)
	movq	$0, -1640(%rbp)
	movq	$0, -1632(%rbp)
	movl	$1, -1648(%rbp)
	movl	$1, -1644(%rbp)
	movq	$8, -1640(%rbp)
	leaq	-1648(%rbp), %rax
	movq	%rax, -1656(%rbp)
	movq	-1680(%rbp), %rax
	movq	%rax, -1632(%rbp)
	leaq	-1616(%rbp), %rdx
	movl	$0, %eax
	movl	$200, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-1656(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-1616(%rbp), %rdx
	movq	-1672(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_count_filter
.L1675:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1676
	call	__stack_chk_fail@PLT
.L1676:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	ecs_count_id, .-ecs_count_id
	.globl	ecs_count_filter
	.type	ecs_count_filter, @function
ecs_count_filter:
.LFB189:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8458, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1678
	leaq	__PRETTY_FUNCTION__.10173(%rip), %rcx
	movl	$8458, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1678:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L1679
.L1682:
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L1680
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_match_filter
	testb	%al, %al
	je	.L1681
.L1680:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_table_count
	addl	%eax, -24(%rbp)
.L1681:
	addl	$1, -28(%rbp)
.L1679:
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1682
	movl	-24(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	ecs_count_filter, .-ecs_count_filter
	.globl	ecs_defer_begin
	.type	ecs_defer_begin, @function
ecs_defer_begin:
.LFB190:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8480, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L1685
	leaq	__PRETTY_FUNCTION__.10185(%rip), %rcx
	movl	$8480, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1685:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_none
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	ecs_defer_begin, .-ecs_defer_begin
	.globl	ecs_defer_end
	.type	ecs_defer_end, @function
ecs_defer_end:
.LFB191:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8488, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L1688
	leaq	__PRETTY_FUNCTION__.10190(%rip), %rcx
	movl	$8488, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1688:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_flush
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	ecs_defer_end, .-ecs_defer_end
	.type	append_to_str, @function
append_to_str:
.LFB192:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L1691
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L1691:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L1692
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -56(%rbp)
	jmp	.L1693
.L1692:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	%rax, -56(%rbp)
.L1693:
	cmpq	$0, -16(%rbp)
	je	.L1694
	cmpq	$0, -24(%rbp)
	je	.L1694
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L1694:
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L1695
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L1695:
	movq	-56(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	append_to_str, .-append_to_str
	.section	.rodata
.LC307:
	.string	"PAIR"
.LC308:
	.string	"DISABLED"
.LC309:
	.string	"XOR"
.LC310:
	.string	"OR"
.LC311:
	.string	"AND"
.LC312:
	.string	"NOT"
.LC313:
	.string	"SWITCH"
.LC314:
	.string	"CASE"
.LC315:
	.string	"OWNED"
.LC316:
	.string	"UNKNOWN"
	.text
	.globl	ecs_role_str
	.type	ecs_role_str, @function
ecs_role_str:
.LFB193:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L1698
	leaq	.LC307(%rip), %rax
	jmp	.L1699
.L1698:
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-864691128455135232, %rdx
	cmpq	%rdx, %rax
	jne	.L1700
	leaq	.LC308(%rip), %rax
	jmp	.L1699
.L1700:
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-648518346341351424, %rdx
	cmpq	%rdx, %rax
	jne	.L1701
	leaq	.LC309(%rip), %rax
	jmp	.L1699
.L1701:
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-576460752303423488, %rdx
	cmpq	%rdx, %rax
	jne	.L1702
	leaq	.LC310(%rip), %rax
	jmp	.L1699
.L1702:
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-504403158265495552, %rdx
	cmpq	%rdx, %rax
	jne	.L1703
	leaq	.LC311(%rip), %rax
	jmp	.L1699
.L1703:
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-720575940379279360, %rdx
	cmpq	%rdx, %rax
	jne	.L1704
	leaq	.LC312(%rip), %rax
	jmp	.L1699
.L1704:
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-360287970189639680, %rdx
	cmpq	%rdx, %rax
	jne	.L1705
	leaq	.LC313(%rip), %rax
	jmp	.L1699
.L1705:
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-288230376151711744, %rdx
	cmpq	%rdx, %rax
	jne	.L1706
	leaq	.LC314(%rip), %rax
	jmp	.L1699
.L1706:
	movabsq	$-72057594037927936, %rax
	andq	-8(%rbp), %rax
	movabsq	$-792633534417207296, %rdx
	cmpq	%rdx, %rax
	jne	.L1707
	leaq	.LC315(%rip), %rax
	jmp	.L1699
.L1707:
	leaq	.LC316(%rip), %rax
.L1699:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	ecs_role_str, .-ecs_role_str
	.section	.rodata
.LC317:
	.string	"|"
.LC318:
	.string	"("
.LC319:
	.string	","
.LC320:
	.string	")"
	.text
	.globl	ecs_id_str
	.type	ecs_id_str, @function
ecs_id_str:
.LFB194:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -104(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8568, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -104(%rbp)
	jne	.L1709
	leaq	__PRETTY_FUNCTION__.10210(%rip), %rcx
	movl	$8568, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1709:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -80(%rbp)
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L1710
	leaq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
.L1710:
	movq	-128(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	$0, -88(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-112(%rbp), %rax
	testq	%rax, %rax
	je	.L1711
	movabsq	$-72057594037927936, %rax
	andq	-112(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	je	.L1711
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_role_str
	movq	%rax, -48(%rbp)
	leaq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	append_to_str
	movq	%rax, -72(%rbp)
	leaq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	.LC317(%rip), %rsi
	movq	%rax, %rdi
	call	append_to_str
	movq	%rax, -72(%rbp)
.L1711:
	movabsq	$72057594037927935, %rax
	andq	-112(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-112(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L1712
	movq	-112(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movq	%rax, -56(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L1713
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
	movq	%rax, -64(%rbp)
.L1713:
	cmpq	$0, -56(%rbp)
	je	.L1714
	movq	-56(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
	movq	%rax, -56(%rbp)
.L1714:
	cmpq	$0, -56(%rbp)
	je	.L1715
	movq	-56(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	leaq	.LC264(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_get_path_w_sep
	movq	%rax, -24(%rbp)
	leaq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	.LC318(%rip), %rsi
	movq	%rax, %rdi
	call	append_to_str
	movq	%rax, -72(%rbp)
	leaq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	append_to_str
	movq	%rax, -72(%rbp)
	movq	40+ecs_os_api(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	leaq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	.LC319(%rip), %rsi
	movq	%rax, %rdi
	call	append_to_str
	movq	%rax, -72(%rbp)
.L1715:
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	leaq	.LC264(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_get_path_w_sep
	movq	%rax, -16(%rbp)
	leaq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	append_to_str
	movq	%rax, -72(%rbp)
	movq	40+ecs_os_api(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	cmpq	$0, -56(%rbp)
	je	.L1716
	leaq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	.LC320(%rip), %rsi
	movq	%rax, %rdi
	call	append_to_str
	jmp	.L1716
.L1712:
	movq	-40(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	leaq	.LC264(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_get_path_w_sep
	movq	%rax, -32(%rbp)
	leaq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	append_to_str
	movq	40+ecs_os_api(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1716:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L1717
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
.L1717:
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1719
	call	__stack_chk_fail@PLT
.L1719:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	ecs_id_str, .-ecs_id_str
	.section	.rodata
.LC321:
	.string	"cptr != NULL"
.LC322:
	.string	"cptr != ((void *)0)"
	.text
	.type	flush_bulk_new, @function
flush_bulk_new:
.LFB195:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L1721
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-112(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L1722
.L1726:
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_component_from_id
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8635, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC321(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1723
	leaq	__PRETTY_FUNCTION__.10233(%rip), %rcx
	movl	$8635, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC322(%rip), %rdi
	call	__assert_fail@PLT
.L1723:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, -16(%rbp)
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-112(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	$0, -84(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L1724
.L1725:
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	assign_ptr_w_id
	addq	$16, %rsp
	addl	$1, -84(%rbp)
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
.L1724:
	movl	-84(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L1725
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	addl	$1, -88(%rbp)
.L1722:
	movl	-88(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L1726
	movq	40+ecs_os_api(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L1727
.L1721:
	movq	-112(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -76(%rbp)
	movl	$0, -80(%rbp)
	jmp	.L1728
.L1729:
	movq	-112(%rbp), %rax
	leaq	16(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_ids
	addl	$1, -80(%rbp)
.L1728:
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L1729
.L1727:
	movq	-112(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jle	.L1730
	movq	40+ecs_os_api(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1730:
	movq	40+ecs_os_api(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	flush_bulk_new, .-flush_bulk_new
	.type	free_value, @function
free_value:
.LFB196:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_typeid
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_c_info
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L1735
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1735
	movq	-32(%rbp), %rax
	movl	88(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L1733
.L1734:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rbx
	movl	-52(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rcx
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	-24(%rbp), %r10
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	addl	$1, -56(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
.L1733:
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L1734
.L1735:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	free_value, .-free_value
	.type	discard_op, @function
discard_op:
.LFB197:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1737
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L1738
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L1739
.L1740:
	movq	-64(%rbp), %rax
	movl	48(%rax), %edi
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	free_value
	movq	40+ecs_os_api(%rip), %rdx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	addl	$1, -48(%rbp)
.L1739:
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L1740
	jmp	.L1738
.L1737:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L1738
	movq	-64(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	32(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	free_value
	movq	40+ecs_os_api(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1738:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1742
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1742:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	discard_op, .-discard_op
	.type	is_entity_valid, @function
is_entity_valid:
.LFB198:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_exists
	testb	%al, %al
	je	.L1744
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_alive
	xorl	$1, %eax
	testb	%al, %al
	je	.L1744
	movl	$0, %eax
	jmp	.L1745
.L1744:
	movl	$1, %eax
.L1745:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	is_entity_valid, .-is_entity_valid
	.type	remove_invalid, @function
remove_invalid:
.LFB199:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -48(%rbp)
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L1747
.L1759:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movb	$0, -53(%rbp)
	movabsq	$-72057594037927936, %rax
	andq	-32(%rbp), %rax
	movabsq	$-432345564227567616, %rdx
	cmpq	%rdx, %rax
	jne	.L1748
	movq	-32(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %eax
	andl	$16777215, %eax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1749
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_entity_valid
	xorl	$1, %eax
	testb	%al, %al
	je	.L1750
.L1749:
	movb	$1, -53(%rbp)
	jmp	.L1757
.L1750:
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1752
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_entity_valid
	xorl	$1, %eax
	testb	%al, %al
	je	.L1757
.L1752:
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_id_record
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1753
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$306, %edx
	cmpq	%rdx, %rax
	jne	.L1754
.L1753:
	movb	$1, -53(%rbp)
	jmp	.L1757
.L1754:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$307, %edx
	cmpq	%rdx, %rax
	jne	.L1755
	movl	$0, %eax
	jmp	.L1756
.L1755:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$308, %edx
	cmpq	%rdx, %rax
	jne	.L1757
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	throw_invalid_delete
	jmp	.L1757
.L1748:
	movabsq	$72057594037927935, %rax
	andq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_entity_valid
	xorl	$1, %eax
	testb	%al, %al
	je	.L1757
	movb	$1, -53(%rbp)
.L1757:
	cmpb	$0, -53(%rbp)
	je	.L1758
	addl	$1, -48(%rbp)
	subl	$1, -44(%rbp)
.L1758:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %edx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addl	$1, -52(%rbp)
.L1747:
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L1759
	movq	-80(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$1, %eax
.L1756:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	remove_invalid, .-remove_invalid
	.section	.rodata
.LC323:
	.string	"stage != NULL"
.LC324:
	.string	"stage != ((void *)0)"
	.align 8
.LC325:
	.string	"op->kind != EcsOpNew && op->kind != EcsOpClone"
	.text
	.globl	flecs_defer_flush
	.type	flecs_defer_flush, @function
flecs_defer_flush:
.LFB200:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8792, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L1761
	leaq	__PRETTY_FUNCTION__.10304(%rip), %rcx
	movl	$8792, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1761:
	cmpq	$0, -80(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8793, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC323(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -80(%rbp)
	jne	.L1762
	leaq	__PRETTY_FUNCTION__.10304(%rip), %rcx
	movl	$8793, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC324(%rip), %rdi
	call	__assert_fail@PLT
.L1762:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L1763
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, -40(%rbp)
	je	.L1764
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movl	$56, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L1765
.L1790:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1766
	movq	$0, -48(%rbp)
.L1766:
	cmpq	$0, -48(%rbp)
	je	.L1767
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_is_alive
	xorl	$1, %eax
	testb	%al, %al
	je	.L1767
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_exists
	testb	%al, %al
	je	.L1767
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1768
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1768
	movl	$1, %eax
	jmp	.L1769
.L1768:
	movl	$0, %eax
.L1769:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8818, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC325(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1770
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1793
.L1770:
	leaq	__PRETTY_FUNCTION__.10304(%rip), %rcx
	movl	$8818, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC325(%rip), %rdi
	call	__assert_fail@PLT
.L1793:
	movq	-72(%rbp), %rax
	movl	676(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 676(%rax)
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	discard_op
	jmp	.L1772
.L1767:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L1773
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
.L1773:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$11, %eax
	ja	.L1774
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L1776(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L1776(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L1776:
	.long	.L1784-.L1776
	.long	.L1786-.L1776
	.long	.L1785-.L1776
	.long	.L1784-.L1776
	.long	.L1783-.L1776
	.long	.L1782-.L1776
	.long	.L1781-.L1776
	.long	.L1780-.L1776
	.long	.L1779-.L1776
	.long	.L1778-.L1776
	.long	.L1777-.L1776
	.long	.L1775-.L1776
	.text
.L1784:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	remove_invalid
	testb	%al, %al
	je	.L1787
	movq	-72(%rbp), %rax
	movl	664(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 664(%rax)
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_ids
	jmp	.L1774
.L1787:
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_delete
	jmp	.L1774
.L1783:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remove_ids
	jmp	.L1774
.L1786:
	movq	-24(%rbp), %rax
	movzbl	52(%rax), %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_clone
	jmp	.L1774
.L1782:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rbx
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$1, %r9d
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	assign_ptr_w_id
	addq	$16, %rsp
	jmp	.L1774
.L1781:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rbx
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$1, %r9d
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	assign_ptr_w_id
	addq	$16, %rsp
	jmp	.L1774
.L1780:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_modified_id
	jmp	.L1774
.L1779:
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_delete
	jmp	.L1774
.L1777:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ecs_enable_component_w_id
	jmp	.L1774
.L1775:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ecs_enable_component_w_id
	jmp	.L1774
.L1778:
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_clear
	jmp	.L1774
.L1785:
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flush_bulk_new
	jmp	.L1772
.L1774:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jle	.L1789
	movq	40+ecs_os_api(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1789:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L1772
	movq	40+ecs_os_api(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1772:
	addl	$1, -56(%rbp)
.L1765:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L1790
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L1791
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
.L1791:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_clear
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L1764:
	movl	$1, %eax
	jmp	.L1792
.L1763:
	movl	$0, %eax
.L1792:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	flecs_defer_flush, .-flecs_defer_flush
	.globl	flecs_defer_purge
	.type	flecs_defer_purge, @function
flecs_defer_purge:
.LFB201:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8910, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1795
	leaq	__PRETTY_FUNCTION__.10332(%rip), %rcx
	movl	$8910, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1795:
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8911, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC323(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -48(%rbp)
	jne	.L1796
	leaq	__PRETTY_FUNCTION__.10332(%rip), %rcx
	movl	$8911, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC324(%rip), %rdi
	call	__assert_fail@PLT
.L1796:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L1797
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, -16(%rbp)
	je	.L1798
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movl	$56, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L1799
.L1800:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	discard_op
	addl	$1, -24(%rbp)
.L1799:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1800
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L1801
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
.L1801:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_clear
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L1798:
	movl	$1, %eax
	jmp	.L1802
.L1797:
	movl	$0, %eax
.L1802:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	flecs_defer_purge, .-flecs_defer_purge
	.type	new_defer_op, @function
new_defer_op:
.LFB202:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	$16, %edx
	movl	$56, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	new_defer_op, .-new_defer_op
	.section	.rodata
.LC326:
	.string	"components != NULL"
.LC327:
	.string	"components != ((void *)0)"
	.text
	.type	new_defer_component_ids, @function
new_defer_component_ids:
.LFB203:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$8951, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC326(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L1806
	leaq	__PRETTY_FUNCTION__.10348(%rip), %rcx
	movl	$8951, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC327(%rip), %rdi
	call	__assert_fail@PLT
.L1806:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -16(%rbp)
	cmpl	$1, -16(%rbp)
	jne	.L1807
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 24(%rax)
	jmp	.L1810
.L1807:
	cmpl	$0, -16(%rbp)
	je	.L1809
	movl	-16(%rbp), %eax
	sall	$3, %eax
	movl	%eax, -12(%rbp)
	movq	16+ecs_os_api(%rip), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 24(%rax)
	jmp	.L1810
.L1809:
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
.L1810:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	new_defer_component_ids, .-new_defer_component_ids
	.type	defer_add_remove, @function
defer_add_remove:
.LFB204:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L1812
	cmpq	$0, -56(%rbp)
	je	.L1813
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L1813
	movl	$1, %eax
	jmp	.L1814
.L1813:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	new_defer_op
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	new_defer_component_ids
	cmpl	$0, -36(%rbp)
	jne	.L1815
	movq	-24(%rbp), %rax
	movl	648(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 648(%rax)
	jmp	.L1816
.L1815:
	cmpl	$3, -36(%rbp)
	jne	.L1817
	movq	-24(%rbp), %rax
	movl	664(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 664(%rax)
	jmp	.L1816
.L1817:
	cmpl	$4, -36(%rbp)
	jne	.L1816
	movq	-24(%rbp), %rax
	movl	668(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 668(%rax)
.L1816:
	movl	$1, %eax
	jmp	.L1814
.L1812:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L1814:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	defer_add_remove, .-defer_add_remove
	.section	.rodata
.LC328:
	.string	"s->magic == ECS_STAGE_MAGIC"
.LC329:
	.string	"s->magic == (0x65637374)"
	.text
	.type	merge_stages, @function
merge_stages:
.LFB205:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	sete	%al
	movb	%al, -42(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movzbl	683(%rax), %eax
	movb	%al, -41(%rbp)
	cmpb	$0, -41(%rbp)
	je	.L1819
	movq	168+ecs_os_api(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1819:
	cmpb	$0, -42(%rbp)
	je	.L1820
	cmpb	$0, -60(%rbp)
	jne	.L1821
	movq	-32(%rbp), %rax
	movzbl	80(%rax), %eax
	testb	%al, %al
	je	.L1822
.L1821:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_defer_end
	jmp	.L1822
.L1820:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_stage_count
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L1823
.L1827:
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_get_stage
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9037, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC328(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	je	.L1824
	leaq	__PRETTY_FUNCTION__.10373(%rip), %rcx
	movl	$9037, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC329(%rip), %rdi
	call	__assert_fail@PLT
.L1824:
	cmpb	$0, -60(%rbp)
	jne	.L1825
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %eax
	testb	%al, %al
	je	.L1826
.L1825:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_defer_end
.L1826:
	addl	$1, -40(%rbp)
.L1823:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L1827
.L1822:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_eval_component_monitors
	cmpb	$0, -41(%rbp)
	je	.L1828
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_time_measure
	cvtsd2ss	%xmm0, %xmm1
	movq	-56(%rbp), %rax
	movss	584(%rax), %xmm0
	movq	-56(%rbp), %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, 584(%rax)
.L1828:
	movq	-56(%rbp), %rax
	movl	600(%rax), %edx
	addl	$1, %edx
	movl	%edx, 600(%rax)
	movq	-32(%rbp), %rax
	movzbl	81(%rax), %eax
	testb	%al, %al
	je	.L1831
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_defer_begin
.L1831:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1830
	call	__stack_chk_fail@PLT
.L1830:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	merge_stages, .-merge_stages
	.type	do_auto_merge, @function
do_auto_merge:
.LFB206:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	merge_stages
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	do_auto_merge, .-do_auto_merge
	.type	do_manual_merge, @function
do_manual_merge:
.LFB207:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	merge_stages
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	do_manual_merge, .-do_manual_merge
	.globl	flecs_defer_none
	.type	flecs_defer_none, @function
flecs_defer_none:
.LFB208:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	flecs_defer_none, .-flecs_defer_none
	.globl	flecs_defer_modified
	.type	flecs_defer_modified, @function
flecs_defer_modified:
.LFB209:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L1837
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	new_defer_op
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$7, (%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
	jmp	.L1838
.L1837:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L1838:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	flecs_defer_modified, .-flecs_defer_modified
	.globl	flecs_defer_clone
	.type	flecs_defer_clone, @function
flecs_defer_clone:
.LFB210:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, %eax
	movb	%al, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L1840
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	new_defer_op
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 52(%rax)
	movl	$1, %eax
	jmp	.L1841
.L1840:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L1841:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	flecs_defer_clone, .-flecs_defer_clone
	.globl	flecs_defer_delete
	.type	flecs_defer_delete, @function
flecs_defer_delete:
.LFB211:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L1843
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	new_defer_op
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$8, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	656(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 656(%rax)
	movl	$1, %eax
	jmp	.L1844
.L1843:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L1844:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	flecs_defer_delete, .-flecs_defer_delete
	.globl	flecs_defer_clear
	.type	flecs_defer_clear, @function
flecs_defer_clear:
.LFB212:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L1846
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	new_defer_op
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$9, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	660(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 660(%rax)
	movl	$1, %eax
	jmp	.L1847
.L1846:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L1847:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	flecs_defer_clear, .-flecs_defer_clear
	.globl	flecs_defer_enable
	.type	flecs_defer_enable, @function
flecs_defer_enable:
.LFB213:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, %eax
	movb	%al, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L1849
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	new_defer_op
	movq	%rax, -8(%rbp)
	cmpb	$0, -52(%rbp)
	je	.L1850
	movl	$10, %edx
	jmp	.L1851
.L1850:
	movl	$11, %edx
.L1851:
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
	jmp	.L1852
.L1849:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L1852:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	flecs_defer_enable, .-flecs_defer_enable
	.globl	flecs_defer_bulk_new
	.type	flecs_defer_bulk_new, @function
flecs_defer_bulk_new:
.LFB214:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	movq	-144(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L1854
	movq	16+ecs_os_api(%rip), %rax
	movl	-148(%rbp), %edx
	sall	$3, %edx
	movl	%edx, %edi
	call	*%rax
	movq	%rax, -96(%rbp)
	movq	$0, -112(%rbp)
	movq	-136(%rbp), %rax
	movl	652(%rax), %eax
	leal	1(%rax), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 652(%rax)
	movl	$0, -128(%rbp)
	jmp	.L1855
.L1856:
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_new_id
	movq	%rax, (%rbx)
	addl	$1, -128(%rbp)
.L1855:
	movl	-128(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L1856
	cmpq	$0, -168(%rbp)
	je	.L1857
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -120(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	16+ecs_os_api(%rip), %rax
	movl	-120(%rbp), %edx
	sall	$3, %edx
	movl	%edx, %edi
	call	*%rax
	movq	%rax, -112(%rbp)
	movl	$0, -124(%rbp)
	jmp	.L1858
.L1865:
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_component_from_id
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9207, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC321(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L1859
	leaq	__PRETTY_FUNCTION__.10441(%rip), %rcx
	movl	$9207, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC322(%rip), %rdi
	call	__assert_fail@PLT
.L1859:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -116(%rbp)
	movq	16+ecs_os_api(%rip), %rdx
	movl	-116(%rbp), %eax
	imull	-148(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
	movq	%rax, -64(%rbp)
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -104(%rbp)
	movq	-80(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_typeid
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L1860
	movq	-56(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_c_info
	movq	%rax, -104(%rbp)
.L1860:
	cmpq	$0, -104(%rbp)
	je	.L1861
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L1861
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-116(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movl	-148(%rbp), %r8d
	movq	-64(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	-48(%rbp), %r10
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L1862
	movl	-116(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %r9
	movq	-64(%rbp), %r11
	movq	-96(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movl	-148(%rbp), %r8d
	pushq	%r8
	pushq	%rdi
	movq	-32(%rbp), %r10
	movq	%r11, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L1864
.L1862:
	movl	-116(%rbp), %eax
	imull	-148(%rbp), %eax
	movslq	%eax, %rdx
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-168(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L1864
.L1861:
	movl	-116(%rbp), %eax
	imull	-148(%rbp), %eax
	movslq	%eax, %rdx
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-168(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L1864:
	addl	$1, -124(%rbp)
.L1858:
	movl	-124(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jl	.L1865
.L1857:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	new_defer_op
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movl	-148(%rbp), %edx
	movl	%edx, 48(%rax)
	movq	-160(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	new_defer_component_ids
	movq	-176(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L1866
.L1854:
	movq	-144(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-144(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L1866:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	flecs_defer_bulk_new, .-flecs_defer_bulk_new
	.globl	flecs_defer_new
	.type	flecs_defer_new, @function
flecs_defer_new:
.LFB215:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	defer_add_remove
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE215:
	.size	flecs_defer_new, .-flecs_defer_new
	.globl	flecs_defer_add
	.type	flecs_defer_add, @function
flecs_defer_add:
.LFB216:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	defer_add_remove
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE216:
	.size	flecs_defer_add, .-flecs_defer_add
	.globl	flecs_defer_remove
	.type	flecs_defer_remove, @function
flecs_defer_remove:
.LFB217:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	defer_add_remove
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE217:
	.size	flecs_defer_remove, .-flecs_defer_remove
	.globl	flecs_defer_set
	.type	flecs_defer_set, @function
flecs_defer_set:
.LFB218:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	%r9d, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L1874
	movq	-72(%rbp), %rax
	movl	672(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 672(%rax)
	cmpl	$0, -88(%rbp)
	jne	.L1875
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_component_from_id
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9294, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC321(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L1876
	leaq	__PRETTY_FUNCTION__.10483(%rip), %rcx
	movl	$9294, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC322(%rip), %rdi
	call	__assert_fail@PLT
.L1876:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -88(%rbp)
.L1875:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	new_defer_op
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	-84(%rbp), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-96(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-48(%rbp), %rax
	movl	-88(%rbp), %edx
	movl	%edx, 48(%rax)
	movq	16+ecs_os_api(%rip), %rdx
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
	movq	-48(%rbp), %rdx
	movq	%rax, 40(%rdx)
	cmpq	$0, 16(%rbp)
	jne	.L1877
	movq	-96(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, 16(%rbp)
	cmpq	$0, 32(%rbp)
	je	.L1877
	cmpq	$0, 16(%rbp)
	sete	%dl
	movq	32(%rbp), %rax
	movb	%dl, (%rax)
.L1877:
	movq	$0, -64(%rbp)
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_typeid
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L1878
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_c_info
	movq	%rax, -64(%rbp)
.L1878:
	cmpq	$0, 16(%rbp)
	je	.L1879
	cmpq	$0, -64(%rbp)
	je	.L1880
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1880
	movq	-64(%rbp), %rax
	movq	32(%rax), %rbx
	movl	-88(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	40(%rax), %r9
	movq	-64(%rbp), %rdx
	leaq	-96(%rbp), %r8
	leaq	-96(%rbp), %rcx
	movq	-104(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	%rbx
	pushq	$1
	pushq	%rdi
	pushq	16(%rbp)
	movq	-24(%rbp), %r10
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L1882
.L1880:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L1882
.L1879:
	cmpq	$0, -64(%rbp)
	je	.L1882
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L1882
	movq	-64(%rbp), %rax
	movq	32(%rax), %rbx
	movl	-88(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	40(%rax), %rcx
	leaq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	-32(%rbp), %r10
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
.L1882:
	cmpq	$0, 24(%rbp)
	je	.L1883
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
.L1883:
	movl	$1, %eax
	jmp	.L1884
.L1874:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L1884:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE218:
	.size	flecs_defer_set, .-flecs_defer_set
	.globl	flecs_stage_merge_post_frame
	.type	flecs_stage_merge_post_frame, @function
flecs_stage_merge_post_frame:
.LFB219:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L1886
.L1887:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -24(%rbp)
.L1886:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1887
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-48(%rbp), %rax
	movq	$0, 48(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE219:
	.size	flecs_stage_merge_post_frame, .-flecs_stage_merge_post_frame
	.globl	flecs_stage_init
	.type	flecs_stage_init, @function
flecs_stage_init:
.LFB220:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9364, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1889
	leaq	__PRETTY_FUNCTION__.10504(%rip), %rcx
	movl	$9364, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1889:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9365, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L1890
	leaq	__PRETTY_FUNCTION__.10504(%rip), %rcx
	movl	$9365, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L1890:
	movq	-16(%rbp), %rax
	movl	$88, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-16(%rbp), %rax
	movl	$1701016436, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movb	$1, 80(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 81(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE220:
	.size	flecs_stage_init, .-flecs_stage_init
	.section	.rodata
	.align 8
.LC330:
	.string	"stage->magic == ECS_STAGE_MAGIC"
.LC331:
	.string	"stage->magic == (0x65637374)"
	.align 8
.LC332:
	.string	"ecs_vector_count(stage->defer_queue) == 0"
	.text
	.globl	flecs_stage_deinit
	.type	flecs_stage_deinit, @function
flecs_stage_deinit:
.LFB221:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9381, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L1892
	leaq	__PRETTY_FUNCTION__.10509(%rip), %rcx
	movl	$9381, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L1892:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9382, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC330(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	je	.L1893
	leaq	__PRETTY_FUNCTION__.10509(%rip), %rcx
	movl	$9382, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC331(%rip), %rdi
	call	__assert_fail@PLT
.L1893:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9385, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC332(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	testl	%eax, %eax
	je	.L1894
	leaq	__PRETTY_FUNCTION__.10509(%rip), %rcx
	movl	$9385, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC332(%rip), %rdi
	call	__assert_fail@PLT
.L1894:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE221:
	.size	flecs_stage_deinit, .-flecs_stage_deinit
	.section	.rodata
	.align 8
.LC333:
	.string	"stages[i].magic == ECS_STAGE_MAGIC"
	.align 8
.LC334:
	.string	"stages[i].magic == (0x65637374)"
.LC335:
	.string	"stages[i].thread == 0"
	.text
	.globl	ecs_set_stages
	.type	ecs_set_stages, @function
ecs_set_stages:
.LFB222:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9399, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1896
	leaq	__PRETTY_FUNCTION__.10514(%rip), %rcx
	movl	$9399, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1896:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9400, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L1897
	leaq	__PRETTY_FUNCTION__.10514(%rip), %rcx
	movl	$9400, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L1897:
	movq	-40(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L1898
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L1898
	movq	-40(%rbp), %rax
	movq	456(%rax), %rax
	movl	$16, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L1899
.L1902:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9412, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC333(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	je	.L1900
	leaq	__PRETTY_FUNCTION__.10514(%rip), %rcx
	movl	$9412, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC334(%rip), %rdi
	call	__assert_fail@PLT
.L1900:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9414, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC335(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L1901
	leaq	__PRETTY_FUNCTION__.10514(%rip), %rcx
	movl	$9414, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC335(%rip), %rdi
	call	__assert_fail@PLT
.L1901:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_stage_deinit
	addl	$1, -32(%rbp)
.L1899:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L1902
	movq	-40(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
.L1898:
	cmpl	$0, -44(%rbp)
	je	.L1903
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movl	$16, %esi
	movl	$88, %edi
	call	_ecs_vector_new
	movq	-40(%rbp), %rdx
	movq	%rax, 456(%rdx)
	movl	$0, -32(%rbp)
	jmp	.L1904
.L1905:
	movq	-40(%rbp), %rax
	addq	$456, %rax
	movl	$16, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_stage_init
	movl	-32(%rbp), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	addl	$1, -32(%rbp)
.L1904:
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L1905
	jmp	.L1906
.L1903:
	movq	-40(%rbp), %rax
	movq	$0, 456(%rax)
.L1906:
	movl	$0, -32(%rbp)
	jmp	.L1907
.L1908:
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_get_stage
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movzbl	448(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, 80(%rax)
	addl	$1, -32(%rbp)
.L1907:
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L1908
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE222:
	.size	ecs_set_stages, .-ecs_set_stages
	.globl	ecs_get_stage_count
	.type	ecs_get_stage_count, @function
ecs_get_stage_count:
.LFB223:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE223:
	.size	ecs_get_stage_count, .-ecs_get_stage_count
	.globl	ecs_get_stage_id
	.type	ecs_get_stage_id, @function
ecs_get_stage_id:
.LFB224:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9458, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1912
	leaq	__PRETTY_FUNCTION__.10535(%rip), %rcx
	movl	$9458, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1912:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	jne	.L1913
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	jmp	.L1914
.L1913:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	jne	.L1915
	movl	$0, %eax
	jmp	.L1914
.L1915:
	movl	$0, %ecx
	movl	$9468, %edx
	leaq	.LC74(%rip), %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	_ecs_abort
	call	abort@PLT
.L1914:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE224:
	.size	ecs_get_stage_id, .-ecs_get_stage_id
	.section	.rodata
	.align 8
.LC336:
	.string	"ecs_vector_count(world->worker_stages) > stage_id"
	.text
	.globl	ecs_get_stage
	.type	ecs_get_stage, @function
ecs_get_stage:
.LFB225:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9476, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1917
	leaq	__PRETTY_FUNCTION__.10541(%rip), %rcx
	movl	$9476, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1917:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9477, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L1918
	leaq	__PRETTY_FUNCTION__.10541(%rip), %rcx
	movl	$9477, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L1918:
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -12(%rbp)
	setl	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9478, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC336(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, -12(%rbp)
	jl	.L1919
	leaq	__PRETTY_FUNCTION__.10541(%rip), %rcx
	movl	$9478, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC336(%rip), %rdi
	call	__assert_fail@PLT
.L1919:
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE225:
	.size	ecs_get_stage, .-ecs_get_stage
	.globl	ecs_staging_begin
	.type	ecs_staging_begin, @function
ecs_staging_begin:
.LFB226:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9488, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1922
	leaq	__PRETTY_FUNCTION__.10545(%rip), %rcx
	movl	$9488, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1922:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9489, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L1923
	leaq	__PRETTY_FUNCTION__.10545(%rip), %rcx
	movl	$9489, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L1923:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_stage_count
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L1924
.L1925:
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_get_stage
	movq	%rax, %rdi
	call	ecs_defer_begin
	addl	$1, -8(%rbp)
.L1924:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L1925
	movq	-24(%rbp), %rax
	movzbl	681(%rax), %eax
	movb	%al, -9(%rbp)
	movq	-24(%rbp), %rax
	movb	$1, 681(%rax)
	movzbl	-9(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE226:
	.size	ecs_staging_begin, .-ecs_staging_begin
	.section	.rodata
.LC337:
	.string	"world->is_readonly == true"
.LC338:
	.string	"world->is_readonly == 1"
	.text
	.globl	ecs_staging_end
	.type	ecs_staging_end, @function
ecs_staging_end:
.LFB227:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9508, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1928
	leaq	__PRETTY_FUNCTION__.10555(%rip), %rcx
	movl	$9508, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1928:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9509, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L1929
	leaq	__PRETTY_FUNCTION__.10555(%rip), %rcx
	movl	$9509, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L1929:
	movq	-8(%rbp), %rax
	movzbl	681(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9510, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC337(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movzbl	681(%rax), %eax
	testb	%al, %al
	jne	.L1930
	leaq	__PRETTY_FUNCTION__.10555(%rip), %rcx
	movl	$9510, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC338(%rip), %rdi
	call	__assert_fail@PLT
.L1930:
	movq	-8(%rbp), %rax
	movb	$0, 681(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	do_auto_merge
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE227:
	.size	ecs_staging_end, .-ecs_staging_end
	.section	.rodata
	.align 8
.LC339:
	.string	"world->magic == ECS_WORLD_MAGIC || world->magic == ECS_STAGE_MAGIC"
	.align 8
.LC340:
	.string	"world->magic == (0x65637377) || world->magic == (0x65637374)"
	.text
	.globl	ecs_merge
	.type	ecs_merge, @function
ecs_merge:
.LFB228:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9521, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1932
	leaq	__PRETTY_FUNCTION__.10559(%rip), %rcx
	movl	$9521, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1932:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L1933
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	jne	.L1934
.L1933:
	movl	$1, %eax
	jmp	.L1935
.L1934:
	movl	$0, %eax
.L1935:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9522, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC339(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L1936
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	je	.L1936
	leaq	__PRETTY_FUNCTION__.10559(%rip), %rcx
	movl	$9522, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC340(%rip), %rdi
	call	__assert_fail@PLT
.L1936:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	do_manual_merge
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE228:
	.size	ecs_merge, .-ecs_merge
	.section	.rodata
	.align 8
.LC341:
	.string	"world->magic == ECS_STAGE_MAGIC"
.LC342:
	.string	"world->magic == (0x65637374)"
	.text
	.globl	ecs_set_automerge
	.type	ecs_set_automerge, @function
ecs_set_automerge:
.LFB229:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movb	%al, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	jne	.L1938
	movq	-40(%rbp), %rax
	movzbl	-44(%rbp), %edx
	movb	%dl, 448(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_stage_count
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L1939
.L1940:
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_get_stage
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-44(%rbp), %edx
	movb	%dl, 80(%rax)
	addl	$1, -24(%rbp)
.L1939:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1940
	jmp	.L1943
.L1938:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9549, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC341(%rip), %rdx
	movl	$72, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	je	.L1942
	leaq	__PRETTY_FUNCTION__.10570(%rip), %rcx
	movl	$9549, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC342(%rip), %rdi
	call	__assert_fail@PLT
.L1942:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	-44(%rbp), %edx
	movb	%dl, 80(%rax)
.L1943:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE229:
	.size	ecs_set_automerge, .-ecs_set_automerge
	.globl	ecs_stage_is_readonly
	.type	ecs_stage_is_readonly, @function
ecs_stage_is_readonly:
.LFB230:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	jne	.L1945
	movq	-24(%rbp), %rax
	movzbl	81(%rax), %eax
	testb	%al, %al
	je	.L1945
	movl	$0, %eax
	jmp	.L1946
.L1945:
	movq	-8(%rbp), %rax
	movzbl	681(%rax), %eax
	testb	%al, %al
	je	.L1947
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	jne	.L1948
	movl	$1, %eax
	jmp	.L1946
.L1947:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	jne	.L1948
	movl	$1, %eax
	jmp	.L1946
.L1948:
	movl	$0, %eax
.L1946:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE230:
	.size	ecs_stage_is_readonly, .-ecs_stage_is_readonly
	.globl	ecs_async_stage_new
	.type	ecs_async_stage_new, @function
ecs_async_stage_new:
.LFB231:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	32+ecs_os_api(%rip), %rax
	movl	$88, %edi
	call	*%rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_stage_init
	movq	-8(%rbp), %rax
	movl	$-1, 4(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 81(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_defer_begin
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE231:
	.size	ecs_async_stage_new, .-ecs_async_stage_new
	.section	.rodata
.LC343:
	.string	"stage->asynchronous == true"
.LC344:
	.string	"stage->asynchronous == 1"
	.text
	.globl	ecs_async_stage_free
	.type	ecs_async_stage_free, @function
ecs_async_stage_free:
.LFB232:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9599, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC341(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	je	.L1952
	leaq	__PRETTY_FUNCTION__.10583(%rip), %rcx
	movl	$9599, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC342(%rip), %rdi
	call	__assert_fail@PLT
.L1952:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	81(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9601, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC343(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movzbl	81(%rax), %eax
	testb	%al, %al
	jne	.L1953
	leaq	__PRETTY_FUNCTION__.10583(%rip), %rcx
	movl	$9601, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC344(%rip), %rdi
	call	__assert_fail@PLT
.L1953:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_stage_deinit
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE232:
	.size	ecs_async_stage_free, .-ecs_async_stage_free
	.globl	ecs_stage_is_async
	.type	ecs_stage_is_async, @function
ecs_stage_is_async:
.LFB233:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1955
	movl	$0, %eax
	jmp	.L1956
.L1955:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	je	.L1957
	movl	$0, %eax
	jmp	.L1956
.L1957:
	movq	-8(%rbp), %rax
	movzbl	81(%rax), %eax
.L1956:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE233:
	.size	ecs_stage_is_async, .-ecs_stage_is_async
	.globl	ecs_is_deferred
	.type	ecs_is_deferred, @function
ecs_is_deferred:
.LFB234:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9623, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L1959
	leaq	__PRETTY_FUNCTION__.10591(%rip), %rcx
	movl	$9623, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L1959:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_readonly_world
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	setne	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE234:
	.size	ecs_is_deferred, .-ecs_is_deferred
	.section	.rodata
.LC345:
	.string	"result != NULL"
.LC346:
	.string	"result != ((void *)0)"
	.text
	.type	resize, @function
resize:
.LFB235:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movl	%edx, -32(%rbp)
	movw	%ax, -28(%rbp)
	movq	24+ecs_os_api(%rip), %rdx
	movswl	-28(%rbp), %ecx
	movl	-32(%rbp), %eax
	addl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9636, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC345(%rip), %rdx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1962
	leaq	__PRETTY_FUNCTION__.10599(%rip), %rcx
	movl	$9636, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC346(%rip), %rdi
	call	__assert_fail@PLT
.L1962:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE235:
	.size	resize, .-resize
	.section	.rodata
.LC347:
	.string	"elem_size != 0"
	.text
	.globl	_ecs_vector_new
	.type	_ecs_vector_new, @function
_ecs_vector_new:
.LFB236:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, %eax
	movl	%edx, -28(%rbp)
	movw	%ax, -24(%rbp)
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9647, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC347(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -20(%rbp)
	jne	.L1965
	leaq	__PRETTY_FUNCTION__.10605(%rip), %rcx
	movl	$9647, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC347(%rip), %rdi
	call	__assert_fail@PLT
.L1965:
	movq	16+ecs_os_api(%rip), %rax
	movswl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	imull	-28(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, %edi
	call	*%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9651, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC345(%rip), %rdx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1966
	leaq	__PRETTY_FUNCTION__.10605(%rip), %rcx
	movl	$9651, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC346(%rip), %rdi
	call	__assert_fail@PLT
.L1966:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 4(%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE236:
	.size	_ecs_vector_new, .-_ecs_vector_new
	.globl	_ecs_vector_from_array
	.type	_ecs_vector_from_array, @function
_ecs_vector_from_array:
.LFB237:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, %eax
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movw	%ax, -24(%rbp)
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9667, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC347(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -20(%rbp)
	jne	.L1969
	leaq	__PRETTY_FUNCTION__.10613(%rip), %rcx
	movl	$9667, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC347(%rip), %rdi
	call	__assert_fail@PLT
.L1969:
	movq	16+ecs_os_api(%rip), %rax
	movswl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	imull	-28(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, %edi
	call	*%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9671, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC345(%rip), %rdx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L1970
	leaq	__PRETTY_FUNCTION__.10613(%rip), %rcx
	movl	$9671, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC346(%rip), %rdi
	call	__assert_fail@PLT
.L1970:
	movl	-20(%rbp), %eax
	imull	-28(%rbp), %eax
	movslq	%eax, %rdx
	movswq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 4(%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE237:
	.size	_ecs_vector_from_array, .-_ecs_vector_from_array
	.globl	ecs_vector_free
	.type	ecs_vector_free, @function
ecs_vector_free:
.LFB238:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE238:
	.size	ecs_vector_free, .-ecs_vector_free
	.globl	ecs_vector_clear
	.type	ecs_vector_clear, @function
ecs_vector_clear:
.LFB239:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1975
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
.L1975:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE239:
	.size	ecs_vector_clear, .-ecs_vector_clear
	.globl	_ecs_vector_zero
	.type	_ecs_vector_zero, @function
_ecs_vector_zero:
.LFB240:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movw	%ax, -32(%rbp)
	movswq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	imull	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE240:
	.size	_ecs_vector_zero, .-_ecs_vector_zero
	.section	.rodata
	.align 8
.LC348:
	.string	"vector->elem_size == elem_size"
	.text
	.globl	ecs_vector_assert_size
	.type	ecs_vector_assert_size, @function
ecs_vector_assert_size:
.LFB241:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1979
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9713, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L1979
	leaq	__PRETTY_FUNCTION__.10631(%rip), %rcx
	movl	$9713, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L1979:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE241:
	.size	ecs_vector_assert_size, .-ecs_vector_assert_size
	.section	.rodata
.LC349:
	.string	"array_inout != NULL"
.LC350:
	.string	"array_inout != ((void *)0)"
	.text
	.globl	_ecs_vector_addn
	.type	_ecs_vector_addn, @function
_ecs_vector_addn:
.LFB242:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, %eax
	movl	%ecx, -52(%rbp)
	movw	%ax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9723, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC349(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L1981
	leaq	__PRETTY_FUNCTION__.10638(%rip), %rcx
	movl	$9723, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC350(%rip), %rdi
	call	__assert_fail@PLT
.L1981:
	cmpl	$1, -52(%rbp)
	jne	.L1982
	movswl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	jmp	.L1983
.L1982:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1984
	movswl	-48(%rbp), %ecx
	movl	-44(%rbp), %eax
	movl	$1, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	_ecs_vector_new
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L1984:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9735, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L1985
	leaq	__PRETTY_FUNCTION__.10638(%rip), %rcx
	movl	$9735, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L1985:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L1986
	cmpl	$0, -20(%rbp)
	jne	.L1989
	movl	-52(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L1988
.L1990:
	sall	-20(%rbp)
.L1989:
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L1990
.L1988:
	movl	-20(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %edx
	movswl	-48(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	resize
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L1986:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movswl	-48(%rbp), %edx
	movl	-44(%rbp), %eax
	imull	-16(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L1983:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE242:
	.size	_ecs_vector_addn, .-_ecs_vector_addn
	.globl	_ecs_vector_add
	.type	_ecs_vector_add, @function
_ecs_vector_add:
.LFB243:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movw	%ax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1992
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9769, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L1993
	leaq	__PRETTY_FUNCTION__.10654(%rip), %rcx
	movl	$9769, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L1993:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L1994
	sall	-16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L1995
	movl	$2, -16(%rbp)
.L1995:
	movl	-16(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	movswl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	resize
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
.L1994:
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movswl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L1996
.L1992:
	movswl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	$2, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	_ecs_vector_new
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	$2, 4(%rax)
	movswq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L1996:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE243:
	.size	_ecs_vector_add, .-_ecs_vector_add
	.section	.rodata
	.align 8
.LC351:
	.string	"(*dst)->elem_size == elem_size"
.LC352:
	.string	"src->elem_size == elem_size"
	.text
	.globl	_ecs_vector_move_index
	.type	_ecs_vector_move_index, @function
_ecs_vector_move_index:
.LFB244:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, %eax
	movl	%r8d, -44(%rbp)
	movw	%ax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9801, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC351(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L1998
	leaq	__PRETTY_FUNCTION__.10662(%rip), %rcx
	movl	$9801, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC351(%rip), %rdi
	call	__assert_fail@PLT
.L1998:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9802, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC352(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L1999
	leaq	__PRETTY_FUNCTION__.10662(%rip), %rcx
	movl	$9802, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC352(%rip), %rdi
	call	__assert_fail@PLT
.L1999:
	movswl	-40(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -16(%rbp)
	movswl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movswl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_remove
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE244:
	.size	_ecs_vector_move_index, .-_ecs_vector_move_index
	.globl	ecs_vector_remove_last
	.type	ecs_vector_remove_last, @function
ecs_vector_remove_last:
.LFB245:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2003
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2003
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
.L2003:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE245:
	.size	ecs_vector_remove_last, .-ecs_vector_remove_last
	.globl	_ecs_vector_pop
	.type	_ecs_vector_pop, @function
_ecs_vector_pop:
.LFB246:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movw	%ax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2005
	movl	$0, %eax
	jmp	.L2006
.L2005:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9827, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L2007
	leaq	__PRETTY_FUNCTION__.10674(%rip), %rcx
	movl	$9827, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L2007:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L2008
	movl	$0, %eax
	jmp	.L2006
.L2008:
	movswl	-32(%rbp), %edx
	movl	-12(%rbp), %eax
	subl	$1, %eax
	imull	-28(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L2009
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L2009:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_remove_last
	movl	$1, %eax
.L2006:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE246:
	.size	_ecs_vector_pop, .-_ecs_vector_pop
	.section	.rodata
.LC353:
	.string	"index < count"
	.text
	.globl	_ecs_vector_remove
	.type	_ecs_vector_remove, @function
_ecs_vector_remove:
.LFB247:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, %eax
	movl	%ecx, -52(%rbp)
	movw	%ax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9851, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L2011
	leaq	__PRETTY_FUNCTION__.10683(%rip), %rcx
	movl	$9851, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L2011:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movswq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-52(%rbp), %eax
	imull	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setl	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9857, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC353(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L2012
	leaq	__PRETTY_FUNCTION__.10683(%rip), %rcx
	movl	$9857, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC353(%rip), %rdi
	call	__assert_fail@PLT
.L2012:
	subl	$1, -28(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L2013
	movl	-44(%rbp), %eax
	imull	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L2013:
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE247:
	.size	_ecs_vector_remove, .-_ecs_vector_remove
	.globl	_ecs_vector_reclaim
	.type	_ecs_vector_reclaim, @function
_ecs_vector_reclaim:
.LFB248:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movw	%ax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9877, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L2016
	leaq	__PRETTY_FUNCTION__.10694(%rip), %rcx
	movl	$9877, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L2016:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.L2018
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	movswl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	resize
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L2018:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE248:
	.size	_ecs_vector_reclaim, .-_ecs_vector_reclaim
	.globl	ecs_vector_count
	.type	ecs_vector_count, @function
ecs_vector_count:
.LFB249:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2020
	movl	$0, %eax
	jmp	.L2021
.L2020:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
.L2021:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE249:
	.size	ecs_vector_count, .-ecs_vector_count
	.globl	ecs_vector_size
	.type	ecs_vector_size, @function
ecs_vector_size:
.LFB250:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2023
	movl	$0, %eax
	jmp	.L2024
.L2023:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
.L2024:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE250:
	.size	ecs_vector_size, .-ecs_vector_size
	.globl	_ecs_vector_set_size
	.type	_ecs_vector_set_size, @function
_ecs_vector_set_size:
.LFB251:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movl	%ecx, -36(%rbp)
	movw	%ax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2026
	movswl	-32(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	_ecs_vector_new
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-36(%rbp), %eax
	jmp	.L2027
.L2026:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9920, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L2028
	leaq	__PRETTY_FUNCTION__.10710(%rip), %rcx
	movl	$9920, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L2028:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L2029
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
.L2029:
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L2030
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	flecs_next_pow_of_2
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	movswl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	resize
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
.L2030:
	movl	-12(%rbp), %eax
.L2027:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE251:
	.size	_ecs_vector_set_size, .-_ecs_vector_set_size
	.globl	_ecs_vector_grow
	.type	_ecs_vector_grow, @function
_ecs_vector_grow:
.LFB252:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movl	%ecx, -36(%rbp)
	movw	%ax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	-36(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movswl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_size
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE252:
	.size	_ecs_vector_grow, .-_ecs_vector_grow
	.section	.rodata
	.align 8
.LC354:
	.string	"(*array_inout)->elem_size == elem_size"
	.text
	.globl	_ecs_vector_set_count
	.type	_ecs_vector_set_count, @function
_ecs_vector_set_count:
.LFB253:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movl	%ecx, -36(%rbp)
	movw	%ax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2034
	movswl	-32(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	_ecs_vector_new
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
.L2034:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9960, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC354(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L2035
	leaq	__PRETTY_FUNCTION__.10725(%rip), %rcx
	movl	$9960, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC354(%rip), %rdi
	call	__assert_fail@PLT
.L2035:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movswl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_size
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE253:
	.size	_ecs_vector_set_count, .-_ecs_vector_set_count
	.section	.rodata
	.align 8
.LC355:
	.string	"!vector || vector->elem_size == elem_size"
	.text
	.globl	_ecs_vector_first
	.type	_ecs_vector_first, @function
_ecs_vector_first:
.LFB254:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, %eax
	movw	%ax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2038
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jne	.L2039
.L2038:
	movl	$1, %eax
	jmp	.L2040
.L2039:
	movl	$0, %eax
.L2040:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9974, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC355(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	je	.L2041
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L2041
	leaq	__PRETTY_FUNCTION__.10732(%rip), %rcx
	movl	$9974, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC355(%rip), %rdi
	call	__assert_fail@PLT
.L2041:
	cmpq	$0, -8(%rbp)
	je	.L2042
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L2042
	movswq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L2043
.L2042:
	movl	$0, %eax
.L2043:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE254:
	.size	_ecs_vector_first, .-_ecs_vector_first
	.globl	_ecs_vector_get
	.type	_ecs_vector_get, @function
_ecs_vector_get:
.LFB255:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movl	%ecx, -36(%rbp)
	movw	%ax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2045
	movl	$0, %eax
	jmp	.L2046
.L2045:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9992, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L2047
	leaq	__PRETTY_FUNCTION__.10739(%rip), %rcx
	movl	$9992, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L2047:
	movl	-36(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$9993, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC300(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -36(%rbp)
	jns	.L2048
	leaq	__PRETTY_FUNCTION__.10739(%rip), %rcx
	movl	$9993, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC300(%rip), %rdi
	call	__assert_fail@PLT
.L2048:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L2049
	movl	$0, %eax
	jmp	.L2046
.L2049:
	movswl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	imull	-36(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
.L2046:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE255:
	.size	_ecs_vector_get, .-_ecs_vector_get
	.globl	_ecs_vector_last
	.type	_ecs_vector_last, @function
_ecs_vector_last:
.LFB256:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movw	%ax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2051
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10010, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L2052
	leaq	__PRETTY_FUNCTION__.10746(%rip), %rcx
	movl	$10010, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L2052:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L2053
	movl	$0, %eax
	jmp	.L2054
.L2053:
	movswl	-32(%rbp), %edx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	imull	-28(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L2054
.L2051:
	movl	$0, %eax
.L2054:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE256:
	.size	_ecs_vector_last, .-_ecs_vector_last
	.globl	_ecs_vector_set_min_size
	.type	_ecs_vector_set_min_size, @function
_ecs_vector_set_min_size:
.LFB257:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, %eax
	movl	%ecx, -20(%rbp)
	movw	%ax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2056
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L2057
.L2056:
	movswl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_size
	jmp	.L2058
.L2057:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
.L2058:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE257:
	.size	_ecs_vector_set_min_size, .-_ecs_vector_set_min_size
	.globl	_ecs_vector_set_min_count
	.type	_ecs_vector_set_min_count, @function
_ecs_vector_set_min_count:
.LFB258:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movl	%ecx, -36(%rbp)
	movw	%ax, -32(%rbp)
	movswl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_min_size
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2060
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L2060
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
.L2060:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE258:
	.size	_ecs_vector_set_min_count, .-_ecs_vector_set_min_count
	.globl	_ecs_vector_sort
	.type	_ecs_vector_sort, @function
_ecs_vector_sort:
.LFB259:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movw	%ax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2066
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10061, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L2065
	leaq	__PRETTY_FUNCTION__.10767(%rip), %rcx
	movl	$10061, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L2065:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movswq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpl	$1, -12(%rbp)
	jle	.L2062
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qsort@PLT
	jmp	.L2062
.L2066:
	nop
.L2062:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE259:
	.size	_ecs_vector_sort, .-_ecs_vector_sort
	.globl	_ecs_vector_memory
	.type	_ecs_vector_memory, @function
_ecs_vector_memory:
.LFB260:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, %eax
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movw	%ax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2072
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10082, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC348(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L2070
	leaq	__PRETTY_FUNCTION__.10777(%rip), %rcx
	movl	$10082, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC348(%rip), %rdi
	call	__assert_fail@PLT
.L2070:
	cmpq	$0, -24(%rbp)
	je	.L2071
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %ecx
	movswl	-16(%rbp), %eax
	addl	%ecx, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L2071:
	cmpq	$0, -32(%rbp)
	je	.L2067
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	imull	-12(%rbp), %eax
	addl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L2067
.L2072:
	nop
.L2067:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE260:
	.size	_ecs_vector_memory, .-_ecs_vector_memory
	.globl	_ecs_vector_copy
	.type	_ecs_vector_copy, @function
_ecs_vector_copy:
.LFB261:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movw	%ax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2074
	movl	$0, %eax
	jmp	.L2075
.L2074:
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movswl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	_ecs_vector_new
	movq	%rax, -8(%rbp)
	movswl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	imull	-28(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
.L2075:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE261:
	.size	_ecs_vector_copy, .-_ecs_vector_copy
	.section	.rodata
.LC356:
	.string	"chunks != NULL"
.LC357:
	.string	"chunks != ((void *)0)"
.LC358:
	.string	"result->sparse == NULL"
.LC359:
	.string	"result->sparse == ((void *)0)"
.LC360:
	.string	"result->data == NULL"
.LC361:
	.string	"result->data == ((void *)0)"
.LC362:
	.string	"result->sparse != NULL"
.LC363:
	.string	"result->sparse != ((void *)0)"
.LC364:
	.string	"result->data != NULL"
.LC365:
	.string	"result->data != ((void *)0)"
	.text
	.type	chunk_new, @function
chunk_new:
.LFB262:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.L2077
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_set_count
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	subl	-20(%rbp), %eax
	sall	$4, %eax
	cltq
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-16(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	jmp	.L2078
.L2077:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
.L2078:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10153, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC356(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L2079
	leaq	__PRETTY_FUNCTION__.10800(%rip), %rcx
	movl	$10153, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC357(%rip), %rdi
	call	__assert_fail@PLT
.L2079:
	movl	-44(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10156, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC358(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2080
	leaq	__PRETTY_FUNCTION__.10800(%rip), %rcx
	movl	$10156, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC359(%rip), %rdi
	call	__assert_fail@PLT
.L2080:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10157, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC360(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L2081
	leaq	__PRETTY_FUNCTION__.10800(%rip), %rcx
	movl	$10157, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC361(%rip), %rdi
	call	__assert_fail@PLT
.L2081:
	movq	32+ecs_os_api(%rip), %rax
	movl	$16384, %edi
	call	*%rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	32+ecs_os_api(%rip), %rax
	movq	-40(%rbp), %rdx
	movl	16(%rdx), %edx
	sall	$12, %edx
	movl	%edx, %edi
	call	*%rax
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10170, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC362(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2082
	leaq	__PRETTY_FUNCTION__.10800(%rip), %rcx
	movl	$10170, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC363(%rip), %rdi
	call	__assert_fail@PLT
.L2082:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10171, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC364(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L2083
	leaq	__PRETTY_FUNCTION__.10800(%rip), %rcx
	movl	$10171, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC365(%rip), %rdi
	call	__assert_fail@PLT
.L2083:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE262:
	.size	chunk_new, .-chunk_new
	.type	chunk_free, @function
chunk_free:
.LFB263:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE263:
	.size	chunk_free, .-chunk_free
	.section	.rodata
.LC366:
	.string	"chunk_index >= 0"
	.text
	.type	get_chunk, @function
get_chunk:
.LFB264:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10190, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC366(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -28(%rbp)
	jns	.L2087
	leaq	__PRETTY_FUNCTION__.10809(%rip), %rcx
	movl	$10190, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC366(%rip), %rdi
	call	__assert_fail@PLT
.L2087:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2088
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2088
	movl	$0, %eax
	jmp	.L2089
.L2088:
	movq	-8(%rbp), %rax
.L2089:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE264:
	.size	get_chunk, .-get_chunk
	.type	get_or_create_chunk, @function
get_or_create_chunk:
.LFB265:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_chunk
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2091
	movq	-8(%rbp), %rax
	jmp	.L2092
.L2091:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	chunk_new
.L2092:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE265:
	.size	get_or_create_chunk, .-get_or_create_chunk
	.type	grow_dense, @function
grow_dense:
.LFB266:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE266:
	.size	grow_dense, .-grow_dense
	.section	.rodata
	.align 8
.LC367:
	.string	"gen == (index & (0xFFFFFFFFull << 32))"
	.text
	.type	strip_generation, @function
strip_generation:
.LFB267:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movabsq	$281470681743360, %rax
	andq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$-4294967296, %rax
	andq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10226, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC367(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movabsq	$-4294967296, %rax
	andq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	je	.L2095
	leaq	__PRETTY_FUNCTION__.10824(%rip), %rcx
	movl	$10226, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC367(%rip), %rdi
	call	__assert_fail@PLT
.L2095:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE267:
	.size	strip_generation, .-strip_generation
	.type	assign_index, @function
assign_index:
.LFB268:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movslq	%edx, %rdx
	andl	$4095, %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE268:
	.size	assign_index, .-assign_index
	.type	inc_gen, @function
inc_gen:
.LFB269:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$-281470681743361, %rax
	andq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	shrq	$32, %rdx
	addq	$1, %rdx
	movq	%rdx, %rcx
	salq	$32, %rcx
	movabsq	$281470681743360, %rdx
	andq	%rcx, %rdx
	orq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE269:
	.size	inc_gen, .-inc_gen
	.type	inc_id, @function
inc_id:
.LFB270:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE270:
	.size	inc_id, .-inc_id
	.type	get_id, @function
get_id:
.LFB271:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE271:
	.size	get_id, .-get_id
	.type	set_id, @function
set_id:
.LFB272:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE272:
	.size	set_id, .-set_id
	.section	.rodata
	.align 8
.LC368:
	.string	"chunk->sparse[OFFSET(index)] == 0"
	.align 8
.LC369:
	.string	"chunk->sparse[((int32_t)index & 0xFFF)] == 0"
	.text
	.type	create_id, @function
create_id:
.LFB273:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	inc_id
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	grow_dense
	movq	-24(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_or_create_chunk
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movslq	%edx, %rdx
	andl	$4095, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10292, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC368(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movslq	%edx, %rdx
	andl	$4095, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2106
	leaq	__PRETTY_FUNCTION__.10850(%rip), %rcx
	movl	$10292, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC369(%rip), %rdi
	call	__assert_fail@PLT
.L2106:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movl	-44(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	assign_index
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE273:
	.size	create_id, .-create_id
	.section	.rodata
.LC370:
	.string	"count <= dense_count"
	.text
	.type	new_index, @function
new_index:
.LFB274:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, 20(%rdx)
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10309, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC370(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L2109
	leaq	__PRETTY_FUNCTION__.10858(%rip), %rcx
	movl	$10309, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC370(%rip), %rdi
	call	__assert_fail@PLT
.L2109:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.L2110
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L2111
.L2110:
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	create_id
.L2111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE274:
	.size	new_index, .-new_index
	.section	.rodata
	.align 8
.LC371:
	.string	"dense == chunk->sparse[offset]"
	.text
	.type	try_sparse_any, @function
try_sparse_any:
.LFB275:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strip_generation
	movq	-48(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_chunk
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2113
	movl	$0, %eax
	jmp	.L2114
.L2113:
	movq	-48(%rbp), %rax
	andl	$4095, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L2115
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L2115
	movl	$1, %eax
	jmp	.L2116
.L2115:
	movl	$0, %eax
.L2116:
	movb	%al, -17(%rbp)
	andb	$1, -17(%rbp)
	movzbl	-17(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2117
	movl	$0, %eax
	jmp	.L2114
.L2117:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10341, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC371(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	je	.L2118
	leaq	__PRETTY_FUNCTION__.10868(%rip), %rcx
	movl	$10341, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC371(%rip), %rdi
	call	__assert_fail@PLT
.L2118:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	imull	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
.L2114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE275:
	.size	try_sparse_any, .-try_sparse_any
	.type	try_sparse, @function
try_sparse:
.LFB276:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_chunk
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2120
	movl	$0, %eax
	jmp	.L2121
.L2120:
	movq	-64(%rbp), %rax
	andl	$4095, %eax
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L2122
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L2122
	movl	$1, %eax
	jmp	.L2123
.L2122:
	movl	$0, %eax
.L2123:
	movb	%al, -41(%rbp)
	andb	$1, -41(%rbp)
	movzbl	-41(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2124
	movl	$0, %eax
	jmp	.L2121
.L2124:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strip_generation
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movabsq	$281470681743360, %rdx
	andq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L2125
	movl	$0, %eax
	jmp	.L2121
.L2125:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10371, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC371(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	je	.L2126
	leaq	__PRETTY_FUNCTION__.10880(%rip), %rcx
	movl	$10371, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC371(%rip), %rdi
	call	__assert_fail@PLT
.L2126:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	imull	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
.L2121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE276:
	.size	try_sparse, .-try_sparse
	.section	.rodata
.LC372:
	.string	"chunk != NULL"
.LC373:
	.string	"chunk != ((void *)0)"
	.text
	.type	get_sparse, @function
get_sparse:
.LFB277:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strip_generation
	movq	-40(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_chunk
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	andl	$4095, %eax
	movl	%eax, -12(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10387, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC372(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2128
	leaq	__PRETTY_FUNCTION__.10888(%rip), %rcx
	movl	$10387, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC373(%rip), %rdi
	call	__assert_fail@PLT
.L2128:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10388, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC371(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L2129
	leaq	__PRETTY_FUNCTION__.10888(%rip), %rcx
	movl	$10388, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC371(%rip), %rdi
	call	__assert_fail@PLT
.L2129:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	imull	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE277:
	.size	get_sparse, .-get_sparse
	.section	.rodata
.LC374:
	.string	"a != b"
	.text
	.type	swap_dense, @function
swap_dense:
.LFB278:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10403, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC374(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jne	.L2132
	leaq	__PRETTY_FUNCTION__.10895(%rip), %rcx
	movl	$10403, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC374(%rip), %rdi
	call	__assert_fail@PLT
.L2132:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -32(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_or_create_chunk
	movq	%rax, -8(%rbp)
	movl	-56(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	assign_index
	movl	-52(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	assign_index
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE278:
	.size	swap_dense, .-swap_dense
	.globl	_flecs_sparse_new
	.type	_flecs_sparse_new, @function
_flecs_sparse_new:
.LFB279:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	32+ecs_os_api(%rip), %rax
	movl	$40, %edi
	call	*%rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10417, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC345(%rip), %rdx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L2134
	leaq	__PRETTY_FUNCTION__.10904(%rip), %rcx
	movl	$10417, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC346(%rip), %rdi
	call	__assert_fail@PLT
.L2134:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$1, 20(%rax)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE279:
	.size	_flecs_sparse_new, .-_flecs_sparse_new
	.section	.rodata
.LC375:
	.string	"sparse != NULL"
.LC376:
	.string	"sparse != ((void *)0)"
	.text
	.globl	flecs_sparse_set_id_source
	.type	flecs_sparse_set_id_source, @function
flecs_sparse_set_id_source:
.LFB280:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10436, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2137
	leaq	__PRETTY_FUNCTION__.10910(%rip), %rcx
	movl	$10436, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2137:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE280:
	.size	flecs_sparse_set_id_source, .-flecs_sparse_set_id_source
	.globl	flecs_sparse_clear
	.type	flecs_sparse_clear, @function
flecs_sparse_clear:
.LFB281:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10443, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L2139
	leaq	__PRETTY_FUNCTION__.10914(%rip), %rcx
	movl	$10443, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2139:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2140
.L2141:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	chunk_free
	addl	$1, -24(%rbp)
.L2140:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L2141
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_set_count
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 20(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE281:
	.size	flecs_sparse_clear, .-flecs_sparse_clear
	.globl	flecs_sparse_free
	.type	flecs_sparse_free, @function
flecs_sparse_free:
.LFB282:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2144
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_sparse_clear
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L2144:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE282:
	.size	flecs_sparse_free, .-flecs_sparse_free
	.globl	flecs_sparse_new_id
	.type	flecs_sparse_new_id, @function
flecs_sparse_new_id:
.LFB283:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10470, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2146
	leaq	__PRETTY_FUNCTION__.10928(%rip), %rcx
	movl	$10470, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2146:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	new_index
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE283:
	.size	flecs_sparse_new_id, .-flecs_sparse_new_id
	.globl	flecs_sparse_new_ids
	.type	flecs_sparse_new_ids, @function
flecs_sparse_new_ids:
.LFB284:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10478, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L2149
	leaq	__PRETTY_FUNCTION__.10933(%rip), %rcx
	movl	$10478, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2149:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-60(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L2150
	movl	-32(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_sparse_set_size
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2151
.L2152:
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	create_id
	movq	%rax, -8(%rbp)
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -36(%rbp)
.L2151:
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L2152
.L2150:
	movq	-56(%rbp), %rax
	movl	20(%rax), %edx
	movl	-60(%rbp), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE284:
	.size	flecs_sparse_new_ids, .-flecs_sparse_new_ids
	.section	.rodata
.LC377:
	.string	"!size || size == sparse->size"
	.text
	.globl	_flecs_sparse_add
	.type	_flecs_sparse_add, @function
_flecs_sparse_add:
.LFB285:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10503, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2155
	leaq	__PRETTY_FUNCTION__.10948(%rip), %rcx
	movl	$10503, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2155:
	cmpl	$0, -28(%rbp)
	je	.L2156
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L2157
.L2156:
	movl	$1, %eax
	jmp	.L2158
.L2157:
	movl	$0, %eax
.L2158:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10504, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC377(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -28(%rbp)
	je	.L2159
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L2159
	leaq	__PRETTY_FUNCTION__.10948(%rip), %rcx
	movl	$10504, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC377(%rip), %rdi
	call	__assert_fail@PLT
.L2159:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	new_index
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_chunk
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10507, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC372(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2160
	leaq	__PRETTY_FUNCTION__.10948(%rip), %rcx
	movl	$10507, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC373(%rip), %rdi
	call	__assert_fail@PLT
.L2160:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	andl	$4095, %eax
	imull	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE285:
	.size	_flecs_sparse_add, .-_flecs_sparse_add
	.globl	flecs_sparse_last_id
	.type	flecs_sparse_last_id, @function
flecs_sparse_last_id:
.LFB286:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10514, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2163
	leaq	__PRETTY_FUNCTION__.10954(%rip), %rcx
	movl	$10514, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2163:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE286:
	.size	flecs_sparse_last_id, .-flecs_sparse_last_id
	.section	.rodata
	.align 8
.LC378:
	.string	"ecs_vector_count(sparse->dense) > 0"
	.align 8
.LC379:
	.string	"!gen || dense_array[dense] == (index | gen)"
	.text
	.globl	_flecs_sparse_ensure
	.type	_flecs_sparse_ensure, @function
_flecs_sparse_ensure:
.LFB287:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	cmpq	$0, -104(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10524, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -104(%rbp)
	jne	.L2166
	leaq	__PRETTY_FUNCTION__.10961(%rip), %rcx
	movl	$10524, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2166:
	cmpl	$0, -108(%rbp)
	je	.L2167
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -108(%rbp)
	jne	.L2168
.L2167:
	movl	$1, %eax
	jmp	.L2169
.L2168:
	movl	$0, %eax
.L2169:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10525, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC377(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -108(%rbp)
	je	.L2170
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -108(%rbp)
	je	.L2170
	leaq	__PRETTY_FUNCTION__.10961(%rip), %rcx
	movl	$10525, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC377(%rip), %rdi
	call	__assert_fail@PLT
.L2170:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10526, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC378(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	testl	%eax, %eax
	jg	.L2171
	leaq	__PRETTY_FUNCTION__.10961(%rip), %rcx
	movl	$10526, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC378(%rip), %rdi
	call	__assert_fail@PLT
.L2171:
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	strip_generation
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_or_create_chunk
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	andl	$4095, %eax
	movl	%eax, -84(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.L2172
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jne	.L2173
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 20(%rax)
	jmp	.L2174
.L2173:
	movl	-80(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.L2174
	movl	-68(%rbp), %ecx
	movl	-80(%rbp), %edx
	movq	-56(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	swap_dense
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 20(%rax)
.L2174:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L2175
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-120(%rbp), %rax
	orq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L2176
.L2175:
	movl	$1, %eax
	jmp	.L2177
.L2176:
	movl	$0, %eax
.L2177:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10558, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC379(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	je	.L2178
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-120(%rbp), %rax
	orq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L2178
	leaq	__PRETTY_FUNCTION__.10961(%rip), %rcx
	movl	$10558, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC379(%rip), %rdi
	call	__assert_fail@PLT
.L2172:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	grow_dense
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	subl	$1, %eax
	movl	%eax, -76(%rbp)
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %ecx
	movq	-104(%rbp), %rdx
	movl	%ecx, 20(%rdx)
	movl	%eax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	get_id
	movq	-120(%rbp), %rdx
	cmpq	%rdx, %rax
	ja	.L2179
	movq	-120(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_id
.L2179:
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.L2180
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_or_create_chunk
	movq	%rax, -24(%rbp)
	movl	-76(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	assign_index
.L2180:
	movq	-120(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	assign_index
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	orq	-64(%rbp), %rax
	movq	%rax, (%rdx)
.L2178:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	imull	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE287:
	.size	_flecs_sparse_ensure, .-_flecs_sparse_ensure
	.globl	_flecs_sparse_set
	.type	_flecs_sparse_set, @function
_flecs_sparse_set:
.LFB288:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_ensure
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE288:
	.size	_flecs_sparse_set, .-_flecs_sparse_set
	.globl	_flecs_sparse_remove_get
	.type	_flecs_sparse_remove_get, @function
_flecs_sparse_remove_get:
.LFB289:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10606, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L2185
	leaq	__PRETTY_FUNCTION__.10987(%rip), %rcx
	movl	$10606, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2185:
	cmpl	$0, -60(%rbp)
	je	.L2186
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jne	.L2187
.L2186:
	movl	$1, %eax
	jmp	.L2188
.L2187:
	movl	$0, %eax
.L2188:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10607, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC377(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -60(%rbp)
	je	.L2189
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -60(%rbp)
	je	.L2189
	leaq	__PRETTY_FUNCTION__.10987(%rip), %rcx
	movl	$10607, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC377(%rip), %rdi
	call	__assert_fail@PLT
.L2189:
	movq	-72(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_or_create_chunk
	movq	%rax, -32(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strip_generation
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	andl	$4095, %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L2190
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movabsq	$281470681743360, %rdx
	andq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L2191
	movl	$0, %eax
	jmp	.L2192
.L2191:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	inc_gen
	movq	-72(%rbp), %rcx
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rsi
	movq	-16(%rbp), %rdx
	addq	%rsi, %rdx
	orq	%rcx, %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	jne	.L2193
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
	jmp	.L2194
.L2193:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L2195
	movl	-36(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	swap_dense
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
	jmp	.L2194
.L2195:
	movl	$0, %eax
	jmp	.L2192
.L2194:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	imull	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	jmp	.L2192
.L2190:
	movl	$0, %eax
.L2192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE289:
	.size	_flecs_sparse_remove_get, .-_flecs_sparse_remove_get
	.globl	flecs_sparse_remove
	.type	flecs_sparse_remove, @function
flecs_sparse_remove:
.LFB290:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_remove_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2198
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L2198:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE290:
	.size	flecs_sparse_remove, .-flecs_sparse_remove
	.globl	flecs_sparse_set_generation
	.type	flecs_sparse_set_generation, @function
flecs_sparse_set_generation:
.LFB291:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10662, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L2200
	leaq	__PRETTY_FUNCTION__.11004(%rip), %rcx
	movl	$10662, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2200:
	movq	-48(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_or_create_chunk
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strip_generation
	movq	-48(%rbp), %rax
	andl	$4095, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L2202
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
.L2202:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE291:
	.size	flecs_sparse_set_generation, .-flecs_sparse_set_generation
	.globl	flecs_sparse_exists
	.type	flecs_sparse_exists, @function
flecs_sparse_exists:
.LFB292:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10683, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2204
	leaq	__PRETTY_FUNCTION__.11014(%rip), %rcx
	movl	$10683, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2204:
	movq	-32(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_chunk
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2205
	movl	$0, %eax
	jmp	.L2206
.L2205:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strip_generation
	movq	-32(%rbp), %rax
	andl	$4095, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	setne	%al
.L2206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE292:
	.size	flecs_sparse_exists, .-flecs_sparse_exists
	.section	.rodata
.LC380:
	.string	"dense_index < sparse->count"
	.text
	.globl	_flecs_sparse_get_dense
	.type	_flecs_sparse_get_dense, @function
_flecs_sparse_get_dense:
.LFB293:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10701, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2208
	leaq	__PRETTY_FUNCTION__.11023(%rip), %rcx
	movl	$10701, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2208:
	cmpl	$0, -28(%rbp)
	je	.L2209
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L2210
.L2209:
	movl	$1, %eax
	jmp	.L2211
.L2210:
	movl	$0, %eax
.L2211:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10702, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC377(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -28(%rbp)
	je	.L2212
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L2212
	leaq	__PRETTY_FUNCTION__.11023(%rip), %rcx
	movl	$10702, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC377(%rip), %rdi
	call	__assert_fail@PLT
.L2212:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -32(%rbp)
	setl	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10703, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC380(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L2213
	leaq	__PRETTY_FUNCTION__.11023(%rip), %rcx
	movl	$10703, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC380(%rip), %rdi
	call	__assert_fail@PLT
.L2213:
	addl	$1, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_sparse
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE293:
	.size	_flecs_sparse_get_dense, .-_flecs_sparse_get_dense
	.globl	flecs_sparse_is_alive
	.type	flecs_sparse_is_alive, @function
flecs_sparse_is_alive:
.LFB294:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	try_sparse
	testq	%rax, %rax
	setne	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE294:
	.size	flecs_sparse_is_alive, .-flecs_sparse_is_alive
	.globl	flecs_sparse_get_alive
	.type	flecs_sparse_get_alive, @function
flecs_sparse_get_alive:
.LFB295:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	shrl	$12, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_chunk
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2218
	movl	$0, %eax
	jmp	.L2219
.L2218:
	movq	-48(%rbp), %rax
	andl	$4095, %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L2219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE295:
	.size	flecs_sparse_get_alive, .-flecs_sparse_get_alive
	.globl	_flecs_sparse_get
	.type	_flecs_sparse_get, @function
_flecs_sparse_get:
.LFB296:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10741, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2221
	leaq	__PRETTY_FUNCTION__.11042(%rip), %rcx
	movl	$10741, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2221:
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10742, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2222
	leaq	__PRETTY_FUNCTION__.11042(%rip), %rcx
	movl	$10742, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2222:
	cmpl	$0, -12(%rbp)
	je	.L2223
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L2224
.L2223:
	movl	$1, %eax
	jmp	.L2225
.L2224:
	movl	$0, %eax
.L2225:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10743, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC377(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -12(%rbp)
	je	.L2226
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -12(%rbp)
	je	.L2226
	leaq	__PRETTY_FUNCTION__.11042(%rip), %rcx
	movl	$10743, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC377(%rip), %rdi
	call	__assert_fail@PLT
.L2226:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	try_sparse
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE296:
	.size	_flecs_sparse_get, .-_flecs_sparse_get
	.globl	_flecs_sparse_get_any
	.type	_flecs_sparse_get_any, @function
_flecs_sparse_get_any:
.LFB297:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10753, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2229
	leaq	__PRETTY_FUNCTION__.11048(%rip), %rcx
	movl	$10753, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2229:
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10754, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2230
	leaq	__PRETTY_FUNCTION__.11048(%rip), %rcx
	movl	$10754, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2230:
	cmpl	$0, -12(%rbp)
	je	.L2231
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L2232
.L2231:
	movl	$1, %eax
	jmp	.L2233
.L2232:
	movl	$0, %eax
.L2233:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10755, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC377(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -12(%rbp)
	je	.L2234
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -12(%rbp)
	je	.L2234
	leaq	__PRETTY_FUNCTION__.11048(%rip), %rcx
	movl	$10755, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC377(%rip), %rdi
	call	__assert_fail@PLT
.L2234:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	try_sparse_any
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE297:
	.size	_flecs_sparse_get_any, .-_flecs_sparse_get_any
	.globl	flecs_sparse_count
	.type	flecs_sparse_count, @function
flecs_sparse_count:
.LFB298:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2237
	movl	$0, %eax
	jmp	.L2238
.L2237:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	subl	$1, %eax
.L2238:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE298:
	.size	flecs_sparse_count, .-flecs_sparse_count
	.globl	flecs_sparse_size
	.type	flecs_sparse_size, @function
flecs_sparse_size:
.LFB299:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2240
	movl	$0, %eax
	jmp	.L2241
.L2240:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	subl	$1, %eax
.L2241:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE299:
	.size	flecs_sparse_size, .-flecs_sparse_size
	.globl	flecs_sparse_ids
	.type	flecs_sparse_ids, @function
flecs_sparse_ids:
.LFB300:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10783, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2243
	leaq	__PRETTY_FUNCTION__.11058(%rip), %rcx
	movl	$10783, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2243:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	addq	$8, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE300:
	.size	flecs_sparse_ids, .-flecs_sparse_ids
	.globl	flecs_sparse_set_size
	.type	flecs_sparse_set_size, @function
flecs_sparse_set_size:
.LFB301:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10791, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC375(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2246
	leaq	__PRETTY_FUNCTION__.11063(%rip), %rcx
	movl	$10791, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC376(%rip), %rdi
	call	__assert_fail@PLT
.L2246:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_set_size
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE301:
	.size	flecs_sparse_set_size, .-flecs_sparse_set_size
	.section	.rodata
.LC381:
	.string	"src->count == dst->count"
	.text
	.type	sparse_copy, @function
sparse_copy:
.LFB302:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_sparse_size
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_sparse_set_size
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_sparse_ids
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-64(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L2248
.L2249:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_ensure
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_set_generation
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	addl	$1, -44(%rbp)
.L2248:
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -44(%rbp)
	jl	.L2249
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_id
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_id
	movq	-64(%rbp), %rax
	movl	20(%rax), %edx
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10816, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC381(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-64(%rbp), %rax
	movl	20(%rax), %edx
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, %edx
	je	.L2251
	leaq	__PRETTY_FUNCTION__.11078(%rip), %rcx
	movl	$10816, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC381(%rip), %rdi
	call	__assert_fail@PLT
.L2251:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE302:
	.size	sparse_copy, .-sparse_copy
	.globl	flecs_sparse_copy
	.type	flecs_sparse_copy, @function
flecs_sparse_copy:
.LFB303:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2253
	movl	$0, %eax
	jmp	.L2254
.L2253:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edi
	call	_flecs_sparse_new
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sparse_copy
	movq	-8(%rbp), %rax
.L2254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE303:
	.size	flecs_sparse_copy, .-flecs_sparse_copy
	.globl	flecs_sparse_restore
	.type	flecs_sparse_restore, @function
flecs_sparse_restore:
.LFB304:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$10836, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC147(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2256
	leaq	__PRETTY_FUNCTION__.11087(%rip), %rcx
	movl	$10836, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC148(%rip), %rdi
	call	__assert_fail@PLT
.L2256:
	movq	-8(%rbp), %rax
	movl	$1, 20(%rax)
	cmpq	$0, -16(%rbp)
	je	.L2258
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sparse_copy
.L2258:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE304:
	.size	flecs_sparse_restore, .-flecs_sparse_restore
	.globl	flecs_sparse_memory
	.type	flecs_sparse_memory, @function
flecs_sparse_memory:
.LFB305:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE305:
	.size	flecs_sparse_memory, .-flecs_sparse_memory
	.globl	_ecs_sparse_new
	.type	_ecs_sparse_new, @function
_ecs_sparse_new:
.LFB306:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	_flecs_sparse_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE306:
	.size	_ecs_sparse_new, .-_ecs_sparse_new
	.globl	_ecs_sparse_add
	.type	_ecs_sparse_add, @function
_ecs_sparse_add:
.LFB307:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_add
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE307:
	.size	_ecs_sparse_add, .-_ecs_sparse_add
	.globl	ecs_sparse_last_id
	.type	ecs_sparse_last_id, @function
ecs_sparse_last_id:
.LFB308:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_sparse_last_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE308:
	.size	ecs_sparse_last_id, .-ecs_sparse_last_id
	.globl	ecs_sparse_count
	.type	ecs_sparse_count, @function
ecs_sparse_count:
.LFB309:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE309:
	.size	ecs_sparse_count, .-ecs_sparse_count
	.globl	_ecs_sparse_get_dense
	.type	_ecs_sparse_get_dense, @function
_ecs_sparse_get_dense:
.LFB310:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE310:
	.size	_ecs_sparse_get_dense, .-_ecs_sparse_get_dense
	.globl	_ecs_sparse_get
	.type	_ecs_sparse_get, @function
_ecs_sparse_get:
.LFB311:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE311:
	.size	_ecs_sparse_get, .-_ecs_sparse_get
	.globl	ecs_count_w_filter
	.type	ecs_count_w_filter, @function
ecs_count_w_filter:
.LFB312:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_count_filter
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE312:
	.size	ecs_count_w_filter, .-ecs_count_w_filter
	.globl	ecs_count_entity
	.type	ecs_count_entity, @function
ecs_count_entity:
.LFB313:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_count_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE313:
	.size	ecs_count_entity, .-ecs_count_entity
	.globl	ecs_set_component_actions_w_entity
	.type	ecs_set_component_actions_w_entity, @function
ecs_set_component_actions_w_entity:
.LFB314:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_set_component_actions_w_id
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE314:
	.size	ecs_set_component_actions_w_entity, .-ecs_set_component_actions_w_entity
	.globl	ecs_new_w_entity
	.type	ecs_new_w_entity, @function
ecs_new_w_entity:
.LFB315:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_new_w_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE315:
	.size	ecs_new_w_entity, .-ecs_new_w_entity
	.globl	ecs_bulk_new_w_entity
	.type	ecs_bulk_new_w_entity, @function
ecs_bulk_new_w_entity:
.LFB316:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_bulk_new_w_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE316:
	.size	ecs_bulk_new_w_entity, .-ecs_bulk_new_w_entity
	.globl	ecs_enable_component_w_entity
	.type	ecs_enable_component_w_entity, @function
ecs_enable_component_w_entity:
.LFB317:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, %eax
	movb	%al, -28(%rbp)
	movzbl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_enable_component_w_id
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE317:
	.size	ecs_enable_component_w_entity, .-ecs_enable_component_w_entity
	.globl	ecs_is_component_enabled_w_entity
	.type	ecs_is_component_enabled_w_entity, @function
ecs_is_component_enabled_w_entity:
.LFB318:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_is_component_enabled_w_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE318:
	.size	ecs_is_component_enabled_w_entity, .-ecs_is_component_enabled_w_entity
	.globl	ecs_get_w_id
	.type	ecs_get_w_id, @function
ecs_get_w_id:
.LFB319:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE319:
	.size	ecs_get_w_id, .-ecs_get_w_id
	.globl	ecs_get_w_entity
	.type	ecs_get_w_entity, @function
ecs_get_w_entity:
.LFB320:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ecs_get_w_entity, .-ecs_get_w_entity
	.globl	ecs_get_ref_w_entity
	.type	ecs_get_ref_w_entity, @function
ecs_get_ref_w_entity:
.LFB321:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_ref_w_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	ecs_get_ref_w_entity, .-ecs_get_ref_w_entity
	.globl	ecs_get_mut_w_entity
	.type	ecs_get_mut_w_entity, @function
ecs_get_mut_w_entity:
.LFB322:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_mut_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	ecs_get_mut_w_entity, .-ecs_get_mut_w_entity
	.globl	ecs_get_mut_w_id
	.type	ecs_get_mut_w_id, @function
ecs_get_mut_w_id:
.LFB323:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_mut_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	ecs_get_mut_w_id, .-ecs_get_mut_w_id
	.globl	ecs_modified_w_entity
	.type	ecs_modified_w_entity, @function
ecs_modified_w_entity:
.LFB324:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_modified_id
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	ecs_modified_w_entity, .-ecs_modified_w_entity
	.globl	ecs_modified_w_id
	.type	ecs_modified_w_id, @function
ecs_modified_w_id:
.LFB325:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_modified_id
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	ecs_modified_w_id, .-ecs_modified_w_id
	.globl	ecs_set_ptr_w_entity
	.type	ecs_set_ptr_w_entity, @function
ecs_set_ptr_w_entity:
.LFB326:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ecs_set_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	ecs_set_ptr_w_entity, .-ecs_set_ptr_w_entity
	.globl	ecs_has_entity
	.type	ecs_has_entity, @function
ecs_has_entity:
.LFB327:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE327:
	.size	ecs_has_entity, .-ecs_has_entity
	.globl	ecs_entity_str
	.type	ecs_entity_str, @function
ecs_entity_str:
.LFB328:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_id_str
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE328:
	.size	ecs_entity_str, .-ecs_entity_str
	.globl	ecs_get_parent_w_entity
	.type	ecs_get_parent_w_entity, @function
ecs_get_parent_w_entity:
.LFB329:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$276, %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ecs_get_object
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE329:
	.size	ecs_get_parent_w_entity, .-ecs_get_parent_w_entity
	.globl	ecs_get_thread_index
	.type	ecs_get_thread_index, @function
ecs_get_thread_index:
.LFB330:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_stage_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE330:
	.size	ecs_get_thread_index, .-ecs_get_thread_index
	.globl	ecs_add_entity
	.type	ecs_add_entity, @function
ecs_add_entity:
.LFB331:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE331:
	.size	ecs_add_entity, .-ecs_add_entity
	.globl	ecs_remove_entity
	.type	ecs_remove_entity, @function
ecs_remove_entity:
.LFB332:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_remove_id
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE332:
	.size	ecs_remove_entity, .-ecs_remove_entity
	.globl	ecs_dim_type
	.type	ecs_dim_type, @function
ecs_dim_type:
.LFB333:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11073, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2309
	leaq	__PRETTY_FUNCTION__.11228(%rip), %rcx
	movl	$11073, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2309:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11074, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L2310
	leaq	__PRETTY_FUNCTION__.11228(%rip), %rcx
	movl	$11074, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L2310:
	cmpq	$0, -32(%rbp)
	je	.L2313
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_table_from_type
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11077, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L2312
	leaq	__PRETTY_FUNCTION__.11228(%rip), %rcx
	movl	$11077, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L2312:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_or_create_data
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_set_size
.L2313:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE333:
	.size	ecs_dim_type, .-ecs_dim_type
	.globl	ecs_type_from_entity
	.type	ecs_type_from_entity, @function
ecs_type_from_entity:
.LFB334:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_type_from_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE334:
	.size	ecs_type_from_entity, .-ecs_type_from_entity
	.globl	ecs_type_to_entity
	.type	ecs_type_to_entity, @function
ecs_type_to_entity:
.LFB335:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_type_to_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE335:
	.size	ecs_type_to_entity, .-ecs_type_to_entity
	.globl	ecs_type_has_entity
	.type	ecs_type_has_entity, @function
ecs_type_has_entity:
.LFB336:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ecs_type_has_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE336:
	.size	ecs_type_has_entity, .-ecs_type_has_entity
	.globl	ecs_type_owns_entity
	.type	ecs_type_owns_entity, @function
ecs_type_owns_entity:
.LFB337:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, %eax
	movb	%al, -28(%rbp)
	movzbl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_type_has_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE337:
	.size	ecs_type_owns_entity, .-ecs_type_owns_entity
	.section	.rodata
.LC382:
	.string	"index <= it->column_count"
.LC383:
	.string	"index > 0"
.LC384:
	.string	"it->types != NULL"
.LC385:
	.string	"it->types != ((void *)0)"
	.text
	.globl	ecs_column_type
	.type	ecs_column_type, @function
ecs_column_type:
.LFB338:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -12(%rbp)
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11119, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC382(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L2323
	leaq	__PRETTY_FUNCTION__.11254(%rip), %rcx
	movl	$11119, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC382(%rip), %rdi
	call	__assert_fail@PLT
.L2323:
	cmpl	$0, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11120, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC383(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -12(%rbp)
	jg	.L2324
	leaq	__PRETTY_FUNCTION__.11254(%rip), %rcx
	movl	$11120, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC383(%rip), %rdi
	call	__assert_fail@PLT
.L2324:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11121, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC384(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L2325
	leaq	__PRETTY_FUNCTION__.11254(%rip), %rcx
	movl	$11121, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC385(%rip), %rdi
	call	__assert_fail@PLT
.L2325:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE338:
	.size	ecs_column_type, .-ecs_column_type
	.globl	ecs_column_index_from_name
	.type	ecs_column_index_from_name, @function
ecs_column_index_from_name:
.LFB339:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L2328
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2329
.L2332:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L2330
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2330
	movl	-24(%rbp), %eax
	addl	$1, %eax
	jmp	.L2331
.L2330:
	addl	$1, -24(%rbp)
.L2329:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L2332
.L2328:
	movl	$0, %eax
.L2331:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE339:
	.size	ecs_column_index_from_name, .-ecs_column_index_from_name
	.globl	ecs_column_w_size
	.type	ecs_column_w_size, @function
ecs_column_w_size:
.LFB340:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_term_w_size
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE340:
	.size	ecs_column_w_size, .-ecs_column_w_size
	.globl	ecs_is_owned
	.type	ecs_is_owned, @function
ecs_is_owned:
.LFB341:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_term_is_owned
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE341:
	.size	ecs_is_owned, .-ecs_is_owned
	.globl	ecs_is_readonly
	.type	ecs_is_readonly, @function
ecs_is_readonly:
.LFB342:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_term_is_readonly
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE342:
	.size	ecs_is_readonly, .-ecs_is_readonly
	.globl	ecs_column_source
	.type	ecs_column_source, @function
ecs_column_source:
.LFB343:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_term_source
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE343:
	.size	ecs_column_source, .-ecs_column_source
	.globl	ecs_column_entity
	.type	ecs_column_entity, @function
ecs_column_entity:
.LFB344:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_term_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE344:
	.size	ecs_column_entity, .-ecs_column_entity
	.globl	ecs_column_size
	.type	ecs_column_size, @function
ecs_column_size:
.LFB345:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_term_size
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE345:
	.size	ecs_column_size, .-ecs_column_size
	.globl	ecs_table_component_index
	.type	ecs_table_component_index, @function
ecs_table_component_index:
.LFB346:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_iter_find_column
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE346:
	.size	ecs_table_component_index, .-ecs_table_component_index
	.globl	ecs_table_column
	.type	ecs_table_column, @function
ecs_table_column:
.LFB347:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_iter_column_w_size
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	ecs_table_column, .-ecs_table_column
	.globl	ecs_table_column_size
	.type	ecs_table_column_size, @function
ecs_table_column_size:
.LFB348:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_iter_column_size
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE348:
	.size	ecs_table_column_size, .-ecs_table_column_size
	.globl	ecs_query_new
	.type	ecs_query_new, @function
ecs_query_new:
.LFB349:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3200, %rsp
	movq	%rdi, -3192(%rbp)
	movq	%rsi, -3200(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-3184(%rbp), %rdx
	movl	$0, %eax
	movl	$396, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-3200(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-3184(%rbp), %rdx
	movq	-3192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_query_init
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2353
	call	__stack_chk_fail@PLT
.L2353:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE349:
	.size	ecs_query_new, .-ecs_query_new
	.globl	ecs_query_free
	.type	ecs_query_free, @function
ecs_query_free:
.LFB350:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_query_fini
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE350:
	.size	ecs_query_free, .-ecs_query_free
	.globl	ecs_subquery_new
	.type	ecs_subquery_new, @function
ecs_subquery_new:
.LFB351:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3216, %rsp
	movq	%rdi, -3192(%rbp)
	movq	%rsi, -3200(%rbp)
	movq	%rdx, -3208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-3184(%rbp), %rdx
	movl	$0, %eax
	movl	$396, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-3208(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-3200(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-3184(%rbp), %rdx
	movq	-3192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_query_init
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2357
	call	__stack_chk_fail@PLT
.L2357:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE351:
	.size	ecs_subquery_new, .-ecs_subquery_new
	.section	.rodata
.LC386:
	.string	"e != 0"
	.text
	.type	ensure_entity, @function
ensure_entity:
.LFB352:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	leaq	.LC264(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_lookup_path_w_sep
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2359
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	leaq	.LC264(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_new_from_path_w_sep
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11251, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC386(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2359
	leaq	__PRETTY_FUNCTION__.11322(%rip), %rcx
	movl	$11251, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC386(%rip), %rdi
	call	__assert_fail@PLT
.L2359:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE352:
	.size	ensure_entity, .-ensure_entity
	.section	.rodata
	.align 8
.LC387:
	.string	"missing predicate in expression"
.LC388:
	.string	"missing subject in expression"
	.text
	.type	create_term, @function
create_term:
.LFB353:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ecs_term_id_is_set
	xorl	$1, %eax
	testb	%al, %al
	je	.L2362
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	.LC387(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2362:
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	ecs_term_id_is_set
	xorl	$1, %eax
	testb	%al, %al
	je	.L2363
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	.LC388(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2363:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ensure_entity
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ensure_entity
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rdi
	call	ecs_term_id_is_set
	testb	%al, %al
	je	.L2364
	movq	-48(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ensure_entity
	movq	%rax, -24(%rbp)
.L2364:
	cmpq	$0, -24(%rbp)
	jne	.L2365
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
	jmp	.L2366
.L2365:
	movq	-16(%rbp), %rax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	%eax, %eax
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
.L2366:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE353:
	.size	create_term, .-create_term
	.globl	ecs_plecs_from_str
	.type	ecs_plecs_from_str, @function
ecs_plecs_from_str:
.LFB354:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-248(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-208(%rbp), %rdx
	movl	$0, %eax
	movl	$24, %ecx
	movq	%rdx, %rdi
	rep stosq
	cmpq	$0, -248(%rbp)
	jne	.L2371
	movl	$0, %eax
	jmp	.L2376
.L2375:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_is_initialized
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2378
	movq	-216(%rbp), %rax
	subq	-248(%rbp), %rax
	movl	%eax, %edi
	movq	-248(%rbp), %rcx
	movq	-240(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	create_term
	testl	%eax, %eax
	je	.L2374
	movl	$-1, %eax
	jmp	.L2376
.L2374:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_fini
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L2371
	addq	$1, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -248(%rbp)
.L2371:
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2373
	leaq	-208(%rbp), %rdi
	movq	-216(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ecs_parse_term
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.L2375
	jmp	.L2373
.L2378:
	nop
.L2373:
	movl	$0, %eax
.L2376:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2377
	call	__stack_chk_fail@PLT
.L2377:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE354:
	.size	ecs_plecs_from_str, .-ecs_plecs_from_str
	.section	.rodata
.LC389:
	.string	"r"
	.align 8
.LC390:
	.string	"%s: read zero bytes instead of %d"
	.text
	.globl	ecs_plecs_from_file
	.type	ecs_plecs_from_file, @function
ecs_plecs_from_file:
.LFB355:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC389(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L2380
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ecs_os_strerror
	movq	-64(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rcx
	leaq	.LC36(%rip), %rdx
	movl	$11336, %esi
	leaq	.LC74(%rip), %rdi
	movl	$0, %eax
	call	_ecs_err
	jmp	.L2381
.L2380:
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movl	%eax, -40(%rbp)
	cmpl	$-1, -40(%rbp)
	je	.L2387
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movq	16+ecs_os_api(%rip), %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edi
	call	*%rax
	movq	%rax, -24(%rbp)
	movl	-40(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2383
	cmpl	$0, -40(%rbp)
	je	.L2383
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	leaq	.LC390(%rip), %rdx
	movl	$11352, %esi
	leaq	.LC74(%rip), %rdi
	movl	$0, %eax
	call	_ecs_err
	movq	40+ecs_os_api(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	$0, -24(%rbp)
	jmp	.L2381
.L2383:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_plecs_from_str
	movl	%eax, -36(%rbp)
	movq	40+ecs_os_api(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	-36(%rbp), %eax
	jmp	.L2385
.L2387:
	nop
.L2381:
	movq	40+ecs_os_api(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	$-1, %eax
.L2385:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2386
	call	__stack_chk_fail@PLT
.L2386:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE355:
	.size	ecs_plecs_from_file, .-ecs_plecs_from_file
	.globl	ecs_module_path_from_c
	.type	ecs_module_path_from_c, @function
ecs_module_path_from_c:
.LFB356:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1136, %rsp
	movq	%rdi, -1128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-1104(%rbp), %rdx
	movl	$0, %eax
	movl	$136, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-1128(%rbp), %rax
	movq	%rax, -1112(%rbp)
	jmp	.L2389
.L2391:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-1113(%rbp), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L2390
	movzbl	-1113(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	cltq
	movq	%rax, %rdi
	call	flflecs_to_i8
	movb	%al, -1113(%rbp)
	movq	-1112(%rbp), %rax
	cmpq	-1128(%rbp), %rax
	je	.L2390
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC264(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstrn
.L2390:
	leaq	-1113(%rbp), %rcx
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_strbuf_appendstrn
	addq	$1, -1112(%rbp)
.L2389:
	movq	-1112(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1113(%rbp)
	movzbl	-1113(%rbp), %eax
	testb	%al, %al
	jne	.L2391
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_strbuf_get
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2393
	call	__stack_chk_fail@PLT
.L2393:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE356:
	.size	ecs_module_path_from_c, .-ecs_module_path_from_c
	.section	.rodata
.LC391:
	.string	"import %s"
	.text
	.globl	ecs_import
	.type	ecs_import, @function
ecs_import:
.LFB357:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movzbl	681(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11403, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC217(%rip), %rdx
	movl	$70, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-56(%rbp), %rax
	movzbl	681(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2395
	leaq	__PRETTY_FUNCTION__.11370(%rip), %rcx
	movl	$11403, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC217(%rip), %rdi
	call	__assert_fail@PLT
.L2395:
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_set_scope
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_module_path_from_c
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	leaq	.LC264(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_lookup_path_w_sep
	movq	%rax, -40(%rbp)
	movq	40+ecs_os_api(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	cmpq	$0, -40(%rbp)
	jne	.L2396
	movq	-72(%rbp), %rax
	movq	%rax, %r8
	leaq	.LC391(%rip), %rcx
	movl	$11413, %edx
	leaq	.LC74(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	_ecs_trace
	call	ecs_log_push
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	leaq	.LC264(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_lookup_path_w_sep
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	movq	%rdx, %r9
	movl	$11421, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC386(%rip), %rdx
	movl	$28, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L2397
	leaq	__PRETTY_FUNCTION__.11370(%rip), %rcx
	movl	$11421, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC386(%rip), %rdi
	call	__assert_fail@PLT
.L2397:
	call	ecs_log_pop
.L2396:
	cmpq	$0, -88(%rbp)
	je	.L2398
	cmpq	$0, -80(%rbp)
	je	.L2398
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ecs_get_mut_id
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L2398:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_set_scope
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 464(%rax)
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE357:
	.size	ecs_import, .-ecs_import
	.section	.rodata
.LC392:
	.string	"library_name != NULL"
.LC393:
	.string	"library_name != ((void *)0)"
	.align 8
.LC394:
	.string	"library loading not supported, set module_to_dl, dlopen, dlclose and dlproc os API callbacks first"
.LC395:
	.string	"import_func != NULL"
.LC396:
	.string	"import_func != ((void *)0)"
.LC397:
	.string	"module != NULL"
.LC398:
	.string	"module != ((void *)0)"
	.align 8
.LC399:
	.string	"failed to find library file for '%s'"
	.align 8
.LC400:
	.string	"found file '%s' for library '%s'"
	.align 8
.LC401:
	.string	"failed to load library '%s' ('%s')"
.LC402:
	.string	"library '%s' ('%s') loaded"
	.align 8
.LC403:
	.string	"failed to load import function %s from library %s"
	.align 8
.LC404:
	.string	"found import function '%s' in library '%s' for module '%s'"
	.text
	.globl	ecs_import_from_library
	.type	ecs_import_from_library, @function
ecs_import_from_library:
.LFB358:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	cmpq	$0, -112(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11444, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC392(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -112(%rbp)
	jne	.L2401
	leaq	__PRETTY_FUNCTION__.11381(%rip), %rcx
	movl	$11444, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC393(%rip), %rdi
	call	__assert_fail@PLT
.L2401:
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	call	ecs_os_has_modules
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2402
	call	ecs_os_has_dl
	xorl	$1, %eax
	testb	%al, %al
	je	.L2403
.L2402:
	leaq	.LC394(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	movl	$0, %eax
	jmp	.L2404
.L2403:
	cmpq	$0, -80(%rbp)
	jne	.L2405
	movq	16+ecs_os_api(%rip), %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$7, %eax
	movl	%eax, %edi
	call	*%rbx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11460, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC395(%rip), %rdx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -80(%rbp)
	jne	.L2406
	leaq	__PRETTY_FUNCTION__.11381(%rip), %rcx
	movl	$11460, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC396(%rip), %rdi
	call	__assert_fail@PLT
.L2406:
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	movb	$1, -82(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L2407
.L2411:
	cmpb	$46, -81(%rbp)
	jne	.L2408
	movb	$1, -82(%rbp)
	jmp	.L2409
.L2408:
	cmpb	$0, -82(%rbp)
	je	.L2410
	movsbl	-81(%rbp), %eax
	movl	%eax, %edi
	call	toupper@PLT
	cltq
	movq	%rax, %rdi
	call	flflecs_to_i8
	movq	-56(%rbp), %rdx
	movb	%al, (%rdx)
	addq	$1, -56(%rbp)
	movb	$0, -82(%rbp)
	jmp	.L2409
.L2410:
	movsbl	-81(%rbp), %eax
	movl	%eax, %edi
	call	tolower@PLT
	cltq
	movq	%rax, %rdi
	call	flflecs_to_i8
	movq	-56(%rbp), %rdx
	movb	%al, (%rdx)
	addq	$1, -56(%rbp)
.L2409:
	addq	$1, -64(%rbp)
.L2407:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -81(%rbp)
	cmpb	$0, -81(%rbp)
	jne	.L2411
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movq	48+ecs_os_api(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11483, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC397(%rip), %rdx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L2412
	leaq	__PRETTY_FUNCTION__.11381(%rip), %rcx
	movl	$11483, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC398(%rip), %rdi
	call	__assert_fail@PLT
.L2412:
	movq	-56(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$1869638985, (%rax)
	movw	$29810, 4(%rax)
	movb	$0, 6(%rax)
.L2405:
	movq	240+ecs_os_api(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L2413
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC399(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	movq	-72(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.L2414
	movq	40+ecs_os_api(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L2414:
	movl	$0, %eax
	jmp	.L2404
.L2413:
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movq	%rax, %r8
	leaq	.LC400(%rip), %rcx
	movl	$11496, %edx
	leaq	.LC74(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	_ecs_trace
	movq	216+ecs_os_api(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L2415
	movq	-48(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC401(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	movq	40+ecs_os_api(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-72(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.L2416
	movq	40+ecs_os_api(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L2416:
	movl	$0, %eax
	jmp	.L2404
.L2415:
	movq	-48(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %r9
	movq	%rax, %r8
	leaq	.LC402(%rip), %rcx
	movl	$11513, %edx
	leaq	.LC74(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	_ecs_trace
	movq	224+ecs_os_api(%rip), %rcx
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2417
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC403(%rip), %rdi
	movl	$0, %eax
	call	ecs_os_err
	movq	40+ecs_os_api(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	232+ecs_os_api(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	$0, %eax
	jmp	.L2404
.L2417:
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rdx, %r9
	movq	%rax, %r8
	leaq	.LC404(%rip), %rcx
	movl	$11526, %edx
	leaq	.LC74(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	_ecs_trace
	addq	$16, %rsp
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ecs_import
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.L2418
	movq	40+ecs_os_api(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L2418:
	movq	-72(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.L2419
	movq	40+ecs_os_api(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L2419:
	movq	40+ecs_os_api(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-24(%rbp), %rax
.L2404:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	ecs_import_from_library, .-ecs_import_from_library
	.section	.rodata
.LC405:
	.string	"module != 0"
.LC406:
	.string	"pair != NULL"
.LC407:
	.string	"pair != ((void *)0)"
	.text
	.globl	ecs_add_module_tag
	.type	ecs_add_module_tag, @function
ecs_add_module_tag:
.LFB359:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11550, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L2421
	leaq	__PRETTY_FUNCTION__.11399(%rip), %rcx
	movl	$11550, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2421:
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11551, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC405(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -48(%rbp)
	jne	.L2422
	leaq	__PRETTY_FUNCTION__.11399(%rip), %rcx
	movl	$11551, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC405(%rip), %rdi
	call	__assert_fail@PLT
.L2422:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
.L2426:
	movl	$259, %edx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_add_id
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_type
	movq	%rax, -16(%rbp)
	movl	$276, %eax
	salq	$32, %rax
	movl	$266, %edx
	movl	%edx, %edx
	addq	%rax, %rdx
	movabsq	$-432345564227567616, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_type_index_of
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	je	.L2428
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11564, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC406(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2425
	leaq	__PRETTY_FUNCTION__.11399(%rip), %rcx
	movl	$11564, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC407(%rip), %rdi
	call	__assert_fail@PLT
.L2425:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_alive
	movq	%rax, -24(%rbp)
	jmp	.L2426
.L2428:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	ecs_add_module_tag, .-ecs_add_module_tag
	.section	.rodata
.LC408:
	.string	"result == e"
	.text
	.globl	ecs_module_init
	.type	ecs_module_init, @function
ecs_module_init:
.LFB360:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$656, %rsp
	movq	%rdi, -648(%rbp)
	movq	%rsi, -656(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -648(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11573, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -648(%rbp)
	jne	.L2430
	leaq	__PRETTY_FUNCTION__.11409(%rip), %rcx
	movl	$11573, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2430:
	cmpq	$0, -656(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11574, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC262(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -656(%rbp)
	jne	.L2431
	leaq	__PRETTY_FUNCTION__.11409(%rip), %rcx
	movl	$11574, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC263(%rip), %rdi
	call	__assert_fail@PLT
.L2431:
	movq	-648(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11575, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-648(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L2432
	leaq	__PRETTY_FUNCTION__.11409(%rip), %rcx
	movl	$11575, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L2432:
	movq	-656(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_module_path_from_c
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rdx
	movq	-648(%rbp), %rax
	movl	$0, %r8d
	leaq	.LC264(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_new_from_path_w_sep
	movq	%rax, -624(%rbp)
	movq	-632(%rbp), %rdx
	movq	-624(%rbp), %rcx
	movq	-648(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_set_symbol
	movq	40+ecs_os_api(%rip), %rdx
	movq	-632(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-656(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movl	$74, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	movq	-624(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	$0, -600(%rbp)
	leaq	-608(%rbp), %rdx
	movq	-648(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_component_init
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11589, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC270(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -616(%rbp)
	jne	.L2433
	leaq	__PRETTY_FUNCTION__.11409(%rip), %rcx
	movl	$11589, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC270(%rip), %rdi
	call	__assert_fail@PLT
.L2433:
	movq	-616(%rbp), %rax
	cmpq	-624(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11590, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC408(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-616(%rbp), %rax
	cmpq	-624(%rbp), %rax
	je	.L2434
	leaq	__PRETTY_FUNCTION__.11409(%rip), %rcx
	movl	$11590, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC408(%rip), %rdi
	call	__assert_fail@PLT
.L2434:
	movq	-616(%rbp), %rdx
	movq	-648(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_add_module_tag
	movq	-656(%rbp), %rax
	movq	576(%rax), %rcx
	movq	-616(%rbp), %rdx
	movq	-616(%rbp), %rsi
	movq	-648(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ecs_set_id
	movq	-616(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2436
	call	__stack_chk_fail@PLT
.L2436:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	ecs_module_init, .-ecs_module_init
	.globl	_ecs_queue_new
	.type	_ecs_queue_new, @function
_ecs_queue_new:
.LFB361:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, %eax
	movl	%edx, -28(%rbp)
	movw	%ax, -24(%rbp)
	movq	16+ecs_os_api(%rip), %rax
	movl	$16, %edi
	call	*%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11617, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC345(%rip), %rdx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2438
	leaq	__PRETTY_FUNCTION__.11423(%rip), %rcx
	movl	$11617, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC346(%rip), %rdi
	call	__assert_fail@PLT
.L2438:
	movswl	-24(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	_ecs_vector_new
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	_ecs_queue_new, .-_ecs_queue_new
	.globl	_ecs_queue_from_array
	.type	_ecs_queue_from_array, @function
_ecs_queue_from_array:
.LFB362:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, %eax
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movw	%ax, -24(%rbp)
	movq	16+ecs_os_api(%rip), %rax
	movl	$16, %edi
	call	*%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11631, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC345(%rip), %rdx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2441
	leaq	__PRETTY_FUNCTION__.11431(%rip), %rcx
	movl	$11631, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC346(%rip), %rdi
	call	__assert_fail@PLT
.L2441:
	movswl	-24(%rbp), %esi
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	_ecs_vector_from_array
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	_ecs_queue_from_array, .-_ecs_queue_from_array
	.globl	_ecs_queue_push
	.type	_ecs_queue_push, @function
_ecs_queue_push:
.LFB363:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movw	%ax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	movl	%eax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L2444
	movswl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -8(%rbp)
	jmp	.L2445
.L2444:
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movswl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -8(%rbp)
.L2445:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	addl	$1, %eax
	cltd
	idivl	-16(%rbp)
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	_ecs_queue_push, .-_ecs_queue_push
	.globl	ecs_queue_free
	.type	ecs_queue_free, @function
ecs_queue_free:
.LFB364:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	ecs_queue_free, .-ecs_queue_free
	.globl	_ecs_queue_get
	.type	_ecs_queue_get, @function
_ecs_queue_get:
.LFB365:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movl	%ecx, -36(%rbp)
	movw	%ax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, -36(%rbp)
	movswl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %ecx
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	_ecs_queue_get, .-_ecs_queue_get
	.globl	_ecs_queue_last
	.type	_ecs_queue_last, @function
_ecs_queue_last:
.LFB366:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movw	%ax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L2451
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_size
	movl	%eax, -4(%rbp)
.L2451:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %ecx
	movswl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	call	_ecs_vector_get
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	_ecs_queue_last, .-_ecs_queue_last
	.globl	ecs_queue_index
	.type	ecs_queue_index, @function
ecs_queue_index:
.LFB367:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ecs_queue_index, .-ecs_queue_index
	.globl	ecs_queue_count
	.type	ecs_queue_count, @function
ecs_queue_count:
.LFB368:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ecs_queue_count, .-ecs_queue_count
	.type	t_next, @function
t_next:
.LFB369:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$60, %edx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	t_next, .-t_next
	.type	t_prev, @function
t_prev:
.LFB370:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$59, %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$60, %edx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	t_prev, .-t_prev
	.type	_record_gauge, @function
_record_gauge:
.LFB371:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movss	-16(%rbp), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$60, %rdx
	movss	-16(%rbp), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$120, %rdx
	movss	-16(%rbp), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	_record_gauge, .-_record_gauge
	.type	_record_counter, @function
_record_counter:
.LFB372:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	t_prev
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$180, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$180, %rdx
	movss	-32(%rbp), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movss	-32(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_record_gauge
	movss	-32(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	_record_counter, .-_record_counter
	.section	.rodata
.LC409:
	.string	"%s: %*s %.2f\n"
	.text
	.type	print_value, @function
print_value:
.LFB373:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	movl	$32, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC409(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	print_value, .-print_value
	.type	print_gauge, @function
print_gauge:
.LFB374:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-8(%rbp), %rax
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	print_value
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	print_gauge, .-print_gauge
	.type	print_counter, @function
print_counter:
.LFB375:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-8(%rbp), %rax
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	print_value
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	print_counter, .-print_counter
	.globl	ecs_gauge_reduce
	.type	ecs_gauge_reduce, @function
ecs_gauge_reduce:
.LFB376:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11905, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC147(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2468
	leaq	__PRETTY_FUNCTION__.11560(%rip), %rcx
	movl	$11905, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC148(%rip), %rdi
	call	__assert_fail@PLT
.L2468:
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11906, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC149(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L2469
	leaq	__PRETTY_FUNCTION__.11560(%rip), %rcx
	movl	$11906, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC150(%rip), %rdi
	call	__assert_fail@PLT
.L2469:
	movb	$0, -9(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$60, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$120, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	$0, -8(%rbp)
	jmp	.L2470
.L2476:
	movl	-32(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %edx
	imull	$60, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movss	(%rax,%rdx,4), %xmm1
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC411(%rip), %xmm2
	divss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2471
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$60, %rdx
	movss	(%rax,%rdx,4), %xmm1
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$60, %rdx
	movss	(%rax,%rdx,4), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L2472
.L2471:
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$60, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$60, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	movb	$1, -9(%rbp)
.L2472:
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$120, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$120, %rdx
	movss	(%rax,%rdx,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L2474
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$120, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$120, %rdx
	movss	%xmm0, (%rax,%rdx,4)
.L2474:
	addl	$1, -8(%rbp)
.L2470:
	cmpl	$59, -8(%rbp)
	jle	.L2476
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	ecs_gauge_reduce, .-ecs_gauge_reduce
	.section	.rodata
.LC412:
	.string	"s != NULL"
.LC413:
	.string	"s != ((void *)0)"
	.text
	.globl	ecs_get_world_stats
	.type	ecs_get_world_stats, @function
ecs_get_world_stats:
.LFB377:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	cmpq	$0, -88(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11931, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -88(%rbp)
	jne	.L2479
	leaq	__PRETTY_FUNCTION__.11571(%rip), %rcx
	movl	$11931, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2479:
	cmpq	$0, -96(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$11932, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC412(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -96(%rbp)
	jne	.L2480
	leaq	__PRETTY_FUNCTION__.11571(%rip), %rcx
	movl	$11932, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC413(%rip), %rdi
	call	__assert_fail@PLT
.L2480:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movl	24244(%rax), %eax
	movl	%eax, %edi
	call	t_next
	movq	-96(%rbp), %rdx
	movl	%eax, 24244(%rdx)
	movq	-96(%rbp), %rax
	movl	24244(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-88(%rbp), %rax
	movl	592(%rax), %edx
	movq	-96(%rbp), %rax
	leaq	14164(%rax), %rcx
	movl	-48(%rbp), %eax
	movd	%edx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_record_counter
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movq	-88(%rbp), %rax
	movl	588(%rax), %edx
	movq	-96(%rbp), %rax
	leaq	15124(%rax), %rcx
	movl	-48(%rbp), %eax
	movd	%edx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	576(%rax), %edx
	movq	-96(%rbp), %rax
	leaq	16084(%rax), %rcx
	movl	-48(%rbp), %eax
	movd	%edx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	580(%rax), %edx
	movq	-96(%rbp), %rax
	leaq	17044(%rax), %rcx
	movl	-48(%rbp), %eax
	movd	%edx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	584(%rax), %edx
	movq	-96(%rbp), %rax
	leaq	18004(%rax), %rcx
	movl	-48(%rbp), %eax
	movd	%edx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	596(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	20404(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movd	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	600(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	21364(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	604(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	22324(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	608(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	23284(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	pxor	%xmm0, %xmm0
	ucomiss	-44(%rbp), %xmm0
	jp	.L2490
	pxor	%xmm0, %xmm0
	ucomiss	-44(%rbp), %xmm0
	je	.L2481
.L2490:
	pxor	%xmm0, %xmm0
	ucomiss	-40(%rbp), %xmm0
	jp	.L2491
	pxor	%xmm0, %xmm0
	ucomiss	-40(%rbp), %xmm0
	je	.L2481
.L2491:
	movss	-44(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	divss	-40(%rbp), %xmm1
	movss	.LC414(%rip), %xmm0
	divss	%xmm1, %xmm0
	movq	-96(%rbp), %rax
	leaq	18964(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	jmp	.L2484
.L2481:
	movq	-96(%rbp), %rax
	leaq	18964(%rax), %rdx
	movl	-48(%rbp), %eax
	pxor	%xmm0, %xmm0
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
.L2484:
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ecs_count_id
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	724(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	movq	-88(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	1444(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	movq	-88(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	ecs_count_id
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	2164(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	movq	-88(%rbp), %rax
	movl	648(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	6484(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	652(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	7444(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	656(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	8404(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	660(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	9364(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	664(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	10324(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	668(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	11284(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	672(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	12244(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movq	-88(%rbp), %rax
	movl	676(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-96(%rbp), %rax
	leaq	13204(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -36(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L2485
.L2489:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movl	-52(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_table_count
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L2486
	addl	$1, -68(%rbp)
.L2486:
	cmpl	$1, -32(%rbp)
	jne	.L2487
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ecs_type_has_id
	testb	%al, %al
	je	.L2487
	addl	$1, -64(%rbp)
.L2487:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L2488
	cmpl	$0, -32(%rbp)
	je	.L2488
	addl	$1, -60(%rbp)
	movl	-32(%rbp), %eax
	addl	%eax, -56(%rbp)
.L2488:
	addl	$1, -52(%rbp)
.L2485:
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L2489
	cvtsi2ssl	-60(%rbp), %xmm0
	movq	-96(%rbp), %rax
	leaq	5764(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	cvtsi2ssl	-56(%rbp), %xmm0
	movq	-96(%rbp), %rax
	leaq	5044(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	cvtsi2ssl	-36(%rbp), %xmm0
	movq	-96(%rbp), %rax
	leaq	2884(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	cvtsi2ssl	-68(%rbp), %xmm0
	movq	-96(%rbp), %rax
	leaq	3604(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	cvtsi2ssl	-64(%rbp), %xmm0
	movq	-96(%rbp), %rax
	leaq	4324(%rax), %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	ecs_get_world_stats, .-ecs_get_world_stats
	.globl	ecs_get_query_stats
	.type	ecs_get_query_stats, @function
ecs_get_query_stats:
.LFB378:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12017, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L2493
	leaq	__PRETTY_FUNCTION__.11594(%rip), %rcx
	movl	$12017, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2493:
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12018, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -48(%rbp)
	jne	.L2494
	leaq	__PRETTY_FUNCTION__.11594(%rip), %rcx
	movl	$12018, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC89(%rip), %rdi
	call	__assert_fail@PLT
.L2494:
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12019, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC412(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L2495
	leaq	__PRETTY_FUNCTION__.11594(%rip), %rcx
	movl	$12019, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC413(%rip), %rdi
	call	__assert_fail@PLT
.L2495:
	movq	-56(%rbp), %rax
	movl	2160(%rax), %eax
	movl	%eax, %edi
	call	t_next
	movq	-56(%rbp), %rdx
	movl	%eax, 2160(%rdx)
	movq	-56(%rbp), %rax
	movl	2160(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-48(%rbp), %rax
	movq	1608(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movq	1608(%rax), %rax
	movl	$16, %edx
	movl	$96, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L2496
.L2498:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L2497
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_table_count
	addl	%eax, -28(%rbp)
.L2497:
	addl	$1, -32(%rbp)
.L2496:
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L2498
	cvtsi2ssl	-20(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_record_gauge
	movq	-48(%rbp), %rax
	movq	1616(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cvtsi2ssl	%eax, %xmm0
	movq	-56(%rbp), %rax
	leaq	720(%rax), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	cvtsi2ssl	-28(%rbp), %xmm0
	movq	-56(%rbp), %rax
	leaq	1440(%rax), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_gauge
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	ecs_get_query_stats, .-ecs_get_query_stats
	.globl	ecs_get_system_stats
	.type	ecs_get_system_stats, @function
ecs_get_system_stats:
.LFB379:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12046, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2500
	leaq	__PRETTY_FUNCTION__.11609(%rip), %rcx
	movl	$12046, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2500:
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12047, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC412(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L2501
	leaq	__PRETTY_FUNCTION__.11609(%rip), %rcx
	movl	$12047, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC413(%rip), %rdi
	call	__assert_fail@PLT
.L2501:
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12048, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC248(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L2502
	leaq	__PRETTY_FUNCTION__.11609(%rip), %rcx
	movl	$12048, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC248(%rip), %rdi
	call	__assert_fail@PLT
.L2502:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2503
	movl	$0, %eax
	jmp	.L2504
.L2503:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_query_stats
	movq	-40(%rbp), %rax
	movl	2160(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-40(%rbp), %rax
	leaq	2164(%rax), %rcx
	movl	-12(%rbp), %eax
	movd	%edx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_record_counter
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-40(%rbp), %rax
	leaq	3124(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_record_counter
	movl	$319, %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	xorl	$1, %eax
	testb	%al, %al
	je	.L2505
	movl	.LC414(%rip), %eax
	jmp	.L2506
.L2505:
	movl	.LC410(%rip), %eax
.L2506:
	movq	-40(%rbp), %rdx
	leaq	4084(%rdx), %rcx
	movl	-12(%rbp), %edx
	movd	%eax, %xmm0
	movl	%edx, %esi
	movq	%rcx, %rdi
	call	_record_gauge
	movl	$261, %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_has_id
	xorl	$1, %eax
	testb	%al, %al
	je	.L2507
	movl	.LC414(%rip), %eax
	jmp	.L2508
.L2507:
	movl	.LC410(%rip), %eax
.L2508:
	movq	-40(%rbp), %rdx
	leaq	4804(%rdx), %rcx
	movl	-12(%rbp), %edx
	movd	%eax, %xmm0
	movl	%edx, %esi
	movq	%rcx, %rdi
	call	_record_gauge
	movl	$1, %eax
.L2504:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	ecs_get_system_stats, .-ecs_get_system_stats
	.section	.rodata
.LC415:
	.string	"systems != NULL"
.LC416:
	.string	"systems != ((void *)0)"
	.text
	.type	get_system_stats, @function
get_system_stats:
.LFB380:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1472, %rsp
	movq	%rdi, -5560(%rbp)
	movq	%rsi, -5568(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -5560(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12076, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC415(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -5560(%rbp)
	jne	.L2510
	leaq	__PRETTY_FUNCTION__.11616(%rip), %rcx
	movl	$12076, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC416(%rip), %rdi
	call	__assert_fail@PLT
.L2510:
	cmpq	$0, -5568(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12077, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC248(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -5568(%rbp)
	jne	.L2511
	leaq	__PRETTY_FUNCTION__.11616(%rip), %rcx
	movl	$12077, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC248(%rip), %rdi
	call	__assert_fail@PLT
.L2511:
	movq	-5568(%rbp), %rdx
	movq	-5560(%rbp), %rax
	movl	$5524, %esi
	movq	%rax, %rdi
	call	_ecs_map_get
	movq	%rax, -5544(%rbp)
	cmpq	$0, -5544(%rbp)
	jne	.L2512
	leaq	-5536(%rbp), %rax
	movl	$5524, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-5536(%rbp), %rcx
	movq	-5568(%rbp), %rdx
	movq	-5560(%rbp), %rax
	movl	$5524, %esi
	movq	%rax, %rdi
	call	_ecs_map_set
	movq	-5568(%rbp), %rdx
	movq	-5560(%rbp), %rax
	movl	$5524, %esi
	movq	%rax, %rdi
	call	_ecs_map_get
	movq	%rax, -5544(%rbp)
	cmpq	$0, -5544(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12085, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC412(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -5544(%rbp)
	jne	.L2512
	leaq	__PRETTY_FUNCTION__.11616(%rip), %rcx
	movl	$12085, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC413(%rip), %rdi
	call	__assert_fail@PLT
.L2512:
	movq	-5544(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2515
	call	__stack_chk_fail@PLT
.L2515:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	get_system_stats, .-get_system_stats
	.section	.rodata
.LC417:
	.string	"pipeline != 0"
.LC418:
	.string	"i_system == (count - 1)"
	.text
	.globl	ecs_get_pipeline_stats
	.type	ecs_get_pipeline_stats, @function
ecs_get_pipeline_stats:
.LFB381:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$592, %rsp
	movq	%rdi, -2376(%rbp)
	movq	%rsi, -2384(%rbp)
	movq	%rdx, -2392(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -2376(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12096, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -2376(%rbp)
	jne	.L2517
	leaq	__PRETTY_FUNCTION__.11624(%rip), %rcx
	movl	$12096, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2517:
	cmpq	$0, -2392(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12097, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC412(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -2392(%rbp)
	jne	.L2518
	leaq	__PRETTY_FUNCTION__.11624(%rip), %rcx
	movl	$12097, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC413(%rip), %rdi
	call	__assert_fail@PLT
.L2518:
	cmpq	$0, -2384(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12098, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC417(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -2384(%rbp)
	jne	.L2519
	leaq	__PRETTY_FUNCTION__.11624(%rip), %rcx
	movl	$12098, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC417(%rip), %rdi
	call	__assert_fail@PLT
.L2519:
	movq	-2376(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -2376(%rbp)
	movq	-2384(%rbp), %rcx
	movq	-2376(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -2344(%rbp)
	cmpq	$0, -2344(%rbp)
	jne	.L2520
	movl	$0, %eax
	jmp	.L2531
.L2520:
	movq	-2344(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-2304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_query_iter
	movl	$0, -2368(%rbp)
	jmp	.L2522
.L2523:
	movl	-2100(%rbp), %eax
	addl	%eax, -2368(%rbp)
.L2522:
	leaq	-2304(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_query_next
	testb	%al, %al
	jne	.L2523
	movq	-2392(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L2524
	movl	-2368(%rbp), %eax
	movl	%eax, %edx
	movl	$4, %esi
	movl	$5524, %edi
	call	_ecs_map_new
	movq	-2392(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L2524:
	movq	-2344(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -2336(%rbp)
	movq	-2336(%rbp), %rax
	movl	$16, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -2352(%rbp)
	movq	-2336(%rbp), %rax
	movl	$16, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ecs_vector_last
	movq	%rax, -2328(%rbp)
	movq	-2336(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	addl	%eax, -2368(%rbp)
	movl	-2368(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-2392(%rbp), %rax
	movl	%edx, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_set_count
	movq	-2392(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -2320(%rbp)
	movq	-2344(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-4688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_query_iter
	leaq	-2304(%rbp), %rax
	leaq	-4688(%rbp), %rdx
	movl	$286, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movl	$0, -2364(%rbp)
	movl	$0, -2360(%rbp)
	jmp	.L2525
.L2529:
	movl	$0, -2356(%rbp)
	jmp	.L2526
.L2528:
	movq	-2152(%rbp), %rax
	movl	-2356(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-2364(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -2364(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-2320(%rbp), %rax
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addl	$1, -2360(%rbp)
	movq	-2352(%rbp), %rax
	cmpq	-2328(%rbp), %rax
	je	.L2527
	movq	-2352(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -2360(%rbp)
	jne	.L2527
	movl	$0, -2360(%rbp)
	addq	$4, -2352(%rbp)
	movl	-2364(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -2364(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-2320(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
.L2527:
	movq	-2152(%rbp), %rax
	movl	-2356(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-2392(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_system_stats
	movq	%rax, -2312(%rbp)
	movq	-2152(%rbp), %rax
	movl	-2356(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-2312(%rbp), %rdx
	movq	-2376(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_system_stats
	addl	$1, -2356(%rbp)
.L2526:
	movl	-2100(%rbp), %eax
	cmpl	%eax, -2356(%rbp)
	jl	.L2528
.L2525:
	leaq	-2304(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_query_next
	testb	%al, %al
	jne	.L2529
	movl	-2368(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -2364(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12148, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC418(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-2368(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -2364(%rbp)
	je	.L2530
	leaq	__PRETTY_FUNCTION__.11624(%rip), %rcx
	movl	$12148, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC418(%rip), %rdi
	call	__assert_fail@PLT
.L2530:
	movl	$1, %eax
.L2531:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2532
	call	__stack_chk_fail@PLT
.L2532:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	ecs_get_pipeline_stats, .-ecs_get_pipeline_stats
	.section	.rodata
.LC419:
	.string	"Frame"
	.align 8
.LC420:
	.string	"-------------------------------------"
.LC421:
	.string	"pipeline rebuilds"
.LC422:
	.string	"systems ran last frame"
.LC423:
	.string	"target FPS"
.LC424:
	.string	"time scale"
.LC425:
	.string	"actual FPS"
.LC426:
	.string	"frame time"
.LC427:
	.string	"system time"
.LC428:
	.string	"merge time"
.LC429:
	.string	"simulation time elapsed"
.LC430:
	.string	"entity count"
.LC431:
	.string	"component count"
.LC432:
	.string	"query count"
.LC433:
	.string	"system count"
.LC434:
	.string	"table count"
.LC435:
	.string	"singleton table count"
.LC436:
	.string	"empty table count"
.LC437:
	.string	"deferred new operations"
.LC438:
	.string	"deferred bulk_new operations"
.LC439:
	.string	"deferred delete operations"
.LC440:
	.string	"deferred clear operations"
.LC441:
	.string	"deferred add operations"
.LC442:
	.string	"deferred remove operations"
.LC443:
	.string	"deferred set operations"
.LC444:
	.string	"discarded operations"
	.text
	.globl	ecs_dump_world_stats
	.type	ecs_dump_world_stats, @function
ecs_dump_world_stats:
.LFB382:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	24244(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12160, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2534
	leaq	__PRETTY_FUNCTION__.11650(%rip), %rcx
	movl	$12160, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2534:
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12161, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC412(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L2535
	leaq	__PRETTY_FUNCTION__.11650(%rip), %rcx
	movl	$12161, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC413(%rip), %rdi
	call	__assert_fail@PLT
.L2535:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	20404(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC419(%rip), %rdi
	call	print_counter
	leaq	.LC420(%rip), %rdi
	call	puts@PLT
	movq	-32(%rbp), %rax
	leaq	22324(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC421(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	23284(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC422(%rip), %rdi
	call	print_counter
	movl	$10, %edi
	call	putchar@PLT
	movq	-24(%rbp), %rax
	movl	572(%rax), %eax
	movd	%eax, %xmm0
	leaq	.LC423(%rip), %rdi
	call	print_value
	movq	-24(%rbp), %rax
	movl	568(%rax), %eax
	movd	%eax, %xmm0
	leaq	.LC424(%rip), %rdi
	call	print_value
	movl	$10, %edi
	call	putchar@PLT
	movq	-32(%rbp), %rax
	leaq	18964(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC425(%rip), %rdi
	call	print_gauge
	movq	-32(%rbp), %rax
	leaq	16084(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC426(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	17044(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC427(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	18004(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC428(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	15124(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC429(%rip), %rdi
	call	print_counter
	movl	$10, %edi
	call	putchar@PLT
	movq	-32(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC430(%rip), %rdi
	call	print_gauge
	movq	-32(%rbp), %rax
	leaq	724(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC431(%rip), %rdi
	call	print_gauge
	movq	-32(%rbp), %rax
	leaq	1444(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC432(%rip), %rdi
	call	print_gauge
	movq	-32(%rbp), %rax
	leaq	2164(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC433(%rip), %rdi
	call	print_gauge
	movq	-32(%rbp), %rax
	leaq	2884(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC434(%rip), %rdi
	call	print_gauge
	movq	-32(%rbp), %rax
	leaq	4324(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC435(%rip), %rdi
	call	print_gauge
	movq	-32(%rbp), %rax
	leaq	3604(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC436(%rip), %rdi
	call	print_gauge
	movl	$10, %edi
	call	putchar@PLT
	movq	-32(%rbp), %rax
	leaq	6484(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC437(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	7444(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC438(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	8404(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC439(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	9364(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC440(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	10324(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC441(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	11284(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC442(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	12244(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC443(%rip), %rdi
	call	print_counter
	movq	-32(%rbp), %rax
	leaq	13204(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC444(%rip), %rdi
	call	print_counter
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	ecs_dump_world_stats, .-ecs_dump_world_stats
	.type	duplicate_data, @function
duplicate_data:
.LFB383:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	32+ecs_os_api(%rip), %rax
	movl	$40, %edi
	call	*%rax
	movq	%rax, -96(%rbp)
	movq	-144(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -112(%rbp)
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -88(%rbp)
	movl	-112(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_os_memdup
	movq	-96(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_copy
	movq	-96(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_copy
	movq	-96(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movl	$0, -116(%rbp)
	jmp	.L2537
.L2541:
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_get_typeid
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_c_info
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -120(%rbp)
	movq	-64(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -118(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L2538
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L2538
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -108(%rbp)
	movl	$16, %eax
	cmpw	$16, -118(%rbp)
	cmovge	-118(%rbp), %ax
	movswl	%ax, %ecx
	movswl	-120(%rbp), %eax
	movl	-108(%rbp), %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	_ecs_vector_new
	movq	%rax, -104(%rbp)
	movl	$16, %eax
	cmpw	$16, -118(%rbp)
	cmovge	-118(%rbp), %ax
	movswl	%ax, %edx
	movswl	-120(%rbp), %esi
	movl	-108(%rbp), %ecx
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_count
	movl	$16, %eax
	cmpw	$16, -118(%rbp)
	cmovge	-118(%rbp), %ax
	movswl	%ax, %edx
	movswl	-120(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2539
	movswq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movl	-108(%rbp), %r8d
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movq	-24(%rbp), %r10
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
.L2539:
	movl	$16, %eax
	cmpw	$16, -118(%rbp)
	cmovge	-118(%rbp), %ax
	movswl	%ax, %edx
	movswl	-120(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movswq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-16(%rbp), %r9
	movq	-40(%rbp), %r11
	movq	-80(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movl	-108(%rbp), %r8d
	pushq	%r8
	pushq	%rdi
	movq	-48(%rbp), %r10
	movq	%r11, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L2540
.L2538:
	movl	$16, %eax
	cmpw	$16, -118(%rbp)
	cmovge	-118(%rbp), %ax
	movswl	%ax, %edx
	movswl	-120(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_copy
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
.L2540:
	addl	$1, -116(%rbp)
.L2537:
	movl	-116(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jl	.L2541
	movq	-96(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2543
	call	__stack_chk_fail@PLT
.L2543:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	duplicate_data, .-duplicate_data
	.type	snapshot_create, @function
snapshot_create:
.LFB384:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$560, %rsp
	movq	%rdi, -2344(%rbp)
	movq	%rsi, -2352(%rbp)
	movq	%rdx, -2360(%rbp)
	movq	%rcx, -2368(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	32+ecs_os_api(%rip), %rax
	movl	$1632, %edi
	call	*%rax
	movq	%rax, -2336(%rbp)
	cmpq	$0, -2336(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12279, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC345(%rip), %rdx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -2336(%rbp)
	jne	.L2545
	leaq	__PRETTY_FUNCTION__.11688(%rip), %rcx
	movl	$12279, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC346(%rip), %rdi
	call	__assert_fail@PLT
.L2545:
	movq	-2336(%rbp), %rax
	movq	-2344(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -2360(%rbp)
	jne	.L2546
	cmpq	$0, -2352(%rbp)
	je	.L2546
	movq	-2352(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_sparse_copy
	movq	-2336(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movl	$0, %edx
	movl	$16, %esi
	movl	$24, %edi
	call	_ecs_vector_new
	movq	-2336(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L2546:
	cmpq	$0, -2360(%rbp)
	jne	.L2547
	leaq	-4656(%rbp), %rax
	movq	-2344(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_filter_iter
	leaq	-2304(%rbp), %rax
	leaq	-4656(%rbp), %rdx
	movl	$286, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	leaq	-2304(%rbp), %rax
	movq	%rax, -2360(%rbp)
	leaq	ecs_filter_next(%rip), %rax
	movq	%rax, -2368(%rbp)
	jmp	.L2549
.L2547:
	movq	-2336(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L2549
.L2553:
	movq	-2360(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -2328(%rbp)
	movq	-2328(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2550
	jmp	.L2549
.L2550:
	movq	-2328(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -2320(%rbp)
	cmpq	$0, -2320(%rbp)
	je	.L2549
	movq	-2320(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2549
	movq	-2320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	testl	%eax, %eax
	jne	.L2552
	jmp	.L2549
.L2552:
	movq	-2336(%rbp), %rax
	addq	$16, %rax
	movl	$16, %edx
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -2312(%rbp)
	movq	-2312(%rbp), %rax
	movq	-2328(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-2328(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-2312(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-2320(%rbp), %rdx
	movq	-2328(%rbp), %rcx
	movq	-2344(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	duplicate_data
	movq	-2312(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L2549:
	movq	-2360(%rbp), %rax
	movq	-2368(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	testb	%al, %al
	jne	.L2553
	movq	-2336(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2555
	call	__stack_chk_fail@PLT
.L2555:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	snapshot_create, .-snapshot_create
	.globl	ecs_snapshot_take
	.type	ecs_snapshot_take, @function
ecs_snapshot_take:
.LFB385:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	snapshot_create
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	536(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	ecs_snapshot_take, .-ecs_snapshot_take
	.globl	ecs_snapshot_take_w_iter
	.type	ecs_snapshot_take_w_iter, @function
ecs_snapshot_take_w_iter:
.LFB386:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12348, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L2559
	leaq	__PRETTY_FUNCTION__.11705(%rip), %rcx
	movl	$12348, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2559:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	snapshot_create
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	536(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	ecs_snapshot_take_w_iter, .-ecs_snapshot_take_w_iter
	.globl	ecs_snapshot_restore
	.type	ecs_snapshot_restore, @function
ecs_snapshot_restore:
.LFB387:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$1, -129(%rbp)
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L2562
	movq	-160(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_restore
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_free
	movb	$0, -129(%rbp)
.L2562:
	movzbl	-129(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2563
	movq	-160(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 536(%rax)
.L2563:
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	movl	$16, %edx
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -80(%rbp)
	movl	$0, -128(%rbp)
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -116(%rbp)
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -112(%rbp)
	movl	$0, -124(%rbp)
	jmp	.L2564
.L2577:
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	movl	-124(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2584
	movq	$0, -88(%rbp)
	movl	-128(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.L2567
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
.L2567:
	cmpq	$0, -88(%rbp)
	je	.L2568
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L2568
	cmpb	$0, -129(%rbp)
	je	.L2569
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -48(%rbp)
	movl	$0, -120(%rbp)
	jmp	.L2570
.L2574:
	movl	-120(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2571
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2571
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12407, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L2572
	leaq	__PRETTY_FUNCTION__.11726(%rip), %rcx
	movl	$12407, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC123(%rip), %rdi
	call	__assert_fail@PLT
.L2572:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leaq	-130(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	flecs_record_to_row
	movl	%eax, -92(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movl	-92(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	flecs_table_delete
	jmp	.L2573
.L2571:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_set_generation
.L2573:
	addl	$1, -120(%rbp)
.L2570:
	movl	-120(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jl	.L2574
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_table_count
	movl	%eax, -100(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	flecs_table_data_count
	movl	%eax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	flecs_table_merge
	movq	%rax, -40(%rbp)
	movl	-100(%rbp), %edi
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-152(%rbp), %rax
	pushq	$1
	movl	-96(%rbp), %esi
	pushq	%rsi
	movl	%edi, %r9d
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	flecs_run_set_systems
	addq	$16, %rsp
	movq	40+ecs_os_api(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L2575
.L2569:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_replace_data
.L2575:
	movq	40+ecs_os_api(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	addl	$1, -128(%rbp)
	jmp	.L2576
.L2568:
	movzbl	-129(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2576
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_clear_data
.L2576:
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 112(%rax)
	jmp	.L2566
.L2584:
	nop
.L2566:
	addl	$1, -124(%rbp)
.L2564:
	movl	-124(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jl	.L2577
	movzbl	-129(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2578
	movl	$0, -124(%rbp)
	jmp	.L2579
.L2582:
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	movl	-124(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2585
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_data_count
	movl	%eax, -108(%rbp)
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-152(%rbp), %rax
	pushq	$1
	movl	-108(%rbp), %esi
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	flecs_run_set_systems
	addq	$16, %rsp
	jmp	.L2581
.L2585:
	nop
.L2581:
	addl	$1, -124(%rbp)
.L2579:
	movl	-124(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jl	.L2582
.L2578:
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	40+ecs_os_api(%rip), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2583
	call	__stack_chk_fail@PLT
.L2583:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	ecs_snapshot_restore, .-ecs_snapshot_restore
	.globl	ecs_snapshot_iter
	.type	ecs_snapshot_iter, @function
ecs_snapshot_iter:
.LFB388:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$3944, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -3928(%rbp)
	movq	%rsi, -3936(%rbp)
	movq	%rdx, -3944(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -3944(%rbp)
	je	.L2587
	movq	-3944(%rbp), %rdx
	leaq	-2320(%rbp), %rax
	movq	%rdx, %rsi
	movl	$200, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	jmp	.L2588
.L2587:
	leaq	-3920(%rbp), %rdx
	movl	$0, %eax
	movl	$200, %ecx
	movq	%rdx, %rdi
	rep stosq
	leaq	-2320(%rbp), %rax
	leaq	-3920(%rbp), %rdx
	movl	$200, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
.L2588:
	movq	-3936(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -720(%rbp)
	movl	$0, -712(%rbp)
	movq	-3936(%rbp), %rax
	movq	(%rax), %rbx
	movq	-3936(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, %r8d
	movq	-3928(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$286, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-3928(%rbp), %rax
	movq	%rbx, (%rax)
	movq	-3928(%rbp), %rax
	movl	%r8d, 128(%rax)
	movq	-3928(%rbp), %rax
	leaq	232(%rax), %rdx
	leaq	-2320(%rbp), %rax
	movl	$202, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	rep movsq
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2590
	call	__stack_chk_fail@PLT
.L2590:
	movq	-3928(%rbp), %rax
	addq	$3944, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	ecs_snapshot_iter, .-ecs_snapshot_iter
	.globl	ecs_snapshot_next
	.type	ecs_snapshot_next, @function
ecs_snapshot_next:
.LFB389:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$232, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	1600(%rax), %rax
	movl	$16, %edx
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	1600(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	1608(%rax), %eax
	movl	%eax, -40(%rbp)
	jmp	.L2592
.L2597:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12504, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L2593
	leaq	__PRETTY_FUNCTION__.11760(%rip), %rcx
	movl	$12504, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L2593:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12509, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2594
	leaq	__PRETTY_FUNCTION__.11760(%rip), %rcx
	movl	$12509, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC123(%rip), %rdi
	call	__assert_fail@PLT
.L2594:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_match_filter
	xorl	$1, %eax
	testb	%al, %al
	je	.L2595
	addl	$1, -40(%rbp)
	jmp	.L2592
.L2595:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_data_count
	movq	-56(%rbp), %rdx
	movl	%eax, 204(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	-56(%rbp), %rdx
	movq	%rax, 152(%rdx)
	movq	-56(%rbp), %rax
	movb	$1, 212(%rax)
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 1608(%rax)
	nop
.L2596:
	endbr64
	movq	-56(%rbp), %rax
	movb	$1, 212(%rax)
	movl	$1, %eax
	jmp	.L2598
.L2592:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L2597
	movq	-56(%rbp), %rax
	movb	$0, 212(%rax)
	movl	$0, %eax
.L2598:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	ecs_snapshot_next, .-ecs_snapshot_next
	.globl	ecs_snapshot_free
	.type	ecs_snapshot_free, @function
ecs_snapshot_free:
.LFB390:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_free
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$16, %edx
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2600
.L2601:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_clear_data
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	addl	$1, -24(%rbp)
.L2600:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L2601
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	40+ecs_os_api(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	ecs_snapshot_free, .-ecs_snapshot_free
	.section	.rodata
.LC445:
	.string	"stage == &world->stage"
	.text
	.type	bulk_delete, @function
bulk_delete:
.LFB391:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movb	%al, -52(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12561, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L2603
	leaq	__PRETTY_FUNCTION__.11782(%rip), %rcx
	movl	$12561, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2603:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12563, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC445(%rip), %rdx
	movl	$6, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-40(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -24(%rbp)
	je	.L2604
	leaq	__PRETTY_FUNCTION__.11782(%rip), %rcx
	movl	$12563, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC445(%rip), %rdi
	call	__assert_fail@PLT
.L2604:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L2605
.L2611:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	-32(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2612
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_match_filter
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2613
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2614
	cmpb	$0, -52(%rbp)
	je	.L2610
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_delete_entities
	jmp	.L2607
.L2610:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_clear_entities_silent
	jmp	.L2607
.L2612:
	nop
	jmp	.L2607
.L2613:
	nop
	jmp	.L2607
.L2614:
	nop
.L2607:
	addl	$1, -32(%rbp)
.L2605:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L2611
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	bulk_delete, .-bulk_delete
	.type	merge_table, @function
merge_table:
.LFB392:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L2616
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_clear_entities
	jmp	.L2619
.L2616:
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L2619
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_table_count
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_table_count
	movl	%eax, -20(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L2618
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L2618
	cmpq	$0, -16(%rbp)
	je	.L2618
	movq	-72(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	flecs_run_remove_actions
.L2618:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_data
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	flecs_table_merge
	movq	%rax, -8(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L2619
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L2619
	cmpq	$0, -8(%rbp)
	je	.L2619
	movq	-64(%rbp), %r8
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	$1
	pushq	$0
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	flecs_run_add_actions
	addq	$16, %rsp
.L2619:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	merge_table, .-merge_table
	.globl	ecs_bulk_delete
	.type	ecs_bulk_delete, @function
ecs_bulk_delete:
.LFB393:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bulk_delete
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	ecs_bulk_delete, .-ecs_bulk_delete
	.section	.rodata
	.align 8
.LC446:
	.string	"removed.count <= to_remove_array.count"
	.align 8
.LC447:
	.string	"added.count <= to_add_array.count"
	.text
	.globl	ecs_bulk_add_remove_type
	.type	ecs_bulk_add_remove_type, @function
ecs_bulk_add_remove_type:
.LFB394:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12645, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jne	.L2622
	leaq	__PRETTY_FUNCTION__.11813(%rip), %rcx
	movl	$12645, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2622:
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -104(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12647, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC445(%rip), %rdx
	movl	$6, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-120(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -104(%rbp)
	je	.L2623
	leaq	__PRETTY_FUNCTION__.11813(%rip), %rcx
	movl	$12647, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC445(%rip), %rdi
	call	__assert_fail@PLT
.L2623:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-72(%rbp), %eax
	sall	$3, %eax
	cltq
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
.L2624:
	cmpq	%rdx, %rsp
	je	.L2625
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2624
.L2625:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L2626
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L2626:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -40(%rbp)
	movl	-56(%rbp), %eax
	sall	$3, %eax
	cltq
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rdx
.L2627:
	cmpq	%rdx, %rsp
	je	.L2628
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2627
.L2628:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L2629
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L2629:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -108(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L2630
.L2639:
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movl	-112(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2641
	movq	-120(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_match_filter
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2642
	movq	-120(%rbp), %rax
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -88(%rbp)
	movl	-24(%rbp), %edx
	movl	-56(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12681, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC446(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-24(%rbp), %edx
	movl	-56(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L2634
	leaq	__PRETTY_FUNCTION__.11813(%rip), %rcx
	movl	$12681, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC446(%rip), %rdi
	call	__assert_fail@PLT
.L2634:
	movl	-40(%rbp), %edx
	movl	-72(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12682, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC447(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-40(%rbp), %edx
	movl	-72(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L2635
	leaq	__PRETTY_FUNCTION__.11813(%rip), %rcx
	movl	$12682, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC447(%rip), %rdi
	call	__assert_fail@PLT
.L2635:
	movq	-96(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L2643
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	jne	.L2637
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L2643
.L2637:
	cmpq	$0, -88(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12688, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC218(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -88(%rbp)
	jne	.L2638
	leaq	__PRETTY_FUNCTION__.11813(%rip), %rcx
	movl	$12688, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC219(%rip), %rdi
	call	__assert_fail@PLT
.L2638:
	movq	-120(%rbp), %rax
	leaq	-32(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	merge_table
	movl	$0, -40(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2632
.L2641:
	nop
	jmp	.L2632
.L2642:
	nop
	jmp	.L2632
.L2643:
	nop
.L2632:
	addl	$1, -112(%rbp)
.L2630:
	movl	-112(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L2639
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2640
	call	__stack_chk_fail@PLT
.L2640:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE394:
	.size	ecs_bulk_add_remove_type, .-ecs_bulk_add_remove_type
	.section	.rodata
.LC448:
	.string	"to_add != NULL"
.LC449:
	.string	"to_add != ((void *)0)"
	.text
	.globl	ecs_bulk_add_type
	.type	ecs_bulk_add_type, @function
ecs_bulk_add_type:
.LFB395:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12701, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L2645
	leaq	__PRETTY_FUNCTION__.11832(%rip), %rcx
	movl	$12701, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2645:
	cmpq	$0, -96(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12702, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC448(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -96(%rbp)
	jne	.L2646
	leaq	__PRETTY_FUNCTION__.11832(%rip), %rcx
	movl	$12702, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC449(%rip), %rdi
	call	__assert_fail@PLT
.L2646:
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -72(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12705, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC445(%rip), %rdx
	movl	$6, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -72(%rbp)
	je	.L2647
	leaq	__PRETTY_FUNCTION__.11832(%rip), %rcx
	movl	$12705, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC445(%rip), %rdi
	call	__assert_fail@PLT
.L2647:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	-40(%rbp), %eax
	sall	$3, %eax
	cltq
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
.L2648:
	cmpq	%rdx, %rsp
	je	.L2649
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2648
.L2649:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L2650
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L2650:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -76(%rbp)
	movl	$0, -80(%rbp)
	jmp	.L2651
.L2658:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movl	-80(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2660
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_match_filter
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2661
	movq	-88(%rbp), %rax
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edx
	movl	-40(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12729, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC447(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-24(%rbp), %edx
	movl	-40(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L2655
	leaq	__PRETTY_FUNCTION__.11832(%rip), %rcx
	movl	$12729, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC447(%rip), %rdi
	call	__assert_fail@PLT
.L2655:
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L2662
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12735, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC218(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L2657
	leaq	__PRETTY_FUNCTION__.11832(%rip), %rcx
	movl	$12735, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC219(%rip), %rdi
	call	__assert_fail@PLT
.L2657:
	movq	-88(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	call	merge_table
	movl	$0, -24(%rbp)
	jmp	.L2653
.L2660:
	nop
	jmp	.L2653
.L2661:
	nop
	jmp	.L2653
.L2662:
	nop
.L2653:
	addl	$1, -80(%rbp)
.L2651:
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L2658
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2659
	call	__stack_chk_fail@PLT
.L2659:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE395:
	.size	ecs_bulk_add_type, .-ecs_bulk_add_type
	.section	.rodata
.LC450:
	.string	"to_add != 0"
	.text
	.globl	ecs_bulk_add_entity
	.type	ecs_bulk_add_entity, @function
ecs_bulk_add_entity:
.LFB396:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12746, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	jne	.L2664
	leaq	__PRETTY_FUNCTION__.11849(%rip), %rcx
	movl	$12746, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2664:
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12747, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC450(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L2665
	leaq	__PRETTY_FUNCTION__.11849(%rip), %rcx
	movl	$12747, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC450(%rip), %rdi
	call	__assert_fail@PLT
.L2665:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -72(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12750, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC445(%rip), %rdx
	movl	$6, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -72(%rbp)
	je	.L2666
	leaq	__PRETTY_FUNCTION__.11849(%rip), %rcx
	movl	$12750, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC445(%rip), %rdi
	call	__assert_fail@PLT
.L2666:
	leaq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -40(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -84(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L2667
.L2674:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movl	-88(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2676
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_match_filter
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2677
	movq	-104(%rbp), %rax
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_table_traverse_add
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edx
	movl	-40(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12776, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC447(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-24(%rbp), %edx
	movl	-40(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L2671
	leaq	__PRETTY_FUNCTION__.11849(%rip), %rcx
	movl	$12776, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC447(%rip), %rdi
	call	__assert_fail@PLT
.L2671:
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L2678
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12782, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC218(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L2673
	leaq	__PRETTY_FUNCTION__.11849(%rip), %rcx
	movl	$12782, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC219(%rip), %rdi
	call	__assert_fail@PLT
.L2673:
	movq	-104(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	call	merge_table
	movl	$0, -24(%rbp)
	jmp	.L2669
.L2676:
	nop
	jmp	.L2669
.L2677:
	nop
	jmp	.L2669
.L2678:
	nop
.L2669:
	addl	$1, -88(%rbp)
.L2667:
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L2674
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2675
	call	__stack_chk_fail@PLT
.L2675:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE396:
	.size	ecs_bulk_add_entity, .-ecs_bulk_add_entity
	.section	.rodata
.LC451:
	.string	"to_remove != NULL"
.LC452:
	.string	"to_remove != ((void *)0)"
	.text
	.globl	ecs_bulk_remove_type
	.type	ecs_bulk_remove_type, @function
ecs_bulk_remove_type:
.LFB397:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12793, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L2680
	leaq	__PRETTY_FUNCTION__.11867(%rip), %rcx
	movl	$12793, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2680:
	cmpq	$0, -96(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12794, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC451(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -96(%rbp)
	jne	.L2681
	leaq	__PRETTY_FUNCTION__.11867(%rip), %rcx
	movl	$12794, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC452(%rip), %rdi
	call	__assert_fail@PLT
.L2681:
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -72(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12797, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC445(%rip), %rdx
	movl	$6, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -72(%rbp)
	je	.L2682
	leaq	__PRETTY_FUNCTION__.11867(%rip), %rcx
	movl	$12797, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC445(%rip), %rdi
	call	__assert_fail@PLT
.L2682:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_type_to_ids
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	-40(%rbp), %eax
	sall	$3, %eax
	cltq
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
.L2683:
	cmpq	%rdx, %rsp
	je	.L2684
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2683
.L2684:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L2685
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L2685:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -76(%rbp)
	movl	$0, -80(%rbp)
	jmp	.L2686
.L2693:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movl	-80(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2695
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_match_filter
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2696
	movq	-88(%rbp), %rax
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edx
	movl	-40(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12821, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC446(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-24(%rbp), %edx
	movl	-40(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L2690
	leaq	__PRETTY_FUNCTION__.11867(%rip), %rcx
	movl	$12821, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC446(%rip), %rdi
	call	__assert_fail@PLT
.L2690:
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L2697
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12827, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC218(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L2692
	leaq	__PRETTY_FUNCTION__.11867(%rip), %rcx
	movl	$12827, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC219(%rip), %rdi
	call	__assert_fail@PLT
.L2692:
	movq	-88(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	merge_table
	movl	$0, -24(%rbp)
	jmp	.L2688
.L2695:
	nop
	jmp	.L2688
.L2696:
	nop
	jmp	.L2688
.L2697:
	nop
.L2688:
	addl	$1, -80(%rbp)
.L2686:
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L2693
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2694
	call	__stack_chk_fail@PLT
.L2694:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE397:
	.size	ecs_bulk_remove_type, .-ecs_bulk_remove_type
	.section	.rodata
.LC453:
	.string	"to_remove != 0"
	.text
	.globl	ecs_bulk_remove_entity
	.type	ecs_bulk_remove_entity, @function
ecs_bulk_remove_entity:
.LFB398:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12838, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	jne	.L2699
	leaq	__PRETTY_FUNCTION__.11884(%rip), %rcx
	movl	$12838, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2699:
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12839, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC453(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L2700
	leaq	__PRETTY_FUNCTION__.11884(%rip), %rcx
	movl	$12839, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC453(%rip), %rdi
	call	__assert_fail@PLT
.L2700:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -72(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12842, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC445(%rip), %rdx
	movl	$6, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	addq	$368, %rax
	cmpq	%rax, -72(%rbp)
	je	.L2701
	leaq	__PRETTY_FUNCTION__.11884(%rip), %rcx
	movl	$12842, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC445(%rip), %rdi
	call	__assert_fail@PLT
.L2701:
	leaq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -40(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -84(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L2702
.L2709:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movl	-88(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2711
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_match_filter
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2712
	movq	-104(%rbp), %rax
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	flecs_table_traverse_remove
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edx
	movl	-40(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12868, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC446(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-24(%rbp), %edx
	movl	-40(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L2706
	leaq	__PRETTY_FUNCTION__.11884(%rip), %rcx
	movl	$12868, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC446(%rip), %rdi
	call	__assert_fail@PLT
.L2706:
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L2713
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$12874, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC218(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L2708
	leaq	__PRETTY_FUNCTION__.11884(%rip), %rcx
	movl	$12874, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC219(%rip), %rdi
	call	__assert_fail@PLT
.L2708:
	movq	-104(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	merge_table
	movl	$0, -24(%rbp)
	jmp	.L2704
.L2711:
	nop
	jmp	.L2704
.L2712:
	nop
	jmp	.L2704
.L2713:
	nop
.L2704:
	addl	$1, -88(%rbp)
.L2702:
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L2709
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2710
	call	__stack_chk_fail@PLT
.L2710:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE398:
	.size	ecs_bulk_remove_entity, .-ecs_bulk_remove_entity
	.type	skip_newline_and_space, @function
skip_newline_and_space:
.LFB399:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L2715
.L2716:
	addq	$1, -8(%rbp)
.L2715:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L2716
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE399:
	.size	skip_newline_and_space, .-skip_newline_and_space
	.type	skip_space, @function
skip_space:
.LFB400:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L2719
.L2721:
	addq	$1, -8(%rbp)
.L2719:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L2720
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L2721
.L2720:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE400:
	.size	skip_space, .-skip_space
	.type	valid_token_start_char, @function
valid_token_start_char:
.LFB401:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$0, -4(%rbp)
	je	.L2724
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L2725
	cmpb	$46, -4(%rbp)
	je	.L2725
	cmpb	$95, -4(%rbp)
	je	.L2725
	cmpb	$42, -4(%rbp)
	je	.L2725
	cmpb	$48, -4(%rbp)
	je	.L2725
	cmpb	$92, -4(%rbp)
	je	.L2725
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L2724
.L2725:
	movl	$1, %eax
	jmp	.L2726
.L2724:
	movl	$0, %eax
.L2726:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE401:
	.size	valid_token_start_char, .-valid_token_start_char
	.type	valid_token_char, @function
valid_token_char:
.LFB402:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$0, -4(%rbp)
	je	.L2728
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L2729
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L2729
	cmpb	$95, -4(%rbp)
	je	.L2729
	cmpb	$46, -4(%rbp)
	jne	.L2728
.L2729:
	movl	$1, %eax
	jmp	.L2730
.L2728:
	movl	$0, %eax
.L2730:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	valid_token_char, .-valid_token_char
	.type	valid_operator_char, @function
valid_operator_char:
.LFB403:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$63, -4(%rbp)
	je	.L2732
	cmpb	$33, -4(%rbp)
	jne	.L2733
.L2732:
	movl	$1, %eax
	jmp	.L2734
.L2733:
	movl	$0, %eax
.L2734:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	valid_operator_char, .-valid_operator_char
	.section	.rodata
.LC454:
	.string	"invalid start of number '%s'"
	.text
	.type	parse_digit, @function
parse_digit:
.LFB404:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-9(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L2736
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC454(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2736:
	movq	-8(%rbp), %rax
	movzbl	-9(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
	addq	$1, -48(%rbp)
	jmp	.L2737
.L2740:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-9(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L2742
	movq	-8(%rbp), %rax
	movzbl	-9(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
	addq	$1, -48(%rbp)
.L2737:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	cmpb	$0, -9(%rbp)
	jne	.L2740
	jmp	.L2739
.L2742:
	nop
.L2739:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	parse_digit, .-parse_digit
	.section	.rodata
	.align 8
.LC455:
	.string	"invalid start of identifier '%s'"
	.align 8
.LC456:
	.string	"identifier '%s' has mismatching < > pairs"
	.text
	.type	parse_token, @function
parse_token:
.LFB405:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	movsbl	-13(%rbp), %eax
	movl	%eax, %edi
	call	valid_token_start_char
	xorl	$1, %eax
	testb	%al, %al
	je	.L2744
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC455(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2744:
	movq	-8(%rbp), %rax
	movzbl	-13(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
	addq	$1, -48(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2745
.L2751:
	cmpb	$60, -13(%rbp)
	jne	.L2746
	addl	$1, -12(%rbp)
	jmp	.L2747
.L2746:
	cmpb	$62, -13(%rbp)
	jne	.L2748
	cmpl	$0, -12(%rbp)
	je	.L2754
	subl	$1, -12(%rbp)
	jmp	.L2747
.L2748:
	movsbl	-13(%rbp), %eax
	movl	%eax, %edi
	call	valid_token_char
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2755
.L2747:
	movq	-8(%rbp), %rax
	movzbl	-13(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
	addq	$1, -48(%rbp)
.L2745:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	cmpb	$0, -13(%rbp)
	jne	.L2751
	jmp	.L2750
.L2754:
	nop
	jmp	.L2750
.L2755:
	nop
.L2750:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$0, -12(%rbp)
	je	.L2752
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC456(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2752:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	parse_token, .-parse_token
	.type	parse_identifier, @function
parse_identifier:
.LFB406:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpb	$92, -9(%rbp)
	jne	.L2757
	addq	$1, -8(%rbp)
.L2757:
	movq	48+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	cmpb	$92, -9(%rbp)
	jne	.L2758
	movq	-32(%rbp), %rax
	movl	$1, 16(%rax)
	jmp	.L2759
.L2758:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_identifier_is_var
	testb	%al, %al
	je	.L2759
	movq	-32(%rbp), %rax
	movl	$2, 16(%rax)
.L2759:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	parse_identifier, .-parse_identifier
	.section	.rodata
.LC457:
	.string	"invalid role '%s'"
	.text
	.type	parse_role, @function
parse_role:
.LFB407:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC307(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2762
	movabsq	$-432345564227567616, %rax
	jmp	.L2763
.L2762:
	movq	-32(%rbp), %rax
	leaq	.LC311(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2764
	movabsq	$-504403158265495552, %rax
	jmp	.L2763
.L2764:
	movq	-32(%rbp), %rax
	leaq	.LC310(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2765
	movabsq	$-576460752303423488, %rax
	jmp	.L2763
.L2765:
	movq	-32(%rbp), %rax
	leaq	.LC309(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2766
	movabsq	$-648518346341351424, %rax
	jmp	.L2763
.L2766:
	movq	-32(%rbp), %rax
	leaq	.LC312(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2767
	movabsq	$-720575940379279360, %rax
	jmp	.L2763
.L2767:
	movq	-32(%rbp), %rax
	leaq	.LC313(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2768
	movabsq	$-360287970189639680, %rax
	jmp	.L2763
.L2768:
	movq	-32(%rbp), %rax
	leaq	.LC314(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2769
	movabsq	$-288230376151711744, %rax
	jmp	.L2763
.L2769:
	movq	-32(%rbp), %rax
	leaq	.LC315(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2770
	movabsq	$-792633534417207296, %rax
	jmp	.L2763
.L2770:
	movq	-32(%rbp), %rax
	leaq	.LC308(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2771
	movabsq	$-864691128455135232, %rax
	jmp	.L2763
.L2771:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC457(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2763:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	parse_role, .-parse_role
	.type	parse_operator, @function
parse_operator:
.LFB408:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$63, -4(%rbp)
	jne	.L2773
	movl	$3, %eax
	jmp	.L2774
.L2773:
	cmpb	$33, -4(%rbp)
	jne	.L2775
	movl	$2, %eax
	jmp	.L2774
.L2775:
	movl	$0, %ecx
	movl	$13146, %edx
	leaq	.LC74(%rip), %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	_ecs_abort
	call	abort@PLT
.L2774:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	parse_operator, .-parse_operator
	.section	.rodata
.LC458:
	.string	"in"
.LC459:
	.string	"out"
.LC460:
	.string	"inout"
.LC461:
	.string	"expected ]"
	.text
	.type	parse_annotation, @function
parse_annotation:
.LFB409:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%rcx, -304(%rbp)
	movq	%r8, -312(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-272(%rbp), %rdi
	movq	-304(%rbp), %rcx
	movq	-296(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -304(%rbp)
	cmpq	$0, -304(%rbp)
	jne	.L2777
	movl	$0, %eax
	jmp	.L2783
.L2777:
	leaq	-272(%rbp), %rax
	leaq	.LC458(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2779
	movq	-312(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L2780
.L2779:
	leaq	-272(%rbp), %rax
	leaq	.LC459(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2781
	movq	-312(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L2780
.L2781:
	leaq	-272(%rbp), %rax
	leaq	.LC460(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2780
	movq	-312(%rbp), %rax
	movl	$1, (%rax)
.L2780:
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	je	.L2782
	movq	-296(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-280(%rbp), %rax
	leaq	.LC461(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2782:
	movq	-304(%rbp), %rax
	addq	$1, %rax
.L2783:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2784
	call	__stack_chk_fail@PLT
.L2784:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	parse_annotation, .-parse_annotation
	.section	.rodata
.LC462:
	.string	"self"
.LC463:
	.string	"superset"
.LC464:
	.string	"subset"
.LC465:
	.string	"cascade"
.LC466:
	.string	"all"
	.text
	.type	parse_set_token, @function
parse_set_token:
.LFB410:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC462(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2786
	movl	$1, %eax
	jmp	.L2787
.L2786:
	movq	-8(%rbp), %rax
	leaq	.LC463(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2788
	movl	$2, %eax
	jmp	.L2787
.L2788:
	movq	-8(%rbp), %rax
	leaq	.LC464(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2789
	movl	$4, %eax
	jmp	.L2787
.L2789:
	movq	-8(%rbp), %rax
	leaq	.LC465(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2790
	movl	$8, %eax
	jmp	.L2787
.L2790:
	movq	-8(%rbp), %rax
	leaq	.LC466(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2791
	movl	$16, %eax
	jmp	.L2787
.L2791:
	movl	$0, %eax
.L2787:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	parse_set_token, .-parse_set_token
	.section	.rodata
.LC467:
	.string	"invalid set token '%s'"
.LC468:
	.string	"duplicate set token '%s'"
	.align 8
.LC469:
	.string	"cannot mix superset and subset"
.LC470:
	.string	"unresolved identifier '%s'"
.LC471:
	.string	"expected ',' or ')'"
.LC472:
	.string	"invalid negative depth"
.LC473:
	.string	"expected ')'"
.LC474:
	.string	"expected end of set expr"
	.align 8
.LC475:
	.string	"min_depth must be zero for set expression with 'self'"
	.text
	.type	parse_set_expr, @function
parse_set_expr:
.LFB411:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
.L2813:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	parse_set_token
	movb	%al, -9(%rbp)
	cmpb	$0, -9(%rbp)
	jne	.L2793
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC467(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2793:
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	andb	-9(%rbp), %al
	testb	%al, %al
	je	.L2794
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC468(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2794:
	cmpb	$4, -9(%rbp)
	jne	.L2795
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L2796
.L2795:
	cmpb	$2, -9(%rbp)
	jne	.L2797
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L2797
.L2796:
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC469(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2797:
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	orb	-9(%rbp), %al
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movb	%dl, 32(%rax)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L2798
	addq	$1, -56(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L2799
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_token_start_char
	testb	%al, %al
	je	.L2799
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L2800
	movl	$0, %eax
	jmp	.L2801
.L2800:
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	leaq	.LC264(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_lookup_path_w_sep
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2802
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC470(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2802:
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L2803
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -56(%rbp)
	jmp	.L2799
.L2803:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L2799
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	.LC471(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2799:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L2804
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_digit
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L2805
	movl	$0, %eax
	jmp	.L2801
.L2805:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movq	16(%rbp), %rdx
	movl	%eax, 40(%rdx)
	movq	16(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jns	.L2806
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	.LC472(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2806:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L2804
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -56(%rbp)
.L2804:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L2807
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_digit
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L2808
	movl	$0, %eax
	jmp	.L2801
.L2808:
	movq	16(%rbp), %rax
	movl	40(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movq	16(%rbp), %rdx
	movl	%eax, 40(%rdx)
	movq	16(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jns	.L2807
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	.LC472(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2807:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L2809
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	.LC473(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2809:
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L2798
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L2798
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	.LC474(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2798:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	jne	.L2810
	addq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_token_start_char
	testb	%al, %al
	je	.L2813
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L2813
	movl	$0, %eax
	jmp	.L2801
.L2810:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L2812
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L2812
	jmp	.L2813
.L2812:
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L2814
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L2814
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L2814
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movb	%dl, 32(%rax)
.L2814:
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2815
	movq	16(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L2815
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	.LC475(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2815:
	movq	-56(%rbp), %rax
.L2801:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	parse_set_expr, .-parse_set_expr
	.section	.rodata
.LC476:
	.string	"too many arguments in term"
.LC477:
	.string	"invalid identifier '%s'"
	.align 8
.LC478:
	.string	"expected identifier or set expression"
	.text
	.type	parse_arguments, @function
parse_arguments:
.LFB412:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$0, -4(%rbp)
.L2829:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_token_start_char
	testb	%al, %al
	je	.L2817
	cmpl	$2, -4(%rbp)
	jne	.L2818
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	.LC476(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2818:
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L2819
	movl	$0, %eax
	jmp	.L2820
.L2819:
	movq	-64(%rbp), %rax
	leaq	.LC466(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L2821
	movq	-64(%rbp), %rax
	leaq	.LC465(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L2821
	movq	-64(%rbp), %rax
	leaq	.LC462(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L2821
	movq	-64(%rbp), %rax
	leaq	.LC463(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L2821
	movq	-64(%rbp), %rax
	leaq	.LC464(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2822
.L2821:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	64(%rax), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %r9
	movq	-56(%rbp), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	parse_set_expr
	addq	$16, %rsp
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L2824
	movl	$0, %eax
	jmp	.L2820
.L2822:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	64(%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_identifier
	testl	%eax, %eax
	je	.L2824
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC477(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2824:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L2825
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -56(%rbp)
	jmp	.L2830
.L2825:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L2827
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -56(%rbp)
	nop
	movq	-56(%rbp), %rax
	jmp	.L2820
.L2827:
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	.LC471(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2817:
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	.LC478(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2830:
	addl	$1, -4(%rbp)
	jmp	.L2829
.L2820:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	parse_arguments, .-parse_arguments
	.section	.rodata
	.align 8
.LC479:
	.string	"expected identifier after singleton operator"
.LC480:
	.string	"unexpected character '%c'"
	.align 8
.LC481:
	.string	"expected identifier after source operator"
.LC482:
	.string	"PARENT"
.LC483:
	.string	"SYSTEM"
.LC484:
	.string	"ANY"
.LC485:
	.string	"SHARED"
.LC486:
	.string	"CASCADE"
	.align 8
.LC487:
	.string	"expected identifier after source"
	.align 8
.LC488:
	.string	"expected identifier after role"
	.text
	.type	parse_term, @function
parse_term:
.LFB413:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$520, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -504(%rbp)
	movq	%rsi, -512(%rbp)
	movq	%rdx, -520(%rbp)
	movq	%rcx, -528(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-520(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	leaq	-480(%rbp), %rdx
	movl	$0, %eax
	movl	$24, %ecx
	movq	%rdx, %rdi
	rep stosq
	movb	$1, -292(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L2832
	movq	-488(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-480(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_annotation
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	.L2833
	movl	$0, %eax
	jmp	.L2886
.L2833:
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
.L2832:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_operator_char
	testb	%al, %al
	je	.L2835
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	parse_operator
	movl	%eax, -320(%rbp)
	movq	-488(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
.L2835:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_token_start_char
	testb	%al, %al
	je	.L2836
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rdi
	movq	-488(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	.L2837
	movl	$0, %eax
	jmp	.L2886
.L2837:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L2838
	addq	$1, -488(%rbp)
	nop
.L2839:
	endbr64
	leaq	-288(%rbp), %rax
	leaq	.LC482(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2854
	jmp	.L2888
.L2838:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	jne	.L2840
	movq	-488(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	je	.L2840
	addq	$1, -488(%rbp)
	jmp	.L2841
.L2840:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jmp	.L2843
.L2836:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L2891
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$36, %al
	jne	.L2846
	addq	$1, -488(%rbp)
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_token_start_char
	testb	%al, %al
	je	.L2847
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rdi
	movq	-488(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	.L2892
	movl	$0, %eax
	jmp	.L2886
.L2847:
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	leaq	.LC479(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2846:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	je	.L2893
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movl	%ecx, %r8d
	leaq	.LC480(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2891:
	nop
.L2845:
	endbr64
	movb	$32, -384(%rbp)
	movq	-488(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_token_start_char
	testb	%al, %al
	je	.L2852
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rdi
	movq	-488(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	.L2894
	movl	$0, %eax
	jmp	.L2886
.L2852:
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	leaq	.LC481(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2888:
	movb	$2, -384(%rbp)
	movl	$276, %eax
	movq	%rax, -392(%rbp)
	movl	$1, -376(%rbp)
	jmp	.L2855
.L2854:
	leaq	-288(%rbp), %rax
	leaq	.LC483(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2856
	movq	48+ecs_os_api(%rip), %rdx
	movq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -408(%rbp)
	jmp	.L2855
.L2856:
	leaq	-288(%rbp), %rax
	leaq	.LC484(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2857
	movb	$3, -384(%rbp)
	movl	$277, %eax
	movq	%rax, -392(%rbp)
	movl	$267, %eax
	movq	%rax, -416(%rbp)
	jmp	.L2855
.L2857:
	leaq	-288(%rbp), %rax
	leaq	.LC315(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2858
	movb	$1, -384(%rbp)
	movl	$267, %eax
	movq	%rax, -416(%rbp)
	jmp	.L2855
.L2858:
	leaq	-288(%rbp), %rax
	leaq	.LC485(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2859
	movb	$2, -384(%rbp)
	movl	$277, %eax
	movq	%rax, -392(%rbp)
	movl	$267, %eax
	movq	%rax, -416(%rbp)
	jmp	.L2855
.L2859:
	leaq	-288(%rbp), %rax
	leaq	.LC486(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2860
	movb	$10, -384(%rbp)
	movl	$276, %eax
	movq	%rax, -392(%rbp)
	movl	$267, %eax
	movq	%rax, -416(%rbp)
	movl	$3, -320(%rbp)
	jmp	.L2855
.L2860:
	leaq	-480(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_identifier
	testl	%eax, %eax
	je	.L2855
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC477(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2855:
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_token_start_char
	testb	%al, %al
	je	.L2861
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rdi
	movq	-488(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	.L2862
	movl	$0, %eax
	jmp	.L2886
.L2862:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	jne	.L2895
	movq	-488(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	je	.L2895
	addq	$1, -488(%rbp)
	jmp	.L2841
.L2861:
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	leaq	.LC487(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2841:
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	parse_role
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	testq	%rax, %rax
	jne	.L2864
	movl	$0, %eax
	jmp	.L2886
.L2864:
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_token_start_char
	testb	%al, %al
	je	.L2865
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rdi
	movq	-488(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	.L2896
	movl	$0, %eax
	jmp	.L2886
.L2865:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	je	.L2897
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	leaq	.LC488(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2894:
	nop
	jmp	.L2843
.L2895:
	nop
	jmp	.L2843
.L2896:
	nop
.L2843:
	leaq	-480(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_identifier
	testl	%eax, %eax
	je	.L2868
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC477(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2868:
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L2869
	addq	$1, -488(%rbp)
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L2870
	movb	$32, -384(%rbp)
	addq	$1, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
	jmp	.L2872
.L2870:
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rcx
	leaq	-288(%rbp), %r9
	movq	-488(%rbp), %r8
	movq	-520(%rbp), %rdx
	movq	-512(%rbp), %rsi
	movq	-504(%rbp), %rax
	subq	$8, %rsp
	leaq	-480(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	parse_arguments
	addq	$16, %rsp
	movq	%rax, -488(%rbp)
	jmp	.L2872
.L2869:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_token_start_char
	testb	%al, %al
	je	.L2898
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rdi
	movq	-488(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	.L2899
	movl	$0, %eax
	jmp	.L2886
.L2893:
	nop
	jmp	.L2851
.L2897:
	nop
.L2851:
	movq	-488(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rdi
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	.L2876
	movl	$0, %eax
	jmp	.L2886
.L2876:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L2877
	addq	$1, -488(%rbp)
	movl	$267, %eax
	movq	%rax, -416(%rbp)
	nop
.L2878:
	endbr64
	leaq	-480(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_identifier
	testl	%eax, %eax
	je	.L2879
	jmp	.L2890
.L2877:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movl	%ecx, %r8d
	leaq	.LC480(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2890:
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC477(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2879:
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_token_start_char
	testb	%al, %al
	je	.L2880
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rdi
	movq	-488(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_token
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	.L2881
	movl	$0, %eax
	jmp	.L2886
.L2881:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L2882
	addq	$1, -488(%rbp)
	jmp	.L2883
.L2882:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movl	%ecx, %r8d
	leaq	.LC480(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2880:
	movq	-488(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L2900
	nop
.L2883:
	leaq	-480(%rbp), %rax
	leaq	112(%rax), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_identifier
	testl	%eax, %eax
	je	.L2884
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC477(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2884:
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
	jmp	.L2872
.L2892:
	nop
.L2849:
	endbr64
	leaq	-480(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_identifier
	testl	%eax, %eax
	je	.L2885
	movq	-488(%rbp), %rax
	subq	-520(%rbp), %rax
	movq	%rax, %rdx
	leaq	-288(%rbp), %rcx
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC477(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2885:
	leaq	-480(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_identifier
	jmp	.L2872
.L2899:
	nop
.L2875:
	endbr64
	movq	48+ecs_os_api(%rip), %rdx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -304(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -488(%rbp)
	jmp	.L2872
.L2898:
	nop
	jmp	.L2872
.L2900:
	nop
.L2872:
	movq	-528(%rbp), %rax
	movq	-480(%rbp), %rcx
	movq	-472(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-464(%rbp), %rcx
	movq	-456(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-448(%rbp), %rcx
	movq	-440(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-432(%rbp), %rcx
	movq	-424(%rbp), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	-416(%rbp), %rcx
	movq	-408(%rbp), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	-400(%rbp), %rcx
	movq	-392(%rbp), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	-384(%rbp), %rcx
	movq	-376(%rbp), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	-368(%rbp), %rcx
	movq	-360(%rbp), %rbx
	movq	%rcx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	-352(%rbp), %rcx
	movq	-344(%rbp), %rbx
	movq	%rcx, 128(%rax)
	movq	%rbx, 136(%rax)
	movq	-336(%rbp), %rcx
	movq	-328(%rbp), %rbx
	movq	%rcx, 144(%rax)
	movq	%rbx, 152(%rax)
	movq	-320(%rbp), %rcx
	movq	-312(%rbp), %rbx
	movq	%rcx, 160(%rax)
	movq	%rbx, 168(%rax)
	movq	-304(%rbp), %rcx
	movq	-296(%rbp), %rbx
	movq	%rcx, 176(%rax)
	movq	%rbx, 184(%rax)
	movq	-488(%rbp), %rax
.L2886:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L2887
	call	__stack_chk_fail@PLT
.L2887:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	parse_term, .-parse_term
	.section	.rodata
.LC489:
	.string	"term != NULL"
.LC490:
	.string	"term != ((void *)0)"
.LC491:
	.string	"invalid preceding token"
.LC492:
	.string	"||"
	.align 8
.LC493:
	.string	"cannot combine || with other operators"
	.align 8
.LC494:
	.string	"expected end of expression or next term"
.LC495:
	.string	"unexpected term after 0"
	.align 8
.LC496:
	.string	"invalid operator for empty source"
	.align 8
.LC497:
	.string	"cannot combine different sources in OR expression"
	.text
	.globl	ecs_parse_term
	.type	ecs_parse_term, @function
ecs_parse_term:
.LFB414:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13714, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L2902
	leaq	__PRETTY_FUNCTION__.12021(%rip), %rcx
	movl	$13714, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2902:
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13715, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	jne	.L2903
	leaq	__PRETTY_FUNCTION__.12021(%rip), %rcx
	movl	$13715, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC99(%rip), %rdi
	call	__assert_fail@PLT
.L2903:
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13716, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC489(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L2904
	leaq	__PRETTY_FUNCTION__.12021(%rip), %rcx
	movl	$13716, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC490(%rip), %rdi
	call	__assert_fail@PLT
.L2904:
	movq	-72(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	movb	$0, -22(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L2905
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
.L2907:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -21(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-21(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2906
	subq	$1, -16(%rbp)
	jmp	.L2907
.L2906:
	cmpb	$44, -21(%rbp)
	je	.L2930
	movl	$124, %eax
	cmpb	%al, -21(%rbp)
	jne	.L2909
	movb	$1, -22(%rbp)
	jmp	.L2905
.L2909:
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	.LC491(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2930:
	nop
.L2905:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	skip_newline_and_space
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L2910
	movq	-64(%rbp), %rax
	jmp	.L2911
.L2910:
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L2912
	movq	-56(%rbp), %rax
	leaq	.LC293(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2912
	movq	-64(%rbp), %rax
	addq	$1, %rax
	jmp	.L2911
.L2912:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	parse_term
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L2913
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_term_fini
	movl	$0, %eax
	jmp	.L2911
.L2913:
	movq	-64(%rbp), %rax
	movl	$2, %edx
	leaq	.LC492(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L2914
	cmpb	$0, -22(%rbp)
	je	.L2915
.L2914:
	movq	-72(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	je	.L2916
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	.LC493(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2916:
	movq	-72(%rbp), %rax
	movl	$1, 160(%rax)
.L2915:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L2917
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movl	$124, %edx
	cmpb	%dl, %al
	je	.L2917
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L2917
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2917
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	.LC494(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2917:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC293(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2918
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2919
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	.LC495(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2919:
	movq	-8(%rbp), %rax
	movb	$32, 32(%rax)
.L2918:
	movq	-72(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	je	.L2920
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpb	$32, %al
	jne	.L2920
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	.LC496(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2920:
	cmpb	$0, -22(%rbp)
	je	.L2921
	movq	-72(%rbp), %rax
	movl	160(%rax), %eax
	cmpl	$1, %eax
	jne	.L2921
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -20(%rbp)
	je	.L2922
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	.LC497(%rip), %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ecs_parser_error
	call	abort@PLT
.L2922:
	movq	-72(%rbp), %rax
	movl	$1, 160(%rax)
.L2921:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpb	$32, %al
	je	.L2923
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L2923
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2923
	movl	$267, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L2923:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L2924
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC293(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2924
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movb	$32, 32(%rax)
.L2924:
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	movabsq	$-504403158265495552, %rdx
	cmpq	%rdx, %rax
	jne	.L2925
	movq	-72(%rbp), %rax
	movl	$4, 160(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 168(%rax)
	jmp	.L2926
.L2925:
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	movabsq	$-576460752303423488, %rdx
	cmpq	%rdx, %rax
	jne	.L2927
	movq	-72(%rbp), %rax
	movl	$5, 160(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 168(%rax)
	jmp	.L2926
.L2927:
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	movabsq	$-720575940379279360, %rdx
	cmpq	%rdx, %rax
	jne	.L2926
	movq	-72(%rbp), %rax
	movl	$6, 160(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 168(%rax)
.L2926:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2928
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L2929
	addq	$1, -64(%rbp)
	jmp	.L2928
.L2929:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	jne	.L2928
	addq	$2, -64(%rbp)
.L2928:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
.L2911:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ecs_parse_term, .-ecs_parse_term
	.section	.rodata
.LC498:
	.string	"column <= table->column_count"
	.text
	.type	da_get_column, @function
da_get_column:
.LFB415:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13876, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2932
	leaq	__PRETTY_FUNCTION__.12034(%rip), %rcx
	movl	$13876, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L2932:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -28(%rbp)
	setle	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13877, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC498(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L2933
	leaq	__PRETTY_FUNCTION__.12034(%rip), %rcx
	movl	$13877, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC498(%rip), %rdi
	call	__assert_fail@PLT
.L2933:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2934
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L2934
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	jmp	.L2935
.L2934:
	movl	$0, %eax
.L2935:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	da_get_column, .-da_get_column
	.section	.rodata
.LC499:
	.string	"c != NULL"
.LC500:
	.string	"c != ((void *)0)"
	.text
	.type	da_get_or_create_column, @function
da_get_or_create_column:
.LFB416:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	da_get_column
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2937
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L2938
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L2937
.L2938:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_or_create_data
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_init_data
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	da_get_column
	movq	%rax, -16(%rbp)
.L2937:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13898, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC499(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L2939
	leaq	__PRETTY_FUNCTION__.12043(%rip), %rcx
	movl	$13898, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC500(%rip), %rdi
	call	__assert_fail@PLT
.L2939:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	da_get_or_create_column, .-da_get_or_create_column
	.section	.rodata
.LC501:
	.string	"table->data != NULL"
.LC502:
	.string	"table->data != ((void *)0)"
.LC503:
	.string	"table->data->entities != NULL"
	.align 8
.LC504:
	.string	"table->data->entities != ((void *)0)"
	.text
	.type	get_entity_array, @function
get_entity_array:
.LFB417:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13907, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2942
	leaq	__PRETTY_FUNCTION__.12048(%rip), %rcx
	movl	$13907, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L2942:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13908, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC501(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L2943
	leaq	__PRETTY_FUNCTION__.12048(%rip), %rcx
	movl	$13908, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC502(%rip), %rdi
	call	__assert_fail@PLT
.L2943:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13909, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC503(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2944
	leaq	__PRETTY_FUNCTION__.12048(%rip), %rcx
	movl	$13909, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC504(%rip), %rdi
	call	__assert_fail@PLT
.L2944:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	get_entity_array, .-get_entity_array
	.globl	ecs_table_get_type
	.type	ecs_table_get_type, @function
ecs_table_get_type:
.LFB418:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ecs_table_get_type, .-ecs_table_get_type
	.globl	ecs_record_find
	.type	ecs_record_find, @function
ecs_record_find:
.LFB419:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2949
	movq	-8(%rbp), %rax
	jmp	.L2950
.L2949:
	movl	$0, %eax
.L2950:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ecs_record_find, .-ecs_record_find
	.globl	ecs_record_ensure
	.type	ecs_record_ensure, @function
ecs_record_ensure:
.LFB420:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_ensure
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13939, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2952
	leaq	__PRETTY_FUNCTION__.12063(%rip), %rcx
	movl	$13939, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC125(%rip), %rdi
	call	__assert_fail@PLT
.L2952:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	ecs_record_ensure, .-ecs_record_ensure
	.globl	ecs_table_insert
	.type	ecs_table_insert, @function
ecs_table_insert:
.LFB421:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$48, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_or_create_data
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	flecs_table_append
	movl	%eax, -28(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L2955
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 8(%rax)
.L2955:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movq	-48(%rbp), %r12
	movl	%eax, %edx
	movq	%r13, %rcx
	movabsq	$-4294967296, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movq	%rax, %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	addq	$48, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	ecs_table_insert, .-ecs_table_insert
	.globl	ecs_table_find_column
	.type	ecs_table_find_column, @function
ecs_table_find_column:
.LFB422:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13962, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L2958
	leaq	__PRETTY_FUNCTION__.12077(%rip), %rcx
	movl	$13962, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC94(%rip), %rdi
	call	__assert_fail@PLT
.L2958:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$13963, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC193(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L2959
	leaq	__PRETTY_FUNCTION__.12077(%rip), %rcx
	movl	$13963, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC193(%rip), %rdi
	call	__assert_fail@PLT
.L2959:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_type_index_of
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	ecs_table_find_column, .-ecs_table_find_column
	.globl	ecs_table_get_column
	.type	ecs_table_get_column, @function
ecs_table_get_column:
.LFB423:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	da_get_column
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2962
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L2964
.L2962:
	movl	$0, %eax
.L2964:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	ecs_table_get_column, .-ecs_table_get_column
	.globl	ecs_table_set_column
	.type	ecs_table_set_column, @function
ecs_table_set_column:
.LFB424:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	da_get_or_create_column
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L2966
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_vector_assert_size
	jmp	.L2967
.L2966:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_table_get_entities
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2967
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_table_get_column
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L2968
	movq	-16(%rbp), %rax
	movzwl	10(%rax), %eax
	movl	$16, %edx
	cmpw	$16, %ax
	cmovl	%edx, %eax
	movswl	%ax, %ecx
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %eax
	cwtl
	movl	-20(%rbp), %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	_ecs_vector_new
	movq	%rax, -64(%rbp)
	jmp	.L2967
.L2968:
	movq	-16(%rbp), %rax
	movzwl	10(%rax), %eax
	movl	$16, %edx
	cmpw	$16, %ax
	cmovl	%edx, %eax
	movswl	%ax, %edx
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %esi
	movl	-20(%rbp), %ecx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ecs_vector_set_count
.L2967:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	ecs_table_set_column, .-ecs_table_set_column
	.globl	ecs_table_get_entities
	.type	ecs_table_get_entities, @function
ecs_table_get_entities:
.LFB425:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2971
	movl	$0, %eax
	jmp	.L2972
.L2971:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L2972:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	ecs_table_get_entities, .-ecs_table_get_entities
	.globl	ecs_table_get_records
	.type	ecs_table_get_records, @function
ecs_table_get_records:
.LFB426:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2974
	movl	$0, %eax
	jmp	.L2975
.L2974:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L2975:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	ecs_table_get_records, .-ecs_table_get_records
	.section	.rodata
	.align 8
.LC505:
	.string	"ecs_vector_count(entities) == ecs_vector_count(records)"
	.text
	.globl	ecs_table_set_entities
	.type	ecs_table_set_entities, @function
ecs_table_set_entities:
.LFB427:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ecs_vector_assert_size
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ecs_vector_assert_size
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, %ebx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14030, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC505(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	cmpl	%eax, %ebx
	je	.L2977
	leaq	__PRETTY_FUNCTION__.12105(%rip), %rcx
	movl	$14030, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC505(%rip), %rdi
	call	__assert_fail@PLT
.L2977:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2978
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_get_or_create_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14036, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L2978
	leaq	__PRETTY_FUNCTION__.12105(%rip), %rcx
	movl	$14036, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC123(%rip), %rdi
	call	__assert_fail@PLT
.L2978:
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	ecs_table_set_entities, .-ecs_table_set_entities
	.globl	ecs_records_clear
	.type	ecs_records_clear, @function
ecs_records_clear:
.LFB428:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2980
.L2983:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jns	.L2981
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-1, 8(%rax)
	jmp	.L2982
.L2981:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$0, 8(%rax)
.L2982:
	addl	$1, -16(%rbp)
.L2980:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L2983
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	ecs_records_clear, .-ecs_records_clear
	.section	.rodata
.LC506:
	.string	"r[i] != NULL"
.LC507:
	.string	"r[i] != ((void *)0)"
	.text
	.globl	ecs_records_update
	.type	ecs_records_update, @function
ecs_records_update:
.LFB429:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -24(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L2985
.L2987:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	leaq	(%rcx,%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_record_ensure
	movq	%rax, (%rbx)
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14071, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC506(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2986
	leaq	__PRETTY_FUNCTION__.12126(%rip), %rcx
	movl	$14071, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC507(%rip), %rdi
	call	__assert_fail@PLT
.L2986:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	addl	$1, -40(%rbp)
.L2985:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L2987
	nop
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	ecs_records_update, .-ecs_records_update
	.section	.rodata
.LC508:
	.string	"table->data->columns != NULL"
	.align 8
.LC509:
	.string	"table->data->columns != ((void *)0)"
	.text
	.globl	ecs_table_delete_column
	.type	ecs_table_delete_column, @function
ecs_table_delete_column:
.LFB430:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L2989
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_table_get_column
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L2996
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14090, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC501(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L2992
	leaq	__PRETTY_FUNCTION__.12136(%rip), %rcx
	movl	$14090, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC502(%rip), %rdi
	call	__assert_fail@PLT
.L2992:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14091, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC508(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L2993
	leaq	__PRETTY_FUNCTION__.12136(%rip), %rcx
	movl	$14091, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC509(%rip), %rdi
	call	__assert_fail@PLT
.L2993:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L2989:
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	da_get_or_create_column
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ecs_vector_assert_size
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L2994
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L2994
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_entity_array
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -62(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -60(%rbp)
	movl	$16, %eax
	cmpw	$16, -62(%rbp)
	cmovge	-62(%rbp), %ax
	movswl	%ax, %edx
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rbx
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	movswq	%ax, %rax
	movq	%rax, %rdi
	call	flecs_to_size_t
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	80(%rax), %rsi
	movl	-60(%rbp), %r8d
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	-40(%rbp), %r10
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
.L2994:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -96(%rbp)
	jne	.L2995
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.L2995:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	jmp	.L2988
.L2996:
	nop
.L2988:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	ecs_table_delete_column, .-ecs_table_delete_column
	.section	.rodata
	.align 8
.LC510:
	.string	"!flecs_from_size_t(c_size) || flecs_from_size_t(c_size) == c->size"
	.text
	.globl	ecs_record_get_column
	.type	ecs_record_get_column, @function
ecs_record_get_column:
.LFB431:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-60(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	da_get_column
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2998
	movl	$0, %eax
	jmp	.L3004
.L2998:
	movq	-24(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -38(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	testl	%eax, %eax
	je	.L3000
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movq	-24(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movswl	%dx, %edx
	cmpl	%edx, %eax
	jne	.L3001
.L3000:
	movl	$1, %eax
	jmp	.L3002
.L3001:
	movl	$0, %eax
.L3002:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14130, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC510(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	testl	%eax, %eax
	je	.L3003
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movq	-24(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movswl	%dx, %edx
	cmpl	%edx, %eax
	je	.L3003
	leaq	__PRETTY_FUNCTION__.12152(%rip), %rcx
	movl	$14130, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC510(%rip), %rdi
	call	__assert_fail@PLT
.L3003:
	movq	-24(%rbp), %rax
	movzwl	10(%rax), %eax
	movl	$16, %edx
	cmpw	$16, %ax
	cmovl	%edx, %eax
	movswl	%ax, %edx
	movq	-24(%rbp), %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	leaq	-39(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	flecs_record_to_row
	movl	%eax, -36(%rbp)
	movswl	-38(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
.L3004:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L3005
	call	__stack_chk_fail@PLT
.L3005:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	ecs_record_get_column, .-ecs_record_get_column
	.section	.rodata
.LC511:
	.string	"c_size != 0"
.LC512:
	.string	"value != NULL"
.LC513:
	.string	"value != ((void *)0)"
	.text
	.globl	ecs_record_copy_to
	.type	ecs_record_copy_to, @function
ecs_record_copy_to:
.LFB432:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	%r9d, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -88(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14147, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -88(%rbp)
	jne	.L3007
	leaq	__PRETTY_FUNCTION__.12164(%rip), %rcx
	movl	$14147, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3007:
	cmpq	$0, -96(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14148, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -96(%rbp)
	jne	.L3008
	leaq	__PRETTY_FUNCTION__.12164(%rip), %rcx
	movl	$14148, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC125(%rip), %rdi
	call	__assert_fail@PLT
.L3008:
	cmpq	$0, -112(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14149, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC511(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -112(%rbp)
	jne	.L3009
	leaq	__PRETTY_FUNCTION__.12164(%rip), %rcx
	movl	$14149, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC511(%rip), %rdi
	call	__assert_fail@PLT
.L3009:
	cmpq	$0, -120(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14150, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC512(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -120(%rbp)
	jne	.L3010
	leaq	__PRETTY_FUNCTION__.12164(%rip), %rcx
	movl	$14150, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC513(%rip), %rdi
	call	__assert_fail@PLT
.L3010:
	cmpl	$0, -104(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14151, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC188(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -104(%rbp)
	jne	.L3011
	leaq	__PRETTY_FUNCTION__.12164(%rip), %rcx
	movl	$14151, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC188(%rip), %rdi
	call	__assert_fail@PLT
.L3011:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-100(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	da_get_or_create_column
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	testl	%eax, %eax
	je	.L3012
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movq	-48(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movswl	%dx, %edx
	cmpl	%edx, %eax
	jne	.L3013
.L3012:
	movl	$1, %eax
	jmp	.L3014
.L3013:
	movl	$0, %eax
.L3014:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14156, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC510(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	testl	%eax, %eax
	je	.L3015
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movq	-48(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movswl	%dx, %edx
	cmpl	%edx, %eax
	je	.L3015
	leaq	__PRETTY_FUNCTION__.12164(%rip), %rcx
	movl	$14156, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC510(%rip), %rdi
	call	__assert_fail@PLT
.L3015:
	movq	-48(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -62(%rbp)
	movq	-96(%rbp), %rax
	movl	8(%rax), %eax
	leaq	-65(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	flecs_record_to_row
	movl	%eax, -60(%rbp)
	movl	$16, %eax
	cmpw	$16, -62(%rbp)
	cmovge	-62(%rbp), %ax
	movswl	%ax, %edx
	movswl	-64(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14163, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L3016
	leaq	__PRETTY_FUNCTION__.12164(%rip), %rcx
	movl	$14163, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC99(%rip), %rdi
	call	__assert_fail@PLT
.L3016:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L3017
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L3017
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_entity_array
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-120(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movl	-104(%rbp), %edi
	pushq	%rdi
	pushq	-112(%rbp)
	movq	-24(%rbp), %r10
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L3018
.L3017:
	movswl	-64(%rbp), %eax
	imull	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L3018:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3019
	call	__stack_chk_fail@PLT
.L3019:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	ecs_record_copy_to, .-ecs_record_copy_to
	.globl	ecs_record_copy_pod_to
	.type	ecs_record_copy_pod_to, @function
ecs_record_copy_pod_to:
.LFB433:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14184, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L3021
	leaq	__PRETTY_FUNCTION__.12183(%rip), %rcx
	movl	$14184, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3021:
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14185, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	jne	.L3022
	leaq	__PRETTY_FUNCTION__.12183(%rip), %rcx
	movl	$14185, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC125(%rip), %rdi
	call	__assert_fail@PLT
.L3022:
	cmpq	$0, -80(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14186, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC511(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -80(%rbp)
	jne	.L3023
	leaq	__PRETTY_FUNCTION__.12183(%rip), %rcx
	movl	$14186, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC511(%rip), %rdi
	call	__assert_fail@PLT
.L3023:
	cmpq	$0, -88(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14187, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC512(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -88(%rbp)
	jne	.L3024
	leaq	__PRETTY_FUNCTION__.12183(%rip), %rcx
	movl	$14187, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC513(%rip), %rdi
	call	__assert_fail@PLT
.L3024:
	cmpl	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14188, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC188(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -72(%rbp)
	jne	.L3025
	leaq	__PRETTY_FUNCTION__.12183(%rip), %rcx
	movl	$14188, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC188(%rip), %rdi
	call	__assert_fail@PLT
.L3025:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-68(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	da_get_or_create_column
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	testl	%eax, %eax
	je	.L3026
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movq	-24(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movswl	%dx, %edx
	cmpl	%edx, %eax
	jne	.L3027
.L3026:
	movl	$1, %eax
	jmp	.L3028
.L3027:
	movl	$0, %eax
.L3028:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14194, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC510(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	testl	%eax, %eax
	je	.L3029
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movq	-24(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movswl	%dx, %edx
	cmpl	%edx, %eax
	je	.L3029
	leaq	__PRETTY_FUNCTION__.12183(%rip), %rcx
	movl	$14194, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC510(%rip), %rdi
	call	__assert_fail@PLT
.L3029:
	movq	-24(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -38(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	leaq	-41(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	flecs_record_to_row
	movl	%eax, -36(%rbp)
	movl	$16, %eax
	cmpw	$16, -38(%rbp)
	cmovge	-38(%rbp), %ax
	movswl	%ax, %edx
	movswl	-40(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %ecx
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14201, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L3030
	leaq	__PRETTY_FUNCTION__.12183(%rip), %rcx
	movl	$14201, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC99(%rip), %rdi
	call	__assert_fail@PLT
.L3030:
	movswl	-40(%rbp), %eax
	imull	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3031
	call	__stack_chk_fail@PLT
.L3031:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	ecs_record_copy_pod_to, .-ecs_record_copy_pod_to
	.globl	ecs_record_move_to
	.type	ecs_record_move_to, @function
ecs_record_move_to:
.LFB434:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	%r9d, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -88(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14214, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -88(%rbp)
	jne	.L3033
	leaq	__PRETTY_FUNCTION__.12199(%rip), %rcx
	movl	$14214, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3033:
	cmpq	$0, -96(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14215, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -96(%rbp)
	jne	.L3034
	leaq	__PRETTY_FUNCTION__.12199(%rip), %rcx
	movl	$14215, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC125(%rip), %rdi
	call	__assert_fail@PLT
.L3034:
	cmpq	$0, -112(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14216, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC511(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -112(%rbp)
	jne	.L3035
	leaq	__PRETTY_FUNCTION__.12199(%rip), %rcx
	movl	$14216, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC511(%rip), %rdi
	call	__assert_fail@PLT
.L3035:
	cmpq	$0, -120(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14217, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC512(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -120(%rbp)
	jne	.L3036
	leaq	__PRETTY_FUNCTION__.12199(%rip), %rcx
	movl	$14217, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC513(%rip), %rdi
	call	__assert_fail@PLT
.L3036:
	cmpl	$0, -104(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14218, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC188(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpl	$0, -104(%rbp)
	jne	.L3037
	leaq	__PRETTY_FUNCTION__.12199(%rip), %rcx
	movl	$14218, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC188(%rip), %rdi
	call	__assert_fail@PLT
.L3037:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-100(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	da_get_or_create_column
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzwl	8(%rax), %eax
	movw	%ax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	testl	%eax, %eax
	je	.L3038
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movq	-48(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movswl	%dx, %edx
	cmpl	%edx, %eax
	jne	.L3039
.L3038:
	movl	$1, %eax
	jmp	.L3040
.L3039:
	movl	$0, %eax
.L3040:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14223, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC510(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	testl	%eax, %eax
	je	.L3041
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	movq	-48(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movswl	%dx, %edx
	cmpl	%edx, %eax
	je	.L3041
	leaq	__PRETTY_FUNCTION__.12199(%rip), %rcx
	movl	$14223, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC510(%rip), %rdi
	call	__assert_fail@PLT
.L3041:
	movq	-48(%rbp), %rax
	movzwl	10(%rax), %eax
	movw	%ax, -62(%rbp)
	movq	-96(%rbp), %rax
	movl	8(%rax), %eax
	leaq	-65(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	flecs_record_to_row
	movl	%eax, -60(%rbp)
	movl	$16, %eax
	cmpw	$16, -62(%rbp)
	cmovge	-62(%rbp), %ax
	movswl	%ax, %edx
	movswl	-64(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movq	%rax, %rdi
	call	_ecs_vector_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14230, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L3042
	leaq	__PRETTY_FUNCTION__.12199(%rip), %rcx
	movl	$14230, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC99(%rip), %rdi
	call	__assert_fail@PLT
.L3042:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L3043
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L3043
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_entity_array
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-120(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movl	-104(%rbp), %edi
	pushq	%rdi
	pushq	-112(%rbp)
	movq	-24(%rbp), %r10
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L3044
.L3043:
	movswl	-64(%rbp), %eax
	imull	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L3044:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3045
	call	__stack_chk_fail@PLT
.L3045:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	ecs_record_move_to, .-ecs_record_move_to
	.globl	ECS_CASE
	.section	.rodata
	.align 8
	.type	ECS_CASE, @object
	.size	ECS_CASE, 8
ECS_CASE:
	.quad	-288230376151711744
	.globl	ECS_SWITCH
	.align 8
	.type	ECS_SWITCH, @object
	.size	ECS_SWITCH, 8
ECS_SWITCH:
	.quad	-360287970189639680
	.globl	ECS_PAIR
	.align 8
	.type	ECS_PAIR, @object
	.size	ECS_PAIR, 8
ECS_PAIR:
	.quad	-432345564227567616
	.globl	ECS_OWNED
	.align 8
	.type	ECS_OWNED, @object
	.size	ECS_OWNED, 8
ECS_OWNED:
	.quad	-792633534417207296
	.globl	ECS_DISABLED
	.align 8
	.type	ECS_DISABLED, @object
	.size	ECS_DISABLED, 8
ECS_DISABLED:
	.quad	-864691128455135232
	.globl	EcsWorld
	.align 8
	.type	EcsWorld, @object
	.size	EcsWorld, 8
EcsWorld:
	.quad	256
	.globl	EcsFlecs
	.align 8
	.type	EcsFlecs, @object
	.size	EcsFlecs, 8
EcsFlecs:
	.quad	257
	.globl	EcsFlecsCore
	.align 8
	.type	EcsFlecsCore, @object
	.size	EcsFlecsCore, 8
EcsFlecsCore:
	.quad	258
	.globl	EcsModule
	.align 8
	.type	EcsModule, @object
	.size	EcsModule, 8
EcsModule:
	.quad	259
	.globl	EcsPrefab
	.align 8
	.type	EcsPrefab, @object
	.size	EcsPrefab, 8
EcsPrefab:
	.quad	260
	.globl	EcsDisabled
	.align 8
	.type	EcsDisabled, @object
	.size	EcsDisabled, 8
EcsDisabled:
	.quad	261
	.globl	EcsHidden
	.align 8
	.type	EcsHidden, @object
	.size	EcsHidden, 8
EcsHidden:
	.quad	262
	.globl	EcsWildcard
	.align 8
	.type	EcsWildcard, @object
	.size	EcsWildcard, 8
EcsWildcard:
	.quad	266
	.globl	EcsThis
	.align 8
	.type	EcsThis, @object
	.size	EcsThis, 8
EcsThis:
	.quad	267
	.globl	EcsTransitive
	.align 8
	.type	EcsTransitive, @object
	.size	EcsTransitive, 8
EcsTransitive:
	.quad	268
	.globl	EcsFinal
	.align 8
	.type	EcsFinal, @object
	.size	EcsFinal, 8
EcsFinal:
	.quad	269
	.globl	EcsTag
	.align 8
	.type	EcsTag, @object
	.size	EcsTag, 8
EcsTag:
	.quad	270
	.globl	EcsName
	.align 8
	.type	EcsName, @object
	.size	EcsName, 8
EcsName:
	.quad	271
	.globl	EcsSymbol
	.align 8
	.type	EcsSymbol, @object
	.size	EcsSymbol, 8
EcsSymbol:
	.quad	272
	.globl	EcsChildOf
	.align 8
	.type	EcsChildOf, @object
	.size	EcsChildOf, 8
EcsChildOf:
	.quad	276
	.globl	EcsIsA
	.align 8
	.type	EcsIsA, @object
	.size	EcsIsA, 8
EcsIsA:
	.quad	277
	.globl	EcsOnAdd
	.align 8
	.type	EcsOnAdd, @object
	.size	EcsOnAdd, 8
EcsOnAdd:
	.quad	286
	.globl	EcsOnRemove
	.align 8
	.type	EcsOnRemove, @object
	.size	EcsOnRemove, 8
EcsOnRemove:
	.quad	287
	.globl	EcsOnSet
	.align 8
	.type	EcsOnSet, @object
	.size	EcsOnSet, 8
EcsOnSet:
	.quad	288
	.globl	EcsUnSet
	.align 8
	.type	EcsUnSet, @object
	.size	EcsUnSet, 8
EcsUnSet:
	.quad	289
	.globl	EcsOnDelete
	.align 8
	.type	EcsOnDelete, @object
	.size	EcsOnDelete, 8
EcsOnDelete:
	.quad	290
	.globl	EcsOnCreateTable
	.align 8
	.type	EcsOnCreateTable, @object
	.size	EcsOnCreateTable, 8
EcsOnCreateTable:
	.quad	291
	.globl	EcsOnDeleteTable
	.align 8
	.type	EcsOnDeleteTable, @object
	.size	EcsOnDeleteTable, 8
EcsOnDeleteTable:
	.quad	292
	.globl	EcsOnTableEmpty
	.align 8
	.type	EcsOnTableEmpty, @object
	.size	EcsOnTableEmpty, 8
EcsOnTableEmpty:
	.quad	293
	.globl	EcsOnTableNonEmpty
	.align 8
	.type	EcsOnTableNonEmpty, @object
	.size	EcsOnTableNonEmpty, 8
EcsOnTableNonEmpty:
	.quad	294
	.globl	EcsOnCreateTrigger
	.align 8
	.type	EcsOnCreateTrigger, @object
	.size	EcsOnCreateTrigger, 8
EcsOnCreateTrigger:
	.quad	295
	.globl	EcsOnDeleteTrigger
	.align 8
	.type	EcsOnDeleteTrigger, @object
	.size	EcsOnDeleteTrigger, 8
EcsOnDeleteTrigger:
	.quad	296
	.globl	EcsOnDeleteObservable
	.align 8
	.type	EcsOnDeleteObservable, @object
	.size	EcsOnDeleteObservable, 8
EcsOnDeleteObservable:
	.quad	297
	.globl	EcsOnComponentLifecycle
	.align 8
	.type	EcsOnComponentLifecycle, @object
	.size	EcsOnComponentLifecycle, 8
EcsOnComponentLifecycle:
	.quad	298
	.globl	EcsOnDeleteObject
	.align 8
	.type	EcsOnDeleteObject, @object
	.size	EcsOnDeleteObject, 8
EcsOnDeleteObject:
	.quad	299
	.globl	EcsRemove
	.align 8
	.type	EcsRemove, @object
	.size	EcsRemove, 8
EcsRemove:
	.quad	306
	.globl	EcsDelete
	.align 8
	.type	EcsDelete, @object
	.size	EcsDelete, 8
EcsDelete:
	.quad	307
	.globl	EcsThrow
	.align 8
	.type	EcsThrow, @object
	.size	EcsThrow, 8
EcsThrow:
	.quad	308
	.globl	EcsOnDemand
	.align 8
	.type	EcsOnDemand, @object
	.size	EcsOnDemand, 8
EcsOnDemand:
	.quad	316
	.globl	EcsMonitor
	.align 8
	.type	EcsMonitor, @object
	.size	EcsMonitor, 8
EcsMonitor:
	.quad	317
	.globl	EcsDisabledIntern
	.align 8
	.type	EcsDisabledIntern, @object
	.size	EcsDisabledIntern, 8
EcsDisabledIntern:
	.quad	318
	.globl	EcsInactive
	.align 8
	.type	EcsInactive, @object
	.size	EcsInactive, 8
EcsInactive:
	.quad	319
	.globl	EcsPipeline
	.align 8
	.type	EcsPipeline, @object
	.size	EcsPipeline, 8
EcsPipeline:
	.quad	320
	.globl	EcsPreFrame
	.align 8
	.type	EcsPreFrame, @object
	.size	EcsPreFrame, 8
EcsPreFrame:
	.quad	321
	.globl	EcsOnLoad
	.align 8
	.type	EcsOnLoad, @object
	.size	EcsOnLoad, 8
EcsOnLoad:
	.quad	322
	.globl	EcsPostLoad
	.align 8
	.type	EcsPostLoad, @object
	.size	EcsPostLoad, 8
EcsPostLoad:
	.quad	323
	.globl	EcsPreUpdate
	.align 8
	.type	EcsPreUpdate, @object
	.size	EcsPreUpdate, 8
EcsPreUpdate:
	.quad	324
	.globl	EcsOnUpdate
	.align 8
	.type	EcsOnUpdate, @object
	.size	EcsOnUpdate, 8
EcsOnUpdate:
	.quad	325
	.globl	EcsOnValidate
	.align 8
	.type	EcsOnValidate, @object
	.size	EcsOnValidate, 8
EcsOnValidate:
	.quad	326
	.globl	EcsPostUpdate
	.align 8
	.type	EcsPostUpdate, @object
	.size	EcsPostUpdate, 8
EcsPostUpdate:
	.quad	327
	.globl	EcsPreStore
	.align 8
	.type	EcsPreStore, @object
	.size	EcsPreStore, 8
EcsPreStore:
	.quad	328
	.globl	EcsOnStore
	.align 8
	.type	EcsOnStore, @object
	.size	EcsOnStore, 8
EcsOnStore:
	.quad	329
	.globl	EcsPostFrame
	.align 8
	.type	EcsPostFrame, @object
	.size	EcsPostFrame, 8
EcsPostFrame:
	.quad	330
	.text
	.globl	ecs_get_world
	.type	ecs_get_world, @function
ecs_get_world:
.LFB435:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14320, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3047
	leaq	__PRETTY_FUNCTION__.12266(%rip), %rcx
	movl	$14320, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3047:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	jne	.L3048
	movq	-8(%rbp), %rax
	jmp	.L3049
.L3048:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
.L3049:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	ecs_get_world, .-ecs_get_world
	.globl	flecs_stage_from_readonly_world
	.type	flecs_stage_from_readonly_world, @function
flecs_stage_from_readonly_world:
.LFB436:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3051
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	jne	.L3052
.L3051:
	movl	$1, %eax
	jmp	.L3053
.L3052:
	movl	$0, %eax
.L3053:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14332, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC339(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3054
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	je	.L3054
	leaq	__PRETTY_FUNCTION__.12270(%rip), %rcx
	movl	$14332, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC340(%rip), %rdi
	call	__assert_fail@PLT
.L3054:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	jne	.L3055
	movq	-8(%rbp), %rax
	addq	$368, %rax
	jmp	.L3056
.L3055:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	jne	.L3057
	movq	-8(%rbp), %rax
	jmp	.L3056
.L3057:
	movl	$0, %eax
.L3056:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	flecs_stage_from_readonly_world, .-flecs_stage_from_readonly_world
	.globl	flecs_stage_from_world
	.type	flecs_stage_from_world, @function
flecs_stage_from_world:
.LFB437:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3059
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	jne	.L3060
.L3059:
	movl	$1, %eax
	jmp	.L3061
.L3060:
	movl	$0, %eax
.L3061:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14352, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC339(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3062
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	je	.L3062
	leaq	__PRETTY_FUNCTION__.12275(%rip), %rcx
	movl	$14352, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC340(%rip), %rdi
	call	__assert_fail@PLT
.L3062:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	jne	.L3063
	movq	-16(%rbp), %rax
	movzbl	681(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14358, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC217(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-16(%rbp), %rax
	movzbl	681(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L3064
	leaq	__PRETTY_FUNCTION__.12275(%rip), %rcx
	movl	$14358, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC217(%rip), %rdi
	call	__assert_fail@PLT
.L3064:
	movq	-16(%rbp), %rax
	addq	$368, %rax
	jmp	.L3065
.L3063:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016436, %eax
	jne	.L3066
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L3065
.L3066:
	movl	$0, %eax
.L3065:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	flecs_stage_from_world, .-flecs_stage_from_world
	.type	eval_component_monitor, @function
eval_component_monitor:
.LFB438:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-168(%rbp), %rax
	addq	$248, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L3080
	movq	-152(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L3070
.L3078:
	movq	-144(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L3071
	jmp	.L3070
.L3071:
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L3072
	movq	-144(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L3073
.L3077:
	movq	-136(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L3074
	jmp	.L3073
.L3074:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -156(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -128(%rbp)
	movl	$0, -160(%rbp)
	jmp	.L3075
.L3076:
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movl	$3, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-112(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_query_notify
	addl	$1, -160(%rbp)
.L3075:
	movl	-160(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jl	.L3076
	movq	-136(%rbp), %rax
	movb	$0, 8(%rax)
.L3073:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L3077
.L3072:
	movq	-144(%rbp), %rax
	movb	$0, 8(%rax)
.L3070:
	leaq	-80(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.L3078
	movq	-152(%rbp), %rax
	movb	$0, 8(%rax)
	jmp	.L3067
.L3080:
	nop
.L3067:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3079
	call	__stack_chk_fail@PLT
.L3079:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	eval_component_monitor, .-eval_component_monitor
	.section	.rodata
	.align 8
.LC514:
	.string	"world->monitors.monitor_sets != NULL"
	.align 8
.LC515:
	.string	"world->monitors.monitor_sets != ((void *)0)"
	.text
	.globl	flecs_monitor_mark_dirty
	.type	flecs_monitor_mark_dirty, @function
flecs_monitor_mark_dirty:
.LFB439:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14421, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC514(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L3082
	leaq	__PRETTY_FUNCTION__.12304(%rip), %rcx
	movl	$14421, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC515(%rip), %rdi
	call	__assert_fail@PLT
.L3082:
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L3084
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L3084
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L3084
	movq	-8(%rbp), %rax
	movb	$1, 8(%rax)
	movq	-16(%rbp), %rax
	movb	$1, 8(%rax)
	movq	-24(%rbp), %rax
	movb	$1, 256(%rax)
.L3084:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	flecs_monitor_mark_dirty, .-flecs_monitor_mark_dirty
	.section	.rodata
.LC516:
	.string	"id != 0"
.LC517:
	.string	"ms != NULL"
.LC518:
	.string	"ms != ((void *)0)"
	.text
	.globl	flecs_monitor_register
	.type	flecs_monitor_register, @function
flecs_monitor_register:
.LFB440:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14444, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -40(%rbp)
	jne	.L3086
	leaq	__PRETTY_FUNCTION__.12313(%rip), %rcx
	movl	$14444, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3086:
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14445, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC516(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -56(%rbp)
	jne	.L3087
	leaq	__PRETTY_FUNCTION__.12313(%rip), %rcx
	movl	$14445, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC516(%rip), %rdi
	call	__assert_fail@PLT
.L3087:
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14446, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -64(%rbp)
	jne	.L3088
	leaq	__PRETTY_FUNCTION__.12313(%rip), %rcx
	movl	$14446, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC89(%rip), %rdi
	call	__assert_fail@PLT
.L3088:
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14447, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC514(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L3089
	leaq	__PRETTY_FUNCTION__.12313(%rip), %rcx
	movl	$14447, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC515(%rip), %rdi
	call	__assert_fail@PLT
.L3089:
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_ensure
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14451, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC517(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L3090
	leaq	__PRETTY_FUNCTION__.12313(%rip), %rcx
	movl	$14451, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC518(%rip), %rdi
	call	__assert_fail@PLT
.L3090:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L3091
	movl	$1, %edx
	movl	$8, %esi
	movl	$16, %edi
	call	_ecs_map_new
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
.L3091:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_ensure
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14458, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -16(%rbp)
	jne	.L3092
	leaq	__PRETTY_FUNCTION__.12313(%rip), %rcx
	movl	$14458, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC87(%rip), %rdi
	call	__assert_fail@PLT
.L3092:
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	flecs_monitor_register, .-flecs_monitor_register
	.type	monitors_init, @function
monitors_init:
.LFB441:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, %edx
	movl	$8, %esi
	movl	$16, %edi
	call	_ecs_map_new
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movb	$0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	monitors_init, .-monitors_init
	.type	monitors_fini, @function
monitors_fini:
.LFB442:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L3095
.L3098:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L3095
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L3096
.L3097:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
.L3096:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L3097
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
.L3095:
	leaq	-80(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L3098
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3099
	call	__stack_chk_fail@PLT
.L3099:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	monitors_fini, .-monitors_fini
	.type	init_store, @function
init_store:
.LFB443:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movl	$184, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$16, %edi
	call	_flecs_sparse_new
	movq	-40(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-40(%rbp), %rax
	leaq	536(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_sparse_set_id_source
	movl	$136, %edi
	call	_flecs_sparse_new
	movq	-40(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-40(%rbp), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_hashmap_new
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 56(%rbx)
	movq	%rdx, 64(%rbx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 72(%rbx)
	movq	%rdx, 80(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_init_root_table
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3101
	call	__stack_chk_fail@PLT
.L3101:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	init_store, .-init_store
	.type	clean_tables, @function
clean_tables:
.LFB444:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L3103
.L3104:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	-24(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_free
	addl	$1, -24(%rbp)
.L3103:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L3104
	movl	$0, -24(%rbp)
	jmp	.L3105
.L3106:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	-24(%rbp), %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_table_free_type
	addl	$1, -24(%rbp)
.L3105:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L3106
	cmpl	$0, -20(%rbp)
	je	.L3108
	movq	-40(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_reset
.L3108:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	clean_tables, .-clean_tables
	.type	fini_store, @function
fini_store:
.LFB445:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clean_tables
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_free
	movq	-8(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_clear
	movq	-8(%rbp), %rax
	pushq	80(%rax)
	pushq	72(%rax)
	pushq	64(%rax)
	pushq	56(%rax)
	call	flecs_hashmap_free
	addq	$32, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	fini_store, .-fini_store
	.section	.rodata
.LC519:
	.string	"bootstrap"
.LC520:
	.string	"threading not available"
.LC521:
	.string	"time management not available"
	.text
	.globl	ecs_mini
	.type	ecs_mini, @function
ecs_mini:
.LFB446:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	call	ecs_os_init
	leaq	.LC519(%rip), %rcx
	movl	$14552, %edx
	leaq	.LC74(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	_ecs_trace
	call	ecs_log_push
	call	ecs_os_has_heap
	xorl	$1, %eax
	testb	%al, %al
	je	.L3111
	movl	$0, %ecx
	movl	$14556, %edx
	leaq	.LC74(%rip), %rsi
	movl	$9, %edi
	movl	$0, %eax
	call	_ecs_abort
	call	abort@PLT
.L3111:
	call	ecs_os_has_threading
	xorl	$1, %eax
	testb	%al, %al
	je	.L3112
	leaq	.LC520(%rip), %rcx
	movl	$14560, %edx
	leaq	.LC74(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	_ecs_trace
.L3112:
	call	ecs_os_has_time
	xorl	$1, %eax
	testb	%al, %al
	je	.L3113
	leaq	.LC521(%rip), %rcx
	movl	$14564, %edx
	leaq	.LC74(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	_ecs_trace
.L3113:
	movq	32+ecs_os_api(%rip), %rax
	movl	$704, %edi
	call	*%rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14568, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L3114
	leaq	__PRETTY_FUNCTION__.12356(%rip), %rcx
	movl	$14568, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3114:
	movq	-32(%rbp), %rax
	movl	$1701016439, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, 696(%rax)
	movl	$104, %edi
	call	_flecs_sparse_new
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movl	$8, %edx
	movl	$8, %esi
	movl	$24, %edi
	call	_ecs_map_new
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movl	$8, %edx
	movl	$8, %esi
	movl	$32, %edi
	call	_ecs_map_new
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movl	$1744, %edi
	call	_flecs_sparse_new
	movq	-32(%rbp), %rdx
	movq	%rax, 224(%rdx)
	movl	$328, %edi
	call	_flecs_sparse_new
	movq	-32(%rbp), %rdx
	movq	%rax, 232(%rdx)
	movl	$1744, %edi
	call	_flecs_sparse_new
	movq	-32(%rbp), %rdx
	movq	%rax, 240(%rdx)
	movl	$0, %edx
	movl	$16, %esi
	movl	$8, %edi
	call	_ecs_vector_new
	movq	-32(%rbp), %rdx
	movq	%rax, 288(%rdx)
	movq	-32(%rbp), %rax
	movq	$0, 464(%rax)
	movq	-32(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_string_hashmap_new
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 304(%rbx)
	movq	%rdx, 312(%rbx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 320(%rbx)
	movq	%rdx, 328(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_string_hashmap_new
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 336(%rbx)
	movq	%rdx, 344(%rbx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 352(%rbx)
	movq	%rdx, 360(%rbx)
	movq	-32(%rbp), %rax
	addq	$248, %rax
	movq	%rax, %rdi
	call	monitors_init
	movl	$0, %edx
	movl	$8, %esi
	movl	$8, %edi
	call	_ecs_map_new
	movq	-32(%rbp), %rdx
	movq	%rax, 296(%rdx)
	movl	$0, %edx
	movl	$8, %esi
	movl	$16, %edi
	call	_ecs_map_new
	movq	-32(%rbp), %rdx
	movq	%rax, 272(%rdx)
	movl	$0, %edx
	movl	$8, %esi
	movl	$16, %edi
	call	_ecs_map_new
	movq	-32(%rbp), %rdx
	movq	%rax, 280(%rdx)
	movq	-32(%rbp), %rax
	movq	$0, 456(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 500(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 496(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 680(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 681(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 682(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 683(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 684(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 685(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 686(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 512(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 516(%rax)
	call	ecs_os_has_time
	testb	%al, %al
	je	.L3115
	movq	168+ecs_os_api(%rip), %rax
	movq	-32(%rbp), %rdx
	addq	$504, %rdx
	movq	%rdx, %rdi
	call	*%rax
.L3115:
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 572(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 536(%rax)
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 560(%rax)
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 564(%rax)
	movq	-32(%rbp), %rax
	movss	.LC414(%rip), %xmm0
	movss	%xmm0, 568(%rax)
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 576(%rax)
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 580(%rax)
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 584(%rax)
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 588(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 596(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 600(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 608(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 604(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 32(%rax)
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 520(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 688(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 616(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 620(%rax)
	movq	-32(%rbp), %rax
	leaq	368(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_stage_init
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ecs_set_stages
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	init_store
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_bootstrap
	call	ecs_log_pop
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L3117
	call	__stack_chk_fail@PLT
.L3117:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	ecs_mini, .-ecs_mini
	.section	.rodata
.LC522:
	.string	"import builtin modules"
.LC523:
	.string	"FlecsPipeline"
.LC524:
	.string	"FlecsTimer"
	.text
	.globl	ecs_init
	.type	ecs_init, @function
ecs_init:
.LFB447:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	ecs_mini
	movq	%rax, -104(%rbp)
	leaq	.LC522(%rip), %rcx
	movl	$14649, %edx
	leaq	.LC74(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	_ecs_trace
	call	ecs_log_push
	leaq	.LC523(%rip), %rdi
	call	ecs_module_path_from_c
	movq	%rax, -96(%rbp)
	leaq	-128(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$4, %r8d
	leaq	FlecsPipelineImport(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_import
	movq	%rax, -120(%rbp)
	movq	40+ecs_os_api(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	$1, -60(%rbp)
	movq	$8, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC524(%rip), %rdi
	call	ecs_module_path_from_c
	movq	%rax, -80(%rbp)
	leaq	-124(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$4, %r8d
	leaq	FlecsTimerImport(%rip), %rsi
	movq	%rax, %rdi
	call	ecs_import
	movq	%rax, -112(%rbp)
	movq	40+ecs_os_api(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	$1, -28(%rbp)
	movq	$8, -24(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ecs_log_pop
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L3120
	call	__stack_chk_fail@PLT
.L3120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	ecs_init, .-ecs_init
	.globl	ecs_init_w_args
	.type	ecs_init_w_args, @function
ecs_init_w_args:
.LFB448:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	call	ecs_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	ecs_init_w_args, .-ecs_init_w_args
	.globl	ecs_quit
	.type	ecs_quit, @function
ecs_quit:
.LFB449:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14695, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L3124
	leaq	__PRETTY_FUNCTION__.12391(%rip), %rcx
	movl	$14695, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3124:
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	-8(%rbp), %rax
	movb	$1, 685(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	ecs_quit, .-ecs_quit
	.globl	ecs_should_quit
	.type	ecs_should_quit, @function
ecs_should_quit:
.LFB450:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14703, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3126
	leaq	__PRETTY_FUNCTION__.12395(%rip), %rcx
	movl	$14703, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3126:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	685(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	ecs_should_quit, .-ecs_should_quit
	.type	on_demand_in_map_fini, @function
on_demand_in_map_fini:
.LFB451:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L3129
.L3130:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
.L3129:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L3130
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3131
	call	__stack_chk_fail@PLT
.L3131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	on_demand_in_map_fini, .-on_demand_in_map_fini
	.globl	flecs_notify_tables
	.type	flecs_notify_tables, @function
flecs_notify_tables:
.LFB452:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -104(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14727, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -104(%rbp)
	jne	.L3133
	leaq	__PRETTY_FUNCTION__.12409(%rip), %rcx
	movl	$14727, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3133:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14728, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3134
	leaq	__PRETTY_FUNCTION__.12409(%rip), %rcx
	movl	$14728, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3134:
	cmpq	$0, -112(%rbp)
	jne	.L3135
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -84(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L3136
.L3137:
	movl	-88(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_notify
	addl	$1, -88(%rbp)
.L3136:
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L3137
	jmp	.L3132
.L3135:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_id_record
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L3143
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L3140
.L3141:
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	flecs_table_notify
.L3140:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L3141
	jmp	.L3132
.L3143:
	nop
.L3132:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3142
	call	__stack_chk_fail@PLT
.L3142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	flecs_notify_tables, .-flecs_notify_tables
	.type	default_ctor, @function
default_ctor:
.LFB453:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	imull	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	default_ctor, .-default_ctor
	.type	default_copy_ctor, @function
default_copy_ctor:
.LFB454:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %r10
	movl	32(%rbp), %r8d
	movq	24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	16(%rax), %r10
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	32(%rbp), %edi
	pushq	%rdi
	pushq	24(%rbp)
	movq	16(%rbp), %r9
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	default_copy_ctor, .-default_copy_ctor
	.type	default_move_ctor, @function
default_move_ctor:
.LFB455:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %r10
	movl	32(%rbp), %r8d
	movq	24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	24(%rax), %r10
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	32(%rbp), %edi
	pushq	%rdi
	pushq	24(%rbp)
	movq	16(%rbp), %r9
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	default_move_ctor, .-default_move_ctor
	.type	default_ctor_w_move_w_dtor, @function
default_ctor_w_move_w_dtor:
.LFB456:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %r10
	movl	32(%rbp), %r8d
	movq	24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	24(%rax), %r10
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	32(%rbp), %edi
	pushq	%rdi
	pushq	24(%rbp)
	movq	16(%rbp), %r9
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	movq	-24(%rbp), %rax
	movq	8(%rax), %r10
	movl	32(%rbp), %edi
	movq	24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	16(%rbp), %rcx
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	default_ctor_w_move_w_dtor, .-default_ctor_w_move_w_dtor
	.type	default_move_ctor_w_dtor, @function
default_move_ctor_w_dtor:
.LFB457:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %r10
	movq	-48(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	40(%rbp)
	movl	32(%rbp), %edi
	pushq	%rdi
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	movq	-24(%rbp), %rax
	movq	8(%rax), %r10
	movl	32(%rbp), %edi
	movq	24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	16(%rbp), %rcx
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	default_move_ctor_w_dtor, .-default_move_ctor_w_dtor
	.type	default_move, @function
default_move:
.LFB458:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %r10
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	32(%rbp), %edi
	pushq	%rdi
	pushq	24(%rbp)
	movq	16(%rbp), %r9
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	default_move, .-default_move
	.type	default_dtor, @function
default_dtor:
.LFB459:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %r10
	movl	32(%rbp), %r8d
	movq	24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_from_size_t
	imull	32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	default_dtor, .-default_dtor
	.type	default_move_w_dtor, @function
default_move_w_dtor:
.LFB460:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %r10
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	32(%rbp), %edi
	pushq	%rdi
	pushq	24(%rbp)
	movq	16(%rbp), %r9
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	movq	-24(%rbp), %rax
	movq	8(%rax), %r10
	movl	32(%rbp), %edi
	movq	24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	16(%rbp), %rcx
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	default_move_w_dtor, .-default_move_w_dtor
	.section	.rodata
.LC525:
	.string	"component_ptr != NULL"
.LC526:
	.string	"component_ptr != ((void *)0)"
.LC527:
	.string	"component_ptr->size != 0"
.LC528:
	.string	"c_info != NULL"
.LC529:
	.string	"c_info != ((void *)0)"
	.align 8
.LC530:
	.string	"c_info->component == component"
	.align 8
.LC531:
	.string	"c_info->lifecycle.ctor == lifecycle->ctor"
	.align 8
.LC532:
	.string	"c_info->lifecycle.dtor == lifecycle->dtor"
	.align 8
.LC533:
	.string	"c_info->lifecycle.copy == lifecycle->copy"
	.align 8
.LC534:
	.string	"c_info->lifecycle.move == lifecycle->move"
	.text
	.globl	ecs_set_component_actions_w_id
	.type	ecs_set_component_actions_w_id, @function
ecs_set_component_actions_w_id:
.LFB461:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14860, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L3153
	leaq	__PRETTY_FUNCTION__.12521(%rip), %rcx
	movl	$14860, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3153:
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecs_get_id
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14866, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC525(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -80(%rbp)
	jne	.L3154
	leaq	__PRETTY_FUNCTION__.12521(%rip), %rcx
	movl	$14866, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC526(%rip), %rdi
	call	__assert_fail@PLT
.L3154:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14869, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC527(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3155
	leaq	__PRETTY_FUNCTION__.12521(%rip), %rcx
	movl	$14869, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC527(%rip), %rdi
	call	__assert_fail@PLT
.L3155:
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_or_create_c_info
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14872, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC528(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -72(%rbp)
	jne	.L3156
	leaq	__PRETTY_FUNCTION__.12521(%rip), %rcx
	movl	$14872, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC529(%rip), %rdi
	call	__assert_fail@PLT
.L3156:
	movq	-72(%rbp), %rax
	movzbl	96(%rax), %eax
	testb	%al, %al
	je	.L3157
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, -96(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14875, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC530(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, -96(%rbp)
	je	.L3158
	leaq	__PRETTY_FUNCTION__.12521(%rip), %rcx
	movl	$14875, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC530(%rip), %rdi
	call	__assert_fail@PLT
.L3158:
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14876, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC531(%rip), %rdx
	movl	$27, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L3159
	leaq	__PRETTY_FUNCTION__.12521(%rip), %rcx
	movl	$14876, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC531(%rip), %rdi
	call	__assert_fail@PLT
.L3159:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14878, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC532(%rip), %rdx
	movl	$27, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L3160
	leaq	__PRETTY_FUNCTION__.12521(%rip), %rcx
	movl	$14878, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC532(%rip), %rdi
	call	__assert_fail@PLT
.L3160:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14880, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC533(%rip), %rdx
	movl	$27, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L3161
	leaq	__PRETTY_FUNCTION__.12521(%rip), %rcx
	movl	$14880, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC533(%rip), %rdi
	call	__assert_fail@PLT
.L3161:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14882, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC534(%rip), %rdx
	movl	$27, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	je	.L3174
	leaq	__PRETTY_FUNCTION__.12521(%rip), %rcx
	movl	$14882, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC534(%rip), %rdi
	call	__assert_fail@PLT
.L3157:
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-72(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	-72(%rbp), %rax
	movb	$1, 96(%rax)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 88(%rax)
	movq	-80(%rbp), %rax
	movl	4(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 92(%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L3163
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L3164
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L3164
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L3163
.L3164:
	movq	-72(%rbp), %rax
	leaq	default_ctor(%rip), %rdx
	movq	%rdx, (%rax)
.L3163:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L3165
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L3165
	movq	-72(%rbp), %rax
	leaq	default_copy_ctor(%rip), %rdx
	movq	%rdx, 40(%rax)
.L3165:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L3166
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L3166
	movq	-72(%rbp), %rax
	leaq	default_move_ctor(%rip), %rdx
	movq	%rdx, 48(%rax)
.L3166:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L3167
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L3167
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L3168
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L3169
	movq	-72(%rbp), %rax
	leaq	default_move_ctor_w_dtor(%rip), %rdx
	movq	%rdx, 56(%rax)
	jmp	.L3167
.L3169:
	movq	-72(%rbp), %rax
	leaq	default_ctor_w_move_w_dtor(%rip), %rdx
	movq	%rdx, 56(%rax)
	jmp	.L3167
.L3168:
	movq	-72(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 56(%rax)
.L3167:
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L3170
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L3171
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L3172
	movq	-72(%rbp), %rax
	leaq	default_move_w_dtor(%rip), %rdx
	movq	%rdx, 64(%rax)
	jmp	.L3170
.L3172:
	movq	-72(%rbp), %rax
	leaq	default_move(%rip), %rdx
	movq	%rdx, 64(%rax)
	jmp	.L3170
.L3171:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L3170
	movq	-72(%rbp), %rax
	leaq	default_dtor(%rip), %rdx
	movq	%rdx, 64(%rax)
.L3170:
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movl	$3, -64(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	flecs_notify_tables
.L3174:
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3173
	call	__stack_chk_fail@PLT
.L3173:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	ecs_set_component_actions_w_id, .-ecs_set_component_actions_w_id
	.globl	ecs_component_has_actions
	.type	ecs_component_has_actions, @function
ecs_component_has_actions:
.LFB462:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14964, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L3176
	leaq	__PRETTY_FUNCTION__.12529(%rip), %rcx
	movl	$14964, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3176:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_get_c_info
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L3177
	movq	-8(%rbp), %rax
	movzbl	96(%rax), %eax
	testb	%al, %al
	je	.L3177
	movl	$1, %eax
	jmp	.L3178
.L3177:
	movl	$0, %eax
.L3178:
	andl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	ecs_component_has_actions, .-ecs_component_has_actions
	.section	.rodata
.LC535:
	.string	"action != NULL"
.LC536:
	.string	"action != ((void *)0)"
.LC537:
	.string	"elem != NULL"
.LC538:
	.string	"elem != ((void *)0)"
	.text
	.globl	ecs_atfini
	.type	ecs_atfini, @function
ecs_atfini:
.LFB463:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14976, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L3181
	leaq	__PRETTY_FUNCTION__.12536(%rip), %rcx
	movl	$14976, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3181:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14977, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3182
	leaq	__PRETTY_FUNCTION__.12536(%rip), %rcx
	movl	$14977, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3182:
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14979, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC535(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L3183
	leaq	__PRETTY_FUNCTION__.12536(%rip), %rcx
	movl	$14979, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC536(%rip), %rdi
	call	__assert_fail@PLT
.L3183:
	movq	-24(%rbp), %rax
	addq	$696, %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14983, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC537(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3184
	leaq	__PRETTY_FUNCTION__.12536(%rip), %rcx
	movl	$14983, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC538(%rip), %rdi
	call	__assert_fail@PLT
.L3184:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	ecs_atfini, .-ecs_atfini
	.globl	ecs_run_post_frame
	.type	ecs_run_post_frame, @function
ecs_run_post_frame:
.LFB464:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14994, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L3186
	leaq	__PRETTY_FUNCTION__.12543(%rip), %rcx
	movl	$14994, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3186:
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$14995, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC535(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -32(%rbp)
	jne	.L3187
	leaq	__PRETTY_FUNCTION__.12543(%rip), %rcx
	movl	$14995, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC536(%rip), %rdi
	call	__assert_fail@PLT
.L3187:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_stage_from_world
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_add
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15000, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC537(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3188
	leaq	__PRETTY_FUNCTION__.12543(%rip), %rcx
	movl	$15000, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC538(%rip), %rdi
	call	__assert_fail@PLT
.L3188:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	ecs_run_post_frame, .-ecs_run_post_frame
	.type	fini_unset_tables, @function
fini_unset_tables:
.LFB465:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L3190
.L3191:
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$136, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_table_remove_actions
	addl	$1, -24(%rbp)
.L3190:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L3191
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	fini_unset_tables, .-fini_unset_tables
	.type	fini_actions, @function
fini_actions:
.LFB466:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	696(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	696(%rax), %rax
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ecs_vector_first
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L3193
.L3194:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -24(%rbp)
.L3193:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L3194
	movq	-40(%rbp), %rax
	movq	696(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	fini_actions, .-fini_actions
	.type	fini_component_lifecycle, @function
fini_component_lifecycle:
.LFB467:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	fini_component_lifecycle, .-fini_component_lifecycle
	.type	fini_queries, @function
fini_queries:
.LFB468:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_count
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L3197
.L3198:
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movl	$0, %edx
	movl	$1744, %esi
	movq	%rax, %rdi
	call	_flecs_sparse_get_dense
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_query_fini
	addl	$1, -16(%rbp)
.L3197:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L3198
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	fini_queries, .-fini_queries
	.type	fini_observers, @function
fini_observers:
.LFB469:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	fini_observers, .-fini_observers
	.type	fini_stages, @function
fini_stages:
.LFB470:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	368(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_stage_deinit
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecs_set_stages
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	fini_stages, .-fini_stages
	.type	fini_id_index, @function
fini_id_index:
.LFB471:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L3202
.L3203:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
.L3202:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L3203
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3204
	call	__stack_chk_fail@PLT
.L3204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	fini_id_index, .-fini_id_index
	.type	fini_id_triggers, @function
fini_id_triggers:
.LFB472:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecs_map_iter
	jmp	.L3206
.L3207:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
.L3206:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ecs_map_next
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L3207
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	movq	-72(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_free
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3208
	call	__stack_chk_fail@PLT
.L3208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	fini_id_triggers, .-fini_id_triggers
	.type	fini_aliases, @function
fini_aliases:
.LFB473:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	pushq	24(%rax)
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	movq	%rdx, %rdi
	call	flecs_hashmap_iter
	addq	$32, %rsp
	jmp	.L3210
.L3211:
	movq	40+ecs_os_api(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L3210:
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$8, %ecx
	movl	$24, %esi
	movq	%rax, %rdi
	call	_flecs_hashmap_next
	testq	%rax, %rax
	jne	.L3211
	movq	-88(%rbp), %rax
	pushq	24(%rax)
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	call	flecs_hashmap_free
	addq	$32, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3212
	call	__stack_chk_fail@PLT
.L3212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	fini_aliases, .-fini_aliases
	.type	fini_misc, @function
fini_misc:
.LFB474:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	call	on_demand_in_map_fini
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	on_demand_in_map_fini
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	call	ecs_map_free
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_free
	movq	-8(%rbp), %rax
	addq	$248, %rax
	movq	%rax, %rdi
	call	monitors_fini
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	fini_misc, .-fini_misc
	.section	.rodata
.LC539:
	.string	"!world->is_fini"
	.text
	.globl	ecs_fini
	.type	ecs_fini, @function
ecs_fini:
.LFB475:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15129, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3215
	leaq	__PRETTY_FUNCTION__.12614(%rip), %rcx
	movl	$15129, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3215:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15130, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3216
	leaq	__PRETTY_FUNCTION__.12614(%rip), %rcx
	movl	$15130, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3216:
	movq	-8(%rbp), %rax
	movzbl	681(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15131, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC217(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movzbl	681(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L3217
	leaq	__PRETTY_FUNCTION__.12614(%rip), %rcx
	movl	$15131, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC217(%rip), %rdi
	call	__assert_fail@PLT
.L3217:
	movq	-8(%rbp), %rax
	movzbl	682(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15132, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC539(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movzbl	682(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L3218
	leaq	__PRETTY_FUNCTION__.12614(%rip), %rcx
	movl	$15132, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC539(%rip), %rdi
	call	__assert_fail@PLT
.L3218:
	movq	-8(%rbp), %rax
	movb	$1, 682(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_defer_begin
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fini_unset_tables
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fini_actions
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fini_store
	movq	-8(%rbp), %rax
	leaq	368(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	flecs_defer_purge
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	flecs_sparse_free
	movq	-8(%rbp), %rax
	movzbl	686(%rax), %eax
	testb	%al, %al
	je	.L3219
	movq	96+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	624(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L3219:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fini_stages
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fini_component_lifecycle
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fini_queries
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fini_observers
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fini_id_index
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fini_id_triggers
	movq	-8(%rbp), %rax
	addq	$304, %rax
	movq	%rax, %rdi
	call	fini_aliases
	movq	-8(%rbp), %rax
	addq	$336, %rax
	movq	%rax, %rdi
	call	fini_aliases
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fini_misc
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %edi
	call	flecs_increase_timer_resolution
	movq	40+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	call	ecs_os_fini
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	ecs_fini, .-ecs_fini
	.globl	ecs_dim
	.type	ecs_dim, @function
ecs_dim:
.LFB476:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15201, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3222
	leaq	__PRETTY_FUNCTION__.12619(%rip), %rcx
	movl	$15201, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3222:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15202, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3223
	leaq	__PRETTY_FUNCTION__.12619(%rip), %rcx
	movl	$15202, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3223:
	movl	-12(%rbp), %eax
	leal	256(%rax), %edx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	flecs_sparse_set_size
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	ecs_dim, .-ecs_dim
	.globl	flecs_eval_component_monitors
	.type	flecs_eval_component_monitors, @function
flecs_eval_component_monitors:
.LFB477:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15209, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3225
	leaq	__PRETTY_FUNCTION__.12623(%rip), %rcx
	movl	$15209, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3225:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15210, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3226
	leaq	__PRETTY_FUNCTION__.12623(%rip), %rcx
	movl	$15210, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3226:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	eval_component_monitor
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	flecs_eval_component_monitors, .-flecs_eval_component_monitors
	.section	.rodata
.LC540:
	.string	"ecs_os_has_time()"
	.text
	.globl	ecs_measure_frame_time
	.type	ecs_measure_frame_time, @function
ecs_measure_frame_time:
.LFB478:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15218, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3228
	leaq	__PRETTY_FUNCTION__.12628(%rip), %rcx
	movl	$15218, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3228:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15219, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3229
	leaq	__PRETTY_FUNCTION__.12628(%rip), %rcx
	movl	$15219, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3229:
	call	ecs_os_has_time
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15220, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC540(%rip), %rdx
	movl	$9, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	call	ecs_os_has_time
	testb	%al, %al
	jne	.L3230
	leaq	__PRETTY_FUNCTION__.12628(%rip), %rcx
	movl	$15220, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC540(%rip), %rdi
	call	__assert_fail@PLT
.L3230:
	movq	-8(%rbp), %rax
	movss	572(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L3234
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L3231
.L3234:
	cmpb	$0, -12(%rbp)
	je	.L3235
.L3231:
	movq	-8(%rbp), %rax
	movzbl	-12(%rbp), %edx
	movb	%dl, 683(%rax)
.L3235:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	ecs_measure_frame_time, .-ecs_measure_frame_time
	.globl	ecs_measure_system_time
	.type	ecs_measure_system_time, @function
ecs_measure_system_time:
.LFB479:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15231, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3237
	leaq	__PRETTY_FUNCTION__.12633(%rip), %rcx
	movl	$15231, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3237:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15232, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3238
	leaq	__PRETTY_FUNCTION__.12633(%rip), %rcx
	movl	$15232, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3238:
	call	ecs_os_has_time
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15233, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC540(%rip), %rdx
	movl	$9, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	call	ecs_os_has_time
	testb	%al, %al
	jne	.L3239
	leaq	__PRETTY_FUNCTION__.12633(%rip), %rcx
	movl	$15233, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC540(%rip), %rdi
	call	__assert_fail@PLT
.L3239:
	movq	-8(%rbp), %rax
	movzbl	-12(%rbp), %edx
	movb	%dl, 684(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	ecs_measure_system_time, .-ecs_measure_system_time
	.type	set_timer_resolution, @function
set_timer_resolution:
.LFB480:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	comiss	.LC411(%rip), %xmm0
	jb	.L3245
	movl	$1, %edi
	call	flecs_increase_timer_resolution
	jmp	.L3246
.L3245:
	movl	$0, %edi
	call	flecs_increase_timer_resolution
.L3246:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	set_timer_resolution, .-set_timer_resolution
	.globl	ecs_set_target_fps
	.type	ecs_set_target_fps, @function
ecs_set_target_fps:
.LFB481:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15250, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3248
	leaq	__PRETTY_FUNCTION__.12641(%rip), %rcx
	movl	$15250, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3248:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15251, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3249
	leaq	__PRETTY_FUNCTION__.12641(%rip), %rcx
	movl	$15251, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3249:
	call	ecs_os_has_time
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15252, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC540(%rip), %rdx
	movl	$9, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	call	ecs_os_has_time
	testb	%al, %al
	jne	.L3250
	leaq	__PRETTY_FUNCTION__.12641(%rip), %rcx
	movl	$15252, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC540(%rip), %rdi
	call	__assert_fail@PLT
.L3250:
	movq	-8(%rbp), %rax
	movl	616(%rax), %eax
	testl	%eax, %eax
	jne	.L3252
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ecs_measure_frame_time
	movq	-8(%rbp), %rax
	movss	-12(%rbp), %xmm0
	movss	%xmm0, 572(%rax)
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	set_timer_resolution
.L3252:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	ecs_set_target_fps, .-ecs_set_target_fps
	.globl	ecs_get_context
	.type	ecs_get_context, @function
ecs_get_context:
.LFB482:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15264, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3254
	leaq	__PRETTY_FUNCTION__.12645(%rip), %rcx
	movl	$15264, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3254:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ecs_get_world
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	688(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	ecs_get_context, .-ecs_get_context
	.globl	ecs_set_context
	.type	ecs_set_context, @function
ecs_set_context:
.LFB483:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15273, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3257
	leaq	__PRETTY_FUNCTION__.12650(%rip), %rcx
	movl	$15273, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3257:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15274, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3258
	leaq	__PRETTY_FUNCTION__.12650(%rip), %rcx
	movl	$15274, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3258:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 688(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	ecs_set_context, .-ecs_set_context
	.section	.rodata
.LC541:
	.string	"!id_end || id_end > id_start"
	.align 8
.LC542:
	.string	"!id_end || id_end > world->stats.last_id"
	.text
	.globl	ecs_set_entity_range
	.type	ecs_set_entity_range, @function
ecs_set_entity_range:
.LFB484:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15283, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3260
	leaq	__PRETTY_FUNCTION__.12656(%rip), %rcx
	movl	$15283, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3260:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15284, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3261
	leaq	__PRETTY_FUNCTION__.12656(%rip), %rcx
	movl	$15284, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3261:
	cmpq	$0, -24(%rbp)
	je	.L3262
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.L3263
.L3262:
	movl	$1, %eax
	jmp	.L3264
.L3263:
	movl	$0, %eax
.L3264:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15285, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC541(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	je	.L3265
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	ja	.L3265
	leaq	__PRETTY_FUNCTION__.12656(%rip), %rcx
	movl	$15285, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC541(%rip), %rdi
	call	__assert_fail@PLT
.L3265:
	cmpq	$0, -24(%rbp)
	je	.L3266
	movq	-8(%rbp), %rax
	movq	536(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jbe	.L3267
.L3266:
	movl	$1, %eax
	jmp	.L3268
.L3267:
	movl	$0, %eax
.L3268:
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15286, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC542(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	je	.L3269
	movq	-8(%rbp), %rax
	movq	536(%rax), %rax
	cmpq	%rax, -24(%rbp)
	ja	.L3269
	leaq	__PRETTY_FUNCTION__.12656(%rip), %rcx
	movl	$15286, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC542(%rip), %rdi
	call	__assert_fail@PLT
.L3269:
	movq	-8(%rbp), %rax
	movq	536(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L3270
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 536(%rax)
.L3270:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 544(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 552(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	ecs_set_entity_range, .-ecs_set_entity_range
	.globl	ecs_enable_range_check
	.type	ecs_enable_range_check, @function
ecs_enable_range_check:
.LFB485:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15300, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L3272
	leaq	__PRETTY_FUNCTION__.12661(%rip), %rcx
	movl	$15300, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3272:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15301, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3273
	leaq	__PRETTY_FUNCTION__.12661(%rip), %rcx
	movl	$15301, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3273:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movzbl	-28(%rbp), %edx
	movb	%dl, 32(%rax)
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	ecs_enable_range_check, .-ecs_enable_range_check
	.globl	ecs_get_threads
	.type	ecs_get_threads, @function
ecs_get_threads:
.LFB486:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ecs_vector_count
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	ecs_get_threads, .-ecs_get_threads
	.globl	ecs_enable_locking
	.type	ecs_enable_locking, @function
ecs_enable_locking:
.LFB487:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15317, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -24(%rbp)
	jne	.L3278
	leaq	__PRETTY_FUNCTION__.12670(%rip), %rcx
	movl	$15317, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3278:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15318, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3279
	leaq	__PRETTY_FUNCTION__.12670(%rip), %rcx
	movl	$15318, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3279:
	cmpb	$0, -28(%rbp)
	je	.L3280
	movq	-24(%rbp), %rax
	movzbl	686(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L3281
	movq	88+ecs_os_api(%rip), %rax
	call	*%rax
	movq	-24(%rbp), %rdx
	movq	%rax, 624(%rdx)
	movq	88+ecs_os_api(%rip), %rax
	call	*%rax
	movq	-24(%rbp), %rdx
	movq	%rax, 632(%rdx)
	movq	120+ecs_os_api(%rip), %rax
	call	*%rax
	movq	-24(%rbp), %rdx
	movq	%rax, 640(%rdx)
	jmp	.L3281
.L3280:
	movq	-24(%rbp), %rax
	movzbl	686(%rax), %eax
	testb	%al, %al
	je	.L3281
	movq	96+ecs_os_api(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	624(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	96+ecs_os_api(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	128+ecs_os_api(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	640(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L3281:
	movq	-24(%rbp), %rax
	movzbl	686(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movzbl	-28(%rbp), %edx
	movb	%dl, 686(%rax)
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	ecs_enable_locking, .-ecs_enable_locking
	.section	.rodata
.LC543:
	.string	"world->locking_enabled"
	.text
	.globl	ecs_lock
	.type	ecs_lock, @function
ecs_lock:
.LFB488:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15342, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3284
	leaq	__PRETTY_FUNCTION__.12675(%rip), %rcx
	movl	$15342, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3284:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15343, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3285
	leaq	__PRETTY_FUNCTION__.12675(%rip), %rcx
	movl	$15343, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3285:
	movq	-8(%rbp), %rax
	movzbl	686(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15344, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC543(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movzbl	686(%rax), %eax
	testb	%al, %al
	jne	.L3286
	leaq	__PRETTY_FUNCTION__.12675(%rip), %rcx
	movl	$15344, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC543(%rip), %rdi
	call	__assert_fail@PLT
.L3286:
	movq	104+ecs_os_api(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	624(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	ecs_lock, .-ecs_lock
	.globl	ecs_unlock
	.type	ecs_unlock, @function
ecs_unlock:
.LFB489:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15351, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC137(%rip), %rdx
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	cmpq	$0, -8(%rbp)
	jne	.L3288
	leaq	__PRETTY_FUNCTION__.12679(%rip), %rcx
	movl	$15351, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L3288:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15352, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC225(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	_ecs_assert
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1701016439, %eax
	je	.L3289
	leaq	__PRETTY_FUNCTION__.12679(%rip), %rcx
	movl	$15352, %edx
	leaq	.LC74(%rip), %rsi
	leaq	.LC226(%rip), %rdi
	call	__assert_fail@PLT
.L3289:
	movq	-8(%rbp), %rax
	movzbl	686(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %r9d
	movl	$15353, %r8d
	leaq	.LC74(%rip), %rcx
	leaq	.LC543(%rip), %rdx
	movl	$2, %esi
0: