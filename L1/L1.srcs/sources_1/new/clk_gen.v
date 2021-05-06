`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 09:48:15 PM
// Design Name: 
// Module Name: clk_gen
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


module clk_gen(clk50MHz, rst, clksec4, clk_5KHz);

 input clk50MHz, rst;
 output clksec4, clk_5KHz;
 reg clksec4, clk_5KHz;
 integer count, count1;

 always@(posedge clk50MHz)
 begin
     if(rst)
     begin
         count = 0;
         count1 = 0;
         clksec4 = 0;
         clk_5KHz =0;
     end

     else
     begin
         if(count == 100000000)
         begin
             clksec4 = ~clksec4;
             count = 0;
         end 
         if(count1 == 20000)
         begin
             clk_5KHz = ~clk_5KHz;
             count1 = 0;
         end
         count = count + 1;
         count1 = count1 + 1;
     end
 end

 endmodule