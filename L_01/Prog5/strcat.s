        .text
        .globl strcat
strcat: ####
        # $a0 <- char *dst
        # $a1 <- char *src
        # $s0 <- char *p
        ####
        addiu $sp, $sp, -8  
        sw $s0, 0($sp)
        sw $ra, 4($sp)

        or $s0, $0, $a0       # p = dst
while:  lb $t0, 0($a0)        # *dst
        beq $t0, $0, done
        addiu $a0, $a0, 1     # dst++
        b while
done:   jal strcpy            # strpcy(dst, src)

        or $v0, $0, $s0
        lw $s0, 0($sp)
        lw $ra, 4($sp)
        addiu $sp, $sp, 8
        jr $ra
