`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2025 04:05:52
// Design Name: 
// Module Name: arg_max_behav
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

module arg_max_behav   
    (input logic [8-1:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9,
     output logic [3:0] ind_max, 
     output logic [8-1:0] max_num
    );
                     
    // Internal signal              
    logic [8 - 1 : 0] arr_num [0 : 10 - 1]; 
                 
    always_comb begin
        arr_num[0] = x0; 
        arr_num[1] = x1;
        arr_num[2] = x2; 
        arr_num[3] = x3;
        arr_num[4] = x4; 
        arr_num[5] = x5;
        arr_num[6] = x6; 
        arr_num[7] = x7; 
        arr_num[8] = x8; 
        arr_num[9] = x9; 
        
        max_num = x0;
        ind_max = 0;
        
        for (int i = 1; i < 10; i++) begin
            if (unsigned'(arr_num[i]) > unsigned'(max_num)) begin
                max_num  = arr_num[i];
                ind_max = i;
            end
        end
    end
endmodule
