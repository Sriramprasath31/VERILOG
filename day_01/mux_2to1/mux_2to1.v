module mux_2to1(
    input a,
    input b,
    input sel,
    output y
);

    assign y = sel ? b : a;
    //assign y = ~sel & a | sel & b;
    
endmodule

/*
module mux_2to1(
    input a,
    input b,
    input sel,
    output y
);

    initial begin
        if(sel) begin
            assign y = b;
        end else begin
            assign y = a;
        end

endmodule
*/