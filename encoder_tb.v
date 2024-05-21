`timescale 1ns / 1ps
module encoder8to3_tb;
 
// Inputs to the encoder
reg [7:0] in;
 
// Array to hold test input patterns
reg [7:0] inpt[0:7];
 
// Outputs from the encoder
wire [2:0] out;
 
// Instantiate the encoder module
encoder8to3_dataflow encoder(
    .in(in), 
    .out(out)
);
 
initial begin
    // Initialize input patterns
    inpt[0] = 8'b00000001; // Input 0
    inpt[1] = 8'b00000010; // Input 1
    inpt[2] = 8'b00000100; // Input 2
    inpt[3] = 8'b00001000; // Input 3
    inpt[4] = 8'b00010000; // Input 4
    inpt[5] = 8'b00100000; // Input 5
    inpt[6] = 8'b01000000; // Input 6
    inpt[7] = 8'b10000000; // Input 7
    // Apply each test input pattern to the encoder
    for (int i = 0; i < 8; i = i + 1) begin
        in = inpt[i];
        #10; // Wait 10 ns to observe the output
    end
    // End simulation
    $finish;
end
 
// Optionally, monitor output changes
initial begin
    $monitor("Time=%0t, Input=%b, Output=%b", $time, in, out);
end
 
endmodule