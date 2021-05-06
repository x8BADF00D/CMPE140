`timescale 1ns / 1ps

module tb_fac;

reg tb_go = 0;
reg [3:0] tb_d = 0;
reg tb_clock;
wire tb_error;
wire tb_done;
wire [31:0] tb_q;

sys DUT_sys (tb_go, tb_d, tb_clock, tb_error, tb_done, tb_q);

task tick;
    begin
        tb_clock <= 1; #3; 
        tb_clock <= 0; #3; 
    end
endtask

function factorial;
    input num;
    reg product;
    begin
        if(num == 0) begin
            factorial = 1;
        end
        else begin
            product = num;
            num = num - 1;
            while(num > 0) begin
                product = product * num;
            end
            factorial = product;
        end
    end
endfunction

integer i;
integer error = 0;

initial begin
//    tb_d = 5;
//    tb_go = 1;
//    tick;
//    while(tb_done == 0)begin
//        tick;
//    end
//    tick;
    for(i = 0; i < 14; i=i+1) begin
        //s0
        tb_d = i;
        tb_go = 1;
        tick;
        //s1
        if(tb_d == 13 && tb_error != 1) begin
            error = error + 1;
        end
        else if(tb_d < 13) begin
            if(tb_error != 0) begin
                error = error + 1;
            end
            tick;
            //s2
            while(tb_done == 0) begin
                tick;
            end
            if(tb_d < 13) begin
                if(tb_q != factorial(tb_d) || tb_error != 0 || tb_done != 1) begin
                    error = error + 1;
                end
            end
        end
        tick;
        //s3
        tick;
        tb_go = 0;
    end 
end

endmodule
