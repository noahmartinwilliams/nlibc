.text
#this file is needed because the linux kernel needs
#to find a function titled "_start" to get going.
.globl _start

_start:
	movq $0, %rax
	#movq $0, %rdi
	#movl (%rsp), %edi
	#addq $4, %rsp
	popq %rdi
	movq %rsp, %rsi
	movq %rsp, %rdx
	test:
	cmpq $0, (%rdx)
	je continue
	addq $8, %rdx
	jmp test


	continue:
	addq $8, %rdx
	call main

	movq %rax, %rdi
	movq $60, %rax
	syscall
