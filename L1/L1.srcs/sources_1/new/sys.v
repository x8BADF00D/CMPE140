`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2020 07:51:21 PM
// Design Name: 
// Module Name: sys
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sys(
        input go,
        input [3:0] d,
        input clock,
        output error,
        output done,
        output [31:0] q
    );
    
    wire clk;
    wire ld;
    wire en;
    wire sel1;
    wire sel2;
    wire load_reg;
    
    dp dp1 (
    .clk        (clock),
    .ld         (ld),
    .en         (en),
    .sel1       (sel1),
    .sel2       (sel2),
    .load_reg   (load_reg),
    .d          (d),
    .error      (error),
    .done       (done),
    .out        (q)
    );
    
    cu cu1 (
    .go         (go),
    .error      (error),
    .done       (done),
    .clock      (clock),
    .ld         (ld),
    .clk        (clk),
    .en         (en),
    .load_reg   (load_reg),
    .sel1       (sel1),
    .sel2       (sel2)
    );
    
endmodule
