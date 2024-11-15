.data
b: .dword 0xFEABCFDE,0xFFEEACDB,0XEEEEAAAA,0xBBBBCCCC,0
.text
la x10,b
lw x11,0(x10)
lw x12,8(x10)
add x13,x11,x12
sltu x18,x13,x11 #to check for carry
lw x14,4(x10)
lw x15,12(x10)
add x16,x15,x14
add x17,x16,x18
sltu x19,x17,x16 #to check for carry
