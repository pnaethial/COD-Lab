module topdecode(input logic [31:0] instr,         
output logic [31:0]reg1,reg2,input logic [31:0]ws, 
output logic [1:0] alu_op,output bit mem_read,output bit mem_write,output bit mem_to_reg,
output bit branch
    );
    logic [4:0] rd,rs1,rs2,rs2out;
    logic [31:0]imm;
    logic alu_src;
    logic regwrite;
    logic [6:0]opcode;
    decoder dut(instr,rs1, rs2, rd,opcode);
    sign_ext dut2(instr,imm,opcode);
    reg_file dut3(rs1,rs2,rd,ws,regwrite,reg1,rs2out);
    mux2 dut4(rs2out,imm,alu_src,reg2);
    controlunit dut5(opcode,alu_op,alu_src,mem_read,mem_write,mem_to_reg,branch,regwrite);
endmodule
