# prograna 13

# Associações :
# t0 = MEM[0]
# A = $s0

#inicio
.text
.globl main
main:

ori $t0, $zero, 0x1001 # MEM[0] = 0000 1001
sll $t0, $t0, 16 # MEM[0] = 1001 0000

lw $s0, 0($t0) # A = MEM[0]
srl $t1, $s0, 28 # t1 = 0000 000f

ori $t2, $zero, 0x000f # t2 = 0000 000f
addi $t3, $zero, -1 # t3 = -1

bne $t1, $t2, nao # if(t1 != t2) nao:
mult $s0, $t3 # A = A * (-1)
mflo $s0 # A = low

nao:
sw  $s0, 0($t0) # MEM[0] = A

.data
A: .word -10
#fim
