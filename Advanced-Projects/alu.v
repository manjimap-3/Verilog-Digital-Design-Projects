module alu_4bit ( 
     	input [3:0]a,b,
	input[2:0]alu_op, 
	output reg [ 3: 0] result,
	output reg  carry_out,zero );

always@(*) begin
   case(alu_op) 
        
  		3'b000: {carry_out, result} = a + b;
		3'b001: {carry_out, result} = a - b;
		3'b010: result= a & b;
		3'b011: result= a | b;
		3'b100: result= a ^ b;
		3'b101: result= ~(a | b);
		3'b110: result= a << 1;
		3'b111: result= a >> 1;
		default: result = 4'b0000;
   endcase
   zero = (result == 4'b0000);
end
endmodule
