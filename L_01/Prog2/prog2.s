        .data
str:    .asciiz "Key pressed.\n"
        .align 2
        .text
        .globl main
main:   #####
        # $v0 <- char c
        #####
while1: 
while2: ori $v0, $0, 1
        syscall             # c = inkey()
        bne $v0, $0, done2
        b while2            # while(inkey() == 0)
done2:  bne $v0, '\n', fi   # if(c == '\n')
        b done1
fi:     la $a0, str
        ori $v0, $0, 8
        syscall             # printStr(str)
        b while1            # while(1)
done1:  ori $v0, $0, 0
        jr $ra
