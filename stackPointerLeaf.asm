.data

g:	.word 4
h:	.word 5
i:	.word 6
k:	.word 7

.text

main: 	lw $s0, g
	lw $s1, h
	lw $s2, i
	lw $s3, k
	
	addi $t0, $s2, 2
	addi $t1, $s3, 5
	
	move $a0, $s0
	move $a1, $s1
	move $a2, $s2
	move $a3, $s3
	
	jal Fun
	
	li $v0, 10
	syscall
	
Fun:	#addi $sp, $sp, -12
	#sw $t1, 8($sp)
	#sw $t0, 4($sp)
	# Because there is no need to preserve $t
	addi $sp, $sp, -4
	sw $s0, 0($sp)
	add $t0, $a0, $a1
	add $t1, $a2, $a3
	sub $s0, $t0, $t1
	add $v0, $s0, $zero
	lw $s0, 0($sp)
	addi $sp, $sp, 4
	#lw $t1, 4($sp)
	#lw $t0, 8($sp)	
	#addi $sp, $sp, 12
	
	jr $ra 
