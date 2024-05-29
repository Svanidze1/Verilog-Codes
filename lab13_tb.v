module lab13_tb;

    reg clk;
    reg reset;
    reg S;
    reg [31:0] next_pc;
    reg [31:0] data_addr_in;
    reg [31:0] data_in;
    wire [31:0] PC_out;
    wire [31:0] Iout;
    wire [31:0] Mout;
    wire E;

    
    lab13 uut (
        .Clock(clk),
        .Reset(reset),
        .S(S),
        .next_pc(next_pc),
        .data_addr_in(data_addr_in),
        .data_in(data_in),
        .PC_out(PC_out),
        .Iout(Iout),
        .Mout(Mout),
        .E(E)
    );

    initial begin
        clk = 0;
         #5 clk = ~clk; 
    end

    
    initial begin
        
        reset = 1;
        S = 0;
        next_pc = 32'h00000004;
        data_addr_in = 32'h00000008;
        data_in = 32'h12345678;

        #10 reset = 0; 

        
        #100;

        
        S = 1;
        next_pc = 32'h00000010;
        data_addr_in = 32'h00000014;
        data_in = 32'h87654321;

        #100;

        
        $finish;
    end

    

endmodule
