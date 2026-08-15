module d_FF_tb;

      reg D,clk;
      wire Q;

      d_FF DUT (.D(D),.clk(clk),.Q(Q));

      always #5 clk=~clk;
      initial begin
        
        $monitor(" D=%b | Q=%b ",D,Q);

        clk=0;
        D=0;

         #10 D = 1;
         #10 D = 0;
         #10 D = 1;
         #10 D = 0;

         #10 $finish;
      end
      
endmodule