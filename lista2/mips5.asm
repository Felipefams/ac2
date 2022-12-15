# programa 05
# x = 305419896;

#  Ass:
# x = $s0

.text 
.globl main
main:
addi $s0, $zero, 0x1234 # x = 0x0000 1234
sll $s0, $s0, 16 # x = 0x1234 0000
ori $s0, $s0, 0x5678 # x = 0x1234 5678
