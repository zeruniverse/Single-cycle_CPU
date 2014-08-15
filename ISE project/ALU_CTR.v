`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:42 04/11/2014 
// Design Name: 
// Module Name:    ALU_CTR 
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
module aluc(btn, switch, aluoper);
input wire [1:0] btn;
input wire [3:0] switch;
output reg [2:0] aluoper;
always @* begin
case(btn)
	2'b00:begin aluoper<=3'b010; end //add
	2'b01:begin aluoper<=3'b110; end //sub
	default: begin
		case(switch)
		4'b0010:begin aluoper<=3'b110; end //sub
		4'b0100:begin  aluoper<=3'b000; end //and
		4'b0101:begin aluoper<=3'b001; end  //or
		4'b1010:begin  aluoper<=3'b111; end  //slt
		default:begin  aluoper<=3'b010; end  //add
		endcase
	end
endcase end
endmodule

