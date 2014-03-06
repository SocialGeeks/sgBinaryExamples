

    .global _start
    .global exit
    .global write
    .extern main

    .section .text

    _start:     xor %ebp, %ebp
                pop %esi
                mov %esp, %ecx
                and $0xFFFFFFF0, %esp
                push %ecx
                push %esi
                call main
                mov %eax, %ebx
    _exit:      mov $0x01, %eax
                int $0x80
    exit:       pop %eax
                pop %ebx
                jmp _exit

    write:      push %ebp
                mov %esp, %ebp

                mov $0x04, %eax
                mov $0x01, %ebx
                mov 8(%ebp), %ecx
                mov 12(%ebp), %edx
                int $0x80
                
                leave
                ret

