
	.text
	.p2align 4,,15
	.globl	fact
	.type	fact, @function
fact:
	movl $1, %eax
	cmpl $1, %edi
	jle .Lend

.Lbody:
	imull %edi, %eax
	subl $1, %edi
	cmpl $1, %edi
	jg .Lbody

.Lend:
	ret
	.size	fact, .-fact

# res = 1
# while x > 1:
#   res *= x
#   x -= 1
