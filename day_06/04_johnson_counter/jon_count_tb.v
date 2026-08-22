module johnson_counter_tb;

reg clk;
reg reset;
wire [3:0] count;

johnson_counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("johnson.vcd");
    $dumpvars(0, johnson_counter_tb);

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #100 $finish;
end

initial begin
    $monitor("Time=%0t Reset=%b Count=%b", $time, reset, count);
end

endmodule