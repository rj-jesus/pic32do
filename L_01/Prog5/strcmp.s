        .text
        .globl strcmp
strcmp: #####
        # $a0 <- char *s1
        # $a1 <- char *s2
        #####
for:    lb $t0, 0($a0)
        lb $t1, 0($a1)
        bne $t0, $t1, done  # for(*; *s1 == *s2 && \
        beq $t0, $0, done   # *s1 != 0); *)
        addiu $a0, $a0, 1   # s1++
        addiu $a1, $a1, 1   # s2++
        b for
done:   subu $v0, $a0, $a1
        jr $ra
