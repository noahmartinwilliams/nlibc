.section .text

.globl mmap2
.type mmap2, @function

mmap2:
	pushq %rbp
	movq %rsp, %rbp
	.equ addr, 8
	.equ len, 12
	.equ prot, 16
	.equ flags, 20
	.equ fd, 24
	.equ off, 28

	movq addr(%rbp), %rbx
	movq len(%rbp), %rcx
	movq prot(%rbp), %rdx
	movq flags(%rbp), %rsi
	movq fd(%rbp), %rdi
	movq off(%rbp), %rbp
	movq $192, %rax
	int $0x80

	popq %rbp
	ret

.globl sbrk2
.type sbrk2, @function
sbrk2:
	pushq %rbp
	movq %rsp, %rbp

	movq $12, %rax
	syscall

	popq %rbp
	ret

.globl mprotect
.type mprotect, @function
mprotect:
	pushq %rbp
	movq %rsp, %rbp
	.equ addr, 8
	.equ len, 12
	.equ protect, 16

	movq $10, %rax
	syscall

	movq %rbp, %rsp
	popq %rbp
	ret
