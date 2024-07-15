include 'emu8086.inc'

mov si,-2

jmp array  

is_perfect: 
    mov cx,0   
    mov bx,0
    loop:    
        inc cx  
        mov ax,arr[si] 
        
        cmp cx,ax
        je check
        
        mov dx,00
        div cx
        cmp dx,00
        jne loop 
        add bx,cx 
        jmp loop
    check:
        cmp bx,arr[si]
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
    jne is_perfect
    je stop

stop:
    ret    

define_scan_num
define_print_num
define_print_num_uns

arr dw 3,6,2,9,496    
;sum dw 0   
;temp dw 0