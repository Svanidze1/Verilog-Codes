module clockdivider(clk, reset, ff);
	
	input clk;
	input reset;
	output reg ff;
	
	integer div = 3;
	integer counter = 0;
	
	initial begin
		if(counter == 0) begin
			ff = 0;
		end
	end
	
	always @(posedge clk) begin
	
		if(reset) begin
			ff = 0;
			counter  = 0;
		end
		
		counter = counter + 1;
		
		if(counter % (div) == 0) begin
			ff = (counter / (div)) % 2;
		end
			
	end


endmodule
