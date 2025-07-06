
`timescale 1ns / 1ps

// ALU Control Module
module ALUControl (
    input wire [1:0] ALUOp,
    output wire ADD_EN,
    output wire SUB_EN,
    output wire AND_EN,
    output wire OR_EN
);

assign ADD_EN = ~ALUOp[1] & ~ALUOp[0];
assign SUB_EN = ~ALUOp[1] & ALUOp[0];
assign AND_EN = ALUOp[1] & ~ALUOp[0];
assign OR_EN  = ALUOp[1] & ALUOp[0];

endmodule