module counter_tb();

	reg [3:0]num;
	reg clk;
	reg reset;
	wire [3:0] out;

	integer k;

	counter utt(
		.num(num),
		.clk(clk),
		.reset(reset),
		.out(out)
	);
	
	initial begin
		num = 4'b0000; 
		clk = 1'b0;
		reset = 1'b0;
	end
	
	always begin
		#5; 
		num = out; 
		if (num == 4'b1111) begin 
			reset = 1'b1;  
		end
		else begin
		 	reset = 1'b0;
		end
		clk = ~clk; 
	end


endmodule
