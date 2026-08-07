module full_adder_tb;
    reg a,b,cin;
    wire sum,cout;
    integer i;

    full_adder uut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,full_adder_tb);
    end

    initial begin
        
        $monitor("Time: %0t | a=%b, b=%b, cin=%b | sum=%b, cout=%b", $time, a, b,cin, sum, cout);
        a=0; b=0; cin=0;
        for(i=0; i<8; i=i+1) begin
            {a,b,cin} = i;
            #10;
        end
        $finish;
    end
endmodule