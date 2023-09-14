.data  
n1: .byte 0x20
n2: .byte 0x60
m: .byte
.text
#m = (n1+n2)/2
# loadbyte
lb $t1, n1 # guarda n1 no registrador $t1
lb $t2, n2 # guarda n2 no registrador $t2
add $t3, $t1, $t2
srl $t4, $t3, 1 # desloca 1 casa para a direita
# Exemplo: 30 = 011110 
# Para dividir por 2: Desloca para a direita (fica 001111 = 15)
# multiplicando por 4: 30.4 = 1111000 (desloca 2 para a esquerda)

# load address
la $t6, n1 # 0x10010000
la $t7, n2 # 0x1001001

#store
sb $t4, m # armazena em 0x1001003

# deslocando para 4 endereços para frente, para armazenar em 0x1001007
la $t5, m
sb $t5, 4($t5)
