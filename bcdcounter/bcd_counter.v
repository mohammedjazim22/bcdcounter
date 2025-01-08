module bcd_counters (
    input clk,           // Clock signal
    input reset,         // Reset signal
    input up_down,       // Control signal: 1 for up, 0 for down
    output reg [3:0] count // 4-bit BCD count output
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 4'b0000; // Reset the count to 0
        end else begin
            if (up_down) begin
                // Up counting
                if (count == 4'b1001) // If count is 9, reset to 0
                    count <= 4'b0000;
                else
                    count <= count + 1;
            end else begin
                // Down counting
                if (count == 4'b0000) // If count is 0, reset to 9
                    count <= 4'b1001;
                else
                    count <= count - 1;
            end
        end
    end
endmodule


