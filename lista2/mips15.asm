# programa 15
# y = x^4 + x^3 -2x^2 se x for par
# y = x^5 - x^3 +1 se x for impar 

# Ass:
# A[0] = $s0
# x = $s1
# y = $s2 
# x^4 + x^3 = $s3
# 2 * x^2 = $s4
# x^5  - x^3 = $s5

.text
.globl main
main:
addi $s0, $zero, 0x1001 # A[0] = 0x0000 1001
sll $s0, $s0, 16 # A[0] = 0x1001 0000

lw $s1, 0($s0) # x = A[0]

addi $t0, $zero, 2 # t0 = 2
div $s1, $t0 # x / 2
mfhi $t0 # t0 = resto

addi $t7, $zero, 1 # t7 = 1
bne $t0, $zero, impar # if(t0 != 0) -> impar

addi $t1, $zero, 4 # t1 = 4
addi $t2, $zero, 1 # t2 = 1
loop1:
mult $s1, $t2 # x * t2
mflo $t2 # t2 = resultado
sub $t1, $t1, $t7 # t1--
bne $t1, $zero, loop1 # if(t1 != 0) -> loop 

addi $t3, $zero, 3 # t3 = 3
addi $t4, $zero, 1 # t4 = 1
loop2:
mult $s1, $t4 # x * t4
mflo $t4 # t4 = resultado
sub $t3, $t3, $t7 # t3--
bne $t3, $zero, loop2 # if(t3 != 0) -> loop 

addi $t5, $zero, 2 # t5 = 2
addi $t6, $zero, 1 # t6 = 1
loop3:
mult $s1, $t6 # x * t6
mflo $t6 # t6 = resultado
sub $t5, $t5, $t7 # t3--
bne $t5, $zero, loop3 # if(t3 != 0) -> loop 

add $s3, $t2, $t4 # s3 = x^4 + x^3 
sll $s4, $t6, 1 # s4 = 2x^2

sub $s2, $s3, $s4 # y = s3 - s4
sw $s2, 4($s0) # A[1] = y

j fim

impar:
addi $t1, $zero, 5 # t1 = 5
addi $t2, $zero, 1 # t2 = 1
loop4:
mult $s1, $t2 # x * t2
mflo $t2 # t2 = resultado
sub $t1, $t1, $t7 # t1--
bne $t1, $zero, loop4 # if(t1 != 0) -> loop 

addi $t3, $zero, 3 # t3 = 3
addi $t4, $zero, 1 # t4 = 1
loop5:
mult $s1, $t4 # x * t4
mflo $t4 # t4 = resultado
sub $t3, $t3, $t7 # t3--
bne $t3, $zero, loop5 # if(t3 != 0) -> loop 

sub $s5, $t2, $t4 # s5 = x^5 - x^3
addi $s2, $s5, 1 # y = s5 + 1
sw $s2, 4($s0) # A[1] = y

fim:

.data
x: .word 3
