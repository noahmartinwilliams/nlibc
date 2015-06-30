.section .text
.globl exit
.type exit, @function

exit:
	pushq %rbp
	movq %rsp, %rbp
	movq $60, %rax
	syscall

	ret

.globl getgid
.type getgid, @function

getgid:
	pushq %rbp
	movq %rsp, %rbp

	movq $104, %rax
	syscall

	movq %rbp, %rsp
	popq %rbp
	ret
