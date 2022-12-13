# programa 15

# Associações :
# t0 = MEM[0]
# i = $s0
# soma = $s1

#inicio
.text
.globl main
main:

ori $t0, $zero, 0x1001 # MEM[0] = 0000 1001
sll $t0, $t0, 16 # MEM[0] = 1001 0000

addi $s0, $zero, 0 # i = 0
addi $t3, $zero, 100 # contador = 100

do:
sll $t1, $s0, 1 # t1 = i * 2
add $t1, $t1, 1 # 2 * 1 + 1
add $s1, $s1, $t1 # soma = soma + t1

sw $t1, 0($t0) # MEM[i] = t1

addi $t0, $t0, 4 # MEM[+4] 
addi $s0, $s0, 1 # i++

bne $s0, $t3, do # while ( i != 100 )

sw $s1, 0($t0) # MEM[101] = soma
#fim
