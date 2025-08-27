module tb_t_flip_flop;
    reg clk, rst, t;
    wire q;
    
    // Instantiate the T flip-flop
    t_flip_flop dut(.clk(clk), .rst(rst), .t(t), .q(q));
    
    // Clock generation
    initial begin 
        clk = 1'b0;
        forever #5 clk = ~clk;  // 10ns period (100MHz)
    end
    
    // Test stimulus
    initial begin
        $display("Time\tclk\trst\tt\tq");
        $monitor("%0t\t%0b\t%0b\t%0b\t%0b", $time, clk, rst, t, q);
        
        // Initialize signals
        rst = 1'b1; 
        t = 1'b0;
        
        // Wait for a few clock cycles, then release reset
        #15 rst = 1'b0;  // Release reset at 15ns (between clock edges)
        
        // Test Case 1: t=0, should maintain state
        #10 t = 1'b0;
        
        // Test Case 2: t=1, should toggle on each positive edge
        #10 t = 1'b1;
        
        // Let it run for several clock cycles to see toggling
        #50;
        
        // Test Case 3: Apply reset while running
        #10 rst = 1'b1;
        #10 rst = 1'b0;
        
        // Test Case 4: More toggling
        #20 t = 1'b0;  // Stop toggling
        #20 t = 1'b1;  // Resume toggling
        #30;
        
        $finish;
    end
    
    // Optional: Generate VCD file for waveform viewing
    initial begin
        $dumpfile("t_flipflop.vcd");
        $dumpvars(0, tb_t_flip_flop);
    end
    
endmodule
