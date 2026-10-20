`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2026 19:19:01
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu #(
    parameter int WIDTH = 8
)(
    input  logic [WIDTH-1:0] A,
    input  logic [WIDTH-1:0] B,
    input  logic [2:0] ALUControl,

    output logic [WIDTH-1:0] Result,
    output logic             MulOverflow,   
    output logic [3:0]       NZCV
);

    // Resultados de las operaciones
    wire [WIDTH-1:0] and_result;
    wire [WIDTH-1:0] or_result;
    logic enable_and;
    logic enable_or;
    logic [WIDTH-1:0] arithmetic_result;
    logic [WIDTH-1:0] B_modified;
    logic [WIDTH-1:0] mul_result;

    logic subtract;
    logic carry_arithmetic;
    logic mul_overflow_internal;

    // Resultados intermedios de los MUX
    logic [WIDTH-1:0] mux_0;
    logic [WIDTH-1:0] mux_2;
    logic [WIDTH-1:0] mux_4;
    logic [WIDTH-1:0] mux_5;
    
    // Activación de las operaciones
    assign enable_and = (ALUControl == 3'b000);
    assign enable_or  = (ALUControl == 3'b001);

    // Buffer triestado para AND
    tristate_buffer #(
        .WIDTH(WIDTH)
    ) TRI_AND (
        .A(A & B),
        .enable(enable_and),
        .Y(and_result)
    );
    
    // Buffer triestado para OR
    tristate_buffer #(
        .WIDTH(WIDTH)
    ) TRI_OR (
        .A(A | B),
        .enable(enable_or),
        .Y(or_result)
    );

    // Determinar si se debe restar
    assign subtract = (ALUControl == 3'b011);
    
    // Complementar B solamente para resta
    assign B_modified = B ^ {WIDTH{subtract}};
    
    // Sumador/restador CLA compartido
    cla_adder #(    
        .WIDTH(WIDTH)
    ) SUMADOR_RESTADOR (
        .A(A),
        .B(B_modified),
        .Cin(subtract),
        .S(arithmetic_result),
        .Cout(carry_arithmetic)
    );
    
    
    // Multiplicador
    multiplier #(
        .WIDTH(WIDTH)
    ) MULTIPLICADOR (
        .A(A),
        .B(B),
        .Result(mul_result),
        .Overflow(mul_overflow_internal)
    );

    // =====================================
    // PRIMER NIVEL DE MUX
    // =====================================
    
    // Selecciona AND u OR
    mux2 #(.WIDTH(WIDTH)) MUX_0 (
        .a(and_result),
        .b(or_result),
        .sel(ALUControl[0]),
        .y(mux_0)
    );
    
    // Selecciona MULT o CERO
    mux2 #(.WIDTH(WIDTH)) MUX_2 (
        .a(mul_result),
        .b('0),
        .sel(ALUControl[0]),
        .y(mux_2)
    );
    
    // =====================================
    // SEGUNDO NIVEL DE MUX
    // =====================================
    
    // Selecciona lógica o aritmética
    mux2 #(.WIDTH(WIDTH)) MUX_4 (
        .a(mux_0),
        .b(arithmetic_result),
        .sel(ALUControl[1]),
        .y(mux_4)
    );
    
    // Selecciona entre las operaciones
    // 100-101 y 110-111
    mux2 #(.WIDTH(WIDTH)) MUX_5 (
        .a(mux_2),
        .b('0),
        .sel(ALUControl[1]),
        .y(mux_5)
    );
    
    // =====================================
    // MUX FINAL
    // =====================================
    
    mux2 #(.WIDTH(WIDTH)) MUX_FINAL (
        .a(mux_4),
        .b(mux_5),
        .sel(ALUControl[2]),
        .y(Result)
    );

    // Bandera de overflow de multiplicación
    assign MulOverflow =
        (ALUControl == 3'b100) && mul_overflow_internal;
        
    // BANDERAS NZCV
    
    logic N, Z, C, V;
    logic overflow_add;
    logic overflow_sub;
    
    // Negative
    assign N = Result[WIDTH-1];
    
    // Zero
    assign Z = (Result == '0);
    
    // Carry
    assign C =
        ((ALUControl == 3'b010) ||
         (ALUControl == 3'b011))
        ? carry_arithmetic : 1'b0;
    
    // Overflow de suma con signo
    assign overflow_add =
        (~(A[WIDTH-1] ^ B[WIDTH-1])) &
          (A[WIDTH-1] ^ arithmetic_result[WIDTH-1]);
    
    // Overflow de resta con signo
    assign overflow_sub =
         (A[WIDTH-1] ^ B[WIDTH-1]) &
         (A[WIDTH-1] ^ arithmetic_result[WIDTH-1]);
    
    // Selección de Overflow
    assign V =
        (ALUControl == 3'b010) ? overflow_add :
        (ALUControl == 3'b011) ? overflow_sub :
                                1'b0;
    
    // Salida de banderas
    assign NZCV = {N, Z, C, V};

endmodule
