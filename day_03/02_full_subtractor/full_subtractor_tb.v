module full_subtractor_tb;
    
    reg A,B,Bin;
    wire Diff,Barrow;

    full_subtractor DUT(.A(A),.B(B),.Bin(Bin).Diff(Diff),.Barrow(Barrow));
    initial begin
      $dumpfile("full_subtractor_tb.vcd");
      $dumpvars(0,full_subtractor_tb);
      $monitor(" A=%B | B=%B | Diff=%b | Barrow=%b ",A,B,Bin,Diff,Barrow);

           A=0;B=0;Bin=0; #10;
           A=0;B=0;Bin=1; #10;
           A=0;B=1;Bin=0; #10;
           A=0;B=1;Bin=1; #10;
           A=1;B=0;Bin=0; #10;
           A=1;B=0;Bin=1; #10;
           A=0;B=0;Bin=0; #10;
           A=0;B=0;Bin=0; #10;
           
    end