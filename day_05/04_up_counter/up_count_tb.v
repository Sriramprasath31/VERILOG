module up_counter_tb;
    reg clk;
    reg rst;
    wire  [3:0]count;

    up_counter DUT(.clk(clk),.rst(rst),.count(count));

    always #5 clk=~clk;

    initial begin
      $dumpfile("up_counter_tb.vdc");
      $dumpvars(0,up_counter_tb);
      $monitor("Rst=%b | Count=%b (%d)",
                  rst, count, count);

        clk=0;
        rst=1;

        #10;

           rst=0;

        #100

        $finish;  
      
    end
endmodule