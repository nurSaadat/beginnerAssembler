# Factorial for doubles only (5.0 will not work)
.data

message:	.asciiz "Enter value"
lololo:		.double 1.0

.text

#int main(void) {
main:
	li	$v0, 4
	la	$a0, message
	syscall
	
	li	$v0, 7
	syscall
	
	mov.d	$f12, $f0
	
	jal	mfact
	
	li	$v0, 3
	mov.d	$f12, $f0
	syscall
	
	li $v0, 10
	syscall
	
	
#	printf ("%lf \n", mfact(0.9));
#	printf ("%lf", mfact(2.1));

#	return 0;
#}

#double mfact (double d)
mfact:
	subi	$sp, $sp, 12
	mfc1.d 	$t4, $f12
	sw	$ra, 0($sp)
	sw	$t4, 4($sp)
	sw	$t5, 8($sp)
	
	
	ldc1 	$f4, lololo
	#base case
#	if (d < 1) 	
	c.lt.d	$f12, $f4
	bc1f	decr
	#return d;
	mov.d	$f0, $f12
	addi	$sp, $sp, 12
	jr	$ra
		
#	return d * mfact (d - 1);
decr:
	sub.d	$f12, $f12, $f4	
	jal mfact
	
	lw	$t5, 8($sp)
	lw	$t4, 4($sp)	
	lw	$ra, 0($sp)	
	
	mtc1.d	$t4, $f12
	addi	$sp, $sp, 12

	mul.d	$f0, $f12, $f0
	jr	$ra
#}

