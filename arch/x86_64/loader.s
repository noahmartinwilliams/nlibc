.text
#this file is needed because the linux kernel needs
#to find a function titled "_start" to get going.
.globl _start

_start:
	movq $0, %rbp
	call main

	movq %rax, %rdi
	movq $60, %rax
	syscall
