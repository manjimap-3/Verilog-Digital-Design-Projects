module pipo_shift_register(
    input clk, rst,
    input wire load,
    input wire [3:0] parallel_in,
    output reg [3:0] parallel_out);

always@(posedge clk or posedge rst) begin
    if(rst) begin
       parallel_out <= 4'b000;
    end else if(load) begin
       parallel_out <= parallel_in;
    end
    
end 
endmodule
