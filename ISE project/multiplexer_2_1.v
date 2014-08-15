`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:29 04/18/2014 
// Design Name: 
// Module Name:    multiplexer_2_1 
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
module multiplexer_2_1(A, B, Ctrl, S
    );
  input wire [N-1:0] A, B;
  output wire [N-1:0] S;
  assign S = (Ctrl == 1'b0) ? A : B;
Endmodule

endmodule
