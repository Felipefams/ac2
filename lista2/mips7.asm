# programa 07
# x = -1;
# y = x / 32;

#  Ass:
# x = $s0
# y = $s1

.text 
.globl main
main:
addi $s0, $zero, -1 # x = -1
srl $s1, $s0, 5 # y = x / 32 
