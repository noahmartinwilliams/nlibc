.section .text
.globl write
.type write, @function
write:
	pushl %ebp
	movl %esp, %ebp
	.equ fd, 8
	.equ buf, 12
	.equ size, 16

	movl $4, %eax
	movl fd(%ebp), %ebx
	movl buf(%ebp), %ecx
	movl size(%ebp), %edx

	int $0x80

	movl %ebp, %esp
	popl %ebp
	ret
