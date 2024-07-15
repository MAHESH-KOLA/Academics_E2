include 'emu8086.inc'
  
mov si,0
mov bx,2  

jmp array
  
if_even:
    inc even_count
    inc si
    inc si 
    jmp array  
    
if_odd:
    inc odd_count
    inc si
    inc si 
    jmp array

array:
    cmp si,10
    je print
    mov ax,arr[si]
    mov dx,00
    div bx      
    cmp dx,00
    je if_even
    jne if_odd
    
    
    
print: 
   print "Even Count: "
   mov ax,even_count       
   call print_num
   printn
   print "Odd Count: "
   mov ax,odd_count
   call print_num
 

define_print_num
define_print_num_uns

arr dw 8,0,-2,5,-76   
even_count dw 0
odd_count dw 0