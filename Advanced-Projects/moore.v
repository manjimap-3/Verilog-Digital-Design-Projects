module moore_sequence_detector_1100(input clk,rst,x,output reg z );
  
  parameter A = 4'h0;
  parameter B = 4'h1;
  parameter C = 4'h2;
  parameter D = 4'h3;
  parameter E = 4'h4;

reg [2:0] state, next_state;

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
        if (x == 0) next_state = A;
        else        next_state = B;
      end

      B : begin
        if (x == 0) next_state = A;
        else        next_state = C;
      end

      C : begin
        if (x == 0) next_state = D;
        else        next_state = C;
      end

      D : begin
        if (x == 0) next_state = E;
        else        next_state = B;
      end

      E : begin
        if (x == 0) next_state = A;
        else        next_state = B;
      end
    default: next_state = A;

endcase
end

always@(state)begin
case(state)

     A : z = 0;
     B : z = 0;
     C : z = 0;
     D : z = 0;
     E : z = 1;
  default : z = 0;
endcase
end

endmodule
