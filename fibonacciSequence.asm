# Task: fill memory with the first elements of Fibonacci sequence 
.data

fib: .word 0 1

.text

la $s0, fib

lw $t0, ($s0)
addi $s0, $s0, 4
lw $t1, ($s0)
add $t7, $t0, $t1
addi $s0, $s0, 4
sw $t7, 0($s0)

lw $t0, ($s0)
add $t7, $t0, $t1
addi $s0, $s0, 4
sw $t7, 0($s0)

lw $t0, ($s0)
add $t7, $t0, $t1
addi $s0, $s0, 4
sw $t7, 0($s0)

lw $t1, ($s0)
add $t7, $t0, $t1
addi $s0, $s0, 4
sw $t7, 0($s0)

lw $t0, ($s0)
add $t7, $t0, $t1
addi $s0, $s0, 4
sw $t7, 0($s0)
