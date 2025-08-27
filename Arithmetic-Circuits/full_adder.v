module full_adder_behavioral(
    input a, b, cin,
    output reg sum, cout
);
    always @(*) begin
        {cout, sum} = a + b + cin;  
    end
endmodule


module full_adder_dataflow(
    input a, b, cin,
    output sum, cout
);
    assign sum  = a ^ b ^ cin;                        
    assign cout = (a & b) | (b & cin) | (a & cin);    
endmodule


module full_adder_structural(
    input a, b, cin,
    output sum, cout
);
    wire w1, w2, w3;
    xor (w1, a, b);        
    and (w2, a, b);        
    xor (sum, w1, cin);    
    and (w3, w1, cin);     
    or (cout, w2, w3);
endmodule
