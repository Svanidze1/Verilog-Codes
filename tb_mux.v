
module tb_mux;

  reg A;
  reg B;
  reg C;

  wire Y0;

  mux uut (
    .A(A), 
    .B(B), 
    .C(C), 
    .Y0(Y0)
  );

  initial begin
    A = 0; B = 0; C = 0; #10;
    $display("z1: A=0, B=0, C=0, Y0 should be 0. Y0 = %b", Y0);

    A = 0; B = 1; C = 0; #10;
    $display("z2: A=0, B=1, C=0, Y0 should be 1. Y0 = %b", Y0);

    A = 1; B = 0; C = 1; #10;
    $display("z3: A=1, B=0, C=1, Y0 should be 1. Y0 = %b", Y0);

    A = 1; B = 1; C = 0; #10;
    $display("z4: A=1, B=1, C=0, Y0 should be 0. Y0 = %b", Y0);

    $finish;
  end
      
endmodule
