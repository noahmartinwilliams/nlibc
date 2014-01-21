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
	#edx now points to the start of envp

	movl %edx, %ecx
	pushl %edx
	pushl %ebx
	pushl %eax
	addl $4, %ecx
	pushl %ecx
	call handle_auxv
	movl %eax, %gs
	popl %ecx
	popl %eax
	popl %ebx
	popl %edx

	pushl %edx
	pushl %ebx
	pushl %eax
	call main

	movl %eax, %ebx
	movl $1, %eax
	#xorl %ebx, %ebx
	int $0x80
