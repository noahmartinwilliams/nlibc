.section .text
.globl write
.type write, @function
write:
	pushq %rbp
	movq %rsp, %rbp
	.equ size, 16
	movq $1, %rax

	syscall

	movq %rbp, %rsp
	popq %rbp
	ret

.globl close
.type close, @function

close:
	pushq %rbp
	movq %rsp, %rbp
	.equ fd, 8

	movq $3, %rax
	syscall
	movq %rbp, %rsp
	popq %rbp
	ret

.globl creat
.type creat, @function

creat:
	pushq %rbp
	movq %rsp, %rbp
	.equ name, 8
	.equ mode, 12
	
	movq $85, %rax
	syscall

	movq %rbp, %rsp
	popq %rbp
	ret

.globl umask
.type umask, @function

umask:
	pushq %rbp
	movq %rsp, %rbp

	movq $95, %rax
	syscall
	movq %rbp, %rsp
	popq %rbp
	ret

.globl chmod
.type chmod, @function

chmod:
	pushq %rbp
	movq %rsp, %rbp
	.equ name, 8
	.equ mode, 12

	movq $90, %rax
	syscall

	movq %rbp, %rsp
	popq %rbp
	ret

.globl read
.type read, @function

read:
	pushq %rbp
	movq %rsp, %rbp
	movq $0, %rax
	syscall

	movq %rbp, %rsp
	popq %rbp
	ret

.globl open
.type open, @function
open:
	pushq %rbp
	movq %rsp, %rbp

	movq $2, %rax
	syscall

	movq %rbp, %rsp
	popq %rbp
	ret

.globl getcwd
.type getcwd, @function
getcwd:
	pushq %rbp
	movq %rsp, %rbp
	movq $79, %rax
	syscall

	movq %rbp, %rsp
	popq %rbp
	ret

.globl chdir
.type chdir, @function
chdir:
	pushq %rbp
	movq %rsp, %rbp
	movq $80, %rax
	syscall

	movq %rbp, %rsp
	popq %rbp
	ret
