module priority_encoder_tb;
     
     reg [4:0]D;
     wire [1:0]y;

     priority_encoder DUT(.D(D),.y(y));
     initial begin 
        $dumpfile("priority_encoder_tb.vcd");
        $dumpvars(0,priority_encoder_tb);
        $monitor(" D=%b | Y=%b ",D,y);

        D=4'b1000; #10;
        D=4'b0100; #10;
        D=4'b0010; #10;
        D=4'b1001; #10;
        $finish;
     end
endmodule
