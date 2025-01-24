module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire w_cout;
    add16    U_add16_0 (.a(a[15: 0]), .b(b[15: 0]), .cin(  1'b0), .cout(w_cout), .sum(sum[15:0]));
    add16    U_add16_1 (.a(a[31:16]), .b(b[31:16]), .cin(w_cout), .cout(), .sum(sum[31:16]));

endmodule

module add16_my (
    input [15:0] a,
    input [15:0] b,
    input        cin,
    output       cout,
    output [15:0] sum
);
    wire w_cout[0:15];

    generate
        genvar i;
        for (i = 0; i < 16; i = i + 1) begin : gen_add1
            if (i == 0)
                add1 add1_inst (.a(a[i]), .b(b[i]), .cin(1'b0), .sum(sum[i]), .cout(w_cout[i]));
            else
                add1 add1_inst (.a(a[i]), .b(b[i]), .cin(w_cout[i-1]), .sum(sum[i]), .cout(w_cout[i]));
        end
    endgenerate

    assign cout = w_cout[15];

endmodule

module add1 (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum  = (a ^ b) ^ cin;
    assign cout = (a & b) | ((a ^ b) & cin);
endmodule
