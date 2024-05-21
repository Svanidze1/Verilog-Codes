module d_latch_tb();
    reg E;
    reg D;
    wire Q;
    
    d_latch uut(.E(E), .D(D), .Q(Q));
    
    initial begin
        D = 0;
        E = 0;
    end
    
    always #3 E = ~E;
    always #5 D = ~D;
    
    initial
        #1000
    $finish;
endmodule