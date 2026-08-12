module full_adder_tb;  
    reg a, b,cin;
    wire s, c;
    
    full_adder DUT(.a(a), .b(b),.cin(cin), .s(s), .c(c));
    
    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);
        $monitor("a=%b b=%b cin=%b s=%b c=%b", a, b, cin, s, c);
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;
        $finish;
    end
endmodule