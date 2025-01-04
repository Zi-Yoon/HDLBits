module top_module( 
    input  [7:0] in,
    output [7:0] out
);

    // assign out = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};

    /* 
    always @(*) begin
        for (integer i = 0; i < 8; i = i + 1) begin
            out[i] = in[7-i];
        end
    end
    */

    generate;
        genvar i;
        for (i = 0; i < 8; i = i + 1) begin : gen_block
            assign out[i] = in[7-i];
        end
    endgenerate

endmodule
