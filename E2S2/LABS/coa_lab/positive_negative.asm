include 'emu8086.inc'
    
    
mov ax,-123   

CMP ax,00
jg label 

print "NEGATIVE"
ret

label:
    print "POSITIVE"
    ret



define_print_num
define_print_num_uns
define_scan_num 