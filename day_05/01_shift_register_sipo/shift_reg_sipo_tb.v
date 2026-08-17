module shift_reg_sipo_tb;

reg serial_in;
reg clk;
reg rst;
wire [3:0] parallel_out;

shift_reg_sipo uut (
    .serial_in(serial_in),
    .clk(clk),
    .rst(rst),
    .parallel_out(parallel_out)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("shift_reg_sipo_tb.vcd");
    $dumpvars(0, shift_reg_sipo_tb);

    $monitor("Time=%0t | Reset=%b | Serial_In=%b | Parallel_Out=%b",
             $time, rst, serial_in, parallel_out);

    clk = 0;
    rst = 1;
    serial_in = 0;

    #10 rst = 0;
    #10 serial_in = 1;
    #10 serial_in = 0;
    #10 serial_in = 1;
    #10 serial_in = 1;

    #10 $finish;
end

endmodule
