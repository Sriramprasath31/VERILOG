module shift_reg_sipo(input serial_in,clk,rst, output reg [3:0]parallel_out);

    always @(posedge clk)begin  
        if(rst)
           
           parallel_out <=4'b0000;
        else
           parallel_out<={parallel_out[2:0],serial_in};
          
    end
endmodule
