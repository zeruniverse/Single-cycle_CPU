`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:59 04/11/2014 
// Design Name: 
// Module Name:    RegFile 
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
module RegFile (clk,  regA, regB, regTEST, regW, Wdat, RegWrite,  Adat, Bdat, TESTdat);
    input clk,RegWrite;		// write enable
    input [4:0] regTEST, regA, regB, regW;	// source/dest register address
    input [31:0] Wdat;			// data writing to dest
    output wire [31:0] Adat, Bdat, TESTdat;		// data read from source
	 reg [31:0] regfile [0:31];
	 assign  Adat=regfile[regA];
	 assign  Bdat=regfile[regB];
	 assign  TESTdat=regfile[regTEST];
	 always @(posedge clk) begin
        //Deal with asynchronized Reset signal
		if(RegWrite) regfile[regW]=(regW==0)?0:Wdat;
	end
endmodule

