module code_tb;
reg clk, reset, set, load; 
reg [2:0] data; 
wire [2:0] out;




code uut (.data(data),
          .clk(clk),
          .reset(reset),
			 .set(set),
			 .load(load),
			 .out(out));


always #5 clk = ~clk;


initial begin

clk = 0; reset = 1;  set = 0;  load = 0;
data = 3'b010;

#10;
reset = 0;
#40;
reset = 1;
#40;
reset = 0; set = 1;
#40;
set = 0;
#40;
load = 1;
#40;
load = 0;
#10;

end

endmodule
