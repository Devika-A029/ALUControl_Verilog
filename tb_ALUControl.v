
// Testbench

module tb_ALUControl;

reg [1:0] ALUOp;
wire ADD_EN, SUB_EN, AND_EN, OR_EN;

// Instantiate the module
ALUControl uut (
    .ALUOp(ALUOp),
    .ADD_EN(ADD_EN),
    .SUB_EN(SUB_EN),
    .AND_EN(AND_EN),
    .OR_EN(OR_EN)
);

initial begin
    $display("Time\tALUOp\tADD_EN\tSUB_EN\tAND_EN\tOR_EN");
    $monitor("%0dns\t%b\t%b\t%b\t%b\t%b", $time, ALUOp, ADD_EN, SUB_EN, AND_EN, OR_EN);

    ALUOp = 2'b00; #10; 
    ALUOp = 2'b01; #10; 
    ALUOp = 2'b10; #10; 
    ALUOp = 2'b11; #10; 

    $finish;
end

endmodule