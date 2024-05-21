module Alu(SrcA, SrcB, af , i , Alures , Zero, Neg, ovfalu);
	input i;
	input[31:0]SrcA;
	input[31:0]SrcB;
	input[3:0]af;
	output reg [31:0]Alures;
	output reg Zero,Neg,ovfalu;
	reg sub = 0;
	reg u = 0;
	reg[31:0]d;

always @* begin
	u   <= af[0];
	sub <= af[1];
	
	if(i == 1'b0) begin 
		case(af)
			4'b0000, 4'b0001: Alures = SrcA + SrcB; 
			4'b0010, 4'b0011: Alures = SrcA - SrcB; 
			4'b0100: Alures = SrcA & SrcB; 
			4'b0101: Alures = SrcA | SrcB; 
			4'b0110: Alures = SrcA ^ SrcB; 
			4'b0111: Alures = !(SrcA | SrcB); 
			4'b1010: Alures = ($signed(SrcA) < $signed(SrcB)) ? 32'd1 : 32'b0; 
			4'b1011: Alures = ($unsigned(SrcA) < $unsigned(SrcB)) ? 32'd1 : 32'b0; 
			default: Alures = 32'b0;
		endcase
	end
	else begin 
		case(af)
			4'b0000: Alures = $signed(SrcA) + $signed({{16{SrcB[15]}}, SrcB[15:0]}); 
			4'b0001: Alures = $unsigned({{16{SrcB[15]}} , SrcB[15:0]}); 
			4'b0010: Alures = ($signed(SrcA) < $signed({{16{SrcB[15]}}, SrcB[15:0]})) ? 32'd1 : 32'b0; 
			4'b0011: Alures = ($unsigned(SrcA) < $unsigned({{16{SrcB[15]}}, SrcB[15:0]})) ? 32'd1 : 32'b0; 
			4'b0100: Alures = SrcA & {16'd0, SrcB[15:0]}; 
			4'b0101: Alures = SrcA | {16'd0, SrcB[15:0]}; 
			4'b0110: Alures = SrcA ^ {16'd0, SrcB[15:0]}; 
			4'b0111: Alures = {SrcA[15:0], 16'd0}; 
			default: Alures = 32'b0;
		endcase
	end
	
	ovfalu <= (!u & (Alures[31] ^ Alures[30])) ? 1'b1 : 1'b0; 
	Zero <= (Alures == 32'b0) ? 1'b1 : 1'b0; 
	Neg <= (!u & (Alures[31] ^ (Alures[31] ^ sub))) | (u & sub & !Alures[31]); 
	
	end
	
endmodule
		