.data
num1: .data 
t1: .asciiz "Entre com um valor de idade: "
t2: .asciiz "Voce nasceu no ano de: "

.text
loop:
	li $v0, 4 # $v0 = t1
	la $a0, t1 # print($v0)
	syscall

	li $v0, 5 # cin >> $v0
	syscall

	addi $t0, $v0, 0 # $t0 = $v0
	ble $t0, 0, loop # if($t0 < 0), loop
	j fim
	
fim: 
li $t1, 2023
sub $t2, $t1, $t0

li $v0, 1
addi $a0, $t2, 0
syscall