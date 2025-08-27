module tb_adder_4bit;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

adder_4bit dut (.a(A), .b(B), .cin(Cin), .sum(Sum), .cout(Cout));

initial begin
A = 4'b0000; B = 4'b0000; Cin = 0;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 4'b0001; B = 4'b0010; Cin = 0;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 4'b0101; B = 4'b0011; Cin = 0;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 4'b1111; B = 4'b0001; Cin = 0;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 4'b1010; B = 4'b0101; Cin = 1;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#50;
$finish;
end

endmodule
