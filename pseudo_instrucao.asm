.data 
num: .byte 0x20
.text 
addi $t1, $0, 0x50 # $t1 = 50
addi $t2, $0, 0x30 # $t2 = 30
move $t3, $t2 # Substitui por addu
subi $t3, $t1, 0x10 # Substitui por addi
or $t4, $t1, $t2 # $t5 = $t1 * $t2
not $t5, $t1 # Substitui por nor

# Conclusão: algumas instruções não existem.