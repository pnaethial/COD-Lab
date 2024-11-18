.data
a: .byte 0x4
.text
la x10,a
lb x11,0(x10)
addi x4,x0,0x2
addi x3,x0,5  #5 bit number
addi x13,x0,0  #x13 is count
addi x2,x0,1  #x2 is to and it with x11
    loop1:and x14,x11,x2
          bne x14,x0,next
          mul x2,x2,x4
          addi x3,x3,-1
          bne x3,x0,loop1
          j check
              next:addi x13,x13,1
                   mul x2,x2,x4
                   addi x3,x3,-1
                   bne x3,x0,loop1
                   j check
works:
    addi x20,x0,0xF #number is atwo out of five
check:
    beq x13,x4,works
    addi x20,x0,0x0  
 



