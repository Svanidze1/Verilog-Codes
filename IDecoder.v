module IDecoder(
    input [31:0] instruction,
    output reg [3:0] Af,
    output reg I,
    output reg ALU_MUX_SEL,
    output reg [4:0] Cad,
    output reg GP_WE,
    output reg [1:0] GP_MUX_SEL,
    output reg [3:0] Bf,
    output reg DM_WE,
    output reg [2:0] Shift_type,
    output reg [1:0] PC_MUX_Select
);
    
    wire [5:0] opcode;
    wire [4:0] rs, rt, rd, sa;
    wire [15:0] imm;
    wire [25:0] iindex;
    wire [5:0] funct;
    
   
    assign opcode = instruction[31:26];
    assign rs = instruction[25:21];
    assign rt = instruction[20:16];
    assign rd = instruction[15:11];
    assign sa = instruction[10:6];
    assign funct = instruction[5:0];
    assign imm = instruction[15:0];
    assign iindex = instruction[25:0];
    
    always @(*) begin
        
        Af = 4'b0000;
        I = 1'b0;
        ALU_MUX_SEL = 1'b0;
        Cad = 5'b00000;
        GP_WE = 1'b0;
        GP_MUX_SEL = 2'b00;
        Bf = 4'b0000;
        DM_WE = 1'b0;
        Shift_type = 3'b000;
        PC_MUX_Select = 2'b00;

        case (opcode)
            
            6'b100011: begin 
                Af = 4'b0010;
                I = 1'b1;
                ALU_MUX_SEL = 1'b1;
                Cad = rt;
                GP_WE = 1'b1;
                GP_MUX_SEL = 2'b01;
                DM_WE = 1'b0;
                PC_MUX_Select = 2'b00;
            end
            6'b101011: begin 
                Af = 4'b0010;
                I = 1'b1;
                ALU_MUX_SEL = 1'b1;
                Cad = rt;
                GP_WE = 1'b0;
                GP_MUX_SEL = 2'b01;
                DM_WE = 1'b1;
                PC_MUX_Select = 2'b00;
            end
            6'b001000: begin 
                Af = 4'b0010;
                I = 1'b1;
                ALU_MUX_SEL = 1'b1;
                Cad = rt;
                GP_WE = 1'b1;
                GP_MUX_SEL = 2'b00;
                DM_WE = 1'b0;
                PC_MUX_Select = 2'b00;
            end
        

            6'b000000: begin
                case (funct)
                    6'b100000: begin 
                        Af = 4'b0010;
                        I = 1'b0;
                        ALU_MUX_SEL = 1'b0;
                        Cad = rd;
                        GP_WE = 1'b1;
                        GP_MUX_SEL = 2'b00;
                        DM_WE = 1'b0;
                        PC_MUX_Select = 2'b00;
                    end
                    6'b100010: begin 
                        Af = 4'b0110;
                        I = 1'b0;
                        ALU_MUX_SEL = 1'b0;
                        Cad = rd;
                        GP_WE = 1'b1;
                        GP_MUX_SEL = 2'b00;
                        DM_WE = 1'b0;
                        PC_MUX_Select = 2'b00;
                    end
               
                endcase
            end

            
            6'b000010: begin
                PC_MUX_Select = 2'b10;
            end
            6'b000011: begin 
                GP_MUX_SEL = 2'b11;
                GP_WE = 1'b1;
                Cad = 5'b11111;
                PC_MUX_Select = 2'b10;
            end
       

         
            6'b000100: begin 
                Bf = 4'b0001;
                PC_MUX_Select = 2'b01;
            end
            6'b000101: begin 
                Bf = 4'b0010;
                PC_MUX_Select = 2'b01;
            end
     
        endcase
    end
endmodule
