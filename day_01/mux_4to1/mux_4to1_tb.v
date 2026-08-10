module mux_4to1_tb;
    reg [3:0]D;
    reg [1:0]sel;
    wire y;

    mux4to1 DUT (.D(D),.sel(sel),.y(y));
  initial begin
   $dumpfile("mux_4to1_tb.vcd");
   $dumpvars(0,mux_4to1_tb);
   $monitor("sel=%b | D=%b | y=%b", sel, D, y);

    D = 4'b1010;
    sel=2'b00; #5;
    sel=2'b01; #5;
    sel=2'b10; #5;
    sel=2'b11; #5;
    $finish;
  end
endmodule