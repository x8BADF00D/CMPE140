`timescale 1ns / 1ps

//returns 1 if a < b

module cmp #(WIDTH = 4) (
        input [WIDTH - 1:0] a, b,
        output reg lt
        );
        
        always @ (a or b) begin
            if (a < b) lt = 1;
            else lt = 0;
        end
        
endmodule