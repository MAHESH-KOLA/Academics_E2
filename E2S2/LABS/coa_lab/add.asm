include "emu8086.inc" 

mov ax,200
mov bx,4
mov cx,11
           
           
div cx    
mov dx,0
div bx
           
 
call print_num   
define_print_num
define_print_num_uns