module ROM(address, data, sel);
input [2:0] address;
input sel;
output reg [7:0] data;


    always @ (sel or address) begin
 if (sel == 0)
 data = 8'd00;
       else begin
    case(address)
 0: data = 8'd1;
 1: data = 8'd2;
 2: data = 8'd3;
 3: data = 8'd4;
 4: data = 8'd5;
 5: data = 8'd6;
 6: data = 8'd7;
 7: data = 8'd8;
           endcase
 
        end
		  
		  
     end
	  
 endmodule
