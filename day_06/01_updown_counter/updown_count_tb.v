module updown_count_tb;
       
       reg clk;
       reg rst;
       reg updown_count;
       wire [3:0]count;

       updown_count DUT(.clk(clk),
                      .rst(rst),
                      .updown_count(updown_count),
                      .count(count));

       always #5 clk=~clk;

       initial begin
          $dumpfile("updown_count_tb.vcd");
          $dumpvars(0,updown_count_tb);
          $monitor("Time=%0t | Rst=%b | UpDown=%b | Count=%b (%d)",
                 $time, rst, updown_count, count, count);
     
        clk=0;
        rst=1;
        updown_count=1;

        #10;
        
        rst=0;

        #20;

        updown_count=0;


        #70;

        

        $finish;
       end
endmodule