module parameterregister (
    input clock,
    input reset,
    input  [9:0] WIDTH,
    output reg [511:0] op
);

reg [511:0] data = 10;

always @(posedge clock or negedge reset) begin
    if (!reset)
        data <= 0;
    op <= data & ((512'b1 << WIDTH) - 1);
end

endmodule
