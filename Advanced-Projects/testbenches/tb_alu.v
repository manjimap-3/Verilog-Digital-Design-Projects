module tb_alu_4bit;

reg [3:0] a, b;
reg [2:0] alu_op;
wire [3:0] result;
wire carry_out, zero;

alu_4bit dut (.a(a), .b(b), .alu_op(alu_op), .result(result), .carry_out(carry_out), .zero(zero));

initial begin

$display("Time\ta\tb\talu_op\tresult\tcarry_out\tzero");
$monitor("%0t\t%04b\t%04b\t%03b\t%04b\t%b\t\t%b", $time, a, b, alu_op, result, carry_out, zero);

a = 4'b0011; b = 4'b0001; alu_op = 3'b000; #10 // ADD
a = 4'b0101; b = 4'b0011; alu_op = 3'b001; #10 // SUB
a = 4'b1100; b = 4'b1010; alu_op = 3'b010; #10 // AND
a = 4'b1100; b = 4'b1010; alu_op = 3'b011; #10 // OR
a = 4'b1100; b = 4'b1010; alu_op = 3'b100; #10 // XOR
a = 4'b1100; b = 4'b1010; alu_op = 3'b101; #10 // NOR
a = 4'b0101; b = 4'b0000; alu_op = 3'b110; #10 // SHIFT LEFT
a = 4'b0101; b = 4'b0000; alu_op = 3'b111; #10 // SHIFT RIGHT

$finish;

end
endmodule
