module top_module ( 
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);

    wire [7:0] w_dff_1, w_dff_2, w_dff_3;

    my_dff8 U_dff_1 (.clk(clk), .d(      d), .q(w_dff_1));
    my_dff8 U_dff_2 (.clk(clk), .d(w_dff_1), .q(w_dff_2));
    my_dff8 U_dff_3 (.clk(clk), .d(w_dff_2), .q(w_dff_3));

    always @(*) begin
        case(sel)
            2'b00: q = d;
            2'b01: q = w_dff_1;
            2'b10: q = w_dff_2;
            2'b11: q = w_dff_3;
        endcase
    end

endmodule
