module Shifter_tb();

reg[1:0] funct;
reg[31:0] a;
reg[4:0] N;

wire[31:0] R;

Shifter uut(
.funct(funct),.a(a),.N(N),.R(R)
);

reg clk;
always #5 clk = ~clk;

initial begin
 clk = 0;
 

	funct = 2'b00;
	a = 8'b11001100;
	N = 2;
	#10;
	
	$display("Result (Case 1): %b", R);
	

	funct = 2'b10;
	a = 8'b11001100;
	N = 3;
	#10;
	$display("Result (Case 2): %b", R);
	

	funct = 2'b11;
	a = 8'b11001100;
	N = 4;
	#10;
	$display("Result (Case 3): %b", R);
	
	#10;
	$finish;
	end
	
endmodule

