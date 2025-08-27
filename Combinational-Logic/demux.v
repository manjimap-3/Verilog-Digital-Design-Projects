module demux_dataflow ( input din, input [1:0]sel, output [3:0]dout);
assign dout = din ? 4'b0001 << sel : 4'b0000;//0001 if sel is 00
endmodule


module demux_struct( input din, input [1:0]sel, output [3:0]dout);
wire nsel0,nsel1;

not(nsel0,sel[0]);
not(nsel1,sel[1]);
and(dout[0],din,nsel1,nsel0);
and(dout[0],din,nsel1,sel[0]);
and(dout[0],din,sel[1],nsel0);
and(dout[0],din,sel[1],sel[0]);

endmodule


module demux_behav( input din, input [1:0]sel, output reg [3:0]dout);
always@(*) begin

if (din && sel == 2'b00) 
         dout=4'b0001;
else if (din && sel == 2'b01) 
         dout=4'b0010;
else if (din && sel == 2'b10) 
         dout=4'b0100;
else if (din && sel == 2'b11) 
         dout=4'b1000;
else
         dout=4'b0000;

end
endmodule
