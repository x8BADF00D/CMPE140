`timescale 1ns / 1ps

module reg32 (
        input clk,
        input ld,
        input [31:0] d,
        output [31:0] q
        );
        
        reg [31:0] val;
        
        always @ (posedge clk)
        begin
            if (ld) begin
                val <= d;
            end
        end
        
        assign q = val;
        
endmodule