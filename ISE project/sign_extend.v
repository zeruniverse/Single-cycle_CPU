`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:41:12 04/18/2014 
// Design Name: 
// Module Name:    sign_extend 
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
module sign_extend(i_16,o_32
    );
input wire [15:0] i_16;
output wire [31:0] o_32;
assign o_32=(i_16[15]==1'b1)?{16'b1111_1111_1111_1111,i_16}:{16'b0000_0000_0000_0000,i_16};

endmodule
