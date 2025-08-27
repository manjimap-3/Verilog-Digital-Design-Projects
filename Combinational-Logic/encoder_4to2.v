module encoder_dataflow(input [3:0] a, output [1:0] y, output valid);

assign y = a[3] ? 2'b11 : 
           a[2] ? 2'b10 :
           a[1] ? 2'b01 : 
           a[0] ? 2'b00 : 2'b00;
assign valid = |a;
endmodule

module encoder_structural(input [3:0] a, output [1:0] y);
wire nota2,andy;

not(nota2,a2);
or ( y1, a3,a2);
and( andy, nota2, a1);
or ( y0, a3,andy);

endmodule

module encoder_behav(input [3:0] a, output reg [1:0] y, output reg valid);
always@(*) begin
       valid = 1'b1; // whenever input value is changed, valid signal should be high
case(a)
       4'b0001: y = 2'b00;
       4'b0010: y = 2'b01;
       4'b0100: y = 2'b10;
       4'b1000: y = 2'b11;
       default : begin
                y = 2'b00;
            valid = 1'b0;
       end


endcase
end
endmodule

