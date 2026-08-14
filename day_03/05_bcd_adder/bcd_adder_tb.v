`timescale 1ns/1ps

module bcd_adder_tb;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    integer i, j, k;
    integer expected_val;
    integer errors = 0;

    bcd_adder dut (
        .a(a), .b(b), .cin(cin),
        .sum(sum), .cout(cout)
    );

    initial begin
        for (i = 0; i <= 9; i = i + 1) begin
            for (j = 0; j <= 9; j = j + 1) begin
                for (k = 0; k <= 1; k = k + 1) begin
                    a = i; b = j; cin = k;
                    #10;

                    expected_val = i + j + k;

                    if ((cout * 10 + sum) !== expected_val) begin
                        $display("FAIL: a=%0d b=%0d cin=%0d -> got %0d, expected %0d",
                                  i, j, k, cout*10+sum, expected_val);
                        errors = errors + 1;
                    end
                end
            end
        end

        if (errors == 0)
            $display("All tests PASSED.");
        else
            $display("%0d test(s) FAILED.", errors);

        $finish;
    end

endmodule