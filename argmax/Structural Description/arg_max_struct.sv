module arg_max_struct(
    input logic [7:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9,
    //input logic [3:0] i0, i1, i2, i3, i4, i5, i6, i7, i8, i9,
    output logic [3:0] ind_max, 
    output logic [7:0] max_num
    );
    
    //i0 = 4'b0000;
    
    logic l11, l12, l13, l14, l15, l21, l22, l31, l41;
    logic [3:0] ind11, ind12, ind13, ind14, ind15, ind21, ind22, ind31;
    logic [7:0] res11, res12, res13, res14, res15, res21, res22, res31;
    
    cmp cmp11 (.num0(x0), .num1(x1), .res(res11), .lower (l11));
    cmp cmp12 (.num0(x2), .num1(x3), .res(res12), .lower (l12));
    cmp cmp13 (.num0(x4), .num1(x5), .res(res13), .lower (l13));
    cmp cmp14 (.num0(x6), .num1(x7), .res(res14), .lower (l14));
    cmp cmp15 (.num0(x8), .num1(x9), .res(res15), .lower (l15));
    mux2 mux11 (.a(4'b0000), .b(4'b0001), .adr(l11), .y(ind11));
    mux2 mux12 (.a(4'b0010), .b(4'b0011), .adr(l12), .y(ind12));
    mux2 mux13 (.a(4'b0100), .b(4'b0101), .adr(l13), .y(ind13));
    mux2 mux14 (.a(4'b0110), .b(4'b0111), .adr(l14), .y(ind14));
    mux2 mux15 (.a(4'b1000), .b(4'b1001), .adr(l15), .y(ind15));
    
    cmp cmp21 (.num0(res11), .num1(res12), .res(res21), .lower (l21));
    cmp cmp22 (.num0(res13), .num1(res14), .res(res22), .lower (l22));
    mux2 mux21 (.a(ind11), .b(ind12), .adr(l21), .y(ind21));
    mux2 mux22 (.a(ind13), .b(ind14), .adr(l22), .y(ind22));
    
    cmp cmp31 (.num0(res21), .num1(res22), .res(res31), .lower (l31));
    mux2 mux31 (.a(ind21), .b(ind22), .adr(l31), .y(ind31));
    
    cmp cmp41 (.num0(res31), .num1(res15), .res(max_num), .lower (l41));
    mux2 mux41 (.a(ind31), .b(ind15), .adr(l41), .y(ind_max));
    
endmodule