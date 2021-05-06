`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2020 08:03:18 PM
// Design Name: 
// Module Name: cu
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


module cu(
        input go,
        input error,
        input done,
        input clock,
        output reg ld,
        output reg clk,
        output reg en,
        output reg load_reg,
        output reg sel1,        //SEL 1
        output reg sel2         //SEL 2
    );

    reg [2:0] cs, ns = 0;
    
    //state register
    always @(posedge clock)
    begin
        cs <= ns;
    end

    //next state logic
    always @(cs || go)
        begin
            case(cs)
                0: begin
                    if(go) ns = 1;
                    else ns = 0;
                end
                1: begin
                    if(error) ns = 0;
                    else ns = 2;
                end
                2: begin
                    if(done) ns = 4;
                    else ns = 3;
                end
                3: begin
                    if(done) ns = 4;
                    else ns = 2;
                end
                4: begin
                    ns = 0;
                end
                default: begin
                    ns = 0;
                end
        endcase
    end

    //output logic
    always @ (cs)
    begin
        case (cs)
            0: begin
                ld = 0;
                en = 0;
                sel1 = 0;
                sel2 = 0;
                load_reg = 0;
            end
            1: begin
                ld = 1;
                en = 1;
                sel1 = 0;
                sel2 = 0;
                load_reg = 1;
            end
            2: begin
                ld = 0;
                en = 0;
                sel1 = 1;
                sel2 = 0;
                load_reg = 1;
            end
            3: begin
                ld = 0;
                en = 1;
                sel1 = 1;
                sel2 = 0;
                load_reg = 0;
            end
            4: begin
                ld = 0;
                en = 0;
                sel1 = 1;
                sel2 = 1;
                load_reg = 0;            
            end
        endcase
    end
    
endmodule
