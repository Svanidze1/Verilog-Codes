module decoder_tb();
reg In1, In2;
wire Q0,Q1,Q2,Q3;

decoder UUT1(
 .A(In1), .B(In2), .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3)
 );
 
 initial begin
 In1=1'b0;
 In2=1'b0;
 #10;
 In1=1'b0; In2=1'b1;
 #10;
 In1=1'b1; In2=1'b0;
 #10;
 In1=1'b1; In2=1'b1;
 #10;
 end
 endmodule
 