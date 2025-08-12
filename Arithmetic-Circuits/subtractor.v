module half_sub_dataflow( input a,b, output diff, borrow);
assign diff= a ^ b;
assign borrow= ~a & b;
endmodule

module half_sub_behavioural( input a,b, output reg diff, borrow);
always@(*)
begin
diff= a ^ b;
borrow= ~a & b;
end
endmodule

module half_sub_structural( input a,b, output diff, borrow);
wire anot;
xor(diff,a,b);
not(anot,a);
and(borrow,anot,b);
endmodule
