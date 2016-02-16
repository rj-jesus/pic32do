        .text
        .globl main
main:   #####
        # $a0 <- char c
        #####
while1: ori $v0, $0, 2
        syscall
        or $a0, $0, $v0     # c = getChar()
        bne $a0, '\n', fi   # if(c == '\n')
        b done1
fi:     ori $v0, $0, 3
        syscall             # putChar(c)
        b while1            # while(1)
done1:  ori $v0, $0, 1
        jr $ra
