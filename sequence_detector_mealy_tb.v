`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:47:30 02/28/2023
// Design Name:   sequence_detector_mealy
// Module Name:   C:/Users/DELL/Documents/newbie/sequence_detector_mealy/sequence_detector_mealy_tb.v
// Project Name:  sequence_detector_mealy
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sequence_detector_mealy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sequence_detector_mealy_tb;

	// Inputs
	reg in;
	reg clk;
	reg reset;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	sequence_detector_mealy uut (
		.in(in), 
		.clk(clk), 
		.reset(reset), 
		.out(out)
	);
	
	reg [19:0] data;
	integer k;
	initial begin
		data  = 20'b10101011100101010101;
		k=0;
		reset = 0; #4;
		reset = 1; #160;
		$finish;
		end
		always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;

		  k = 0;
		 end
		
		 always @(posedge clk)
		 begin
		 in = data>>k;
		 k = k+1;
		end
		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	
      
endmodule

