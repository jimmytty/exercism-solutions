section .text
global leap_year
leap_year:
        jmp modulo400
        ret

modulo400:
        mov eax, edi
        mov edx, 0
        mov ebx, 400
        div ebx
        cmp edx, 0
        je modulo004

modulo100:
        mov eax, edi
        mov edx, 0
        mov ebx, 100
        div ebx
        cmp edx, 0
        je  false

modulo004:
        mov eax, edi
        mov edx, 0
        mov ebx, 4
        div ebx
        cmp edx, 0
        jne false

true:
        mov eax,1
        ret

false:
        mov eax,0
        ret
