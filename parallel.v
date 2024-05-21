module parallel (
    input clk,
    input L,
    input Sh,
    input SI,
    input [3:0] D,
    output reg [3:0] Q
);

always @ (posedge clk)
begin
    case ({Sh, L})
        2'b00: Q <= Q;
        2'b01: Q <= D;
        default: Q <= {SI, Q[3:1]};
    endcase
end

endmodule
