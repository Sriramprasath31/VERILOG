module mux_4to1(
    input [3:0] i,
    input [1:0] sel,
    output y
);
assign y = (~sel[0]&~sel[1]&i[0]) | (sel[0]&~sel[1]&i[1]) | (~sel[0]&sel[1]&i[2]) | (sel[0]&sel[1]&i[3]);
    
endmodule