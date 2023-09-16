.text
li $t0, 10 # i
li $t1, 0 # cont

loop:
	add $t1, $t1, 5 # cont += 5
	sub $t0, $t0, 2 # i = i - 5
	bgt $t0, 0, loop # i > 10
	j fim
fim: 