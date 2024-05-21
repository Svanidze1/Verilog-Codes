module parameterregister_tb ();

reg clock = 0;
reg reset = 1;
reg [9:0] WIDTH = 10'b0000000100;
wire [511:0] op;

parameterregister uut(clock, reset, WIDTH, op);

always #1 clock = !clock;

initial begin
    #40;

    WIDTH = 4'b0011; #10;

    reset = 0; #10;

    $finish;
end

endmodule
