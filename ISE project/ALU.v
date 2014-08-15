`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:14 04/11/2014 
// Design Name: 
// Module Name:    ALU 
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
module alu(a, b, aluc, zf, result);
input wire [31:0] a; //the first input number
input wire [31:0] b; //the second input number
input wire [2:0] aluc; //operation code from aluc module
output wire zf; //0-result==0,1-result<>0
output reg [31:0] result; //output
wire [31:0] addresult;
wire [31:0] subresult;
wire co1,co2; //of no use
adder_32bits m0(a, b, 0, addresult, co1); // full-adder (do add)
adder_32bits m1(a, b, 1, subresult, co2); // full-adder (do sub)
always @* begin
case(aluc)
3'b000: begin result<=a & b; end //and
3'b001: begin result<=a|b; end //or
3'b010: begin result<=addresult; end //add
3'b110: begin result<=subresult; end //sub
3'b111:begin result<=a<b?32'b1:32'b0; end //slt
endcase end
assign zf=result==0?1'b1:1'b0;
endmodule

