.data
.text
#Db D? D? C C C B? B? B? B? B? C
#D? D? D? C C C B? B? B? B? B? C
	li $t2, 2
	gloop1:
    li  $t1, 2
loop1:  
    li	 $v0, 31
    li	 $a0, 49
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 550
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop1   
    
    li	 $v0, 31
    li	 $a0, 49
    li	 $a1, 700
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall

    li  $t1, 2
loop2:  
    li	 $v0, 31
    li	 $a0, 60
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 550
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop2   
    
    li	 $v0, 31
    li	 $a0, 60
    li	 $a1, 700
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall

    li  $t1, 2
loop3:  
    li	 $v0, 31
    li	 $a0, 58
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 550
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop3  
    
    li	 $v0, 31
    li	 $a0, 58
    li	 $a1, 700
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    
    li  $t1, 2
loop4:  
    li	 $v0, 31
    li	 $a0, 58
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 550
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop4   
    
    li	 $v0, 31
    li	 $a0, 60
    li	 $a1, 700
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    
	addi $t2, $t2, -1
	bne  $t2, $zero, gloop1

  #### 
#F D? E? D? D?
#I won’t lie to you
  
         li   $v0, 31
    li	 $a0, 53
    li	 $a1, 850
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 600
    syscall
    
    li	 $v0, 31
    li	 $a0, 49
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 700
    syscall
    
    li	 $v0, 31
    li	 $a0, 51
    li	 $a1, 850
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 600
    syscall
  
    li	 $v0, 31
    li	 $a0, 49
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 700
    syscall
    
    li	 $v0, 31
    li	 $a0, 49
    li	 $a1, 900
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
     ####  
#D? E? F F D? E? D? D?
#I know he’s just not right for you
 
        li   $v0, 31
    li	 $a0, 49
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li	 $v0, 31
    li	 $a0, 51
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li	 $v0, 31
    li	 $a0, 53
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li	 $v0, 31
    li	 $a0, 53
    li	 $a1, 850
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 450
    syscall
  
    li	 $v0, 31
    li	 $a0, 49
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li	 $v0, 31
    li	 $a0, 51
    li	 $a1, 650
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    
    li	 $v0, 31
    li	 $a0, 49
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li	 $v0, 31
    li	 $a0, 49
    li	 $a1, 900
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 600
    syscall
     ####  
#D? D? D? F F F F A?
#And you could tell me if I’m off

     li  $t1, 3
loop5:
   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop5
    
    
     li  $t1, 4
loop6:
   li   $v0, 31
    li	 $a0, 53
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop6    
    
    li	 $v0, 31
    li	 $a0, 56
    li	 $a1, 400
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    ####
#D? D? E? E? E? F E?
#But I see it on your face
    
    li	$t1, 2
loop7:
   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop7
    
    li  $t1, 3
loop8:
   li   $v0, 31
    li	 $a0, 51
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop8
    
    li	 $v0, 31
    li	 $a0, 53
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li	 $v0, 31
    li	 $a0, 51
    li	 $a1, 350
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 650
    syscall
     ####
#D? D? D? D? D? D? D? E? F F
#When you say that he’s the one that you want
    li  $t1, 7
loop9:
   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop9       
         
    li	 $v0, 31
    li	 $a0, 51
    li	 $a1, 400
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li  $t1, 2
loop10:
   li   $v0, 31
    li	 $a0, 53
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop10
    
    li	 $v0, 32
    li	 $a0, 200
    syscall
    
    ####
#D? D? F F F F A?
#And you’re spending all your time
  
    li  $t1, 2
loop11:
   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop11
    
    
     li  $t1, 4
loop12:
   li   $v0, 31
    li	 $a0, 53
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop12    
    
    li	 $v0, 31
    li	 $a0, 56
    li	 $a1, 400
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    ####
#D? D? E? E? F E? D?
#In this wrong situation

    li	$t1, 2
loop13:
   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop13
    
    li  $t1, 2
loop14:
   li   $v0, 31
    li	 $a0, 51
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop14
    
    li	 $v0, 31
    li	 $a0, 53
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li	 $v0, 31
    li	 $a0, 51
    li	 $a1, 350
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li   $v0, 31
    li	 $a0, 49
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    #####  
#D? D? D? D? D? D? E? F F
#And anytime you want it to stop   
    li  $t1, 6
loop15:
   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop15       
         
    li	 $v0, 31
    li	 $a0, 51
    li	 $a1, 400
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li  $t1, 2
loop16:
   li   $v0, 31
    li	 $a0, 53
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop16
    
    li	 $v0, 32
    li	 $a0, 350
    syscall
    
    ####
#D? D? D? D? D? F C D? D? E? D?
#I know I can treat you better than he can
li  $t1, 4
loop17:
   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop17    
  
    li   $v0, 31
    li	 $a0, 49
    li	 $a1, 800
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    
    li   $v0, 31
    li	 $a0, 53
    li	 $a1, 700
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    
    li   $v0, 31
    li	 $a0, 60
    li	 $a1, 700
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    

   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 800
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    
    li   $v0, 31
    li	 $a0, 49
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li   $v0, 31
    li	 $a0, 51
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li   $v0, 31
    li	 $a0, 49
    li	 $a1, 900
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
     ####

#D? D? D? D? D? D? F C D? D? E? D?
#And any girl like you deserves a gentleman
 li  $t1, 5
loop18:
   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop18   
  
    li   $v0, 31
    li	 $a0, 49
    li	 $a1, 800
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    
    li   $v0, 31
    li	 $a0, 53
    li	 $a1, 700
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    
    li   $v0, 31
    li	 $a0, 60
    li	 $a1, 700
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    

   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 800
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    
    li   $v0, 31
    li	 $a0, 49
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li   $v0, 31
    li	 $a0, 51
    li	 $a1, 500
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li   $v0, 31
    li	 $a0, 49
    li	 $a1, 900
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
     ####

#D? D? D? D? D? E? F E?
#Tell me why are we wasting time

li  $t1, 4
loop19:
   li   $v0, 31
    li	 $a0, 49
    li	 $a1, 300
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    addi $t1, $t1, -1
    bne  $t1, $zero, loop19  
  
    li   $v0, 31
    li	 $a0, 49
    li	 $a1, 600
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li   $v0, 31
    li	 $a0, 51
    li	 $a1, 600
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 300
    syscall
    
    li   $v0, 31
    li	 $a0, 53
    li	 $a1, 600
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    

   li   $v0, 31
    li	 $a0, 51
    li	 $a1, 600
    li	 $a2, 34
    li	 $a3, 70
    syscall
    
    li	 $v0, 32
    li	 $a0, 500
    syscall
    

#D? D? D? E? F E?
#On all your wasted crying

#D? D? D? D? D? D? F F
#When you should be with me instead


#D? D? D? D? D? F C D?
#I know I can treat you better

#56 54 53 54 53
#A? G? F G? F
#Better than he can
