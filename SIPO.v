//SIPO_4bit
`timescale 1ns / 1ps

module SIPO(d,clk,q);
input d;
input clk;
output [3:0] q;

DFF FF3(clk,d,q[3]);
DFF FF2(clk,q[3],q[2]);
DFF FF1(clk,q[2],q[1]);
DFF FF0(clk,q[1],q[0]);

endmodule
