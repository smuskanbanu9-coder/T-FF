`timescale 1ns/1ps

module tb_t_flipflop;

reg clk;
reg rst;
reg t;
wire q;

// Instantiate the T Flip-Flop
t_flipflop uut (
    .clk(clk),
    .rst(rst),
    .t(t),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $display("Time\tclk\trst\tt\tq");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, clk, rst, t, q);

    clk = 0;
    rst = 1;
    t = 0;

    #10 rst = 0;

    // Hold state
    #10 t = 0;

    // Toggle
    #10 t = 1;

    // Toggle again
    #10 t = 1;

    // Hold
    #10 t = 0;

    // Toggle
    #10 t = 1;

    #20 $finish;
end

endmodule