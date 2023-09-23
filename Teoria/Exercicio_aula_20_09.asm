# Escreva m codigo em assembly MIPS capaz de ler
# um valor numerico positivo e dizer se o mesmo é
# par ou impar
.data
t1: .asciiz "Entre com um numero: "
t2: .asciiz "Par"
t3: .ascii "Impar"

.text
	li $v0, 4 # $v0 = t1
	la $a0, t1 # print($v0) = Entre com um numero
	syscall
	
	li $v0, 5 # cin >> $v0 (valor digitado deve ser int)
	syscall
	
	add $t0, $v0, $0
	addi $t1, $t1, 2
	div $t0, $t1
	mfhi $t2 # move from HI para t2
	
	beq $t2, 0, par
	
	li $v0, 4 # $v0 = t1
	la $a0, t3 # impar
	syscall
	j fim
	
par: 
	li $v0, 4 # $v0 = t1
	la $a0, t2
	syscall
	
fim:
li $v0, 10
syscall 
	