# Exercicios
# A[15] = h + B[6]
# $s0 = h
# $s1 = End base A
# $s2 = End base B
lw $t1, 24($s2) # $t1 = B[6]
add $t1, $t1, $s0 # $t1 = h + B[6]
sw $t1, 60($s1) # A[15] = $t1
#------------------
#b) A[15] = A[5] + B[6] + B[0];
#$s1: endereço base de A
#$s2: endereço base de B
lw $t1, 0($s2)
lw $t2, 24($s2)
lw $t3, 20($s1)
add $t1, $t1, $t2
add $t1, $t1, $t3
sw $t1, 60($s1)


