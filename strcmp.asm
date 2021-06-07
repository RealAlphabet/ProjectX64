# RealAlphabet
#   mystrcat(char *str1, const char *str2)

#   while (*str1)
#       str1++;

strcat:
    jmp    strcat_3
strcat_2:
    add    rdi, 0x1
strcat_3:
    cmp    BYTE PTR [rdi], 0x0
    jne    strcat_2

#   while (*str2)
#       *str1 = *str2

strcat_4:
    movzx  eax, BYTE PTR [rsi]
    test   al, al
    je     strcat_6
strcat_5:
    add    rsi, 0x1
    mov    BYTE PTR [rdi], al
    add    rdi, 0x1
    movzx  eax, BYTE PTR [rsi]
    test   al, al
    jne    strcat_5

#   *str1 = 0

strcat_6:
    mov    BYTE PTR [rdi], 0x0
    ret
