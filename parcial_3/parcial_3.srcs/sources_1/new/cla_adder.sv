`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2026 18:42:26
// Design Name: 
// Module Name: cla_adder
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


module cla_adder #(
    parameter int WIDTH = 8
)(
    input  logic [WIDTH-1:0] A,
    input  logic [WIDTH-1:0] B,
    input  logic             Cin,

    output logic [WIDTH-1:0] S,
    output logic             Cout
);

    localparam int BLOCKS = WIDTH / 4;

    logic [BLOCKS-1:0] PG;
    logic [BLOCKS-1:0] GG;
    logic [BLOCKS:0]   C;

    assign C[0] = Cin;

    // Calcular anticipadamente los
    // acarreos entre bloques
    for (genvar i = 1; i <= BLOCKS; i++) begin : CARRY_LOOKAHEAD

        logic [i:0] terms;

        assign terms[0] = (&PG[i-1:0]) & Cin;

        for (genvar j = 0; j < i; j++) begin : TERMS
            if (j == i-1) begin
                assign terms[j+1] = GG[j];
            end
            else begin
                assign terms[j+1] =
                    GG[j] & (&PG[i-1:j+1]);
            end
        end

        assign C[i] = |terms;

    end

    // Instanciar bloques CLA de 4 bits
    for (genvar k = 0; k < BLOCKS; k++) begin : CLA_BLOCKS

        cla_4 CLA (
            .A    (A[k*4 +: 4]),
            .B    (B[k*4 +: 4]),
            .Cin  (C[k]),
            .S    (S[k*4 +: 4]),
            .Cout (),
            .PG   (PG[k]),
            .GG   (GG[k])
        );

    end

    assign Cout = C[BLOCKS];

endmodule
