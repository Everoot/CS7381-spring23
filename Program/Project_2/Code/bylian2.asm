.data
space: .ascii " " # space to insert between numbers

.text 
li $t1, 10      # j = 10
li $t2, 1	  # x = 1

# while True:
# x = x + 3 * j
# print(x, end = " ")
# j -= 1
# if (j == 0):
# 	break
loop:                     # t3 = j # # x = x + 3 * j
      add $t3, $t1, $t1 # t3 = t1+t1 = 2 *j
      add $t3, $t3, $t1 # t3 = t3 + t1 = 3 * j
      add $t2, $t2, $t3 # t2 = t2 + t3 -> x = x + 3 * j
      
      			# print(x, end = " ")
      move $a0, $t2     # move t2(x) value to $a0 
      li $v0, 1         # v0 = 1, syscall -> print int 
      syscall		# print x
      			
      			# print " " 
      la $a0, space	# load addrees la space
      li $v0, 4		# $v0 = 4, syscall -> print_string
      syscall
      
      addi $t1, $t1, -1 # j-=1
      
      beq $t1, $zero, end # if (j==0): break 
      jal loop		  # else (j != 0): loop
      
end: li $v0, 10
     syscall 