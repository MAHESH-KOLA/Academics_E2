include 'emu8086.inc'

define_scan_num
define_print_num     
define_print_num_uns  

arr dw 5 1 370 9 12 
len dw 0
ten dw 10
sum dw 0
rem dw 0
q dw 0

mov si,00

jmp array

isArmstrong:
    mov ax,arr[si]
    mov sum,00
    length:
        cmp ax,00
        jne length
    loop:
        mov dx,00
        div ten
        mov q,ax
        mov rem,dx
        

array:
    cmp si,10
    jne isArmstrong
    je r
    
check:
    mov ax,sum
    cmp ax,arr[si] 
    je arm
    inc si
    inc si
    jmp array 
    
arm:
    call print_num
    printn
    inc si
    inc si
    jmp array    
     
r:
ret