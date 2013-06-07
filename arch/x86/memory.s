.section .text

.globl mmap2
.type mmap2, @function

mmap2:
	pushl %ebp
	movl %esp, %ebp
	.equ addr, 8
	.equ len, 12
	.equ prot, 16
	.equ flags, 20
	.equ fd, 24
	.equ off, 28

	movl addr(%ebp), %ebx
	movl len(%ebp), %ecx
	movl prot(%ebp), %edx
	movl flags(%ebp), %esi
	movl fd(%ebp), %edi
	movl off(%ebp), %ebp
	movl $192, %eax
	int $0x80

	popl %ebp
	ret
