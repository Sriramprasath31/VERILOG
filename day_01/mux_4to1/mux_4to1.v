module mux4to1(input [3:0]D,input [1:0]sel,
               output reg y);

    always@(*)begin
      case(sel)
          2'b00:y=D[0];
          2'b01:y=D[1];
          2'b10:y=D[2];
          2'b11:y=D[3];
      endcase
    end
endmodule
                                     
    
