`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2025 08:29:44
// Design Name: 
// Module Name: cmp
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


module cmp(
    input logic [7:0] num0, num1,
    output logic [7:0] res,
    output logic lower
    );
    
    always @(num0, num1)    // triggers whenever any of the signals in the sensitivity list (*) changes
    begin
    lower = (num0 < num1);  
    
    if (lower == 0)
        res[7:0] = num0[7:0];
    else
        res[7:0] = num1[7:0];
    end    
    
endmodule
