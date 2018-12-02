# Some random stuff for midterm preparation 
.data
myMessage: 	.asciiz "Hello, Saadat!"
myChar: 	.byte 's'
myInt: 		.word 23
myFloat: 	.float 0.23
myDouble:	.double 7.232
zeroDouble:	.double 0.0

newLine:	.asciiz "\n"
addInt:		.word 12

prompt:		.asciiz "What's up? How many books did you read? "
answer:		.asciiz "Wow, you read as many as "
prompt2:	.asciiz "\nWhat is PI number? "
answer2:	.asciiz "Hehe, you got it! It is indeed "

floatZero:	.float 0.0

.text

main:	
	li 	$v0, 4		#print string
	la 	$a0, myMessage
	syscall
	
	jal printN
	
	li 	$v0, 4		#print char
	la 	$a0, myChar
	syscall
	
	jal printN
		
	li 	$v0, 1		#print int
	lw 	$a0, myInt
	syscall
	
	jal printN
	
	li 	$v0, 2		#print float
	lwc1	$f12, myFloat
	syscall
	
	jal printN
	
	ldc1	$f2, myDouble	#print double
	ldc1	$f0, zeroDouble
	li	$v0, 3
	add.d	$f12, $f2, $f0
	syscall
	
	jal printN
	
	lw	$t0, addInt	#add int
	lw	$t1, myInt
	add 	$t2, $t0, $t1
	li 	$v0, 1
	add 	$a0, $zero, $t2
	syscall
	
	jal printN
	
	sub	$t2, $t0, $t1	#subtract int
	li 	$v0, 1
	move 	$a0, $t2
	syscall
	
	jal printN
	
	addi	$s0, $zero, 10	#multiplication
	addi	$s1, $zero, 4
	mul	$t0, $s0, $s1
	li	$v0, 1
	add 	$a0, $zero, $t0
	syscall
	
	jal printN
	
	addi	$s0, $zero, 2000	#multiplication hi/lo
	addi	$s1, $zero, 10
	mult	$s0, $s1
	mflo	$t0
	mfhi	$t1
	
	li	$v0, 1
	add 	$a0, $zero, $t0
	syscall
	
	jal printN
	
	addi	$s0, $zero, 4	#multiplication sll
	sll 	$t0, $s0, 2
	li	$v0, 1
	add	$a0, $zero, $t0
	syscall
	
	jal printN
	
	addi	$s0, $zero, 30	#div 3reg, const, hi/lo
	addi	$s1, $zero, 10
	
	div	$t0, $s0, $s1
	div	$t0, $s0, 10
	div	$s0, $s1
	#get quotient
	mflo 	$t0 	
	#get remainder
	mfhi	$t1	
	
	li	$v0, 1
	add	$a0, $zero, $t0
	syscall
	
	jal printN
	
	addi 	$a0, $zero, 5	#function convention
	addi 	$a1, $zero, 9
	jal doSomething
	li	$v0, 1
	add	$a0, $zero, $v1
	syscall
		
	jal printN
	
	addi	$s0, $zero, 40	#stack & nested function
	jal stackFunction
	jal printN	
	move 	$a1, $s0
	jal printValue	
	
	jal printN
	
	jal 	dialog
		
	j end
	
dialog:
	la 	$s0, prompt
	li 	$v0, 4
	add 	$a0, $zero, $s0
	syscall	
	#getting user input
	li 	$v0, 5
	syscall
	move	$t0, $v0
	la	$s0, answer
	li	$v0, 4
	add	$a0, $zero, $s0
	syscall
	li	$v0, 1
	add 	$a0, $zero, $t0
	syscall	
dialogpt2:
	la 	$s0, prompt2
	li 	$v0, 4
	add 	$a0, $zero, $s0
	syscall	
	#getting float
	lwc1	$f2, floatZero
	li	$v0, 6 
	#but the value is in f0
	syscall
	#printing float
	li	$v0, 2
	add.s	$f12, $f2, $f0
	syscall
dialogpt3:
	la 	$s0, prompt2
	li 	$v0, 4
	add 	$a0, $zero, $s0
	syscall	
	#getting double
	li	$v0, 7
	syscall
	#printing double
	li	$v0, 3
	add.d	$f12, $f0, $f10
	syscall
	jr 	$ra
printValue:
	li	$v0, 1
	add	$a0, $zero, $a1
	syscall	
	jr 	$ra
stackFunction: #also nested function
	addi 	$sp, $sp, -8
	sw 	$s0, 0($sp)
	#store the address
	sw 	$ra, 4($sp)	
	addi 	$s0, $s0, 30
	#print new value in function
	move	$a1, $s0
	jal printValue
	
	lw	$ra, 4($sp)
	lw	$s0, 0($sp)
	addi 	$sp, $sp, 8
	jr 	$ra
doSomething:
	add $v1, $a0, $a1
	jr $ra				
printN:
	li 	$v0, 4
	la 	$a0, newLine
	syscall
	jr $ra		
end: 
	li $v0, 10
	syscall	
