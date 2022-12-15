# programa 11
# j = 0;
# i = 10;
# while(j <= i) {
# j = j + 1;
# }

# Ass: 
# j = $s0
# i = $s1

.text
.globl main
main:
addi $s0, $zero, 0 # j = 0
addi $s1, $zero, 10 # i = 10

while:
slt  $t0, $s1, $s0 # if(j < i) t0 = 1 
bne $t0, $zero, fim # if(t0 != 0) -> fim
addi $s0, $s0, 1 # j = j + 1
j while
fim:
