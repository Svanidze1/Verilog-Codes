module full_adder (
    input A, B , carry_in,
    output carry_out , sum
); 
    assign sum = (A ^ B ) ^ carry_in;
    assign carry_out = (A & B) | ((A ^ B) & carry_in); 
    
endmodule