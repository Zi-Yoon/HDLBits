module top_module ( input clk, input d, output q );

wire w_dif1;
wire w_dif2;
wire w_dif3;

    my_dff U_dff_1 ( .clk(clk), .d(     d), .q(w_dif1) );
    my_dff U_dff_2 ( .clk(clk), .d(w_dif1), .q(w_dif2) );
    my_dff U_dff_3 ( .clk(clk), .d(w_dif2), .q(w_dif3) );

assign q = w_dif3;

endmodule
