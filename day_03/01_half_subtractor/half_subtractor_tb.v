module half_subtractor_tb;
     
     reg X,Y;
     wire D,B;

     half_subtractor DUT(.X(X),.Y(Y),.D(D),.B(B));

     initial begin
       $dumpfile("half_subtractor_tb.vcd");
       $dumpvars(0,half_subtractor_tb);
       $monitor(" X=%b | Y=%b | D=%b | B=%b ",X,Y,D,B);

              X=0;Y=0; #10;
              X=0;Y=1; #10;
              X=1;Y=0; #10;
              X=1;Y=1; #10;
              $finish;
     end
              

endmodule