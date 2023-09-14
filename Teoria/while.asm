.data
dado1: .word 0x00000010
dado2: .word 0x00000010
dado3: .word 0x00000010
dado4: .word 0x00000020
.text
li $s5, 0x00000010 # valor k
li $s6, 0x10010000 # endereço do primeiro dado do programa
# a partir do endereço base, quanto eu preciso deslocar?
li $s3, 0 # inicializa o offset com zero
li $s4, 1 # pula de uma posição

loop:
add $t1, $s3, $s3 # $t1 = 2*$s3
add $t1, $t1, $t1  #$t1 = 4*offset
add $t1, $t1, $s6 #$t1 receberá o endereço base + offset
lw $t0, 0($t1) #carrega a posição i do vetor para $t0
bne $t0, $s5, exit # faz  a comparação com o valor de k
add $s3, $s3, $s4 # incrementa offset
j loop
exit: 