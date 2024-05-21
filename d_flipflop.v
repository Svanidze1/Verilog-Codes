module d_flipflop(input d, clk, output reg o);

always @(posedge clk) begin
	o <= d;
end


endmodule
