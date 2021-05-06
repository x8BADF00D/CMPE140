`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 07:03:46 PM
// Design Name: 
// Module Name: fac_fpga
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


module fac_fpga(
        input button_go, 
        input [3:0] switch, 
        input button_clk, 
        output err_led, 
        output done_led
    );
    
    sys(button_go, switch, button_clk, err_led, done_led);
    
endmodule
