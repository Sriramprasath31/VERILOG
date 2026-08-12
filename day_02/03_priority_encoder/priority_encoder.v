module priority_encoder( input [4:0]D, output reg [1:0]y);
     
     always@(*)begin
       if(D[3])
            y=2'b11;
        else if(D[2])
            y=2'b10;
        else if(D[1])
            y=2'b01;
        else if(D[0])
            y=2'b00;
     end
endmodule