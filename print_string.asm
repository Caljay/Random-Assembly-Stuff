bits 16
print_string:
    pusha
    mov ah, 0x0e
   
    mov al, [bx]
    int 0x10

   print:
    inc bx
    mov al, [bx]
    int 0x10
    mov al, [bx]
    cmp al, 0
    jne print
    
    
    popa
    ret