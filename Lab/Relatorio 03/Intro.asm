.data
x: .byte 0x45 #0x1001000
y: .byte 0x48 #0x1001001
z: .byte 0x30 #0x1001002
f: .byte 0x20 #0x1001003
g: .byte 0x40 #0x1001004
h: .asciiz "Ola teste"

.text
lb $t0, x
lb $t1, y
#addiu $t0, $t0, 15
#addiu $t1, $t1, 21
#add $t2, $t0, $t1
