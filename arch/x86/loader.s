.text
#this file is needed because the linux kernel needs
#to find a function titled "_start" to get going.
.globl _start

_start:
	popl %eax
	movl %esp, %ebx
	pushl %ebx
	pushl %eax
	call main

	movl %eax, %ebx
	movl $1, %eax
	#xorl %ebx, %ebx
	int $0x80
