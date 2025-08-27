module tb_moore_sequence_detector_1100;

reg clk,rst,x;
wire z;

moore_sequence_detector_1100 dut (.clk(clk), .rst(rst), .x(x), .z(z));

initial begin
clk=0;
forever #2 clk=~clk;
end

initial begin
rst=0; x=0;
#2 rst = 1;
#3 x=1;
#4 x=1;
#4 x=1;
#4 x=0;
#4 x=0;
#4 x=0;
#4 x=1;
#4 x=0;
#4 x=1;
#4 x=1;
#4 x=0;
#4 x=1;
#4 x=1;
#4 x=0;
#4 x=0;
#20;
$finish;
end
endmodule
