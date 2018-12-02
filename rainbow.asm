# Task: to draw rainbow using bitmap display (parameters are 4,4,256,256 respectively) 
.data
	DISPLAY: .space 16384#65536 #0x00100 # 8*8*4, we need to reserve this space at the beginning of .data segment
	DISPLAYWIDTH: .word 64
	DISPLAYHEIGHT: .word 64
	
	RED: .word 0xff0000 
	ORANGE: .word 0xff7f00
	YELLOW: .word 0xFFFF00
	GREEN: .word 0x00ff00
	BLUE: .word 0x0000FF
	INDIGO: .word 0x4B0082
	PURPLE: .word 0x9400D3
	BLACK: .word 0x000000
	radius: .double 15
	half: .double 32.0
	zero: .double 0.0
	step: .double 0.05
	one: .double 1.0
	ftsvn: .double 64.0
.text
j main

set_pixel_color:
# Assume a display of width DISPLAYWIDTH and height DISPLAYHEIGHT
# Pixels are numbered from 0,0 at the top left
# a0: x-coordinate
# a1: y-coordinate
# a2: color
# address of pixel = DISPLAY + (y*DISPLAYWIDTH + x)*4
#			y rows down and x pixels across
# write color (a2) at arrayposition

	lw $t0, DISPLAYWIDTH
	mul $t0, $t0, $a1 	# y*DISPLAYWIDTH
	add $t0,$t0, $a0 	# +x
	sll $t0, $t0, 2 	# *4
	la $t1, DISPLAY 	# get address of display: DISPLAY
	add $t1, $t1, $t0	# add the calculated address of the pixel
	sw $a2, ($t1) 		# write color to that pixel
	jr $ra 			# return
	



main:
	ldc1 $f0, zero	# zero
	ldc1 $f2, half # 32
	ldc1 $f4, ftsvn # max width
	ldc1 $f6, radius # radius = r
	ldc1 $f22, one	
	ldc1 $f20, step
	li $s7, 7
loop:  
	mul.d $f8, $f6, $f6 # t7 = r*r
	ldc1 $f10, zero # ycoor = 0
	
	loop1:
		ldc1 $f12, zero	# xcoor=0 again
	
		loop2:	
			cvt.w.d $f30, $f12
			mfc1 $a0, $f30
			cvt.w.d $f30, $f10
			mfc1 $a1, $f30			
		
			sub.d $f14, $f12, $f2 # x-32
			mul.d $f14, $f14, $f14 # (x-32)^2
			sub.d $f16, $f10, $f2 # y-32
			mul.d $f16, $f16, $f16 #(y-32)^2
			add.d $f18, $f16, $f14 # x^2 + y^2
			
			round.w.d $f24, $f18
			round.w.d $f26, $f8
					
			c.eq.d $f24, $f26
			bc1t color

			j skipSkip	    # and skip 
				
		color: 	
			lw $a2, BLACK	
			beq $s7, 0, skipColor
			lw $a2, PURPLE
			beq $s7, 1, skipColor
			lw $a2, INDIGO
			beq $s7, 2, skipColor
			lw $a2, BLUE
			beq $s7, 3, skipColor
			lw $a2, GREEN
			beq $s7, 4, skipColor
			lw $a2, YELLOW
			beq $s7, 5, skipColor
			lw $a2, ORANGE	
			beq $s7, 6, skipColor	
			lw $a2, RED	    # store color RED	
			
		skipColor:	 	
						
			jal set_pixel_color	# color the current pixel
		skipSkip:
			
			add.d $f12, $f12, $f20
			c.le.d $f12, $f4
			bc1t loop2
							
		add.d $f10, $f10, $f20	
		c.le.d $f10, $f2
		bc1t loop1
		
	sub.d $f6, $f6, $f22
	addi $s7, $s7, -1
	bne $s7, -1, loop
	
							
	
