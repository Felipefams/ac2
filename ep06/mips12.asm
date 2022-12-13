# programa 12
# k = MEM [ MEM [ MEM [ x ] ] ].

# Associações :
# t0 = MEM[0]
# k = $s0
# x = $s1

#inicio
.text
.globl main
main:

ori $t0, $zero, 0x1001 # MEM[0] = 0000 1001
sll $t0, $t0, 16 # MEM[0] = 1001 0000

lw $s1, 0($t0) # x = MEM[0]

lw $t1, 4($t0) # t1 = MEM [ x ]
lw $t2, 8($t0) # t2 = MEM [ t1 ]
lw $s0, 0($t2) # k = MEM [ t2 ]

sll $s0, $s0, 1 # k = k * 2
sw  $s0, 0($t0) # MEM[0] = k

.data
x: .word 5
y: .word x
z: .word y
#fim
