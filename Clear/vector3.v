module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z
);

    wire [31:0] full_32 = {a, b, c, d, e, f, 2'b11};

    assign w = full_32[31:24];
    assign x = full_32[23:16];
    assign y = full_32[15: 8];
    assign z = full_32[ 7: 0];

endmodule