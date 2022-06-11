//SIPO_8bit
`timescale 1ns / 1ps

module SIPO_8BIT(d,clk,q);
input d;
input clk;
output [7:0] q;

SIPO M1(d,clk,q[7:4]);
SIPO M2(q[4],clk,q[3:0]);

endmodule
