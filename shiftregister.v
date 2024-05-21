module shiftregister(
   input wire clk,         
    input wire rst,         
    input wire shift_in,    
    output reg [3:0] out      
);
 
 
reg [3:0] reg_out;
 
always @(posedge clk or posedge rst) begin
    if (rst) begin
        reg_out <= 4'b0000; 
    end else begin
        reg_out <= {reg_out[2:0], shift_in}; 
    end
end
 
 
assign Q = reg_out;
 
endmodule

