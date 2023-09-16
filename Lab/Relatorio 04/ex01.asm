.text
li $t0, 10
li $t1, 25
li $t2, 43
li $t3, 89
# deslocamento direita
srl $t4, $t0, 8
srl $t5, $t1, 8
srl $t6, $t2, 8
srl $t7, $t3, 8
# esquerda
sll $t0, $t0, 4
sll $t1, $t1, 4
sll $t2, $t2, 4
sll $t3, $t3, 4