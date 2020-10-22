
	.arch armv8-a
	.text

	
	.align	2
	.p2align 3,,7
	.global	fact
	.type	fact, %function
fact:
	mov	w1, #1
	cmp	w0, 1
	ble .Lend

.Lbody:
	mul w1, w1, w0
	sub w0, w0, #1
	cmp w0, 1
	bgt .Lbody	
	
.Lend:
	mov w0, w1
	ret
	.size	fact, .-fact


# res = 1
# while x > 1:
#   res *= x
#   x -= 1
