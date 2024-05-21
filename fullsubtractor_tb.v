module fullsubtractor_tb();

reg A;
reg B;
reg Bin;
wire Diff;
wire Bout;

fullsubtractor uut(
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Bout(Bout)
);

initial begin
    
   
    A = 0; 
	 B = 0; 
	 Bin = 0; 
	 #10;
    A = 1; B = 0; Bin =0; #10;
    
	 A = 0; B = 1; Bin = 0; #10;
	 A = 1; B = 1; Bin = 0; #10;
    
    A = 0; B = 0; Bin = 1; #10;
	 A = 1; B = 0; Bin = 1; #10;
	 
    A = 0; B = 1; Bin = 1; #10;
	 A = 1; B = 1; Bin = 1; #10;
    
end

endmodule
