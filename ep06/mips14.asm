# programa 14

# Associações :
# t0 = MEM[0]
# MEM[1] = $s1
# A = $s0

#inicio
.text
.globl main
main:

ori $t0, $zero, 0x1001 # MEM[0] = 0000 1001
sll $t0, $t0, 16 # MEM[0] = 1001 0000

lw $s0, 0($t0) # A = MEM[0]

addi $t1, $zero, 2 # t1 = 2
div $s0, $t1 # $s0 / 2
mfhi $t2 # t3 = hi -> resto

addi $s1, $zero, 0 # $s1 = 0
beq $t2, $zero, par # if(t2 == 0) par
addi $s1, $zero, 1 # $s1 = 1

par: 
sw  $s1, 4($t0) # MEM[1*4] = 0 ou 1

.data
A: .word 101
#fim
