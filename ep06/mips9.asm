# programa 9
# .data
# x1: .word 15
# x2: .word 25
# x3: .word 13
# x4: .word 17
# soma: .word -1

# Associações :
# t0 = MEM[0]
# x1 = $s0
# x2 = $s1
# x3 = $s2
# x4 = $s3
# soma = $s4

#inicio
.text
.globl main
main:
ori $t0, $zero, 0x1001 # MEM[0] = 0000 1001
sll $t0, $t0, 16 # MEM[0] = 1001 0000
lw $s0, 0($t0) # x1 = MEM[0]
lw $s1, 4($t0) # x2 = MEM[1*4]
lw $s2, 8($t0) # x3 = MEM[2*4]
lw $s3, 12($t0) # x4 = MEM[3*4]
add $t1, $s0, $s1 # t1 = x1 + x2
add $t2, $s2, $s3 # t2 = x3 + x4
add $s4, $t1, $t2 # soma = t1 + t2
sw $s4, 16($t0) # MEM[4*4] = soma
.data
x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17
soma: .word -1
#fim
