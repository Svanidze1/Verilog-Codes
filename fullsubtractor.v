module fullsubtractor(input A, B, Bin, output Diff, Bout);

assign Diff = A ^ B ^ Bin;
assign Bout = (~A & (B | Bin)) | (A & B & Bin);

endmodule
