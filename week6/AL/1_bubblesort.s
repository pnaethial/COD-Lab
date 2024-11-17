.data
b: .byte 0x0d,0x06,0x010,0x02,0x08
.text
la x10,b
addi x11,x0,5
add x2,x10,x11 #b[5]
addi x3,x0,0
loop1:
    loop2:
        lbu x12,0(x10)
        lbu x13,1(x10)
        bgt x12,x13,swap
        addi x10,x10,1
        bne x10,x2,loop2
        la x10,b
        addi x3,x3,1 #outerloop
        bne x3,x11,loop1
        j exit
        
swap:
    sb x12,1(x10)
    sb x13,0(x10)
    j loop2

exit:
    addi x20 ,x0,8