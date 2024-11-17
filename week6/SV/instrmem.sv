module instmem(
    input logic clk,
    input logic [31:0] current_pc,
    output logic [31:0] i
);
    logic [7:0] mem [127:0];
    initial
    begin
        mem[0] <= 8'b10110011;
        mem[1] <= 8'b00000010;
        mem[2] <= 8'b11000101;
        mem[3] <= 8'b00000000;
        
        mem[4]<= 8'b00000011;
        mem[5] <= 8'b00000101;
        mem[6] <= 8'b11000101;
        mem[7] <= 8'b00000010;
        
        mem[8] <= 8'b10110011;
        mem[9] <= 8'b01000111;
        mem[10] <= 8'b10111011;
        mem[11] <= 8'b00000001;
    end
    assign i = {mem[current_pc+3], mem[current_pc+2], mem[current_pc+1], mem[current_pc+0]};
endmodule
