module mux(input[3:0]din, input [1:0]sel, output dout);
assign dout = ((~sel[1]&~sel[0]&din[0])|
               (~sel[1]&sel[0]&din[1])|
               (sel[1]&~sel[0]&din[2])|
               (sel[1]&sel[0]&din[3]));
endmodule
