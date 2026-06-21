`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 17:55:01
// Design Name: 
// Module Name: Elevator_controller_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Elevator_controller_tb();

reg clk,reset;
reg [1:0] request;
wire up,down;

Elevator_controller uut(.clk(clk),.reset(reset),
                        .request(request),.up(up),.down(down));
                        
always #5 clk = ~clk;

initial
begin

clk = 0;
reset = 1;#10

reset = 0;
request = 2'b10;#10

request = 2'b11;#10

request = 2'b01;#10

$finish;
end
endmodule
