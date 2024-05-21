module code(data, clk, reset, set, load, out);

input clk, reset, load, set; 
input [2:0] data;

output reg [2:0] out;

always @(posedge clk) begin 

     if(reset) begin
       out = 0;
     end
     else if(load) begin
        out = data;
      end
      else if(set) begin
       out = 3'b111;
        end
       else out = out + 1; begin
end end
endmodule
