.data
num1: .byte 2
num2: .byte 8
num3: .byte 89
num4: .byte 20
num5: .byte -80
num6: .half 1234
num7: .byte 70
num8: .byte -24
num9: .byte 20
num10: .half -150
.text
lb $t0, num1
lb $t1, num2
add $t2, $t0, $t1

lb $t0, num3
lb $t1, num4
add $t3, $t0, $t1

lb $t0, num5
lh $t1, num6
add $t4, $t0, $t1

lb $t0, num7
lb $t1, num8
add $t5, $t0, $t1

lb $t0, num9
lh $t1, num10
add $t6, $t0, $t1