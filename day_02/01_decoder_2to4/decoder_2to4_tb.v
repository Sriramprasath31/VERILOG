module decoder_2to4_tb;
     
     reg [1:0]D;
     reg  en;
     wire [3:0]y;

     decoder_2to4 DUT (.D(D),.en(en),.y(y));
     initial begin
        $dumpfile("decoder_2to4_tb.vcd");
        $dumpvars(0,decoder_2to4_tb);
        $monitor(" EN=%b| D=%b | Y=%b ",en,D,y);
        en = 0; D = 2'b00; #10;
        en = 1; D = 2'b00; #10;
        en = 1; D = 2'b01; #10;
        en = 1; D = 2'b10; #10;
        en = 1; D = 2'b11; #10;
        en = 0; D  = 2'b11; #10; 
        $finish;
     end
endmodule
             
     