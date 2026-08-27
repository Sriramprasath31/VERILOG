module tb_bcd_counter;

reg clk;
reg reset;
wire [3:0] count;

bcd_counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #10 reset = 0;

    #120 $finish;
end

initial begin
    $monitor("Time=%0t Reset=%b Count=%d", 
             $time, reset, count);
end

endmodule