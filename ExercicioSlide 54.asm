.text
addi $s1, $0, 30
addi $s2, $0, 20
addi $s3, $0, 40
addi $s4, $0, 10

# deve resultar 19 em t5

addi $t0, $s1, 10 # (b+10)
addi $t1, $s2, -5 # (c-5)
sub $t2, $s3, $s4 # (d-e)
sub $t4, $t1, $t2 # (c-5) - (d-e)
add $t5, $t0, $t4 # (b+10) + (c-5) - (d-e)
