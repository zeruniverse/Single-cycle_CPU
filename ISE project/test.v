`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:16:35 05/04/2014
// Design Name:   CPU_top
// Module Name:   D:/single_CPU/test.v
// Project Name:  single_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg stp;
	reg rst;
	reg clk;
	reg [1:0] dptype;
	reg [4:0] regselect;

	// Outputs
	wire exec;
	wire [5:0] initype;
	wire [3:0] node;
	wire [7:0] segment;
	
	// Instantiate the Unit Under Test (UUT)
	CPU_top uut (
		.stp(stp),  
		.o_ins(o_ins),
		.o_pc(o_pc),
		.regselect(regselect),
		.dpdata(dpdata)
	);

	initial begin
		// Initialize Inputs
		stp = 0;
		regselect=5;
		rst = 0;
		clk = 0;
		dptype = 0;

		// Wait 100 ns for global reset to finish
		forever begin #10; stp=~stp; end
        
		// Add stimulus here

	end
      
endmodule

