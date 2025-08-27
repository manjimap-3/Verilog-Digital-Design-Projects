module tb_full_adder;

reg A, B, Cin;
wire Sum, Cout;

full_adder dut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

initial begin
A = 0; B = 0; Cin = 0;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 0; B = 0; Cin = 1;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 0; B = 1; Cin = 0;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 0; B = 1; Cin = 1;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 1; B = 0; Cin = 0;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 1; B = 0; Cin = 1;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 1; B = 1; Cin = 0;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#10 A = 1; B = 1; Cin = 1;
$display("A=%0b B=%0b Cin=%0b", A, B, Cin);
#50;
$finish;
end

endmodule

