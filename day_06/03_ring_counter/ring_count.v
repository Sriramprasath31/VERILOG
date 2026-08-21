module ring_count(
    input clk,
    input rst,
    output reg [3:0] count
);

    always @(posedge clk) begin

        if (rst)
            count <= 4'b1000;

        else
            count <= {count[2:0], count[3]};

    end

endmodule