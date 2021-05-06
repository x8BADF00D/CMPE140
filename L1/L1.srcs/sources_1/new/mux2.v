`timescale 1ns / 1ps

module mux2 #(WIDTH = 32) (
        input wire              sel,
        input wire [WIDTH-1:0]  in0,
        input wire [WIDTH-1:0]  in1,
        output wire [WIDTH-1:0] out
    );
    
    assign out = (sel == 1'b1) ? in1 : in0;
   
   endmodule