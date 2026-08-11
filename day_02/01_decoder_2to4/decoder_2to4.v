module decoder_2to4(input [1:0]D,input en,output[3:0]y);

       assign y [0] = en & (~D[0]) & (~D[1]) ;
       assign y [1] = en & (~D[0]) &  D[1] ;
       assign y [2] = en & D[0] & (~D[1]) ;
       assign y [3] = en & D[0] &  D[1] ;

endmodule