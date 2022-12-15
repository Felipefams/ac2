# programa 06
# x = 100000;
# y = 200000;
# z = x + y;

#  Ass:
# x = $s0
# y = $s1
# z = $s2

.text 
.globl main
main:
addi $s0, $zero, 25000 # x = 25000
sll $s0, $s0, 2 # x = x * 4 - > 100000
sll $s1, $s0, 1 # y = x * 2 -> 200000
add $s2, $s0, $s1 # z = x + y
