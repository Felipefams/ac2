# programa 9
# h = A[i];
# A[i] = A[i + 1];
# A[i + 1] = h;

# Ass:
# A[0] = $s0
# h = $s1
# i = $s2

.text
.globl main
main:
addi $s0, $zero, 0x1001 # A[0] = 0x0000 1001
sll $s0, $s0, 16 # A[0] = 0x1001 0000

sll $t0, $s2, 2 # t0 = i * 4 
add $t1, $s0, $t0 # t1 = A[0 + 4i] !important
lw $s1, 0($t1) # h = A[4i]

lw $t2, 4($t1) # t2 = A[4 + 4i]
sw $t2, 0($t1) # A[4i] = t2

sw $s1, 4($t1) # A[4 + 4i] = h
