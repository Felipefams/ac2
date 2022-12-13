# programa 11
# y = x - z + 300000
# x: .word 100000
# z: .word 200000
# y: .word 0 

# Associações :
# t0 = MEM[0]
# x = $s0
# z = $s1
# y = $s2

#inicio
.text
.globl main
main:

ori $t0, $zero, 0x1001 # MEM[0] = 0000 1001
sll $t0, $t0, 16 # MEM[0] = 1001 0000

lw $s0, 0($t0) # x = MEM[0]
lw $s1, 4($t0) # z = MEM[1*4]

add $t1, $s0, $s1 # t1 = (x)->100000 + (z)->200000

sub $t2, $s0, $s1 # t2 = x - z
add $s2, $t2, $t1 # y = t2 + 3000000
sw  $s2, 8($t0) # MEM[2*4] = y

.data
x: .word 100000
z: .word 200000
y: .word 0 
#inicio
