module async_reset_ff (
    input  logic clk,      
    input  logic async_reset, 
    input  logic d,         
    output logic q         
);
    always_ff @(posedge clk or posedge async_reset) begin
        if (async_reset) 
            q <= 1'b0;      
        else 
            q <= d;        
    end
endmodule
