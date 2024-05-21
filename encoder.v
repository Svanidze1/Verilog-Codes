module encoder(
    input [7:0] input_bits,
    output [2:0] output_bits
);


assign output_bits = (input_bits != 8'b00000000) ? (3'b111 - |input_bits) : 3'b000;

endmodule
