module bcd_adder (
    input  [3:0] a,        // BCD digit A (0-9)
    input  [3:0] b,        // BCD digit B (0-9)
    input        cin,      
    output [3:0] sum,      
    output       cout      
);

    wire [4:0] binary_sum;
    wire       correction_needed;

    // Step 1: plain 4-bit binary addition with carry-in
    assign binary_sum = a + b + cin;

    // Step 2: detect if result is invalid BCD (>9) or produced a carry
    assign correction_needed = (binary_sum > 5'd9);

    // Step 3: add 6 to correct into BCD if needed
    assign {cout, sum} = correction_needed ? (binary_sum + 5'd6) : binary_sum;

endmodule