//DFF
`timescale 1ns / 1ps

module DFF(clk,d,q);
input d,clk;
output reg q;

initial
q<=1'b0;

always @(posedge clk)
q<=d;

endmodule
