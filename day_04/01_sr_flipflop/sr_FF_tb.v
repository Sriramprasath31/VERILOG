module sr_flipflop_tb;

reg S, R, clk;
wire Q, Qbar;

sr_flipflop uut(S, R, clk, Q, Qbar);

always #5 clk = ~clk;

initial begin
    clk = 0;

    S = 0; R = 0;
    #10;

    S = 1; R = 0;
    #10;

    S = 0; R = 0;
    #10;

    S = 0; R = 1;
    #10;

    S = 0; R = 0;
    #10;

    S = 1; R = 1;
    #10;

    $finish;
end

initial begin
    $monitor("S=%b R=%b Q=%b Qbar=%b", S, R, Q, Qbar);
end

endmodule