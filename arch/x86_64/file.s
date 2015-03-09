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
	movl %esp, %ebp
	.equ fd, 8
	.equ buf, 12
	.equ size, 16
	movl $3, %eax
	movl fd(%ebp), %ebx
	movl buf(%ebp), %ecx
	movl size(%ebp), %edx
	int $0x80

	movl %ebp, %esp
	popq %rbp
	ret

.globl open
.type open, @function
open:
	pushq %rbp
	movl %esp, %ebp
	.equ name, 8
	.equ flags, 12
	.equ mode, 16

	movl name(%ebp), %ebx
	movl flags(%ebp), %ecx
	movl mode(%ebp), %edx
	movl $5, %eax
	int $0x80

	movl %ebp, %esp
	popq %rbp
	ret

.globl getcwd
.type getcwd, @function
getcwd:
	pushq %rbp
	movl %esp, %ebp
	.equ buf, 8
	.equ size, 12
	
	movl buf(%ebp), %ebx
	movl size(%ebp), %ecx
	movl $183, %eax
	int $0x80

	movl %ebp, %esp
	popq %rbp
	ret

.globl chdir
.type chdir, @function
chdir:
	pushq %rbp
	movl %esp, %ebp
	.equ path, 8
	movl path(%ebp), %ebx
	movl $12, %eax
	int $0x80

	movl %ebp, %esp
	popq %rbp
	ret
