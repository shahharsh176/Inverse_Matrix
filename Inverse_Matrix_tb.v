`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:18:01 10/07/2016
// Design Name:   Inverse_Matrix
// Module Name:   C:/Users/Harsh/Documents/Xilinx Projects/new_inverse/Inverse_Matrix_tb.v
// Project Name:  new_inverse
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Inverse_Matrix
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Inverse_Matrix_tb;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	Inverse_Matrix uut (
		.clk(clk)
	);
	always #50 clk = ~clk;
	initial
	begin
		clk = 0;
	end
      
endmodule

