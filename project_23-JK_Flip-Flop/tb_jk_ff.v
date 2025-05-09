module tb_jk_ff;
    reg j, k, clk;
    wire q, q_bar;

    // Instantiate the JK Flip-Flop module
    jk_ff uut (j, k, clk, q, q_bar);

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10-time unit period
    end

    initial begin
        // Test case 1: Hold state (J=0, K=0)
        j = 0; k = 0; #10;

        // Test case 2: Reset state (J=0, K=1)
        j = 0; k = 1; #10;

        // Test case 3: Set state (J=1, K=0)
        j = 1; k = 0; #10;

        // Test case 4: Toggle state (J=1, K=1)
        j = 1; k = 1; #10;

        // Test again to see toggling effect
        j = 1; k = 1; #10;
    end
endmodule