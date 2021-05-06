`timescale 1ns / 1ps

module dp(
        input clk,
        input ld,
        input en,
        input sel1, sel2,
        input load_reg,
        input [3:0] d,
        output error,
        output done,
        output [31:0] out
    );
    
    wire [3:0]  cnt_mult;
    wire [31:0] reg_out;
    wire [31:0] mux0_out;
    wire        cmp_1_out;
    wire [31:0] mult_out;
    
    dn_cnt dn (
    .ld         (ld),
    .clk        (clk),
    .en         (en),
    .d          (d),
    .q          (cnt_mult)
    );
    
    mux2 mux_0 (
    .sel        (sel1),
    .in0        (32'b00000000000000000000000000000001), //1
    .in1        (mult_out),
    .out        (mux0_out)
    );
    
    mux2 mux_1 (
    .sel        (sel2),
    .in0        (32'b00000000000000000000000000000001), //1
    .in1        (reg_out),
    .out        (out)
    );
    
    cmp cmp_0 (
    .a          (4'b1100), //12
    .b          (d),
    .lt         (error)
    );
    
    cmp cmp_1 (
    .a          (cnt_mult),
    .b          (4'b0010), //2
    .lt         (done)
    );
    
    reg32 reg_0 (
    .clk        (clk),
    .ld         (load_reg),
    .d          (mux0_out),
    .q          (reg_out)
    );
    
    mult32 mult (
    .a          (reg_out),
    .b          (cnt_mult),
    .q          (mult_out)
    );
        
endmodule