module universal_shift( clk,
                        rst,
                        shift_right,
                        shift_left,
                        S0,
                        S1,
                        parallel_in,
                        parallel_out);


                input clk;
                input rst;
                input S0;
                input S1;
                input shift_right;
                input shift_left;

                input [3:0] parallel_in;
                output reg [3:0] parallel_out;        

        always@ (posedge clk or posedge rst)begin
          
          if(rst)
                
                parallel_out<=4'b0000;

          else
          begin
              case({S0,S1})

                   2'b00:
                       parallel_out<=parallel_out;           //Hold
                   2'b01:
                       parallel_out<={shift_right,parallel_out[3:1]};
                   2'b10:
                       parallel_out<={parallel_out[2:0],shift_left};
                   2'b11:
                       parallel_out<=parallel_in;
              endcase        

                                       
          end
        end
endmodule