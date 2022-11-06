# programa 1 (add, addi, sub, lógicas)
# a =2; b =3; c =4; d =5;
# x = (a+b) - (c+d); = -4
# y = a – b + x; -5
# b = x – y; 1

# inicio

.text
.globl main
main:
addi $s0, $s0, 2 # a = 2
addi $s1, $s1, 3 # b = 3
addi $s2, $s2, 4 # c = 4
addi $s3, $s3, 5 # d = 5

add $s4, $s0, $s1 # tmp1 = (a+b)
add $s5, $s2, $s3 # tmp2 = (c+d)

sub $s6, $s4, $s5 # x = tmp1 - tmp2
sub $s7, $s0, $s1 # y = a- b
add $s7, $s7, $s6 # y += x

sub $s1, $s6, $s7 # b = x - y

#fim