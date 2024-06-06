module BCE_tb;
    reg [31:0] a;
    reg [31:0] b;
    reg [3:0] bf;
    wire bcres;

    BCE uut (
        .a(a),
        .b(b),
        .bf(bf),
        .bcres(bcres)
    );

    initial begin
      
        a = 32'b00000000000000000000000000000001; 
        b = 32'b00000000000000000000000000000001; 
		  
        bf = 4'b0000; // [a] < 0
        #10;

        bf = 4'b0001; // [a] >= 0
        #10;

        bf = 4'b0010; // a = b
        #10;

        bf = 4'b0011; // a != b
        #10;

        bf = 4'b0100; // [a] <= 0
        #10;

        bf = 4'b0101; // [a] > 0
        #10;

        // Additional test cases
        a = -1; 
        b = 2;
        bf = 4'b0000; 
        #10;

        bf = 4'b0010;
        #10;

        $stop;
		  
    end
	 
endmodule
