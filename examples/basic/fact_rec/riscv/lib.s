
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text

	.align	1
	.globl	fact
	.type	fact, @function
fact:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	mv	s0, a0
	li	a0, 1
	ble	s0, a0, .Lend
	
	addi	a0, s0, -1
	call	fact
	mul	a0, s0, a0

.Lend:
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
	.size	fact, .-fact


# x <= 1 ? 1 : x * fact(x-1)
