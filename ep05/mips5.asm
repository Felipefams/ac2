#programa 5

# x = 1e5;
# y = 2e5;
# z = x + y

# inicio
.text
.globl main
main:
#initial values
# x = 1e5
addi $s0, $s0, 20000
sll $s0, $s0, 2
addi $s0, $s0, 20000
# y = 2e5
add $s1, $s0, $s0

add $s2, $s1, $s0 # z = x + y

#fim
