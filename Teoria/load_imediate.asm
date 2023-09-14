# load imediate
# carrega direto no registrador
li $t1, 0x10203040
li $t2, 0x5060
li $t3, 0x70
li $s0, 0x10010000
# trazendo esses valores para a memoria
sw $t1, 0($s0)
sh $t2, 4($s0)
sb $t3, 6($s0)