module gates_tb;
    
    reg a;
    reg b;
    wire and_out;
    wire or_out;
    wire not_out;
    wire nand_out;
    wire nor_out;
    wire xor_out;
    wire xnor_out;
    wire buf_out;

    gates DUT (
        .a(a),
        .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .not_out(not_out),
        .nand_out(nand_out),
        .nor_out(nor_out),
        .xor_out(xor_out),
        .xnor_out(xnor_out),
        .buf_out(buf_out)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, gates_tb);
    end

    integer i;

    initial begin
        $monitor("Time: %0t | a: %b, b: %b | AND: %b, OR: %b, NOT: %b, NAND: %b, NOR: %b, XOR: %b, XNOR: %b, BUF: %b", 
                  $time, a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out, buf_out);
        
        a = 0; b = 0;
        
        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #10;
        end
        $finish;
    end
endmodule