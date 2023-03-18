//module declaration
module ve32(a, b, p);
//port declaration
  input [31:0] a, b;
  output [63:0] p;
//internal wire
  wire [31:0] a_0, a_1, a_2, a_3, b_0, b_1, b_2, b_3;
  wire [63:0] p_0, p_1, p_2, p_3, p_4, p_5, p_6;
//gate instantiation
  assign p = {p_6, p_5, p_4, p_3, p_2, p_1, p_0};

  // Split a and b into four 8-bit chunks
  assign {a_3, a_2, a_1, a_0} = {a[31:24], a[23:16], a[15:8], a[7:0]};
  assign {b_3, b_2, b_1, b_0} = {b[31:24], b[23:16], b[15:8], b[7:0]};

  // Compute intermediate products using vertical and crosswise multiplication
  // p_0 = a_0 * b_0
  assign p_0 = a_0 * b_0;
  // p_1 = a_0 * b_1 + a_1 * b_0
  assign p_1 = a_0 * b_1 + a_1 * b_0;
  // p_2 = a_0 * b_2 + a_1 * b_1 + a_2 * b_0
  assign p_2 = a_0 * b_2 + a_1 * b_1 + a_2 * b_0;
  // p_3 = a_0 * b_3 + a_1 * b_2 + a_2 * b_1 + a_3 * b_0
  assign p_3 = a_0 * b_3 + a_1 * b_2 + a_2 * b_1 + a_3 * b_0;
  // p_4 = a_1 * b_3 + a_2 * b_2 + a_3 * b_1
  assign p_4 = a_1 * b_3 + a_2 * b_2 + a_3 * b_1;
  // p_5 = a_2 * b_3 + a_3 * b_2
  assign p_5 = a_2 * b_3 + a_3 * b_2;
  // p_6 = a_3 * b_3
  assign p_6 = a_3 * b_3;
endmodule

