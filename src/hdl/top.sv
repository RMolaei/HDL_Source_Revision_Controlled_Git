
module top #(
  // Data width
  parameter int unsigned data_width = 32,
  // Address width
  parameter int unsigned addr_width = 16,
  // Debug level
  parameter logic [3:0] debug_level = 4'b0000
)(
  // Clock
  input logic clk_p,
  input logic clk_n,
  // Reset
  input logic rst_n,
  // User / External Inputs
  input logic [data_width-1:0] data_in,
  input logic [addr_width-1:0] addr_in,
  // User / External Outputs
  output logic [data_width-1:0] data_out,
  output logic                  valid_out
);

  timeunit 1ns;
  timeprecision 1ps;

  // RTL

endmodule
