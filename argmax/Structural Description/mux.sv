`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 02:27:36
// Design Name: 
// Module Name: mux
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


module mux(
    input logic a, b, adr,
    output y
    );
    
    logic n_adr, y1, y2;
    
    and g1 (y1, a, n_adr);
    and g2 (y2, b, adr);
    or g3 (y, y1, y2);
    not g4 (n_adr, adr);
endmodule
