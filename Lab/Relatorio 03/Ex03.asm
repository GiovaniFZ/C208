.data
numa: .byte 54
numb: .byte 45

.text
lb $t0, numa
lb $t1, numb
add $t2, $t1, $t0

# imprimindo a soma ($t2)
li $v0, 1 # codigo para imprimir inteiro
addiu $a0, $t2, 0 # guarda $t2 em $a0 para mostrar o valor
syscall
