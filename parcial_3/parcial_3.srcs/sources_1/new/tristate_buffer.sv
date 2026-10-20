`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2026 22:32:01
// Design Name: 
// Module Name: tristate_buffer
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


module tristate_buffer #(
    parameter int WIDTH = 8
)(
    input  logic [WIDTH-1:0] A,
    input  logic             enable,
    output tri [WIDTH-1:0]   Y
);

    assign Y = enable ? A : 'z;

endmodule
