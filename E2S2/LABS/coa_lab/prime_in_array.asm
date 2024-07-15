include 'emu8086.inc'

mov si,-2

jmp array  

is_prime: 
    mov cx,0   
    mov bx,0
    loop:    
        inc cx  
        mov ax,arr[si] 
        
        cmp cx,ax
        jg check
        
        mov dx,00
        div cx
        cmp dx,00
        jne loop 
        inc bx 
        jmp loop
    check:
        cmp bx,two
        je print 
        jne array
    print:
        mov ax,arr[si]
        call print_num
        printn
        jmp array



array:  
    inc si
    inc si
    cmp si,10
    jne is_prime
    je stop

stop:
    ret    

define_scan_num
define_print_num
define_print_num_uns

arr dw 3,6,2,9,4   
two dw 2   
;temp dw 0