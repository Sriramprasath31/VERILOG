module half_adder_tb;  
    reg a, b;
    wire s, c;
    
    half_adder DUT(.a(a), .b(b), .s(s), .c(c));
    
    initial begin
        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0, half_adder_tb);
        $monitor("a=%b b=%b s=%b c=%b", a, b, s, c);
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule