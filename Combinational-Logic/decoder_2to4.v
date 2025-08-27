module deco_dataflow(input[1:0]a, output[3:0]y);
assign y[0] = ~a[1] & ~a[0]; 
assign y[1] = ~a[1] & a[0];  
assign y[2] = a[1] & ~a[0];   
assign y[3] = a[1] & a[0];    
endmodule


module deco_behav(input[1:0]a, output reg[3:0]y);
always@(*)
begin
    case(a)
        2'b00: y = 4'b0001;  
        2'b01: y = 4'b0010; 
        2'b10: y = 4'b0100;  
        2'b11: y = 4'b1000;  
        default: begin
               y = 4'b0000;
        end 
    endcase
end
endmodule

module deco_struct(input[1:0]a, output[3:0]y);
wire nota0, nota1;
not(nota0,a[0]);
not(nota1,a[1]);
and(y[0],nota0,nota1);
and(y[1],a[0],nota1);
and(y[2],nota0,a[1]);
and(y[3],a[0],a[1]);

endmodule

