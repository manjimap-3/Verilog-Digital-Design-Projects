module piso_shift_register (
      input clk, rst,
      input wire [3:0] parallel_in,
      input load,
      output reg serial_out );

reg [ 3:0 ] shift_reg;

always@(posedge clk or posedge rst) begin
   if (rst)begin
     shift_reg <= 4'b0000;
   end else if (load) begin
     shift_reg <= parallel_in;
   end else begin
     serial_out <= shift_reg[3]; // left shift
     shift_reg <= shift_reg << 1;
     // serial_out <= shift_reg[0];
     // shift_reg <= shift_reg >> 1;
   end

end 
endmodule
