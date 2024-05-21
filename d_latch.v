module d_latch(input D, input E, output reg Q);
    always @*
        if(E)
            Q <= D;
endmodule