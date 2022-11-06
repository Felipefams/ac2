#programa 3

# x = 3;
# y = 4;
# z = (15*x + 67*y)*4

# inicio
.text
.globl main
main:
#initial values
addi $s0, $s0, 15 # x = 15
addi $s1, $s1, 67 # y = 67
# 15 * x
sll $s0, $s0, 1
addi $s0, $s0, 15
#67 * x
sll $s1, $s1, 2
# (15*x + 67*y)*4
add $s2, $s0, $s1
sll $s2, $s2, 2
#fim
