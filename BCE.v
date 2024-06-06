module BCE (
    input [31:0] a,
    input [31:0] b,
    input [3:0] bf,
    output reg bcres
);

    always @(*) begin
        case (bf)
            4'b0000: bcres = (a < 0);      
            4'b0001: bcres = (a >= 0);     
            4'b0010: bcres = (a == b);      
            4'b0011: bcres = (a != b);     
            4'b0100: bcres = (a <= 0);      
            4'b0101: bcres = (a > 0);      
            default: bcres = 0;  
				
        endcase
		  
    end
	 
endmodule

