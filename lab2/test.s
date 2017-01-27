	.file	"test.c"
	.text
	.p2align 4,,15
	.globl	testovf
	.type	testovf, @function
testovf:
	xorl	%eax, %eax
	ret
	.size	testovf, .-testovf
	.globl	big
	.data
	.align 8
	.type	big, @object
	.size	big, 8
big:
	.quad	9223372036854775807
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-9)"
	.section	.note.GNU-stack,"",@progbits
