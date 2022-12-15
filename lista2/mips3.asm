# programa 03
# x = 3;
# y = x * 1025;

#  Ass:
# x = $s0
# y = $s1

.text
.globl main
main:
addi $s0, $zero, 3 # x = 3
sll $s1, $s0, 10 # y = x * 1024
add $s1, $s1, $s0 # y = y + x 
