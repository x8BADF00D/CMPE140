`timescale 1ns / 1ps

module mult32(
    input [31:0] a, 
    input [3:0] b,
    output reg [31:0] q
    );

	always@(*)
	begin
    	q = a*b;
	end
    
endmodule
