include 'emu8086.inc'
        
        
call scan_num
mov bx,cx
call scan_num

lcm:
    mov ax,i
    mov dx,00 
    div bx
    mov temp,dx
    mov ax,i
    mov dx,00
    div cx  
    
    inc i 
    
    cmp temp,00
    je label 
    jne lcm
    
    
label:
    cmp dx,00
    je p 
    jne lcm


p:
    mov ax,i
    sub ax,1
    mov cx,ax
    call print_num_uns
  
  

  
  
temp DW 0  
i DW 1

define_print_num
define_print_num_uns
define_scan_num  