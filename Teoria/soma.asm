.text
addi $t1, $0, 0x20 #soma imediata $t1 = 20
addi $t2, $0, 0x30 #$t2 = 30
add $t3, $t2, $t1 #$t3 = $t2 + $t1
sub $t4, $t2, $t1 #$t4 = $t2 - $t1 = 30 - 20
sub $t4, $t1, $t2 # $t4 = 20 - 30 = 0xFFFFFFF0 => 000000F (+1) = 00000010 (-10) (CPL2)
or $t5, $t2, $t3 #or 
xori $t6, $t2, 0x23 #xor imediata