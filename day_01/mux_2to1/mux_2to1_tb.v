module mux2to1_tb;
  
  reg D0,D1,sel;
  wire y;
  
  mux2to1 DUT(.D0(D0),.D1(D1),.sel(sel),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,mux2to1_tb );
    $monitor("sel=%b | D0=%b | D1=%b | Y=%b ",sel,D0,D1,y);
    D0=0; D1=1; #10
    sel=0; #5;
    sel=1; #5;
    $finish;
  end
endmodule 
