`timescale 1ns / 1ps

module Adder_to_FND_by_decoder(
    input [3:0] i_a, i_b,
    input [1:0] i_disit_select,
    input i_enable, i_mode,
    output [7:0] o_font,
    output [3:0] o_disit
    );
    wire [3:0] w_sum;

    BCD_to_FND BCD_to_FND(
        .i_disit_select(i_disit_select),
        .i_value(w_sum),
        .i_enable(i_enable),
        .o_disit(o_disit),
        .o_font(o_font)
    );

    Sub_adder_4bit Sub_adder_4bit(
        .i_a(i_a),
        .i_b(i_b),
        .i_mode(i_mode),
        .o_sum(w_sum),
        .o_carry(o_carry)
    );

endmodule

