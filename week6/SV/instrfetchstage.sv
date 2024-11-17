module topfetch(input logic clk,input logic rst,reg [31:0] pc_in,input logic pcnext,       
    reg [31:0] current_pc,output logic [31:0]i
    );
program_counter dut(clk,rst,pc_in,current_pc);
instmem dut1(clk,current_pc,i);
adder dut2(current_pc,4,pc_in);
endmodule
