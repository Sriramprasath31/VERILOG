module mux_4to1_tb;
    reg [3:0] i;
    reg [1:0] sel;
    wire y;
    integer a;

    mux_4to1 uut(
        .i(i),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,mux_4to1_tb);
    end

    initial begin
        $monitor("Time=%0t i=%b sel=%b y=%b", $time, i, sel, y);
        {sel[1],sel[0],i[3],i[2],i[1],i[0]}=0;
        for(a=0;a<=64;a=a+1) begin
            {sel[1],sel[0],i[3],i[2],i[1],i[0]}=a; 
            #10;
        end
 $finish;
 end
endmodule