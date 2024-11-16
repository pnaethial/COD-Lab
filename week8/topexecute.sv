module topexecute(input logic [31:0]reg1,reg2,
    output logic [31:0] alu_out,output logic zero,input logic [2:0]func3,
    input logic [6:0]func7,input logic [1:0]alu_op
    );
    logic[3:0] alu_cntrl;
    alu_unit dut1(reg1,reg2,alu_cntrl,zero,alu_out);
    alu_control dut2(func3,func7,alu_op,alu_cntrl);
endmodule
