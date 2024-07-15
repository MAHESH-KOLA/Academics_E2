include 'emu8086.inc'
        
call scan_num
mov ax,0
call print_num
mov ax,1
call print_num 
mov ax,0
mov bx,1 
sub cx,02

fib:
    add ax,bx
    call print_num
    mov temp,ax
    mov ax,bx
    mov bx,temp
    dec cx
    cmp cx,00
    jne fib
ret  
   
rem DW 0
temp DW 0  
count dw 0
define_print_num
define_print_num_uns
define_scan_num 