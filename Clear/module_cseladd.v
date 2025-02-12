module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire [15:0] sum_a, sum_b, sum_c;
wire cout_a;

// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
add16 u_add16_a ( .a(a[15: 0]), .b(b[15: 0]), .cin(1'b0), .sum(sum_a), .cout(cout_a) );
add16 u_add16_b ( .a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum_b), .cout() );
add16 u_add16_c ( .a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sum_c), .cout() );

assign sum = cout_a ? {sum_c, sum_a} : {sum_b, sum_a};

endmodule
