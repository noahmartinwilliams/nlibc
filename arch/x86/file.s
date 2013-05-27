.section .text
.globl write
.type write, @function
write:
	pushl %ebp
	movl %esp, %ebp
	.equ fd, 8
	.equ buf, 12
	.equ size, 16

	movl $4, %eax
	movl fd(%ebp), %ebx
	movl buf(%ebp), %ecx
	movl size(%ebp), %edx

	int $0x80

	movl %ebp, %esp
	popl %ebp
	ret

.globl close
.type close, @function

close:
	pushl %ebp
	movl %esp, %ebp
	.equ fd, 8

	movl $6, %eax
	movl fd(%ebp), %ebx
	int $0x80
	movl %ebp, %esp
	popl %ebp
	ret

.globl creat
.type creat, @function

creat:
	pushl %ebp
	movl %esp, %ebp
	.equ name, 8
	.equ mode, 12
	
	movl $8, %eax
	movl name(%ebp), %ebx
	movl mode(%ebp), %ecx
	int $0x80

	movl %ebp, %esp
	popl %ebp
	ret

.globl umask
.type umask, @function

umask:
	pushl %ebp
	movl %esp, %ebp
	.equ mode, 8

	movl $60, %eax
	movl mode(%ebp), %ebx
	int $0x80
	movl %ebp, %esp
	popl %ebp
	ret

.globl chmod
.type chmod, @function

chmod:
	pushl %ebp
	movl %esp, %ebp
	.equ name, 8
	.equ mode, 12

	movl name(%ebp), %ebx
	movl mode(%ebp), %ecx
	movl $15, %eax
	int $0x80

	movl %ebp, %esp
	popl %ebp
	ret

.globl read
.type read, @function

read:
	pushl %ebp
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
	popl %ebp
	ret

.globl open
.type open, @function
open:
	pushl %ebp
	movl %esp, %ebp
	.equ name, 8
	.equ flags, 12
	.equ mode, 16

	movl name(%ebp), %ebx
	movl flags(%ebp), %ecx
	movl mode(%ebp), %edx
	movl $2, %eax
	int $0x80

	movl %ebp, %esp
	popl %ebp
	ret

