.data
array:.half 0x21, 0x09, 0x02, 0x07, 0x23    
size:.word 5                    
result:.word 0                                 
target:.word 27                    
.text
la x1, target        
lw x2, 0(x1)           
li x3, 9             
rem x4, x2, x3       
beqz x4, divisible 
j not_divisible   

divisible:
    la x1, result     
    li x2, 1            
    sw x2, 0(x1)   
    j done           

not_divisible:
    la x1, result       
    li x2, 0            
    sw x2, 0(x1)       
done:
    addi x20,x0,0xff
