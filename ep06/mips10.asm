# programa 10
#  y = 127x - 65z + 1
# .data
# x: .word 5
# z: .word 7
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

sll $t1, $s0, 7 # t1 = x * 128
sub $s0, $t1, $s0 # x = t1 - x

sll $t2, $s1, 6 # t2 = z * 64
add $s1, $t2, $s1 # z = t2 + z 

sub $s2, $s0, $s1 # y = x - z
addi $s2, $s2, 1 # y = y + 1

sw  $s2, 8($t0) # MEM[2*4] = y

.data
x: .word 5
z: .word 7
y: .word 0 
#fim
