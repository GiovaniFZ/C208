.text
li $t0, 5
li $t1, 3
beq $t0, $t1, true
# se $t0 diferente de $t1
mult $t0, $t1
mflo $t2
j fim # pula para o fim
true: add $t2, $t0, $t1
fim: 
