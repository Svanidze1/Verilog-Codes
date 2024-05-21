module d_flipflop_test();

reg d, clk;
wire o;

d_flipflop utt(.d(d), .clk(clk), .o(o));

initial begin 
d = 0;
clk = 0;
end

always begin
	#3 clk = ~clk;
end

always begin
	#5 d = ~d;
end

initial begin
 #1000 $stop;
end

endmodule
