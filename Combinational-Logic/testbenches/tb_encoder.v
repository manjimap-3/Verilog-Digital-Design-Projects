module tb_encoder_dataflow;

reg [3:0]a;
wire [1:0]y;
wire valid;

encoder_dataflow dut (.a(a), .y(y), .valid(valid));

initial begin

$display("Time\ta\ty\tvalid");
$monitor("%0t\t%04b\t%02b\t%b", $time, a, y, valid);

a = 4'b0000; #10
a = 4'b0001; #10
a = 4'b0010; #10
a = 4'b0100; #10
a = 4'b1000; #10

$finish;

end
endmodule
