module tb_pipo_shift_register;

reg clk,rst,load;
reg [3:0] parallel_in;
wire [3:0] parallel_out;

pipo_shift_register dut(.clk(clk), .rst(rst), .load(load),.parallel_in(parallel_in),.parallel_out(parallel_out));

initial begin 
clk=1'b0;
forever #5 clk = ~clk;
end

initial begin

$monitor ("Time=%0t | clk=%0b rst=%0b load=%0b parallel_in=%04b parallel_out=%04b | ",$time,clk,rst,load,parallel_in,parallel_out);

rst=1; parallel_in=4'b0000; load=0; 
#10 rst=0; parallel_in=4'b1010; load=1;
#10 load=0;
#40
rst=1; 
#10 rst=0; parallel_in=4'b0101; load=1;
#10 load=0;
#40;

$finish;

end
endmodule
