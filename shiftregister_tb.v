module shiftregister_tb();
    reg clk;
    reg rst;
    reg shift_in;
    wire [3:0] out;
 
    shiftregister uut (
        .clk(clk),
        .rst(rst),
        .shift_in(shift_in),
        .out(out)
    );
 
    always #5 clk = ~clk;
 
    initial begin
        clk = 0;
        rst = 1; 
        shift_in = 0;
        #10;
        rst = 0; 
    end
 
    initial begin
        #20;
        shift_in = 1;
        #10;
        shift_in = 0;
        #10;
        shift_in = 1;
        #10;
        shift_in = 0;
        #10;
 
        shift_in = 0;
        #10;
        shift_in = 1;
        #10;
 
        #10;
        $finish;
    end
 
endmodule
