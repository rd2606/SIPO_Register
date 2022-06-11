//tb 4bit
`timescale 1ns / 1ps

module tb();
reg d;
reg clk;
//wire [7:0] q;
wire [3:0] q;

SIPO S(.d(d),.clk(clk),.q(q));
//SIPO_8BIT S(.d(d),.clk(clk),.q(q));
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
d=1'b1;
#10 d=1'b0;
#10 d=1'b1;
#10 d=1'b1;
/*#10 d=1'b1;
#10 d=1'b0;
#10 d=1'b1;
#10 d=1'b1;
*/
end

initial
$monitor($time,"d=%b,clk=%b,q3=%b,q2=%b,q1=%b,q0=%b",d,clk,q[3],q[2],q[1],q[0]);

initial
#40 $finish;
//#80 $finish;

endmodule
