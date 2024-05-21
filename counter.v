module counter(num, clk, reset, out);

input [3:0]num;
input clk;
input reset;

output reg [3:0] out = 4'b0001;

always @(posedge clk or posedge reset) begin 
	if(reset == 1'b1) begin 
		out = 4'd0;
	end
	else if (num == 4'd0) begin
		out = 4'd1;
	end
	else if (num == 4'd1) begin
		out = 4'd2;
	end
	else if (num == 4'd2) begin
		out = 4'd3;
	end
	else if (num == 4'd3) begin
		out = 4'd4;
	end
	else if (num == 4'd4) begin
		out = 4'd5;
	end
	else if (num == 4'd5) begin
		out = 4'd6;
	end
	else if (num == 4'd6) begin
		out = 4'd7;
	end
	else if (num == 4'd7) begin
		out = 4'd8;
	end
	else if (num == 4'd8) begin
		out = 4'd9;
	end
	else if (num == 4'd9) begin
		out = 4'd10;
	end
	else if (num == 4'd10) begin
		out = 4'd11;
	end
	else if (num == 4'd11) begin
		out = 4'd12;
	end
	else if (num == 4'd12) begin
		out = 4'd13;
	end
	else if (num == 4'd13) begin
		out = 4'd14;
	end
	else if (num == 4'd14) begin
		out = 4'd15;
	end
	else if (num == 4'd15) begin
		out = 4'd0;
	end
	

	// get the next number from previous number

end


endmodule
