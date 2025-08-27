module tb_sipo_shift_reg;

reg clk, rst, shift_in;
wire [3:0] parallel_out;

sipo_shift_reg dut (.clk(clk), .rst(rst), .shift_in(shift_in), .parallel_out(parallel_out));

initial begin
clk=1'b0;
forever #5 clk = ~clk;
end

initial begin

$monitor("Time=%0t | clk=%0b  rst=%0b shift_in=%0b parallel_out=%0b", $time,clk,rst,shift_in,parallel_out);

rst=0; shift_in=0;
#10 rst=1; shift_in=1;
#10 rst=1; shift_in=0;
#10 rst=1; shift_in=1;
#10 rst=1; shift_in=0;
#10 rst=1; shift_in=1;
#10 rst=1; shift_in=1;
#10 rst=1; shift_in=0;
#10 rst=1; shift_in=1;

#10 rst=0;
#10 rst=1; shift_in=1;
#10;

$finish;

end
endmodule
