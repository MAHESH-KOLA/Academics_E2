include 'emu8086.inc'
        
        

MOV ax,5 
MOV cx,0 
MOV count,0

                                     
label1: 
    MOV ax,5   
    MOV dx,0
    INC cx     
    DIV cx 
    MOV ax,5 
    CMP cx,5
    JE lab2     
              
    CMP dx,00
    JE sum 
    JNE label1
    
    sum:
        ADD count,cx 
       
            
    
    
    CMP cx,5
    JNE label1

lab2:
CMP count,ax    
JE lab

print "NOT PERFECT" 
ret    
            
         
lab:      
    print "PERFECT"
ret  
            
            
count DW 0

define_print_num
define_print_num_uns

define_scan_num            