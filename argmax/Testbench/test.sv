`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 03:59:42
// Design Name: 
// Module Name: test
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


 
module testbench;
    logic [7:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, max_num;
    logic [3:0] ind_max;
 
    // создание экземпляра 
    arg_max_struct DUT(.x0(x0), .x1(x1), .x2(x2), .x3(x3), .x4(x4), .x5(x5), .x6(x6), .x7(x7), .x8(x8), .x9(x9), .ind_max(ind_max), .max_num(max_num)); 
//    arg_max_behav DUT(.x0(x0), .x1(x1), .x2(x2), .x3(x3), .x4(x4), .x5(x5), .x6(x6), .x7(x7), .x8(x8), .x9(x9), .ind_max(ind_max), .max_num(max_num));
    
    initial begin 
//    $printtimescale(testbench); 
//    for (int i=0; i<3; i++) begin 
//        $display("Iteration %2d", i[1:0]); 
//        x0 = $random(); 
//        x1 = $random(); 
//        x2 = $random(); 
//        x3 = $random(); 
//        x4 = $random(); 
//        x5 = $random(); 
//        x6 = $random(); 
//        x7 = $random(); 
//        x8 = $random(); 
//        x9 = $random(); 
//        #10; 
//    end  
//    $display("Test passed!"); 
//    $stop; 

        x0 = 8'b0000_0001; 
        x1 = 8'b1000_1111; 
        x2 = 8'b0100_1001; 
        x3 = 8'b0000_1001; 
        x4 = 8'b1000_1111; 
        x5 = 8'b0100_1001; 
        x6 = 8'b1111_0001; 
        x7 = 8'b1001_1111; 
        x8 = 8'b0110_1001; 
        x9 = 8'b0100_1101; 
        #10; // задержка 10 нс
        
        x0 = 8'b0000_0101; 
        x1 = 8'b1000_1011; 
        x2 = 8'b1100_0001; 
        x3 = 8'b0001_1000; 
        x4 = 8'b0001_0110; 
        x5 = 8'b0100_1101; 
        x6 = 8'b0110_0001; 
        x7 = 8'b1001_1001; 
        x8 = 8'b1000_1011; 
        x9 = 8'b0100_1001; 
        #10; // задержка 10 нс
        
        x0 = 8'b1011_0101; 
        x1 = 8'b1000_1101; 
        x2 = 8'b0100_1101; 
        x3 = 8'b0000_1111; 
        x4 = 8'b1000_1110; 
        x5 = 8'b0100_1010; 
        x6 = 8'b0000_0011; 
        x7 = 8'b1001_1110; 
        x8 = 8'b0110_0110; 
        x9 = 8'b0110_1101; 
        #10; // задержка 10 нс
        
        x0 = 8'b0000_0001; 
        x1 = 8'b0000_1100; 
        x2 = 8'b0000_1010; 
        x3 = 8'b0000_1101; 
        x4 = 8'b0000_1101; 
        x5 = 8'b0000_1010; 
        x6 = 8'b0000_0101; 
        x7 = 8'b0000_0100; 
        x8 = 8'b0000_0011; 
        x9 = 8'b0100_1101; 
        #10; // задержка 10 нс

end 
endmodule