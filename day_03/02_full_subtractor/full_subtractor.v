module full_subtractor( input A,B,Bin, output Diff,Barrow );
       

    assign Diff = A^B^Bin ;
    assign Barrow = (~A & B)|(~A & Bin)|(B & Bin);

endmodule