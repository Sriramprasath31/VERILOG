module encoder_8to3_tb;

      reg [7:0]D;
      wire [2:0]y;

      encoder_8to3 DUT(.D(D),.y(y));
    initial begin
        $dumpfile("encoder_8to3_tb.vcd");
        $dumpvars(0,encoder_8to3_tb);
        $monitor(" D=%b | Y=%b ",D,y);

            D= 8'b00000001; #10;
            D= 8'b00000010; #10;
            D= 8'b00000100; #10;
            D= 8'b00001000; #10;
            D= 8'b00010000; #10;
            D= 8'b00100000; #10;
            D= 8'b01000000; #10;
            D= 8'b10000000; #10;
             $finish;
    end
    
endmodule