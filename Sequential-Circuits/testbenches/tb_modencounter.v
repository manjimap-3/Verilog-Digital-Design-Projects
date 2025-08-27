module tb_modencounter;
    reg clk, rst, up_down;
    wire [3:0] count;
    
    modencounter #(.n(16)) dut (
        .clk(clk),
        .rst(rst),
        .up_down(up_down),
        .count(count)
    );
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        $display("Time\tclk\trst\tup_down\tcount");
        $monitor("%0t\t%0b\t%0b\t%0b\t%0d", $time, clk, rst, up_down, count);
        
        rst = 0; up_down = 0; #25;    
        rst = 1; up_down = 1; #200;   
        up_down = 0; #200;            
        #50;
                        
       $finish;
    end
    
endmodule
