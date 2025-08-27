module mux_dataflow(input [3:0]din, input [1:0]sel, output dout);
assign dout = (sel == 2'b00) ? din[0] :
              (sel == 2'b01) ? din[1] :
              (sel == 2'b10) ? din[2] :
                               din[3];
endmodule


module mux_struct(input [3:0]din, input [1:0]sel, output dout);
wire nsel0, nsel1;
wire w0, w1, w2, w3;

not(nsel0, sel[0]);
not(nsel1, sel[1]);

and(w0, din[0], nsel1, nsel0);
and(w1, din[1], nsel1, sel[0]);
and(w2, din[2], sel[1], nsel0);
and(w3, din[3], sel[1], sel[0]);

or(dout, w0, w1, w2, w3);
endmodule


module mux_behav(input [3:0]din, input [1:0]sel, output reg dout);
always@(*) begin
    case(sel)
        2'b00: dout = din[0];
        2'b01: dout = din[1];
        2'b10: dout = din[2];
        2'b11: dout = din[3];
    endcase
end
endmodule
