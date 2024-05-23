module RAM(
    input clk,
    input [7:0] addr_a, addr_b, addr_wr,
    input [31:0] data_in,
    input we,
    output reg [31:0] data_a, data_b
);
    
	 
    reg [31:0] RAMA [255:0];
    reg [31:0] RAMB [255:0];

	 
	 
	 
    always @(posedge clk) begin
        
        if (we && addr_wr != 8'd0) begin
            RAMA[addr_wr] <= data_in;
            RAMB[addr_wr] <= data_in;
        end
    end

	 
	 
    always @(posedge clk) begin
        
        if (addr_a == 8'd0)
            data_a <= 32'd0;
        else
            data_a <= RAMA[addr_a];

        
        if (addr_b == 8'd0)
            data_b <= 32'd0;
        else
            data_b <= RAMB[addr_b];
				
				
				
    end
	 
endmodule

