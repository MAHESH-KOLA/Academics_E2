include 'emu8086.inc'
               
define_print_num
define_print_num_uns

arr dw 12,55,45,121,0   
rem dw 0
sum dw 0               
ten dw 10 
q dw 0
               
mov si,0

jmp array
  
is_palindrone:
    mov ax,arr[si] 
    mov sum,00
    loop: 
        mov dx,00
        div ten 
        mov rem,dx
        mov q,ax
        mov ax,sum
        mul ten
        add ax,rem 
        mov sum,ax
        mov ax,q  
        cmp ax,00
        jne loop
        je check

array:
    cmp si,10
    jne is_palindrone
    je r
    
check:     
    mov ax,sum
    cmp ax,arr[si]
    je pal 
    inc si
    inc si
    jmp array
    
    
pal:
    mov ax,arr[si]
    call print_num
    printn 
    inc si
    inc si
    jmp array  
r:
ret   