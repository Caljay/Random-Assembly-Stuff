[org 0x7c00]

bits 16

mov bx, HELLO_MSG
call print_string

mov bx, GOODBYE_MSG
call print_string

jmp $

%include "print_string.asm"
;Data
HELLO_MSG:
        db 'THIS IS A SUPER LONG STRING THAT IS SUPER COOL', 0 ;end of string
GOODBYE_MSG:
    db 'Goodbye!', 0

times 510 - ($-$$) db 0
dw 0xaa55


