module IEU #(parameter N = 16, parameter M = 32)(
	input wire U,
	input wire[N-1:0] immediateIN,
	output wire[M-1:0] immediateOUT
);

	wire [M-N-1:0] extension_bits;
	
	
	assign extension_bits = U ? {{M-N-1{immediateIN[N-1]}}, immediateIN } : {{M-N{1'b0}}, immediateIN};
	
	
	assign immediateOUT = {extension_bits, immediateIN};

endmodule

