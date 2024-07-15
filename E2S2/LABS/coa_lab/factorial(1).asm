include "emu8086.inc"

print "ENTER AX:"
call scan_num
mov ax,cx
print "ENTER BX:"
call scan_num
mov bx,cx

label:
mul bx
dec bx
CMP bx,00
loopne label 
call print_num
ret           
define_print_num
define_print_num_uns
define_scan_num
