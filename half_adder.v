module half_adder  (
     input A , B,
     output carry, sum
);
   xor gate_xor(sum , A , B);
   and gate_and (carry , A , B);
    
endmodule