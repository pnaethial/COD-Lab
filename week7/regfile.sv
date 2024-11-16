module reg_file(
input logic [4:0]rs1,rs2,rd,
input logic [31:0]ws,
input logic regwrite,
output logic [31:0]reg1,rs2out
    );
logic [31:0]regfile [31:0];
    always_ff@(posedge regwrite)
    begin
    regfile[rd]<=ws;
    end
    assign reg1=(rs1!=0)?regfile[rs1]:0;
    assign rs2out=regfile[rs2];
endmodule
