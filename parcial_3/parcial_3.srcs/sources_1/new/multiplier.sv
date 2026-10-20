`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2026 17:28:57
// Design Name: 
// Module Name: multiplier
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


module multiplier #(
    parameter int WIDTH = 8
)(
    input  logic [WIDTH-1:0] A,
    input  logic [WIDTH-1:0] B,

    output logic [WIDTH-1:0] Result,
    output logic             Overflow
);

    localparam int FULL_WIDTH = 2 * WIDTH;
    localparam int LEVELS = $clog2(WIDTH);
    localparam int LEAVES = 2 ** LEVELS;

    // Productos parciales y resultados intermedios
    logic [FULL_WIDTH-1:0] tree [1:2*LEAVES-1];

    // Generación de productos parciales
    for (genvar i = 0; i < LEAVES; i++) begin : PARTIAL_PRODUCTS

        if (i < WIDTH) begin
            assign tree[LEAVES+i] =
                ({{WIDTH{1'b0}}, A} << i)
                & {FULL_WIDTH{B[i]}};
        end
        else begin
            assign tree[LEAVES+i] = '0;
        end

    end

    // Árbol de sumadores CLA
    for (genvar j = 1; j < LEAVES; j++) begin : ADDER_TREE

        cla_adder #(
            .WIDTH(FULL_WIDTH)
        ) CLA (
            .A    (tree[2*j]),
            .B    (tree[2*j+1]),
            .Cin  (1'b0),
            .S    (tree[j]),
            .Cout ()
        );

    end

    // Producto completo
    logic [FULL_WIDTH-1:0] full_product;

    assign full_product = tree[1];

    // Resultado que verá la ALU
    assign Result = full_product[WIDTH-1:0];

    // Overflow para multiplicación sin signo
    assign Overflow = |full_product[FULL_WIDTH-1:WIDTH];

endmodule
