module controlunit(
    input logic [6:0] opcode,    
    output logic [1:0] alu_op,
    output bit alu_src,
    output bit mem_read,
    output bit mem_write,
    output bit mem_to_reg,
    output bit branch,
    output bit regwrite
    );
    always_comb
    case(opcode)
    7'b0110011: //R type
    begin
    alu_op=2'b10;alu_src=0;mem_read=0;mem_write=0;mem_to_reg=0;branch=0;regwrite=1;
    end
    7'b0010011: //I type
    begin
    alu_op=2'b00;alu_src=1;mem_read=0;mem_write=0;mem_to_reg=0;branch=0;regwrite=1;
    end
    7'b0000011: //load type
    begin
    alu_op=2'b00;alu_src=1;mem_read=1;mem_write=0;mem_to_reg=1;branch=0;regwrite=1;
    end
    7'b0100011: //Store type
    begin
    alu_op=2'b00;alu_src=1;mem_read=0;mem_write=1;mem_to_reg=1;branch=0;regwrite=0;
    end
    7'b1100011: //Branch
    begin
    alu_op=2'b01;alu_src=0;mem_read=0;mem_write=0;mem_to_reg=0;branch=1;regwrite=0;
    end
    endcase
    
endmodule
