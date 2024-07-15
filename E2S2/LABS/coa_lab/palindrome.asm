include 'emu8086.inc'
    
    
mov ax,123  
mov bx,10
mov actual,ax 

reverse:
    mov dx,00
    div bx 
    mov rem,dx
    mov temp,ax
    mov ax,cx
    mul bx
    add ax,rem
    mov cx,ax
    mov ax,temp
    
    cmp ax,00  
    jne reverse
    
mov ax,cx   
CMP ax,actual
JE label   

print 'NOT A PALINDROME'   
ret

label:
    print 'Palindrome'
    ret  
  
   
rem DW 0
temp DW 0  
actual DW 0


define_print_num
define_print_num_uns
define_scan_num 