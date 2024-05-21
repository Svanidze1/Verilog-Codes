module gpr_tb;

	reg clk, write_enable;
	reg [4:0] addrA, addrB, addrC;
	reg [31:0] data_in_C;
	wire [31:0] data_out_A, data_out_B;

	gpr uut(
		 .clk(clk),
		 .write_enable(write_enable),
		 .addrA(addrA),
		 .addrB(addrB),
		 .addrC(addrC),
		 .data_in_C(data_in_C),
		 .data_out_A(data_out_A),
		 .data_out_B(data_out_B)
	);




	initial clk = 0;
	always #5 clk = ~clk;

	initial begin
		 
		 addrA = 0;
		 addrB = 0;
		 addrC = 5;
		 data_in_C = 32'b10101010101010101010101010101010;
		 write_enable = 0;
		 
		 #5;
		 write_enable = 1;
		 
		 #10;
		 addrA = 0;
		 addrB = 5;
		 
		 addrC = 15;
		 data_in_C = 32'b11111111111111101010101010101010;
		 write_enable = 0;
		 
		 #5;
		 write_enable = 1;

		 #25;
		 addrA = 5;
		 addrB = 15;
		 #25;

	end

endmodule 