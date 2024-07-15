include 'emu8086.inc'

define_scan_num
define_print_num
define_print_num_uns             

n dw 0
arr dw n dup(?)
m dw 0


fib:
    mov ax,arr[si]
    inc si
    inc si
    add ax,arr[si]
    inc si
    inc si
    mov arr[si],ax
    dec si
    dec si
    cmp si,cx 
    je print
    
print:   
dec si
dec si
mov ax,arr[si]
call print_num
ret   