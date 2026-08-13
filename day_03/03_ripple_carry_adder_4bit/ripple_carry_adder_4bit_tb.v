 module ripple_carry_adder_4bit_tb;
    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;

    ripple_carry_adder_4bit DUT (
        .A(A), .B(B), .Cin(Cin),
        .Sum(Sum), .Cout(Cout)
    );

    initial begin
        $dumpfile("ripple_carry_adder_4bit_tb.vcd");
        $dumpvars(0, ripple_carry_adder_4bit_tb);
        $monitor("%b  %b   %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b0011; B = 4'b0001; Cin = 0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10; // tests carry propagation
        A = 4'b1010; B = 4'b0101; Cin = 1; #10;
        A = 4'b1111; B = 4'b1111; Cin = 1; #10; // max carry chain

        $finish;
    end
endmodule                             
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                            
    
