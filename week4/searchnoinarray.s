#search number in an array
.data
a: .byte 0x04,0x02,0x08,0x23,0x12,0x32
target: .byte 0x08
.text
la x10,a
la x11,target  #element to find
lb x12,0(x11)
loop:
    lb x13,0(x10)
    addi x10,x10,1
    bne x13,x12,loop  #to see if that element is equal to target
    j found
    
found:
    addi x20,x0,0xF