`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:33:37 04/18/2014 
// Design Name: 
// Module Name:    single_PC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module single_pc(clk, rst, i_pc, o_pc);
  parameter N = 32;
  input wire clk, rst;
  input wire [N-1:0] i_pc;
  output reg [N-1:0] o_pc;
  always @(posedge clk) begin
if (rst) o_pc <= 0; 
//if reset signal is given, turn to the first instruction
else o_pc <= i_pc; 
//PC count change (how to change is determined by i_pc)
  end
endmodule
