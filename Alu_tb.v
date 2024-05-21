module Alu_tb();
	reg i;
	reg[31:0] SrcA;
	reg[31:0] SrcB;
	reg[3:0] af;
	wire[31:0] Alures;
	wire Zero;
	wire Neg;
	wire ovfalu;
	
Alu DUT(
.i(i)
,.SrcA(SrcA)
,.SrcB(SrcB)
,.af(af)
,.Alures(Alures)
,.Zero(Zero)
,.Neg(Neg)
,.ovfalu(ovfalu)
);

initial begin 

	i = 1'b0;
	SrcA = 32'b00000000000000000000000000000001;
	SrcB = 32'b00000000000000000000000000000010;
	af = 4'b0000;
	#10;
	

	SrcA = 32'b00000000000000000000000000000011;
	SrcB = 32'b00000000000000000000000000000001;
	af = 4'b0010;
	#10;


	i = 1'b1;
	SrcA = 32'b00000000000000000000000000000100;
	SrcB = 16'b0000000000000010;
	af = 4'b0000;
	#10;
	$finish;
	
	end
	
endmodule

