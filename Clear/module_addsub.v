module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

wire [15:0] sum_a, sum_b;
wire [31:0] xor_b;
wire cout_a;

assign xor_b = sub ? ~b : b;

add16 u_add16_a ( .a(a[15: 0]), .b(xor_b[15: 0]), .cin(sub   ), .sum(sum_a), .cout(cout_a) );
add16 u_add16_b ( .a(a[31:16]), .b(xor_b[31:16]), .cin(cout_a), .sum(sum_b), .cout(      ) );

assign sum = {sum_b, sum_a};

endmodule
