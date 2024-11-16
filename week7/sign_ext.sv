module sign_ext(
    input logic [31:0]instr,
    output logic [31:0]imm,
    input logic [6:0] opcode
    );
    always_comb
    begin
    case(opcode)
        7'b0010011,7'b0000011,7'b1100111: //i, load,jalr
        begin
        imm={{20{instr[31]}},instr[31:20]};
        end
        7'b0100011: //s type
        imm={{20{instr[31]}},instr[31:25],instr[11:7]};
        7'b1100011: //b type
        imm={{20{instr[31]}},instr[7],instr[30:25],instr[11:8],1'b0};
        7'b0110111,7'b0010111: //u type
        begin
        imm[31:12]={{12{instr[31]}},instr[31:12]};
        imm[11:0]=12'b0;
        end
        7'b1101111: //j type jal
        imm={{12{instr[31]}},instr[30:21],instr[20],instr[19:12],1'b0};
        default:
        imm=32'b0;
    endcase        
    end       
endmodule
