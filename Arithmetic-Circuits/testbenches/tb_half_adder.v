module tb_half_adder;

reg A,B;
wire sum,carry;

half_adder dut (.A(A), .B(B), .sum(sum), .carry(carry));

initial begin
A = 0; B = 0;
$display("The value is a = %0b and b = %0b", A,B);
#10 A = 0; B = 1;
$display("The value is a = %0b and b = %0b", A,B);
#10 A = 1; B = 0;
$display("The value is a = %0b and b = %0b", A,B);
#10 A = 1; B = 1;
$display("The value is a = %0b, and b = %0b", A,B);
#50;
$finish;
end
endmodule
