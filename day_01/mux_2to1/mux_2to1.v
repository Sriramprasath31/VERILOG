module mux2to1(input D0,D1,sel, output y);
  
  assign y=sel?D0:D1;

endmodule