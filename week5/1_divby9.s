.data
array:      .word 18, 23, 27, 36, 41    
size:       .word 5                    
result:     .word 0                    
target:     .word 27                    

la x1, target        
lw x2, 0(x1)           
li x3, 9                # Load 9 (divisor) into x3
rem x4, x2, x3          # x4 = x2 % x3 (remainder)
# Check if the remainder is 0
beqz x4, divisible      # If x4 == 0, jump to divisible
j not_divisible         # Otherwise, jump to not_divisible

divisible:
    la x1, result           # Load address of the result variable into x1
    li x2, 1                # Load 1 (true) into x2
    sw x2, 0(x1)            # Store 1 in the result
    j done                  # Jump to exit

not_divisible:
    la x1, result           # Load address of the result variable into x1
    li x2, 0                # Load 0 (false) into x2
    sw x2, 0(x1)            # Store 0 in the result
done:
    li x10, 10              # ECALL: Exit
    ecall
