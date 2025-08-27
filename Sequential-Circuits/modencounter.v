module modencounter #( 
    parameter n = 16 
) ( 
    input clk, rst, up_down, 
    output reg [3:0] count
);

always@(posedge clk or negedge rst) begin
    if(!rst) begin // reset phase
        count <= 0;
    end
    else if (up_down) begin // up counter
        if(count == n-1) begin // max value
            count <= 0;
        end
        else begin
            count <= count + 1;
        end
    end
    else begin // down counter
        if (count == 0) begin
            count <= n - 1;
        end
        else begin
            count <= count - 1;
        end
    end
end

endmodule
