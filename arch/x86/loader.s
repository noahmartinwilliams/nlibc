.text
#this file is needed because the linux kernel needs
#to find a function titled "_start" to get going.
.globl _start

_start:
	popl %eax #eax=argc
	movl %esp, %ebx #ebx=argv

	#skip through argv to get to envp
	movl %esp, %edx
	test:
	cmpl $0, (%edx)
	je continue
	addl $4, %edx
	jmp test


	continue:
	addl $4, %edx
	#subl $4, %edx
	pushl %edx
	pushl %ebx
	pushl %eax
	call main

	movl %eax, %ebx
	movl $1, %eax
	#xorl %ebx, %ebx
	int $0x80
