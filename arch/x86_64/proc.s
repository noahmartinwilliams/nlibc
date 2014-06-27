.section .text
.globl exit
.type exit, @function

exit:
	pushq %rbp
	movq %rsp, %rbp
	movq $60, %rax
	syscall

	ret

#.globl getgid
#.type getgid, @function
#
#getgid:
	#pushl %ebp
	#movl %esp, %ebp
#
	#movl $47, %eax
	#int $0x80
#
	#movl %ebp, %esp
	#popl %ebp
	#ret
