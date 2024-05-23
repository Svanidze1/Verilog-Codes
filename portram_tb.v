module portram_tb;
    reg clk;
    reg [7:0] addr_a, addr_b, addr_wr_a, addr_wr_b;
    reg [31:0] data_in_a, data_in_b;
    reg we_a, we_b;
    wire [31:0] data_a, data_b;

    
    portram uut (
        .clk(clk),
        .addr_a(addr_a),
        .addr_b(addr_b),
        .addr_wr_a(addr_wr_a),
        .addr_wr_b(addr_wr_b),
        .data_in_a(data_in_a),
        .data_in_b(data_in_b),
        .we_a(we_a),
        .we_b(we_b),
        .data_a(data_a),
        .data_b(data_b)
    );

    
    initial begin
        clk = 0;
        #5 clk = ~clk; 
    end

    
    initial begin
        
        addr_a = 0;
        addr_b = 0;
        addr_wr_a = 0;
        addr_wr_b = 0;
        data_in_a = 0;
        data_in_b = 0;
        we_a = 0;
        we_b = 0;

        #10;

        addr_wr_a = 8'd1;
        data_in_a = 32'hA5A5A5A5;
        we_a = 1;
        #10;
        we_a = 0;

       
        addr_a = 8'd1;
        #10;
        $display("Read data_a: %h (Expected: A5A5A5A5)", data_a);

        
        addr_wr_b = 8'd1;
        data_in_b = 32'h5A5A5A5A;
        we_b = 1;
        #10;
        we_b = 0;

        
        addr_a = 8'd1;
        addr_b = 8'd1;
        #10;
        $display("Read data_a: %h (Expected: A5A5A5A5)", data_a);
        $display("Read data_b: %h (Expected: A5A5A5A5)", data_b);

       
        $finish;
		  
    end
	 
endmodule
