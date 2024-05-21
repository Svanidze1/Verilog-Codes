module clockdivider_tb;

reg clk;
wire ff;

clockdivider uut (
  .clk(clk),
  .ff(ff)
);

initial begin
	clk = 0;
end


always begin
	#5;
	clk = ~clk;
end


endmodule
