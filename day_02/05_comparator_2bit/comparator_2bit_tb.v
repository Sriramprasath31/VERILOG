module comparator_2bit_tb;
       
       reg [1:0]A,B;
       wire eq,great,less;

       comparator_2bit DUT(.A(A),.B(B),.eq(eq),.great(great),.less(less));
       initial begin
          $dumpfile("comparator_2bit_tb");
          $dumpvars(0,comparator_2bit_tb);
          $monitor(" A=%b | B=%b | eq=%b | great=%b | less=%b ",A,B,eq,great,less);

        A=2'b00; B=2'b00; #10;   // equal
        A=2'b01; B=2'b00; #10;   // A > B
        A=2'b00; B=2'b01; #10;   // A < B
        A=2'b10; B=2'b11; #10;   // A < B
        A=2'b11; B=2'b10; #10;   // A > B
        A=2'b11; B=2'b11; #10;   // equal
        $finish;
       end
endmodule
