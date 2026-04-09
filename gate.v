module gate(
    input A, B, C, D,
    output reg Y 
);
    always @(*) begin
        Y = (~(A | B)) ^ (C & D);
    end
endmodule