module t_flip_flop(
    input clk,
    input rst,
    input t,
    output reg q
);

always @(posedge clk or posedge rst) begin
    if (rst == 1)
        q <= 1'b0;
    else if (t)
        q <= ~q;
    // Note: else clause for q <= q is redundant in sequential logic
end

endmodule
