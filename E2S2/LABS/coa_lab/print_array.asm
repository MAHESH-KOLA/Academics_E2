include 'emu8086.inc'

mov si,0
label:  
    mov al,arr[si]
    call print_num
    inc si
    cmp si,5
    jne label

ret 




define_print_num
define_print_num_uns
define_scan_num

arr db 1,2,3,4,5


