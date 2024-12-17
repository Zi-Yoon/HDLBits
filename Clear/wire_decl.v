`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n
); 
    wire w_and1;
    wire w_and2;
    wire w_or1;
    assign w_and1 = a & b;
    assign w_and2 = c & d;
    assign w_or1  = w_and1 | w_and2;
    assign out    = w_or1;
    assign out_n  = ~w_or1;
endmodule