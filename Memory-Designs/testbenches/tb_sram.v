module tb_sram_16;

reg clk,rst,wr;
reg [4:0]Addr;
reg [5:0]Data;
wire [5:0]Rout;

sram_16 dut (.clk(clk), .rst(rst), .wr(wr), .Addr(Addr), .Data(Data), .Rout(Rout));

initial begin
clk =0;
forever #5 clk=~clk;
end

initial begin

$monitor("Time=%0t | clk=%0b rst=%0b wr=%0b Addr=%0d Data=%0b | Rout=%0b", $time,clk,rst,wr,Addr,Data,Rout);

rst = 0; wr=0; Addr = 0; Data = 0;

#12 rst = 1;
#12 wr = 1;

Addr = 5'd3; Data = 6'b101010; #10;
Addr = 5'd5; Data = 6'b010101; #10;
Addr = 5'd7; Data = 6'b111000; #10;

wr = 0;

Addr = 5'd3; #10;
Addr = 5'd5; #10;
Addr = 5'd7; #10;

rst = 0; #10;
rst = 1; #10;

$finish;
end
endmodule
