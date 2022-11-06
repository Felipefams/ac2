#programa 5

# x = MAX_INT;
# y = 3e5;
# z = x - 4y

# inicio
.text
.globl main
main:
#initial values
# x = MAX_INT
ori $s0, $zero, 0x7fff 	# x = 0000 7fff
sll $s0, $s0, 16 	# x = 7fff 0000
ori $s0, $s0, 0xffff 	# 7fff ffff

addi $s1, $s1, 25000 # y = 25000
add $s1, $s1, $s1 # y = 50000
add $t0, $s1, $s1 # tmp = 100000
add $s1, $s1, $s1 # y = 100000
add $s1, $s1, $s1 # y = 200000
add $s1, $s1, $t0 # y += tmp
sll $s1, $s1, 2 # 4y

sub $s2, $s0, $s1 # z = x - 4y

#fim
