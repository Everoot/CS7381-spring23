       .data 
space: .ascii " "

       .text
       	li $t1, 1   			# x = 1
	li $t2, 4   			# n = 4 
	add $t3, $t2, $zero 		# j = n
	
outer:       				# outer loop with j
	add $t4, $t2, $zero 		# k=n
	jal inner
	
kouter:					# keep outer
	addi $t3, $t3, -1 		# j -=j j = j-1; t3=t3 -1	
	beq $t3, $zero, exit		# if (j == 0): break
	jal outer			# else (j != 0) 
	
inner:					# inner loop with k
	add $t5, $t3, $t3  		# 2 * j
	add $t1, $t1, $t5 		# x = x + 2 * j -> t1 = t1 + t4
	addi $t1, $t1, 1   		# x = x + 2 * j + 1 -> t1 = t1 + 1
	
					# print(x, end = " ")
	move $a0, $t1			# load x for syscall or move t2 (x) value to $a0 
	li $v0, 1       		# v0 = 1, syscall -> print int
	syscall
	
	la $a0, space   		# load address of spacer for sysycall
	li $v0, 4			# v0 = 4, syscall -> print string
	syscall
	
	addi $t4, $t4, -1 		# k -= k  k= k-1; t4=t4 -1
	
	beq $t4, $zero, kouter 		# if (k == 0): break
	
	jal inner			# else (k != 0)
	
	
exit: 	li $v0, 10     			# system call for exit
      	syscall