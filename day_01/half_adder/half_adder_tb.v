module half_adder_tb;
    reg a,b;
    wire sum,cout;
    integer i;

    half_adder uut(
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,half_adder_tb);
    end

    initial begin
        
        $monitor("Time: %0t | a=%b, b=%b | sum=%b, cout=%b", $time, a, b, sum, cout);
        a=0; b=0;
        for(i=0; i<4; i=i+1) begin
            {a,b} = i;
            #10;
        end
        $finish;
    end
endmodule