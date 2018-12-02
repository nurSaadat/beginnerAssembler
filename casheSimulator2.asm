# Task: fill memory with 0x04040404 
.data
array: .space 1024
stepSize: .word 1
repCount: .word 4

.text
# for (int index = 0; index < arrSize/loopSize; index ++) {
# for (int repIdx=0; repIdx < repCount ; repIdx ++) {
# for (int loopIdx = 0; loopIdx < loopSize ; loopIdx += stepSize){


# Number of blocks: 1
# Cache block size: 32
# The reasons for my optimization: 
#1) In Assembly code: Using constants improve performance, less 
#                     time accessing memory. Using bigger steps improves time.
#2) In the configuration of cashe parameters: 
#                        program is not so big so it does 
#                        not need many blocks of memory, one is enough
#                        Block size then picked to make cashe size 128.

### Optional: I tried optimizing with cache size > 128
### Number of blocks: 8
### Cache block size: 64
### 100 hit rate and only 23 miss count


main: 
	lw $a0, repCount
	addi $a1, $zero, 128
	addi $a2, $zero, 1024
	lw $a3, stepSize
	la $s3, array

	jal myMemoryUpdate
	
	li $v0, 10
	syscall

myMemoryUpdate:

	add $s0, $zero, $zero #index
	div $t0, $a2, $a1
	
	loop1:
	add $s1, $zero, $zero #repIdx
		loop2:
		add $t2, $zero, $zero
		add $s2, $zero, $zero #loopIdx
			loop3:
				
				sll $t1, $s2, 2
				add $s4, $zero, $t1
				add $t1, $t1, $s3
				lw $t2, 0($t1)
				addi $t2, $t2, 16843009
				sw $t2, 0($t1)
			addi $s2, $s2, 1
			bne $s2, 128, loop3 #loopsize
		addi $s1, $s1, 1
		bne $s1, 4, loop2 #repCount
	addi $s0, $s0, 1
	sll $s4, $s4, 1
	add $s3, $s3, $s4
	bne $s0, $t0, loop1 #arrsize/loopsize
	
exit_func:
	jr $ra
	
