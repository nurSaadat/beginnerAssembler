# Calculates sin of given degree
.data

inviteMessage: 	.asciiz "Enter the degree you want to calculate sin of: "
resultMessage:	.asciiz "I found a sin "
newline:	.asciiz "\n"
AngleDeg:	.double 0.0
result:		.double 0.0
one:		.double 1.0
piDegree:	.double 180.0
pi:		.double 3.142
zero: 		.double 0.0

.text
#	int main(void){
main:	
#	double angleDeg;
	ldc1	$f22, piDegree
	ldc1	$f24, pi
	ldc1    $f18, zero
#	printf("Enter the degree you want to calculate sin of: ")
	li	$v0, 4
	la	$a0, inviteMessage
	syscall	
#	scanf("%lf", &angleDeg);
	li	$v0, 7
	syscall
	add.d	$f14, $f0, $f18
	
#	double res = my_sin(angleDeg);
	jal	mySin
	sdc1	$f0, result
#	printf("I found a sin %lf", res);
	li 	$v0, 4
	la	$a0, resultMessage
	syscall
	li	$v0, 3
	add.d	$f12, $f18, $f0
	syscall
#	}
	li	$v0, 10
	syscall

#double my_sin(double x){ 
#x = f14
mySin:
	addi	$sp, $sp, -4
	sw	$ra, 0($sp)
#	int k = 10;
	li	$t0, 10
#	int i = 1;
	li	$t1, 1
	ldc1    $f16, zero
#	x = (x * 3.142) / 180;
	mul.d	$f14, $f14, $f24  #0.523666
	div.d	$f14, $f14, $f22
#	double mSin = x;
	mov.d	$f16, $f14
	mov.d	$f8, $f14
#	for (i = 0; i < k; i ++){
	loop1:
		beq	$t1, $t0, endLoop1
#		int helper = 2*i + 1;
		sll	$t2, $t1, 1 #0 2 4 6
		addi	$t6, $t2, 1 #1 3 5 7
#		if (i % 2 == 0) {
		li	$t3, 2
		div	$t1, $t3
		mfhi	$t3 #0 or 1
		bne	$t3, $zero, cond1
			mul.d	$f20, $f14, $f14
			mul	$t7, $t2, $t6
			mtc1.d 	$t7, $f6
 			cvt.d.w $f6, $f6
 			div.d	$f6, $f20, $f6
 			mul.d	$f8, $f8, $f6
 			add.d	$f16, $f16, $f8
 			li $v0, 3
 			mov.d $f12, $f16
 			syscall	
 			li $v0, 4
 			la $a0, newline	
 			syscall	
			addi	$t1, $t1, 1
			j loop1
#		} else {
		cond1:
			mul.d	$f20, $f14, $f14
						
			mul	$t7, $t2, $t6
			mtc1.d 	$t7, $f6
 			cvt.d.w $f6, $f6
 			
 			div.d	$f6, $f20, $f6
 			
 			mul.d	$f8, $f8, $f6
 			sub.d	$f16, $f16, $f8
 			
 			li $v0, 3
 			mov.d $f12, $f16
 			syscall	
 			li $v0, 4
 			la $a0, newline	
 			syscall	
			addi	$t1, $t1, 1
			j loop1
#		}
		
#	}
endLoop1:
#	return mSin;
	mov.d	$f0, $f16
	lw	$ra, 0($sp)
	addi	$sp, $sp, 4
	jr	$ra
#}

