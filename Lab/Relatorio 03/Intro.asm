.data
x: .byte 0x45
y: .byte 0x48

.text
lb $t0, x
lb $t1, y
#addiu $t0, $t0, 15
#addiu $t1, $t1, 21
#add $t2, $t0, $t1