module down_count_tb;
       
       reg clk;
       reg rst;
       wire [3:0]count;

       down_count DUT(.clk(clk),.rst(rst),.count(count));

       always #5 clk=~clk;

       initial begin
          $dumpfile("down_count_tb.vcd");
          $dumpvars(0,down_count_tb);
          $monitor("Rst=%b | Count=%b (%d)",
                  rst, count, count);
     
        clk=0;
        rst=1;

        #10;
        clk=1;
        rst=0;


        #170;

        rst=0;

        $finish;



         

         
       end
endmodule