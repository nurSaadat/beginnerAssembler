.data

g:	.word 4
h:	.word 5
i:	.word 6
k:	.word 3

.text

main: 	lw $s0, g
	lw $s1, h
	lw $s2, i
	lw $s3, k
	
	move $a0, $s3
	
	jal Fun
	
	li $v0, 10
	syscall
	
Fun:	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $a0, 0($sp)
	slti $t0, $a0, 1
	beq $t0, $zero, L1
	addi $v0, $zero, 1
	addi $sp, $sp, 8
	jr $ra
	
L1:	addi $a0, $a0, -1
	jal Fun
	lw $a0, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	mul $v0, $a0, $v0
	jr $ra
