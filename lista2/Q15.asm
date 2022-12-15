.data
x: .word 4

# ------------------------------------------------------------------------------------------------- #

.text
.globl main

main:
addi $s0, $0, 0x1001
sll $s0, $s0, 16

lw $s1, 0($s0) 			# x = mem[0]
addi $t0, $0, 2			# t0 = 2 
div $s1, $t0			# x / 2

mfhi $t0			# t0 = resto da divisao
beq $t0, $0, oppar		# if(t0 == 0) oppar

# ------------------------------------------------------- #
# Operacao para impar

# x ^ 5
add $a0, $0, $s1		# a0 = x
addi $a1, $0, 5			# a1 = 5

jal potencia
nop
add $s2, $s2, $v0		# y = y + x^5

# x ^ 3
addi $a1, $0, 3			# a1 = 3

jal potencia
nop
sub $s2, $s2, $v0		# y = y - x^3

# y += 1
addi $s2, $s2, 1		# y = y + 1
j fim

# ------------------------------------------------------- #
# Operacao para par
oppar:

# x ^ 4
add $a0, $0, $s1		# a0 = x
addi $a1, $0, 4			# a1 = 4

jal potencia
nop
add $s2, $s2, $v0		# y = y + x^4

# x ^ 3
addi $a1, $0, 3			# a1 = 3

jal potencia
nop
add $s2, $s2, $v0		# y = y + x^3

# 2x²
mult $s1, $s1			# x * x
mflo $t0			# t0 = x * x

add $t0, $t0, $t0		# t0 = 2x²
sub $s2, $s2, $t0		# y = y - 2x²

j fim				# fim

# ------------------------------------------------------------------------------------------------- #

potencia:

add $t0, $0, $a0		# t0 = a0
addi $t1, $0, 1			# t1 = 1

multiplica:

mult $t0, $a0			# t0 * a0
mflo $t2			# t2 = t0 * a0
add $t0, $0, $t2		# t0 = t2

addi $t1, $t1, 1		# t1 = t1 + 1
bne $t1, $a1, multiplica	# while(t1 < a1)

add $v0, $0, $t0		# retorno = t0
jr $ra				# retorna

# ------------------------------------------------------------------------------------------------- #

fim:

sw $s2, 4($s0)