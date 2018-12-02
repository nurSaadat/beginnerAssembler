# Task: , given an array of integers Arr, its length, integers x and y, replaces all x with y in Arr.
.data
    Arr: .word 1 20 1
    len: .word 3
    x: .word 20
    y: .word 5
    space: .asciiz " "
    beforeTxt: .asciiz " A before replacement: "
    afterTxt: .asciiz "\n A after replacement: "

.text 
    main:    
    	# Saving     	
    	la $s0, Arr    	
    	lw $s1, len
    	lw $s2, x
    	lw $s3, y
    	
    	# Index
    	li $t6, 0
    	li $t5, 0
    	
    	# Print name
    	li $v0, 4
    	la $a0, beforeTxt
    	syscall
    	    	
    	jal printArr
    	
    	jal Loop
    	
    	li $t5, 0
    	
    	# Print name
    	li $v0, 4
    	la $a0, afterTxt
    	syscall    
    		
    	jal printArr
    	
    	li $v0, 10
    	syscall
   
    	 
    Loop:
        beq $t6, $s1, exit
        # Loop
        sll $t1, $t6, 2
        add $t1, $t1, $s0
        lw $t0, 0($t1)
        beq $t0, $s2, replace
        addi $t6, $t6, 1
        j Loop
    
    replace:
    	sw $s3, 0($t1)
    	addi $t6, $t6, 1
    	j Loop
        
    
    printArr:
    	beq $t5, $s1, exit
    	sll $t1, $t5, 2
        add $t1, $t1, $s0
        lw $t0, 0($t1)
        # Printing
        li $v0, 1
    	move $a0, $t0
    	syscall   
    	# ,    
    	li $v0, 4
    	la $a0, space
    	syscall
        addi $t5, $t5, 1
        j printArr
    
    exit:
        jr $ra
    
    
       
