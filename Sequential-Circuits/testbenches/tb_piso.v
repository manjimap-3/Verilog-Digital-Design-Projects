module tb_piso_shift_register;

reg clk,rst, load;
reg [3:0]parallel_in;
wire serial_out;

piso_shift_register dut( .clk(clk), .rst(rst), .parallel_in(parallel_in), .load(load), .serial_out(serial_out));

initial begin
clk=1'b0;
forever #5 clk=~clk;
end

initial begin

$monitor("Time=%0t | clk=%0b rst=%0b parallel_in=%04b load=%0b serial_out=%0b | shift_reg=%0b", $time,clk,rst,parallel_in,load,serial_out,dut.shift_reg);

rst=1; parallel_in=4'b0000; load=0;

#10 rst=0; parallel_in=4'b1101; load=0;
#10 load=1;
#10 load=0;
#40
#10 rst=1;
#10 rst=0; parallel_in=4'b1101;load=1;
#10 load=0;
#20;

$finish;

end
endmodule
