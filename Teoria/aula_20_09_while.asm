.text
addi $t1, $t0, 6 # x=  6
addi $t2, $t0, 2 # y = 2

loop:
addi $t2, $t2, 2 # y  = y+2
addi $t1, $t1, 1 # x++
blt $t1, 10, loop #while(x<10)
j fim

fim:
