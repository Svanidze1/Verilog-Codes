module gpr(
    input clk,
    input write_enable,
    input [4:0] addrA,
    input [4:0] addrB,
    input [4:0] addrC,
    input [31:0] data_in_C,
    output reg [31:0] data_out_A,
    output reg [31:0] data_out_B
);

	 
	

	reg [31:0] registers [0:31];

	initial begin

		 
		 
	end

	

	always @ (posedge clk) begin
		 
		 if (write_enable && addrC != 0)
			  registers[addrC] = data_in_C;
		
		
		
		 registers[0] = 32'b0;
		 
	end

	

	always @ (addrA or addrB or write_enable) begin

		 data_out_A = registers[addrA];
		 data_out_B = registers[addrB];
		 
	end

endmodule
