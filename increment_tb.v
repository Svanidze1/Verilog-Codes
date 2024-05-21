 module increment_tb () ;

 reg clk = 0;
 reg enable = 1;
 reg reset = 1;
 wire [29:0] counter ;

 increment uut(
 
 clk , reset , enable , counter
  ) ;
 
  always begin #1; clk =! clk ; end
 
 initial begin

 #20;

 reset = 0; #10;

 reset = 1; #10;

 enable = 0; #10;

 $finish ;
 
  end
  endmodule
  