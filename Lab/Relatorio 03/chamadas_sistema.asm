.data
texto1: .asciiz "Entre com um valor: "
texto2: .asciiz "O numero digitado foi "

.text
li $v0, 4 # codigo para printar string
la $a0, texto1 #carrega o endereço onde esta a string
syscall

li $v0, 5 # le inteiro
syscall
 
add $t0, $t0, $v0 # salva valor digitado
li $v0, 4
la, $a0, texto2 
syscall

li $v0, 1
addiu $a0, $t0, 0
syscall

# $a0 e $v0 lidam com input e output de sistema
