include 'emu8086.inc'

print 'ENTER n value : ' 
call scan_num  
printn
mov n,cx  
mov nr,cx               
print 'ENTER r value :'   
call scan_num 
printn
mov r,cx  
sub nr,cx
mov ax,n 
sub n,1
mov cx,n
    
fact:      
    mul cx
    dec cx
    cmp cx,00
    jne fact
mov n,ax  

mov ax,r 
sub r,1
mov cx,r  
fact2:      
    mul cx
    dec cx
    cmp cx,00
    jne fact2
mov r,ax  

mov ax,nr 
sub nr,1
mov cx,nr
fact3:      
    mul cx
    dec cx
    cmp cx,00
    jne fact3 
mul r        

mov nr,ax
mov ax,n
div nr
print 'ncr = '
call print_num   
ret  
    
    
n DW 0
r DW 0  
nr DW 0 

define_print_num
define_print_num_uns
define_scan_num
    
    
    
    
     