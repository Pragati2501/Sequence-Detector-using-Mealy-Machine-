`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:23 02/28/2023 
// Design Name: 
// Module Name:    sequence_detector_mealy 
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
module sequence_detector_mealy(input in, clk, reset, output reg out);
parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
reg [1:0] pres_state, nxt_state;
always @(posedge clk or negedge reset)
begin
if(!reset)
pres_state <= s0;
else
pres_state <= nxt_state;
end


always@(pres_state or in)
begin
case(pres_state)
s0 : 
begin
nxt_state = in?s1:s0;
out = 1'b0;
end

s1 : 
begin
nxt_state = in?s1:s2;
out = 1'b0;
end

s2 : 
begin
nxt_state = in?s3:s0;
out = 1'b0;
end


s3 : 
begin
nxt_state = in?s1:s2;
out = in?1'b0:1'b1;
end

	 
endcase
end



endmodule
