`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2026 18:41:31
// Design Name: 
// Module Name: cla_4
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


module cla_4 (
    input  logic [3:0] A,
    input  logic [3:0] B,
    input  logic       Cin,

    output logic [3:0] S,
    output logic       Cout,
    output logic       PG,
    output logic       GG
);

    logic [3:0] P, G;
    logic [4:0] C;

    // Propagate y Generate
    assign P = A ^ B;
    assign G = A & B;

    assign C[0] = Cin;

    // Carry Look-Ahead
    assign C[1] = G[0] | (P[0] & C[0]);

    assign C[2] = G[1]
                | (P[1] & G[0])
                | (P[1] & P[0] & Cin);

    assign C[3] = G[2]
                | (P[2] & G[1])
                | (P[2] & P[1] & G[0])
                | (P[2] & P[1] & P[0] & Cin);

    assign C[4] = G[3]
                | (P[3] & G[2])
                | (P[3] & P[2] & G[1])
                | (P[3] & P[2] & P[1] & G[0])
                | (P[3] & P[2] & P[1] & P[0] & Cin);

    // Resultado de la suma
    assign S = P ^ C[3:0];

    // Propagate del bloque
    assign PG = &P;

    // Generate del bloque
    assign GG = G[3]
              | (P[3] & G[2])
              | (P[3] & P[2] & G[1])
              | (P[3] & P[2] & P[1] & G[0]);

    assign Cout = C[4];

endmodule
