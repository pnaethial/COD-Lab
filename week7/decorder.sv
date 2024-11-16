module decoder(
    input logic [31:0] instr,             
    output logic [4:0] rs1, rs2, rd,      
//    output logic [2:0] funct3,            
//    output logic [6:0] funct7, opcode,
    output logic [6:0] opcode);    
//    output logic [21:0] imm,              
//    output logic reg_write,               
//    output logic mem_write,               
//    output logic alu_src,                 
//    output logic mem_to_reg       
        
assign opcode=instr[6:0];
always_comb
    begin
    case(opcode)
        7'b0110011: //Rtype
        begin
        rd=instr[11:7];
        rs1=instr[19:15];
        rs2=instr[24:20];
        end
        7'b0010011,7'b0000011:// i type and load word
        begin
        rd=instr[11:7];
        rs1=instr[19:15];
        end        
        7'b0100011,7'b1100011://store and branch
        begin
        rs1=instr[19:15];
        rs2=instr[24:20];
        end        
        7'b0110111,7'b1101111://u and jump
        begin 
        rd=instr[11:7];
        end
        endcase
    end    
endmodule
