module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y
);
    wire w_and_1, w_and_2;
    wire w_tri_and_1, w_tri_and_2;
    wire w_or_1, w_or_2;

    assign w_and_1 = p2a & p2b;
    assign w_and_2 = p2c & p2d;
    assign w_or_1 = w_and_1 | w_and_2;
    assign p2y = w_or_1;

    assign w_tri_and_1 = p1a & p1b & p1c;
    assign w_tri_and_2 = p1d & p1e & p1f;
    assign w_or_2 = w_tri_and_1 | w_tri_and_2;
    assign p1y = w_or_2;
endmodule