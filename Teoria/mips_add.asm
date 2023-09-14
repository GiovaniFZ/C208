.data 
num: .byte 0x20
.text 
addi $t1, $0, 0x70 # $t1 = 50
addi $t2, $0, 0x30 # $t2 = 30
add $t3, $t1, $t2 # $t3 = $t1 + $t2 = 80
sub $t4, $t1, $t2 # $t4 = $t1 - $t2 = 20
mul $t5, $t1, $t2 # $t5 = $t1 * $t2
div $t6, $t1, $t2 # $t6 = $t1/$t2