module portram #(parameter data_width = 32,parameter addr_width = 8,parameter ram_depth = 1 << addr_width)(
    input clk,
    input [addr_width-1:0] addr_a, addr_b, addr_wr_a, addr_wr_b,
    input [data_width-1:0] data_in_a, data_in_b,
    input we_a, we_b,
    output reg [data_width-1:0] data_a, data_b
);

    reg [data_width-1:0] RAM [ram_depth-1:0];

    
    always @(posedge clk) begin
	 
        if (we_a && addr_wr_a != 0) begin
		  
            RAM[addr_wr_a] <= data_in_a;
        end else if (we_b && addr_wr_b != 0) begin
		  
            RAM[addr_wr_b] <= data_in_b;
				
        end
		  
    end

    
    always @(posedge clk) begin
	 
        if (addr_a == 0)
            data_a <= 0;
        else
            data_a <= RAM[addr_a];
				
    end

   
    always @(posedge clk) begin
	 
        if (addr_b == 0)
            data_b <= 0;
        else
            data_b <= RAM[addr_b];
				
    end

endmodule
