
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text

	.align	1
	.globl	fact
	.type	fact, @function
fact:
	mv 	a1, a0
	li      a0, 1
	li	a2, 1
	ble	a1, a2, .Lend

.Lbody:
	mul	a0, a0, a1
	addi	a1, a1, -1
	bgt	a1, a2, .Lbody

.Lend:
	ret
	.size	fact, .-fact


# res = 1
# while x > 1:
#   res *= x
#   x -= 1
