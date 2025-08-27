module tb_jk_ff;

reg j,k,clk,rst;
wire q;

jk_ff dut(.clk(clk),.rst(rst),.j(j),.k(k),.q(q));

initial begin
clk=1'b0;
forever #5 clk=~clk;
end

initial begin

$display("Time\tclk\trst\tj\tk\tq");
$monitor("%0t\t%0b\t%0b\t%0b\t%0b\t%0b",$time,clk,rst,j,k,q);

rst=1; j=0; k=0;
#10 rst=0;
j=0; k=0;
#10 j=0; k=1;
#10 j=1; k=0;
#10 j=1; k=1;
#10 j=0; k=0;

$finish;
end
endmodule
