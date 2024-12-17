module top_module( 
    input  [31:0] in,
    output [31:0] out
);
    wire [7:0] byte_a;
    wire [7:0] byte_b;
    wire [7:0] byte_c;
    wire [7:0] byte_d;

    assign byte_d = in[ 7: 0];
    assign byte_c = in[15: 8];
    assign byte_b = in[23:16];
    assign byte_a = in[31:24];
    assign out    = {byte_d, byte_c, byte_b, byte_a};

endmodule