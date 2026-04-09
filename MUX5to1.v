module MUX5to1(
    input [2:0] S,        
    input [1:0] U, V, W, X, Y, 
    output reg [1:0] M    
);
    always @(*) begin
        case(S)
            3'b000: M = U;
            3'b001: M = V;
            3'b010: M = W;
            3'b011: M = X;
            3'b100: M = Y;
           
            default: M = U; 
        endcase
    end
endmodule