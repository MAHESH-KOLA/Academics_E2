include 'emu8086.inc'

mov si, 0
mov ax,1   
mov bx,1 
mov cx,1
jmp label     
     
fact:
    mul bx 
    inc bx    
    cmp bx,cx
    jl fact
    je fact
    jg label
     
     
label:
    mov arr[si], ax 
    mov ax,1 
    mov bx,1
    inc si
    inc si 
    inc cx
    cmp cx,6
    jne fact

mov si,0    
print: 
    mov ax, arr[si]
    call print_num 
    printn
    inc si  
    inc si
    cmp si,10
    jne print  
    
ret

define_print_num
define_print_num_uns

arr dw 0,0,0,0,0