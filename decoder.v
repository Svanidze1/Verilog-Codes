module decoder(A,B,Q0,Q1,Q2,Q3);
input A,B;
output Q0,Q1,Q2,Q3;				
				
				assign Q0=~A&~B,
				       Q1=~A&B,
						 Q2=A&~B,
						 Q3=A&B;
						 
 endmodule
 