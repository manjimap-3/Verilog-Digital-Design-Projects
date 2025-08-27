module tb_deco_dataflow;

reg [1:0]a;
wire [3:0]y;

deco_dataflow dut (.a(a),.y(y));

initial begin

$display("Time\ta\ty");
$monitor("%0t\t%02b\t%04b",$time,a,y);

a = 2'b00;#10
a = 2'b01;#10
a = 2'b10;#10
a = 2'b11;#10

$finish;

end
endmodule
