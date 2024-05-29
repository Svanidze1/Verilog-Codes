module IEU_tb();

parameter N = 16;
parameter M = 32;

reg U;
reg [N-1:0] immediateIN;


wire[M-1:0] immediateOUT;

IEU #(N,M) dut (
.U(U),.immediateIN(immediateIN),.immediateOUT(immediateOUT)
);


reg clk;
always #5 clk = ~clk;

initial begin


	U = 0;
	immediateIN = -16'b1001;
	#10;
	U = 0;
	immediateIN = 16'b0110;
	#10;

	U = 1;
	immediateIN = 16'b1011;
	#10;

	U = 1;
	immediateIN = -16'b0010;
	#10;
	
	$finish;
	
end

always begin

	#5 clk = ~clk;
	
	end
 
endmodule
