module program_counter(input clk , input reset , input [31:0]  //
                          PCMAX, output reg [31:0] pc = 0);

 always @ (posedge clk or negedge reset) begin
 
         if (! reset ) pc <= 0;
            else begin
                pc <= pc + 1;
     if (pc == PCMAX) pc <= 0;
                   end
           end
 endmodule
 
