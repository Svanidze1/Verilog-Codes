module halfsubtractor_tb();

reg a, b;
wire diff, borrow;

halfsubtractor uut(
    .a(a),
    .b(b),
    .diff(diff),
    .borrow(borrow)
);

initial begin
    
    
    a = 1'b0; b = 1'b0; #10;
    a = 1'b1; b = 1'b0; #10;
    a = 1'b0; b = 1'b1; #10;
    a = 1'b1; b = 1'b1; #10;
    

    
end


endmodule
