`timescale 1ns / 1ps

module dn_cnt (
        input ld,
        input clk,
        input en,
        input [3:0] d,
        output reg [3:0] q
        );
        
always @ (posedge clk)
begin
    if (en)
    begin
        if (ld) q = d;
        else    q = q - 4'b0001;
    end
    else
    begin
        q = q;
    end
end

endmodule