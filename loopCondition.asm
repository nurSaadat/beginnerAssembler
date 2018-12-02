.data

i: 	.word 0
k:	.word 10
save:	.word 10 10 11

.text

main: 	lw $s3, i
	lw $s5, k
	la $s6, save

	bne $s1, $s0, Else
	add $t0, $s0, $s1
	
	jal Loop
	
	lw $s3, i
	
	jal ForLoop
	
	li $v0, 10
	syscall	
	
	
Else:	sub $t0, $s0, $s1 
	
Loop:	sll $t1, $s3, 2
	add $t1, $t1, $s6
	lw $t2, 0($t1)
	bne $t2, $s5, Exit
	addi $s3, $s3, 1
	j Loop
	
Exit: jr $ra

ForLoop:sll $t1, $s3, 2
	add $t1, $t1, $s6
	lw $t0, 0($t1)
	slt $t0, $t0, $s5
	beq $t1, $zero, Exit
	j ForLoop
	
	
	


