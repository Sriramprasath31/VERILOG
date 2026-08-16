module t_flipflop_tb;

reg T, clk, reset;
wire Q, Qbar;

t_flipflop uut (
    .T(T),
    .clk(clk),
    .reset(reset),
    .Q(Q),
    .Qbar(Qbar)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    T = 0;

    #10 reset = 0;

    #10 T = 1;
    #20 T = 0;
    #10 T = 1;
    #20 T = 0;

    #10 $finish;
end

initial begin
    $monitor("Time=%0t T=%b Reset=%b Q=%b Qbar=%b",
              $time, T, reset, Q, Qbar);
end

endmodule