
	.arch armv8-a
	.text

	
	.align	2
	.p2align 3,,7
	.global	fact
	.type	fact, %function
fact:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp

	mov	w1, w0
	mov	w0, #1
	cmp	w1, 1
	ble .Lend

	str	w1, [sp, 16]
	sub	w0, w1, #1
	bl 	fact
	ldr	w1, [sp, 16]
	mul	w0, w1, w0

.Lend:
	ldp	x29, x30, [sp], 32
	ret
	.size	fact, .-fact


# res = 1
# while x > 1:
#   res *= x
#   x -= 1
