include 'emu8086.inc'

mov si,0 
call scan_num
 
search:
    cmp cx,arr[si]
    je print 
    inc si
    cmp si,10
    jne search
    je print_not
    
    
print:
    print "Element Found at index: " 
    mov ax,si 
    div two
    call print_num 
    ret

print_not:
     print "Element Not Found!"
     ret


define_scan_num
define_print_num
define_print_num_uns

arr dw 38,45,2,90,8   
two dw 2