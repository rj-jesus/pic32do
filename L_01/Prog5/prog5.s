        .equ STR_MAX_SIZE, 20
        .data
str1:   .space 21
str2:   .space 21
str3:   .space 41
str4:   .asciiz "Introduza 2 strings: "
str5:   .asciiz "Resultados:\n"
        .align 2
        .text
        .globl main
main:	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	
	la $a0, str4
        ori $v0, $0, 8
        syscall                     # printStr(str4)
        la $a0, str1
        ori $a1, $0, STR_MAX_SIZE
        ori $v0, $0, 9
        syscall                     # readStr(str1, STR_MAX_SIZE)
        la $a0, str2
        ori $a1, $0, STR_MAX_SIZE
        ori $v0, $0, 9
        syscall                     # readStr(str2, STR_MAX_SIZE)
        la $a0, str1
        jal strlen
        or $a0, $0, $v0
        ori $a1, $0, 10
        ori $v0, $0, 6
        syscall                     # printInt(strlen(str1), 10)	
        la $a0, str2
        jal strlen
        or $a0, $0, $v0
        ori $a1, $0, 10
        ori $v0, $0, 6
        syscall                     # printInt(strlen(str2), 10)
        la $a0, str3
        la $a1, str1
        jal strcpy                  # strcpy(str3, str1)
        la $a0, str3
        la $a1, str2
        jal strcat
        or $a0, $0, $v0
        ori $v0, $0, 8
        syscall                     # printStr(strcat(str1, str2))
        la $a0, str1
        la $a1, str2
        jal strcmp
        or $a0, $0, $v0
        ori $v0, $0, 7
        syscall                     # printInt10(strcmp(str1, str2))
        ori $v0, $0, 0

	lw $ra, 0($sp)
	addiu $sp, $sp, 4
        jr $ra
