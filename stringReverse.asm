.data
input:	.space	5
output:	.space	5

.text
	
main:
	li	$v0, 8			
	la	$a0, input		
	li	$a1, 6	
	syscall	

	li	$t0, 0
	li	$t2, 0
	jal	strlen		
	
	add	$t1, $zero, $v0		
	add	$t2, $zero, $a0		
	add	$a0, $zero, $v0		

	li	$t0, 0		
	li	$t3, 0			
	
reverse_loop:
	add	$t3, $t2, $t0		
	lb	$t4, 0($t3)		
	beq	$t4, $zero, exit		
	sb	$t4, output($t1)		
	subi	$t1, $t1, 1		
	addi	$t0, $t0, 1		
	j	reverse_loop		
	
exit:
	li	$v0, 4			
	la	$a0, output		
	syscall
		
	li	$v0, 10			
	syscall
	
strlen:
	add	$t2, $a0, $t0
	lb	$t1, 0($t2)
	beq	$t1, $zero, strlen_exit
	addiu	$t0, $t0, 1
	j	strlen
		
strlen_exit:
	subi	$t0, $t0, 1
	add	$v0, $zero, $t0
	add	$t0, $zero, $zero
	jr	$ra