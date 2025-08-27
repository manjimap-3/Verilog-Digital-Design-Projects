module fifo #(parameter depth = 8, data_width= 8)
           (input clk, rst, w_en,r_en, 
            input [data_width-1 : 0] data_in,
            output reg [data_width-1 : 0] data_out,
            output empty,full);

reg [$clog2(depth)-1 :0] w_pntr, r_pntr;
reg [data_width - 1 :0]fifo [depth-1 :0];

always@(posedge clk)begin
    if(!rst)begin
    w_pntr <= 0; r_pntr <= 0;
    data_out <= 0;
    end
end

always@(posedge clk)begin
    if(w_en & !full)begin
    fifo[w_pntr] <= data_in;
    w_pntr <= w_pntr + 1;
    end
end

always@(posedge clk)begin
    if(r_en & !empty)begin
    data_out <= fifo[r_pntr];
    r_pntr <= r_pntr + 1;
    end
end

assign full = ((w_pntr + 1'b1) == r_pntr);
assign empty = (w_pntr == r_pntr);

endmodule
