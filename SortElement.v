`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 12:29:41
// Design Name: 
// Module Name: SortElement
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SortElement # (
  parameter DSIZE = 18,
  parameter OFFSET = 8
  )(
  input         [DSIZE-1:0] a,
  input         [DSIZE-1:0] b,
  output wire   [DSIZE-1:0] sort0,
  output wire   [DSIZE-1:0] sort1
  );

  assign sort0 = a[OFFSET-1:0] > b[OFFSET-1:0] ? b : a;
  assign sort1 = a[OFFSET-1:0] > b[OFFSET-1:0] ? a : b;

  endmodule
