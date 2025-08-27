module sipo_shift_reg (
   input clk,rst,shift_in, 
   output reg [3:0] parallel_out);

always@(posedge clk or negedge rst) begin
    if(!rst)begin
       parallel_out <= 4'b0000;
    end else begin
    parallel_out <= {parallel_out[2:0],shift_in }; // left shift
    // parallel_out <= {shift_in, parallel_out[3:1]}; ---> right shift
    end
end
endmodule
