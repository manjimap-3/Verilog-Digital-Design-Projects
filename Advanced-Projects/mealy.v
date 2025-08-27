module sequence_detector_1010(input clk,rst, x, output reg z);

parameter A = 4'h0;
parameter B = 4'h1;
parameter C = 4'h2;
parameter D = 4'h3;

reg [1:0] state,next_state;

always@(posedge clk or negedge rst)begin
    if(!rst)begin
    state <= A;
    end
    else 
    state <= next_state;
end

always@(x or state)begin

    case(state)
          A : begin 
            if(x == 0) next_state = A;
            else       next_state = B;
          end

          B : begin
            if(x == 0) next_state = C;
            else       next_state = B;
          end

          C : begin
            if(x == 0) next_state = A;
            else       next_state = D;
          end

          D : begin
            if(x == 0) next_state = A;
            else       next_state = B;
          end
      default : next_state = A;
    endcase
end

assign z = (state == D)&&(x == 0) ? 1 : 0;
endmodule
