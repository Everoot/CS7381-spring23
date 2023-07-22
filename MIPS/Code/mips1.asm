li  $t1, 1
add $t0, $t1, 2  # $t0 = $t1 + 2

# printf("%d", t0)

# $v0 = 1, syscall -> print_int
# $v0 = 4, syscall -> print_string
# syscall only can print the value in $a0
move $a0, $t0
li $v0, 1
syscall 