module tb_ring_counter;
reg clk, rst;
wire [3:0] q;

ring_counter dut(.clk(clk), .rst(rst), .q(q));

initial begin 
clk=1'b0;
forever #5 clk=~clk;
end

initial begin

$display("Time\tclk\trst\tq");
$monitor("%0t\t%0b\t%0b\t%04b",$time,clk,rst,q);

rst=1;

#10 rst=0;
#100;

$finish;
end
endmodule
