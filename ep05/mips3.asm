#programa 3

# x = 3;
# y = 4;
# z = (15*x + 67*y)*4

# inicio

.text
.globl main
main:
#initial values
addi $s0, $s0, 3 # x = 3
addi $s1, $s1, 4 # y = 4
addi $s0, $s0, 12 # x = 15
addi $s1, $s1, 63 # y = 67

# x = 15*x
addi $s0, $s0, 15
addi $s0, $s0, 15
# y = 67 * y
addi $s1, $s1, 67
addi $s1, $s1, 67
addi $s1, $s1, 67

add $s2, $s0, $s1 # tmp = (15*x + 67*y)

#tmp * 4
add $s3, $s3, $s2
add $s3, $s3, $s2
add $s3, $s3, $s2
add $s3, $s3, $s2

#fim