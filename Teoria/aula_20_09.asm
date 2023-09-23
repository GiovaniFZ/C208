.text 
addi $t1, $0, 12
addi $t2, $t0, 2
bge  $t1, 10, maior
addi $t2, $t2, 2
j fim
maior: 
addi $t2, $t2, -1
fim:
