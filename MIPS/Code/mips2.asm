.data 
# char* msg = "Hello World"; // in c
# msg like C, valuable name and tell it is word, string .asscii; msg kind like address
msg: .ascii "Hello World"     

.text
la $a0, msg           # load address la must the first is register second address or string
li $v0, 4             # $v0 = 4, syscall -> print_string
syscall 