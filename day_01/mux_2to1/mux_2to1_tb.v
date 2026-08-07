module mux_2to1_tb;
    reg a,b,sel;
    wire y;
    integer i;

    mux_2to1 uut(
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,mux_2to1_tb);
    end

    initial begin
        
        $monitor("Time: %0t | a=%b, b=%b, sel=%b | y=%b", $time, a, b, sel, y);
        a=0; b=0; sel=0;
        for(i=0; i<4; i=i+1) begin
            {a,b,sel} = i;
            #10;
        end
        $finish;
    end
endmodule