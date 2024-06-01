module IDecoder_tb;
    reg [31:0] instruction;
    wire [3:0] Af;
    wire I;
    wire ALU_MUX_SEL;
    wire [4:0] Cad;
    wire GP_WE;
    wire [1:0] GP_MUX_SEL;
    wire [3:0] Bf;
    wire DM_WE;
    wire [2:0] Shift_type;
    wire [1:0] PC_MUX_Select;

    IDecoder uut (
        .instruction(instruction),
        .Af(Af),
        .I(I),
        .ALU_MUX_SEL(ALU_MUX_SEL),
        .Cad(Cad),
        .GP_WE(GP_WE),
        .GP_MUX_SEL(GP_MUX_SEL),
        .Bf(Bf),
        .DM_WE(DM_WE),
        .Shift_type(Shift_type),
        .PC_MUX_Select(PC_MUX_Select)
    );

    initial begin
         
        instruction = 32'b10001100100001010000000000000100; 
        #10;
        instruction = 32'b10101100100001010000000000000100; 
        #10;
        instruction = 32'b00100000100001010000000000000100; 
        #10;
        instruction = 32'b00100100100001010000000000000100;  
        #10;
        instruction = 32'b00101000100001010000000000000100; 
        #10;
        instruction = 32'b00101100100001010000000000000100;  
        #10;
        instruction = 32'b00110000100001010000000000000100; 
        #10;
        instruction = 32'b00110100100001010000000000000100; 
        #10;
        instruction = 32'b00111000100001010000000000000100; 
        #10;
        instruction = 32'b00111100100001010000000000000100; 
        #10;

       
        instruction = 32'b00000100100000000000000000000100; 
        #10;
        instruction = 32'b00000100100000010000000000000100;  
        #10;
        instruction = 32'b00010000100000010000000000000100; 
        #10;
        instruction = 32'b00010100100000010000000000000100; 
        #10;
        instruction = 32'b00011000100000000000000000000100; 
        #10;
        instruction = 32'b00011100100000000000000000000100;  
        #10;

        
        instruction = 32'b00000000100001010010000001000000;  
        #10;
        instruction = 32'b00000000100001010010000001000010;  
        #10
        instruction = 32'b00000000100001010010000001000011;  
        #10;
        instruction = 32'b00000000100001010010000000000100; 
        #10;
        instruction = 32'b00000000100001010010000000000110; 
        #10;
        instruction = 32'b00000000100001010010000000000111; 
        #10;
        instruction = 32'b00000000100001010010000000100000; 
        #10;
        instruction = 32'b00000000100001010010000000100001;  
        #10;
        instruction = 32'b00000000100001010010000000100010;  
        #10;
        instruction = 32'b00000000100001010010000000100011;  
        #10;
        instruction = 32'b00000000100001010010000000100100; 
        #10;
        instruction = 32'b00000000100001010010000000100101; 
        #10;
        instruction = 32'b00000000100001010010000000100110; 
        #10;
        instruction = 32'b00000000100001010010000000100111; 
        #10;
        instruction = 32'b00000000100001010010000000101010;  
        #10;
        instruction = 32'b00000000100001010010000000101011;  
        #10;
        instruction = 32'b00000000100001010010000000001000; 
        #10;
        instruction = 32'b00000000100001010010000000001001;  
        #10;

         
        instruction = 32'b00001000000000000000000000001001; 
        #10;
        instruction = 32'b00001100000000000000000000001001;  
        #10;
    end
	 
endmodule
