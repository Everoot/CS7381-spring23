.data
	msg_yes:	.ascii	"YES\0"    #\0 means stop it will not continue
	msg_no:		.ascii 	"NO\0"	   # if not \0 when 8 5, it will be YESNO
	
.text
# scanf("%d", &a);        $t0 = a
# scanf("%d", &b);        $t1 = b


# should we store the data in the CPU then we can calucale in asm language

# read help syscalls, number 5 is what we want 

li $v0, 5
syscall 
move $t0, $v0

li $v0, 5
syscall
move $t1, $v0

# if (a > b) {printf("YES")}; 
# if ($t0 > $t1)

bgt $t0, $t1, sub1       # branch greater than: if $t0>$t1 jump to sub1
# else printf("NO");
la $a0, msg_no
li $v0, 4
syscall 

# here need to stop the program, if not it will keep continue
li $v0, 10         # exit (terminate execution)
syscall

sub1:
# if printf("YES");
la $a0, msg_yes
li $v0, 4
syscall 