`include "bcd_counter.v"

module tb_bcd_counter;
    reg clk;
    reg reset;
    reg up_down;
    wire [3:0] count;

    // Instantiate the BCD counter
    bcd_counters uut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Test sequence
    initial begin
        $dumpfile("bcd_counter.vcd");
        $dumpvars(0, tb_bcd_counter);

        // Monitor signal values
        $monitor("Time: %0t | Reset: %b | Up_Down: %b | Count: %b", $time, reset, up_down, count);

        // Initialize inputs
        reset = 1; up_down = 1;
        #10 reset = 0; // Release reset

        // Test up counting (0 to 9)
        up_down = 1; // Count up
        #100;

        // Test down counting (9 to 0)
        up_down = 0; // Count down
        #100;

        // Reset the counter once
        reset = 1; #10 reset = 0;

        // Test up counting again
        up_down = 1;
        #50;

        $finish; // End simulation
    end
endmodule

