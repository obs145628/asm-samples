
	.arch armv8-a
	.text

	
	.align	2
	.p2align 3,,7
	.global	sort
	.type	sort, %function
sort:
	cmp w1, #1
	ble .Lend
	mov w2, #1		// w2 : i
	add x3, x0, #4 		// x3: arr + i
	

.Lout:
	ldr	w4, [x3] 	// w4: val
	mov	w5, w2		// w5 : j
	mov	x6, x3		// x6 : arr + j

.Lin:
	cmp	w5, #0
	ble	.Lein
	ldr	w7, [x6, -4]    // w7: arr[j-1]
	cmp	w7, w4
	ble	.Lein
	str	w7, [x6]
	sub	w5, w5, #1
	sub	x6, x6, #4
	b .Lin


.Lein:	
	str	w4, [x6]
	add	w2, w2, #1
	add	x3, x3, #4
	cmp	w2, w1
	blt	.Lout

.Lend:
	ret
	.size	sort, .-sort
