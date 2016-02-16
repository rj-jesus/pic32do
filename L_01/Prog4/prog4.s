        .data
str1:   .asciiz "\nIntroduza um número (sinal e módulo): "
str2:   .asciiz "\nValor lido em base 2: "
str3:   .asciiz "\nValor lido em base 16: "
str4:   .asciiz "\nValor lido em base 10 (unsigned): "
str5:   .asciiz "\nValor lido em base 10 (signed): "
        .align 2
        .text
        .globl main
main:   #####
        # $t0 <- int value
        #####
while:  la $a0, str1
        ori $v0, $0, 8
        syscall                 # printStr(str1)
        ori $v0, $0, 5
        syscall
        or $t0, $0, $v0         # value = readInt10()
        la $a0, str2
        ori $v0, $0, 8
        syscall                 # printStr(str2)
        or $a0, $0, $t0
        ori $a1, $0, 2
        ori $v0, $0, 6
        syscall                 # printInt(value, 2)
        la $a0, str3
        ori $v0, $0, 8
        syscall                 # printStr(str3)
        or $a0, $0, $t0
        ori $a1, $0, 16
        ori $v0, $0, 6
        syscall                 # printInt(value, 16)
        la $a0, str4
        ori $v0, $0, 8
        syscall                 # printStr(str4)
        or $a0, $0, $t0
        ori $a1, $0, 10
        ori $v0, $0, 6
        syscall                 # printInt(value, 10)
        la $a0, str5
        ori $v0, $0, 8
        syscall                 # printStr(str5)
        or $a0, $0, $t0
        ori $v0, $0, 7
        syscall                 # printInt10(value)
        b while
done:   jr $ra
