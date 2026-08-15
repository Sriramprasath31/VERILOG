module jk_ff_tb;
     
     reg j,k,clk;
     wire Q,Qbar;

     jk_ff DUT(.j(j),.k(k),.clk(clk),.Q(Q),.Qbar(Qbar));

     always #5 clk=~clk;
     initial begin
        $monitor(" J=%b | K=%b | Q=%b | Qbar=%b ",j,k,Q,Qbar);
       
       clk=0;
       j=0;
       k=0;

       #10 j=0; k=0;
       #10 j=0; k=1;
       #10 j=1; k=0;
       #10 j=1; k=1;
       $finish;
     end
endmodule