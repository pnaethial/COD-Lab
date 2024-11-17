#factorial without recordion
.data
fact: .byte 0x05
.text
la x10,fact
lw x11,0(x10)
addi x12,x0,1

loop:
    blez x11,done
    mul x12,x12,x11
    addi x11,x11,-1
    j loop

done:
    add x15,x0,x12

#factorial with recorsion

.data
factr:   .byte 0x05       
result: .byte 0x00    
.text
la x10, fact         
lb x11, 0(x10)        
jal x1, factorial    
addi a7,x0,10           
ecall

factorial:
    blez x11, loop1 
    addi sp, sp, -16      
    sw x11, 12(sp)        
    sw x1, 8(sp)          

    addi x11, x11, -1     
    jal x1, factorial    

    lw x11, 12(sp)        
    mul x12, x11, x12    

    # Restore the context
    lw x1, 8(sp)          
    addi sp, sp, 16       
    jr x1        
    
loop1:
    li x12, 1            
    jr x1                 



