include 'emu8086.inc'

define_scan_num
define_print_num
define_print_num_uns             

two dw 2
count dw 0
sum dw 0
q dw 0
rem dw 0 
ten dw 10

call scan_num
mov ax,cx    

fun:
    div two
    cmp dx,00
    jne assign_ax
    je inccount

inccount:
    inc count
    jmp fun 

assign_ax:
    mov ax,cx 
decimalToBinary:
    mov dx,00
    div two
    mov rem,dx
    mov q,ax
    mov ax,sum
    mul ten
    add ax,rem
    mov sum,ax 
    mov ax,q
    cmp ax,00
    jne decimalToBinary


print: 
    mov ax,sum
    mov sum,00
    rev:      
        mov dx,00  
        div ten
        mov q,ax
        mov rem,dx 
        mov ax,sum
        mul ten
        add ax,rem
        mov sum,ax
        mov ax,q
        cmp ax,00
        jne rev     
mov ax,sum
call print_num
        
        
        
mov ax,count
printos:
    cmp ax,00
    je r
    print '0'
    dec ax
    cmp ax,00
    jne printos
    
    
r:
    ret    
    
