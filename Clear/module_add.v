module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w_cout_0;
    wire [15:0] a0, a1, b0, b1, sum0, sum1;

    assign a0 = a[15: 0];
    assign a1 = a[31:16];
    assign b0 = b[15: 0];
    assign b1 = b[31:16];

    add16 U_add16_0 (.a(a0), .b(b0), .cin(0), .cout(w_cout_0), .sum(sum0));
    add16 U_add16_1 (.a(a1), .b(b1), .cin(w_cout_0), .cout( ), .sum(sum1));

    assign sum = {sum1, sum0};

endmodule