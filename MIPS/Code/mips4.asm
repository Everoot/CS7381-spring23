# i = 1;    $t0: i
# s = 0;    $t1: s

li $t0, 1
li $t1, 0

loop: 
	# s = s+i;
	# i = i + 1;
	add $t1, $t1, $t0
	add $t0, $t0, 1

ble $t0, 100, loop       # branch less

move $a0, $t1
li $v0, 1
syscall 