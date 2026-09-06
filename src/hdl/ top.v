
`timescale 1ns/1ps

module top #(
  // Data width
  parameter data_width = 32,
  // Address width
  parameter addr_width = 16,
  // Debug level
  parameter [3:0] debug_level = 4'b0000
)(
  // Clock
  input clk_p,
  input clk_n,
  // Reset
  input rst_n,
  // User / External Inputs
  input [data_width-1:0] data_in,
  input [addr_width-1:0] addr_in,
  // User / External Outputs
  output [data_width-1:0] data_out,
  output                  valid_out
);

  // RTL

endmodule
