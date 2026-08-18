module siso_shift_reg_tb;

reg clk;
reg reset;
reg serial_in;
wire serial_out;

siso_shift_reg uut (
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .serial_out(serial_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("siso_shift_reg.vcd");
    $dumpvars(0, siso_shift_reg_tb);

    clk = 0;
    reset = 1;
    serial_in = 0;

    #10 reset = 0;

    // Send 1011
    #10 serial_in = 1;
    #10 serial_in = 0;
    #10 serial_in = 1;
    #10 serial_in = 1;

    #30 $finish;
end

initial begin
    $monitor("Time=%0t | Reset=%b | Serial_In=%b | Shift_Reg=%b | Serial_Out=%b",
             $time, reset, serial_in, uut.shift_reg, serial_out);
end

endmodule