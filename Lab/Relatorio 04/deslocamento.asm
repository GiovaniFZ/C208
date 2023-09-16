.data

.text
li $t0, 7 # 111
srl $t1, $t0, 2 # deslocamento para a direita
sll $t2, $t0, 2 # deslocamento para esquerda
# Operacoes logicas
li $t3, 3
li $t4, 5
and $t5, $t3, $t4
or $t6, $t3, $t4