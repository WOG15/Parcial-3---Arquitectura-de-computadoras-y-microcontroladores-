`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2026 16:44:13
// Design Name: 
// Module Name: alu_sync_top
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



module alu_sync_top (
    input  logic        clk,
    input  logic        reset,

    input  logic [15:0] A,
    input  logic [15:0] B,
    input  logic [2:0]  ALUControl,

    output logic [15:0] Result,
    output logic [3:0]  NZCV,
    output logic        MulOverflow
);

    // Registros de entrada
    logic [15:0] A_reg;
    logic [15:0] B_reg;
    logic [2:0]  ALUControl_reg;

    // Señales combinacionales de la ALU
    logic [15:0] alu_result;
    logic [3:0]  alu_nzcv;
    logic        alu_mul_overflow;

    // Registro de las entradas
    always_ff @(posedge clk) begin
        if (reset) begin
            A_reg          <= '0;
            B_reg          <= '0;
            ALUControl_reg <= '0;
        end
        else begin
            A_reg          <= A;
            B_reg          <= B;
            ALUControl_reg <= ALUControl;
        end
    end

    // ALU combinacional de 16 bits
    alu #(
        .WIDTH(16)
    ) ALU_INSTANCE (
        .A(A_reg),
        .B(B_reg),
        .ALUControl(ALUControl_reg),
        .Result(alu_result),
        .NZCV(alu_nzcv),
        .MulOverflow(alu_mul_overflow)
    );

    // Registro de las salidas
    always_ff @(posedge clk) begin
        if (reset) begin
            Result      <= '0;
            NZCV        <= '0;
            MulOverflow <= 1'b0;
        end
        else begin
            Result      <= alu_result;
            NZCV        <= alu_nzcv;
            MulOverflow <= alu_mul_overflow;
        end
    end

endmodule

