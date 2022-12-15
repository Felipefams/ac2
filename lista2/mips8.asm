# programa 8
# A[12] = h + A[8];

# Ass:
# A[0] = $s0
# h = $s1

.text
.globl main
main:
addi $s0, $zero, 0x1001 # A[0] = 0x0000 1001
sll $s0, $s0, 16 # A[0] = 0x1001 0000

lw $s0, 32($s0) # t0 = A[8]
add $t1, $s1, $t0 # t1 = h + t0

sw $t1, 48($s0) # A[12] = t1
