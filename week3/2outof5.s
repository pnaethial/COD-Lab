.data
a: .byte 0x5,0x2
.text
la x10,a
lb x11,0(x10)
lb x4,1(x10)
srli x12,x11,5
addi x13,x0,0 #x13 is count
addi x2,x0,1 #x2 is to and it with x11
bne x12,x0,exit
    loop1:and x14,x11,x2
          bne x14,x0,next
          addi x2,x2,1
          beq x0,x0,loop1
              next:addi x13,x13,1
                   beq x13,x4,exit
                   addi x2,x2,1
                   beq x0,x0,loop1

exit:addi x15 x0,0x03



