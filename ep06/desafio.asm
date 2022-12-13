# programa desafio

#li $a0, 5 #load imediato
#li $a1, 3

#inicio
.text
.globl main
main:

ori $t0, $zero, 0x1001 # MEM[0] = 0000 1001
sll $t0, $t0, 16 # MEM[0] = 1001 0000

lw $a0, 0($t0) # x = MEM[0]
lw $a1, 4($t0) # y = MEM[1*4]

mult $a0, $a1
mfhi $a2 # 32 most significant bits of multiplication to $a2
mflo $a3 # 32 least significant bits of multiplication to $a3

.data 
x: .word 50000
y: .word 10000

#fim