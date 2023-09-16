.data
a: .byte 0x20
b: .byte 0x40
c: .byte 0x20

.text
lb $t0, a
lb, $t1, b
lb, $t2, c

bgt $t0, $t1, soma
sub $t1, $t0, $t2
add $t2, $t1, $t2
j fim
soma: 
	sub $t3, $t0, $t1
	add $t0, $t1, $t2
fim:
