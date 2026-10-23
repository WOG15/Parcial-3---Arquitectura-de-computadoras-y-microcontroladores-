`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2026 16:22:15
// Design Name: 
// Module Name: tb_alu
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

// =============================================
// PROBADOR PARAMETRIZABLE
// =============================================
module alu_checker #(
    parameter int WIDTH = 8
)(
    output logic done,
    output integer errors
);

    logic [WIDTH-1:0] A, B;
    logic [2:0] ALUControl;

    logic [WIDTH-1:0] Result;
    logic MulOverflow;
    logic [3:0] NZCV;

    // Instancia de la ALU
    alu #(
        .WIDTH(WIDTH)
    ) DUT (
        .A(A),
        .B(B),
        .ALUControl(ALUControl),
        .Result(Result),
        .MulOverflow(MulOverflow),
        .NZCV(NZCV)
    );

    // =========================================
    // TAREA DE VERIFICACION
    // =========================================
    task automatic check(
        input logic [WIDTH-1:0] test_a,
        input logic [WIDTH-1:0] test_b,
        input logic [2:0] test_op
    );

        logic [WIDTH-1:0] expected_result;
        logic [WIDTH:0] arithmetic_full;
        logic [2*WIDTH-1:0] product_full;

        logic [3:0] expected_nzcv;
        logic expected_mul_overflow;
        logic expected_c, expected_v;

        begin
            // Aplicar entradas a la ALU
            A = test_a;
            B = test_b;
            ALUControl = test_op;

            // Esperar propagacion combinacional
            #2;

            expected_result = '0;
            arithmetic_full = '0;
            product_full = '0;
            expected_mul_overflow = 1'b0;
            expected_c = 1'b0;
            expected_v = 1'b0;

            // Modelo de referencia
            case (test_op)

                3'b000: begin // AND
                    expected_result = test_a & test_b;
                end

                3'b001: begin // OR
                    expected_result = test_a | test_b;
                end

                3'b010: begin // SUMA
                    arithmetic_full =
                        {1'b0, test_a} + {1'b0, test_b};

                    expected_result =
                        arithmetic_full[WIDTH-1:0];

                    expected_c = arithmetic_full[WIDTH];

                    expected_v =
                        (~(test_a[WIDTH-1] ^
                           test_b[WIDTH-1])) &
                          (test_a[WIDTH-1] ^
                           expected_result[WIDTH-1]);
                end

                3'b011: begin // RESTA
                    arithmetic_full =
                        {1'b0, test_a} +
                        {1'b0, ~test_b} +
                        {{WIDTH{1'b0}}, 1'b1};

                    expected_result =
                        arithmetic_full[WIDTH-1:0];

                    // C = 1 significa sin prestamo
                    expected_c = arithmetic_full[WIDTH];

                    expected_v =
                         (test_a[WIDTH-1] ^
                          test_b[WIDTH-1]) &
                         (test_a[WIDTH-1] ^
                          expected_result[WIDTH-1]);
                end

                3'b100: begin // MULTIPLICACION
                    product_full =
                        $unsigned(test_a) * $unsigned(test_b);

                    expected_result =
                        product_full[WIDTH-1:0];

                    expected_mul_overflow =
                        |product_full[2*WIDTH-1:WIDTH];
                end

                default: begin
                    // 101, 110 y 111:
                    // actualmente devuelven cero
                    expected_result = '0;
                end
            endcase

            // Formato: {N, Z, C, V}
            expected_nzcv = {
                expected_result[WIDTH-1],
                (expected_result == '0),
                expected_c,
                expected_v
            };

            // Comparacion estricta: detecta X y Z
            if ((Result !== expected_result) ||
                (NZCV !== expected_nzcv) ||
                (MulOverflow !== expected_mul_overflow)) begin

                errors = errors + 1;

                $display(
                    "FAIL WIDTH=%0d OP=%03b A=%h B=%h",
                    WIDTH, test_op, test_a, test_b
                );

                $display(
                    "  Result: esperado=%h obtenido=%h",
                    expected_result, Result
                );

                $display(
                    "  NZCV: esperado=%04b obtenido=%04b",
                    expected_nzcv, NZCV
                );

                $display(
                    "  MulOverflow: esperado=%b obtenido=%b",
                    expected_mul_overflow, MulOverflow
                );

            end
        end
    endtask

    // =========================================
    // SECUENCIA DE PRUEBAS
    // =========================================
    initial begin
        done = 1'b0;
        errors = 0;

        A = '0;
        B = '0;
        ALUControl = '0;

        // Pruebas dirigidas
        check(12, 10, 3'b000);   // AND
        check(12, 10, 3'b001);   // OR
        check(12, 10, 3'b010);   // Suma
        check(12, 10, 3'b011);   // Resta
        check(12, 10, 3'b100);   // Multiplicacion

        check(5, 12, 3'b011);    // Resta negativa
        check(5, 5, 3'b011);     // Resultado cero
        check('1, 1, 3'b010);    // Carry de suma
        check('1, '1, 3'b100);   // Overflow multiplicacion
        check(0, '1, 3'b100);    // Multiplicacion por cero
        check('1, 0, 3'b011);    // Resta sin prestamo

        // Overflow con signo: max positivo + 1
        check({1'b0, {(WIDTH-1){1'b1}}},
              {{(WIDTH-1){1'b0}}, 1'b1},
              3'b010);

        // Overflow con signo: min negativo - 1
        check({1'b1, {(WIDTH-1){1'b0}}},
              {{(WIDTH-1){1'b0}}, 1'b1},
              3'b011);

        // Operaciones reservadas y cero
        check('1, '1, 3'b101);
        check('1, '1, 3'b110);
        check('1, '1, 3'b111);

        // Pruebas aleatorias para las 8 operaciones
        for (int op = 0; op < 8; op++) begin
            for (int i = 0; i < 50; i++) begin
                check($urandom, $urandom, 3'(op));
            end
        end

        if (errors == 0)
            $display("PASS: ALU de %0d bits", WIDTH);
        else
            $display("FAIL: ALU de %0d bits, errores=%0d",
                     WIDTH, errors);

        done = 1'b1;
    end

endmodule


// =============================================
// TESTBENCH PRINCIPAL
// =============================================
module tb_alu;

    logic done8, done16, done32;
    integer errors8, errors16, errors32;

    alu_checker #(.WIDTH(8)) TEST_8 (
        .done(done8),
        .errors(errors8)
    );

    alu_checker #(.WIDTH(16)) TEST_16 (
        .done(done16),
        .errors(errors16)
    );

    alu_checker #(.WIDTH(32)) TEST_32 (
        .done(done32),
        .errors(errors32)
    );

    initial begin
        wait(done8 && done16 && done32);

        $display("==============================");
        $display("RESUMEN FINAL");
        $display("Errores 8 bits:  %0d", errors8);
        $display("Errores 16 bits: %0d", errors16);
        $display("Errores 32 bits: %0d", errors32);
        $display("==============================");

        if ((errors8 + errors16 + errors32) == 0)
            $display("TODAS LAS PRUEBAS PASS");
        else
            $fatal(1, "LA ALU PRESENTA ERRORES");

        $finish;
    end

endmodule

