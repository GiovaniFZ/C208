.data
t1: .asciiz "Entre com um valor de idade: " # obrigatorio com syscall
t2: .asciiz "Voce e maior de idade "
t3: .asciiz "Voce e menor de idade "

.text
	li $v0, 4 # $v0 = t1
	la $a0, t1 # print($v0) = entre com o valor de idade
	syscall

	li $v0, 5 # cin >> $v0 (valor digitado deve ser int)
	syscall
	
	addi $t0, $v0, 0 # $t0 = $v0 ($t0 é a idade digitada)
	blt $t0, 18, menor
	j maior
	
	menor: 
	li $v0, 4 # $v0 = t1
	la $a0, t3 # Voce e menor de idade
	syscall
	j fim
	
	maior:
	li $v0, 4 # $v0 = t1
	la $a0, t2 # Voce e maior de idade
	syscall
	
fim: 
li $v0, 10 #exit
syscall