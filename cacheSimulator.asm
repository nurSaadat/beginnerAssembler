# Task: fill memory with 0x01010101
.data
array: .space 1024
stepSize: .word 1

.text
# Number of blocks: 1
# Cache block size: 32
# The reasons for my optimization: 
#1) In Assembly code: Using constants improve performance, less 
#                     time accessing memory. Using bigger steps improves time.

#2) In the configuration of cashe parameters: 
#                        program is not so big so it does 
#                        not need many blocks of memory, one is enough
#                        Block size then picked to make cashe size 128.
main: 
la $a0, array
lw $a2, stepSize
jal updateMemory
li $v0, 10
syscall

updateMemory:
	add $s0, $zero, $zero
loop:
	sll $t1, $s0, 2
	add $t1, $t1, $a0
	lw $t2, 0($t1)
	addi $t2, $zero, 16843009
	sw $t2, 0($t1)
	addi $s0, $s0, 1
	bne $s0, 256, loop
exit_loop:
	jr $ra

