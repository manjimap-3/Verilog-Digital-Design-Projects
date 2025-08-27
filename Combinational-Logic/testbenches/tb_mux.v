module tb_mux;
   reg [3:0]din;
   reg [1:0]sel;
   wire dout;
	
   mux dut (.din(din),.sel(sel),.dout(dout));

initial begin

$display("Time\tdin\tsel\tdout");
$monitor("%0t\t%04b\t%02b\t%0b",$time,din,sel,dout);

din = 4'b0000 ; sel = 2'b00;
#10 din = 4'b0001; sel = 2'b00;
#10 din = 4'b0010; sel = 2'b01;
#10 din = 4'b0100; sel = 2'b10;
#10 din = 4'b1000; sel = 2'b11;
end
endmodule
