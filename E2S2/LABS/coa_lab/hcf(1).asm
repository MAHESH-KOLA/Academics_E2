include 'emu8086.inc'
        
        
call scan_num
mov bx,cx
call scan_num


cmp bx,cx
ja bmax

mov i,cx 
jp hcf 

bmax:
    mov i,bx
    
    

hcf:
    mov ax,bx  
    mov dx,00
    div i
    mov temp,dx
    mov ax,cx
    mov dx,00
    div i
    
    dec i
    
    cmp temp,00
    je label
    jne hcf


label:
    cmp dx,00
    je p
    jne hcf
    
    
p:
    mov ax,i
    add ax,1
    mov cx,ax
    call print_num_uns   
    
    
  
    
i DW 0    
temp DW 0    
    
    
define_print_num
define_print_num_uns
define_scan_num