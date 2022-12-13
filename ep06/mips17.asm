# programa 17

# Associações :
# t0 = MEM[0]
# x = $s0
# y = $s1
# k = $s2

#inicio
.text
.globl main
main:
ori $t0, $zero, 0x1001 # MEM[0] = 0000 1001
sll $t0, $t0, 16 # MEM[0] = 1001 0000

lw $s0, 0($t0) # x = MEM[0]
lw $s1, 4($t0) # y = MEM[1*4]

addi $t1, $zero, 0 # i = 0

do:
add $s2, $s2, $s0 # k = k + x
addi $t1, $t1, 1 # i++

bne $t1, $s1, do # while ( i != y)

sw $s2, 8($t0) # y = MEM[2*4]

.data 
x: .word 2
y: .word 5
k: .word -1
#fim
