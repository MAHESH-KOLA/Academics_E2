include 'emu8086.inc'
  
mov ax,arr[0]    
mov bx,arr[0]
mov si,2

jmp find_max_and_min
 
maxi:
    mov ax,arr[si]
    jmp find_max_and_min   

mini:
    mov bx,arr[si]
    jmp find_max_and_min  
  
find_max_and_min:
    cmp ax, arr[si] 
    jl maxi 
    cmp bx,arr[si]
    jg mini
    inc si 
    inc si
    cmp si,10
    jne find_max_and_min

print "MAX="
call print_num
mov ax,bx    
printn    
print "MIN="
call print_num
ret  
  
  
define_print_num
define_print_num_uns        

arr dw 4,2,7,54,3
             