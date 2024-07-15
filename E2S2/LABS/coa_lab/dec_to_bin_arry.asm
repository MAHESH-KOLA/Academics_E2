include 'emu8086.inc'

define_scan_num
define_print_num
define_print_num_uns             

rem dw 0
temp dw 0
m dw 0         
n dw 0
arr dw n dup(?)    

call scan_num
mov ax,cx    
mov bx,2
mov si,00
binary:
    mov dx,00
    div bx
    mov arr[si],dx
    inc si
    inc si 
    cmp ax,00
    jne binary

dec si
dec si 
print:    
    mov ax,arr[si]
    call print_num 
    dec si
    dec si
    cmp si,-2
    jne print    
ret