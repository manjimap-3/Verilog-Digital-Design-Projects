module tb_fifo;

parameter depth = 8;
parameter data_width = 8;

reg clk, rst, w_en, r_en;
reg [data_width-1 :0] data_in;
wire [data_width-1 :0] data_out;
wire full,empty;

fifo dut(.clk(clk), .rst(rst), .w_en(w_en), .r_en(r_en), 
.data_in(data_in), .data_out(data_out), .full(full), .empty(empty));

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
rst = 0; w_en=0; r_en=0; data_in=0;
#15; rst =1;
#10 w_en =1; data_in = 8'hA5;
#10 data_in = 8'h5A;
#10 data_in = 8'h3C;
#10 data_in = 8'hC3;
#10 w_en =0;

#20 r_en=1;
#20 r_en = 0;
#100;
$finish;
end

initial begin
$monitor("Time=%0t | clk=%0b rst=%0b w_en=%0b r_en=%0b data_in=%0b | data_out=%0b full=%0b empty=%0b",$time,clk,rst,w_en,r_en,data_in,data_out,full,empty);
end
endmodule

