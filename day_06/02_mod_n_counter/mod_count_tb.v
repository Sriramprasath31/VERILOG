module mod_count_tb;

    reg clk;
    reg rst;

    wire [3:0] count;

    mod_n_count DUT (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin

        $dumpfile("mod_count_tb.vcd");
        $dumpvars(0, mod_count_tb);

        $monitor("Time=%0t | Rst=%b | Count=%b (%d)",
                 $time, rst, count, count);

        clk = 0;
        rst = 1;

        #10;
        rst = 0;

        #100;

        $finish;

    end

endmodule