include 'emu8086.inc'

 
mov ax,1634
mov cx,ax              
               

armstrong:
    DIV ten  
    mov temp,ax       
    MOV ax,dx
    mov n,ax
    mul ax
    mul n 
    
    add count,ax
    mov ax,temp
         
    CMP ax,00
    JNE armstrong
    
          
CMP cx,count
JE label   

print "NOT A ARRMSTRONG"
ret

label:
    print "ARMSTRONG"
ret   
 
 
 
 
      
        
n DW 0   
ten DW 10  
sum DW 0  
count DW 0  
temp DW 0
        
define_print_num
define_print_num_uns
define_scan_num   