# programa 10
# $8 = 0x12345678
# $9 = 0x12
# $10 = 0x34
# $11 = 0x56
# $12 = 0x78

# Ass:
# $8 = $t0
# $9 = $t1
# $10 = $t2
# $11 = $t3
# $12 = $t4

.text
.globl main
main:
addi $t0, $zero, 0x1234 # $8 = 0x0000 1234
sll $t0, $t0, 16 # $8 = 0x1234 0000
ori $t0, $t0, 0x5678 # $8 = 0x1234 5678

srl $t1, $t0, 24 # $9 = 0x0000 0012

sll $t2, $t0, 8 # $10 = 0x3456 7800
srl $t2, $t2, 24 # $10 = 0x0000 0034

sll $t3, $t0, 16 # $11 = 0x5678 0000
srl $t3, $t3, 24 # $11 = 0x0000 0056

sll $t4, $t0, 24 # $12 = 0x7800 0000
srl $t4, $t4, 24 # $12 = 0x0000 0078