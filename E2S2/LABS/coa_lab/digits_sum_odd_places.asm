include 'emu8086.inc'
    
    
mov cx,124   
mov bx,1
mov ax,0

digits_sum:   
    mov dx,00
    mov temp,ax
    mov ax,cx
    div ten
    mov cx,ax
    mov ax,temp
    
    mov temp,ax
    mov ax,bx  
    mov dx,0
    
    
    div bx
    mov ax,temp
     
    INC bx
     
    CMP dx,00
    JNE sum
    JE digits_sum
    
    sum: 
        add ax,dx
    CMP cx,00
    JNE digits_sum
       
    
       
call print_num  
ret  
  
   
x DW 2
temp DW 0 
ten DW 10

define_print_num
define_print_num_uns
define_scan_num 