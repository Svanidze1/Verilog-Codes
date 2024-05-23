module RAM_tb;
   
reg clk;
reg [7:0] addr_a, addr_b, addr_wr;
reg [31:0] data_in;
reg we;
wire [31:0] data_a, data_b;

   
    RAM uut (
        .clk(clk), 
        .addr_a(addr_a), 
        .addr_b(addr_b), 
        .addr_wr(addr_wr), 
        .data_in(data_in), 
        .we(we), 
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
  addr_wr = 0;
  data_in = 0;
  we = 0;

       
 #10;
 addr_wr = 8'd1;  
 data_in = 32'hA5A5A5A5;
 we = 1;
 #10;
 we = 0;

       
 addr_a = 8'd1;
 addr_b = 8'd1;
 #10;

        
 addr_a = 8'd0;
 addr_b = 8'd0;
  #10;

        
 addr_wr = 8'd0;
 data_in = 32'hDEADBEEF;
 we = 1;
 #10;
 we = 0;

        
 addr_a = 8'd0;
 addr_b = 8'd0;
 #10;

 
     //$display is used to show the values read from the RAM
	  
    $display("Data at address 1: %h", data_a);
    $display("Data at address 1: %h", data_b);
    $display("Data at address 0: %h", data_a);
    $display("Data at address 0: %h", data_b);


        
 $finish;
		  
		  
    end
	 
endmodule


