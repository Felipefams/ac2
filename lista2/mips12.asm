# programa 12
# Escreva um programa que leia um valor A da memória, identifique se o número é negativo ou não e
# encontre o seu módulo. O valor deverá ser reescrito sobre A.

# Ass:
# A[0] = $s0
# A = $s1

.text
.globl main
main:
addi $s0, $zero, 0x1001 # A[0] = 0x0000 1001
sll $s0, $s0, 16 # A[0] = 0x1001 0000

lw $s1, 0($s0) # A = A[0]

slt $t0, $s1, $zero # if(A < 0) t0 = 1
beq $t0, $zero, fim # if(t0 == 0) -> fim
sub $s1, $zero, $s1 # A = 0 - (A)
fim:

.data
A: .word -10
