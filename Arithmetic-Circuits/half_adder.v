module half_adder_behavioral(input A,B, output reg sum, carry);
    always @(*) begin
        {carry,sum} = A + B;
    end
endmodule


module half_adder_dataflow(input A,B, output sum, carry);
    assign sum = A ^ B;
    assign carry = A & B;
endmodule


module half_adder_structural(input A,B, output sum, carry);
    xor(sum, A, B);
    and(carry, A, B);
endmodule
