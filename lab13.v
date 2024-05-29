module lab13 (
    input wire Clock,               
    input wire Reset,              
    input wire S,                   
    input wire [31:0] next_pc,      
    input wire [31:0] data_addr_in, 
    input wire [31:0] data_in,      
    output reg [31:0] PC_out,       
    output reg [31:0] Iout,         
    output reg [31:0] Mout,         
    output reg E                    
);

  // Register E logic
  always @(posedge Clock or posedge Reset) begin
    if (Reset) begin
      E <= 0;
    end else begin
      E <= ~E;
    end
  end

  // Program Counter PC
  reg [31:0] PC;

  always @(posedge Clock or posedge Reset) begin
    if (Reset) begin
      PC <= 0;
    end else if (~E) begin
      
      PC <= PC + 4;
    end
  end

  always @(posedge Clock or posedge Reset) begin
    if (Reset) begin
      PC_out <= 0;
    end else begin
      PC_out <= PC;
    end
  end

  // Memory (256 x 32-bit registers)
  reg [31:0] memory[255:0];


  // Memory Output Mout
  always @(posedge Clock or posedge Reset) begin
    if (Reset) begin
      Mout <= 32'b0;
    end else if (E) begin
      
      Mout <= memory[data_addr_in[31:2]];
    end else begin
      
      Mout <= memory[PC[31:2]];
    end
  end

  // Instruction Register I
  always @(posedge Clock or posedge Reset) begin
    if (Reset) begin
      Iout <= 32'b0;
    end else if (~E) begin
      
      Iout <= memory[PC[31:2]];
    end
  end

endmodule
