# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:littletobigendian.s

### Observation - Single Cycle
- The program loads the 32-bit word stored at memory address a (which is 0x12345678) into register x11. It also initializes register x12 with the value 3 as it needs to be shifted 3 times.

- In a loop, the program extracts the least significant byte of the value in x11 using andi x13, x11, 0xFF, adds this byte to x14, and then shifts x14 to the left by 8 bits. The value in x11 is shifted right by 8 bits to process the next byte on the subsequent iteration. 

- After the loop, the program adds the remaining LSB of x11 (now in x15) to the result in x14. The result in x15 represents the final computed value from processing the original 32-bit integer 

### Observation - Single Cycle
- **Cycles:** <24> 
- **Frequency:** <19.5Hz>
- **CPI:** <1>
- **IPC:** <1>

### Observation - 5 Stage
- **Cycles:** <32> 
- **Frequency:** <24>
- **CPI:** <1.33>
- **IPC:** <0.75>

### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00000012
- **x12:** 0x00000000
- **x13:** 0x00000034
- **x14:** 0x78563400
- **x15:** 0x78563412

### Data Mapping
- **0x10000000:** 0x12345678



# Program 2:
### Statement : Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of the file : week2programs.s

### Observation -  Single Cycle
- In this program we are trying to add 2 double words (64 bit) numbers using the RV32I, a 32 bit processor
- We are splitting the double word into 2 parts.Once these are created, one of the two parts are added, and checked for carry, and then the other set is added, and again checked for carry. 
- After checking for carry, if the carry from the first part is present that is then added to the other set and the added result is stored..

### Observation - Single Cycle
- **Cycles:** <11> 
- **Frequency:** <10.10 Hz>
- **CPI:** <1>
- **IPC:** <1>

### Observation - 5 Stage
- **Cycles:** <17> 
- **Frequency:** <10.42 Hz>
- **CPI:** <1.55>
- **IPC:** <0.647>

### Register Mapping 
- **x10:** 0x10000000
- **x11:** 0xffeeacdb
- **x12:** 0xbbbbcccc
- **x13:** 0xbbaa79a7
- **x14:** 0xfeabcfde
- **x15:** 0xeeeeaaaa
- **x16:** 0xed9a7a88
- **x17:** 0xed9a7a89
- **x18:** 0x00000001
- **x19:** 0x00000000

### Data Mapping 
- **0x10000000**: 0xffeeacdb
- **0x10000004** : 0xfeabcfde
- **0x10000008** : 0xbbbbcccc
- **0x1000000c** : 0xeeeeaaaa
- **0x10000010** : 0x00000000
- **0x10000014** : 0x00000000

