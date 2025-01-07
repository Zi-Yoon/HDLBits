module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    wire [4:0] w_abcde = {a, b, c, d, e};

    wire [4:0] w_xnor_a = ~{5{a}} ^ w_abcde;
    wire [4:0] w_xnor_b = ~{5{b}} ^ w_abcde;
    wire [4:0] w_xnor_c = ~{5{c}} ^ w_abcde;
    wire [4:0] w_xnor_d = ~{5{d}} ^ w_abcde;
    wire [4:0] w_xnor_e = ~{5{e}} ^ w_abcde;

    assign out = {w_xnor_a, w_xnor_b, w_xnor_c, w_xnor_d, w_xnor_e};

endmodule