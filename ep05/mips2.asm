#programa 2
# x = 1;
# y = 5*x + 15;

# inicio

.text
.globl main
main:
addi $s0, $s0, 1 # x = 1
addi $s0, $s0, 5 # x = x * 5
addi $s1, $s0, 15 # y = 5 + 15

#fim