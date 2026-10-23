`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2026 16:50:27
// Design Name: 
// Module Name: tb_alu_sync
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



`timescale 1ns / 1ps

module tb_alu_sync;

    logic clk = 0;
    logic reset;

    logic [15:0] A, B;
    logic [2:0] ALUControl;

    logic [15:0] Result;
    logic [3:0] NZCV;
    logic MulOverflow;

    integer errors = 0;

    // Reloj de 10 ns
    always #5 clk = ~clk;

    // Dispositivo bajo prueba
    alu_sync_top DUT (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .ALUControl(ALUControl),
        .Result(Result),
        .NZCV(NZCV),
        .MulOverflow(MulOverflow)
    );

    // Prueba autocorrectiva
    task automatic check(
        input logic [15:0] a_test,
        input logic [15:0] b_test,
        input logic [2:0] op_test
    );

        logic [15:0] expected;
        logic [16:0] arithmetic_full;
        logic [31:0] product_full;
        logic [3:0] expected_flags;
        logic expected_overflow;
        logic c, v;

        begin
            expected = '0;
            arithmetic_full = '0;
            product_full = '0;
            expected_overflow = 0;
            c = 0;
            v = 0;

            case (op_test)
                3'b000: expected = a_test & b_test;
                3'b001: expected = a_test | b_test;

                3'b010: begin
                    arithmetic_full =
                        {1'b0, a_test} + {1'b0, b_test};

                    expected = arithmetic_full[15:0];
                    c = arithmetic_full[16];

                    v = (~(a_test[15] ^ b_test[15])) &
                         (a_test[15] ^ expected[15]);
                end

                3'b011: begin
                    arithmetic_full =
                        {1'b0, a_test} +
                        {1'b0, ~b_test} + 17'd1;

                    expected = arithmetic_full[15:0];
                    c = arithmetic_full[16];

                    v = (a_test[15] ^ b_test[15]) &
                        (a_test[15] ^ expected[15]);
                end

                3'b100: begin
                    product_full =
                        $unsigned(a_test) * $unsigned(b_test);

                    expected = product_full[15:0];
                    expected_overflow = |product_full[31:16];
                end

                default: expected = '0;
            endcase

            expected_flags = {
                expected[15],
                (expected == 16'b0),
                c,
                v
            };

            // Aplicar estímulos lejos del flanco positivo
            @(negedge clk);
            A = a_test;
            B = b_test;
            ALUControl = op_test;

            // Primer flanco: captura entradas
            @(posedge clk);
            #1;

            // Segundo flanco: captura resultado
            @(posedge clk);
            #1;

            if ((Result !== expected) ||
                (NZCV !== expected_flags) ||
                (MulOverflow !== expected_overflow)) begin

                errors++;

                $display("FAIL OP=%b A=%h B=%h",
                         op_test, a_test, b_test);
                $display(" Result esperado=%h obtenido=%h",
                         expected, Result);
                $display(" NZCV esperado=%b obtenido=%b",
                         expected_flags, NZCV);
                $display(" Overflow esperado=%b obtenido=%b",
                         expected_overflow, MulOverflow);
            end
            else begin
                $display("PASS OP=%b A=%h B=%h Result=%h NZCV=%b",
                         op_test, a_test, b_test, Result, NZCV);
            end
        end
    endtask

    initial begin
        reset = 1;
        A = 0;
        B = 0;
        ALUControl = 0;

        // Reset síncrono
        repeat (2) @(posedge clk);
        #1;

        if (Result !== 0 || NZCV !== 0 ||
            MulOverflow !== 0) begin
            $fatal(1, "FAIL RESET");
        end

        @(negedge clk);
        reset = 0;

        // Pruebas dirigidas
        check(12, 10, 3'b000);         // AND
        check(12, 10, 3'b001);         // OR
        check(12, 10, 3'b010);         // SUMA
        check(12, 10, 3'b011);         // RESTA
        check(5, 12, 3'b011);          // Resta negativa
        check(20, 20, 3'b100);         // MULT
        check(16'hFFFF, 2, 3'b100);    // Overflow MULT
        check(16'hFFFF, 1, 3'b010);    // Carry
        check(16'h7FFF, 1, 3'b010);    // Overflow suma
        check(16'h8000, 1, 3'b011);    // Overflow resta
        check(123, 456, 3'b111);      // CERO

        // Pruebas aleatorias
        for (int op = 0; op < 8; op++) begin
            for (int i = 0; i < 20; i++) begin
                check($urandom, $urandom, 3'(op));
            end
        end

        $display("============================");
        $display("ERRORES TOTALES: %0d", errors);

        if (errors == 0)
            $display("TODAS LAS PRUEBAS PASS");
        else
            $fatal(1, "SIMULACION FALLIDA");

        $finish;
    end

endmodule

