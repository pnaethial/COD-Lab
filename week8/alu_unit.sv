module alu_unit#(parameter width=32)(
    input logic[width-1:0] reg1, reg2,
    input logic[3:0]alu_cntrl,
    output logic zero,
    output reg [width-1:0] alu_out);
    
    assign zero=(alu_out==0);
    always_comb
    case(alu_cntrl)
        0: alu_out=reg1 & reg2;  //and
        1: alu_out=reg1 | reg2;  //or
        2: alu_out=reg1 + reg2;  //add
        6: alu_out=reg1 - reg2;  //sub
        12:alu_out=!(reg1 + reg2); //nor
        default: alu_out=0;
    endcase
endmodule
