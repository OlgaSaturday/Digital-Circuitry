`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2025 08:29:44
// Design Name: 
// Module Name: mux2
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


module mux2(
    input logic [3:0] a, b,
    input logic adr,
    output logic [3:0] y
    );
    
    mux mux_0 (.a(a[0]), .b(b[0]), .adr(adr), .y(y[0]));
    mux mux_1 (.a(a[1]), .b(b[1]), .adr(adr), .y(y[1]));
    mux mux_2 (.a(a[2]), .b(b[2]), .adr(adr), .y(y[2]));
    mux mux_3 (.a(a[3]), .b(b[3]), .adr(adr), .y(y[3]));
endmodule
