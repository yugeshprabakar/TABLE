//module declaration
module csa1 (A, B, C, S);
//port declaration
input [63:0] A, B, C;
output [63:0] S;
//internal wire
wire [64:0] X, Y, Z;
//gate instantiation
assign X = {1'b0, A};
assign Y = {1'b0, B};
assign Z = {1'b0, C};

// Generate the Carry
wire [64:0] G;
assign G = X & Y | X & Z | Y & Z;

// Generate the Propagate
wire [64:0] P;
assign P = X ^ Y ^ Z;

// Calculate the Sum
wire [64:0] S_65;
assign S_65 = {G[64], P} + X + Y + Z;

assign S = S_65[63:0];
//end module declaration
endmodule

