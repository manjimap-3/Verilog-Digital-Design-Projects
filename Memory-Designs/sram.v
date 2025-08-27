module sram_16(input clk, rst, wr, 
               input wire [4:0]Addr,
               input wire [5:0]Data,
               output reg [5:0]Rout);

reg [5:0] mem [0:31];

always@(posedge clk)begin
      if(!rst)begin
      Rout <= 6'b0;
      end 
      else if(wr)begin
      mem[Addr] <= Data;
      end
      else begin
      Rout <= mem[Addr];
      end
end
endmodule
