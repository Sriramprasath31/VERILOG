module comparator_2bit(input [1:0]A,B,
                       output reg eq,great,less);

        always@(*)begin
          great=0;
          less=0;
          eq=0;

            if(A>B)
               great=1'b1;
            else if(A<B)
               less=1'b1;
            else 
               eq=1'b1;
        end
endmodule