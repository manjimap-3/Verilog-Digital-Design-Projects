module tb_demux_behav;

reg din;
reg [1:0]sel;
wire [3:0]dout;

demux_behav dut(.din(din), .sel(sel), .dout(dout));
initial begin

$display("Time\tdin\tsel\tdout");
$monitor("%0t\t%b\t%02b\t%b",$time,din,sel,dout);

din = 0; sel = 2'b00; #10;
din = 1; sel = 2'b00; #10;
sel = 2'b01; #10;
sel = 2'b10; #10;
sel= 2'b11; #10;
din = 0; sel = 2'b01;
end
endmodule
