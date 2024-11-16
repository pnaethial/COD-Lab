module mux_3to1 (input  logic [1:0] sel,input  logic in0,input  logic in1,  
    input  logic in2,output logic out  
);
    always_comb begin
        case (sel)
            2'b00: out = in0; 
            2'b01: out = in1; 
            2'b10: out = in2; 
            default: out = 1'b0;
        endcase
    end
endmodule
