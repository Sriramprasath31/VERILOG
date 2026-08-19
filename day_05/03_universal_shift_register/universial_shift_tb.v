module universal_shift_tb;
     
    reg clk;
    reg rst;
    reg S0;
    reg S1;
    reg shift_right;
    reg shift_left;
    reg  [3:0]parallel_in;
    wire  [3:0]parallel_out;

    universal_shift DUT (.clk(clk),
                         .rst(rst),
                         .S0(S0),
                         .S1(S1),
                         .parallel_in(parallel_in),
                         .parallel_out(parallel_out),
                         .shift_right(shift_right),
                         .shift_left(shift_left));

         always #5  clk=~clk;
    initial begin
            $dumpfile("universal_shift_tb.vcd");
            $dumpvars(0,universal_shift_tb);
            $monitor("S1=%b S0=%b | Parallel_In=%b | Output=%b",
                      S1, S0, parallel_in, parallel_out);

            clk=0;
            rst=1;

            S0=0;
            S1=0;

            shift_right=0;
            shift_left=0;

            #10;
            rst=0;
            
            #5;
            S0=1;
            S1=1;

            parallel_in=4'b1010; 

            #5;
            S0=0;
            S1=0;

            #5;
            S0=0;
            S1=1;

               #5;
            S0=0;
            S1=0;

            #5;
            S0=1;
            S1=0;    

                 shift_left=0;

            #5;

                shift_left=1;       
            
    end
endmodule