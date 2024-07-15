include 'emu8086.inc'
    
    
mov ax,123   
mov bx,2

div bx

CMP dx,00
JE label

print "ODD"       
ret

label:
    print "EVEN"  
    ret
  
   
rem DW 0
temp DW 0  

define_print_num
define_print_num_uns
define_scan_num 