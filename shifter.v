module Shifter(
	input[1:0] funct,
	input[31:0] a,
	input[4:0] N,
	output reg [31:0] R
);

reg [31:0] shifted;
integer i;

always @*
	case (funct)
	2'b00: begin 
		shifted = a;
		for(i = 0; i < N; i = i+1)
		shifted = shifted << 1;
		R = shifted;
	end
	2'b10: begin 
		shifted = a;
		for(i = 0; i < N; i = i+1)
		shifted = shifted >> 1;
		R = shifted;
	end
	2'b11: begin 
		shifted = a;
		for(i = 0; i < N; i = i+1)
		shifted = {shifted[31], shifted >> 1};
		R = shifted;
	end
	default: R = 0;
	endcase
	
endmodule

	
		
		