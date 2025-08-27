module tb_half_subtractor;

reg A, B;
wire Diff, Borrow;

half_sub_dataflow dut (.a(A), .b(B), .diff(Diff), .borrow(Borrow));

initial begin
A = 0; B = 0;
$display("A=%0b B=%0b", A, B);
#10 A = 0; B = 1;
$display("A=%0b B=%0b", A, B);
#10 A = 1; B = 0;
$display("A=%0b B=%0b", A, B);
#10 A = 1; B = 1;
$display("A=%0b B=%0b", A, B);
#50;
$finish;
end

endmodule
