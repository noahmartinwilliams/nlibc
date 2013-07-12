.section .text
.globl exit
.type exit, @function

exit:
	pushl %ebp
	movl %esp, %ebp
	.equ status, 8
	movl status(%ebp), %ebx
	movl $1, %eax
	int $0x80

	movl %ebp, %esp
	popl %ebp
	ret

.globl getgid
.type getgid, @function

getgid:
	pushl %ebp
	movl %esp, %ebp

	movl $47, %eax
	int $0x80

	movl %ebp, %esp
	popl %ebp
	ret
