        .text
        .globl strlen
strlen: #####
        # $a0 <- char *s
        # $v0 <- int len
        #####
        li $v0, 0           # len = 0
while:  lb $t0, 0($a0)
        beq $t0, $0, done   # while(*s != '\0')
        addiu $a0, $a0, 1   # s++
        addiu $v0, $v0, 1   # len++
        b while
done:   jr $ra
