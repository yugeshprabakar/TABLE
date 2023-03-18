//module declaration
module vedic32x32(a,b,result);
//port declaration
input[31:0]a,b;
output[63:0]result;
//internal wire
wire[63:0]result;
wire[31:0]temp1;
wire[31:0]temp2;
wire[31:0]temp3;
wire[33:0]temp4;
wire[33:0]temp5;
wire[31:0]temp6;
wire[31:0]temp7;
//gate instantiation
vedic16x16 r1(a[15:0],b[15:0],temp1);
assign result[15:0]=temp1[15:0];
vedic16x16 r2(a[31:16],b[15:0],temp2);
vedic16x16 r3(a[15:0],b[31:16],temp3);
adder34 e1({2'b00,temp2},{2'b00,temp3},temp4);
adder34 e2(temp4,{18'b000000000000000000,temp1[31:16]},temp5);
assign result[31:16]=temp5[15:0];
vedic16x16 r4(a[31:16],b[31:16],temp6);
adder32 e3(temp6,{16'b0000000000000000,temp5[31:16]},temp7);
assign result[63:32]=temp7;
//endmodule
endmodule



//module declaration
module vedic16x16(a,b,result);
//port declaration
input[15:0]a,b;
output[31:0]result;
//internal wire
wire[31:0]result;
wire[15:0]temp1;
wire[15:0]temp2;
wire[15:0]temp3;
wire[17:0]temp4;
wire[17:0]temp5;
wire[15:0]temp6;
wire[15:0]temp7;
//gate instantiation
vedic8x8 n1(a[7:0],b[7:0],temp1);
assign result[7:0]=temp1[7:0];
vedic8x8 n2(a[15:8],b[7:0],temp2);
vedic8x8 n3(a[7:0],b[15:8],temp3);
adder18 q1({2'b00,temp2},{2'b00,temp3},temp4);
adder18 q2(temp4,{10'b0000000000,temp1[15:8]},temp5);
assign result[15:8]=temp5[7:0];
vedic8x8 n4(a[15:8],b[15:8],temp6);
adder16 q3(temp6,{8'b00000000,temp5[15:8]},temp7);
assign result[31:16]=temp7;
//endmodule
endmodule



//module declaration
module vedic8x8(a, b, result);
//port declaration
input  [7:0] a,b;
output [15:0] result;
//internalwire
wire [15:0] result;
wire [7:0] temp1;
wire [7:0] temp2;
wire [7:0] temp3;
wire [9:0] temp4;
wire [9:0] temp5;
wire [7:0] temp6;
wire [7:0] temp7;
//gate instantiation
vedic4x4 M1(a[3:0], b[3:0], temp1);
assign result[3:0] = temp1[3:0];
vedic4x4 M2(a[7:4], b[3:0], temp2);
vedic4x4 M3(a[3:0], b[7:4], temp3);
adder10 A1({2'b00, temp2}, {2'b00,temp3}, temp4);
adder10 A2(temp4, {6'b000000, temp1[7:4]}, temp5);
assign result[7:4] = temp5[3:0];
vedic4x4 M4(a[7:4], b[7:4], temp6);
adder8 A3(temp6, {2'b00,temp5[9:4]}, temp7);
assign result[15:8] = temp7;
//end module declaration
endmodule






//module declaration
module vedic4x4(a, b, result);
//port declaration
input  [3:0] a,b;
output [7:0] result;
//internal wire
wire [7:0] result;
wire [3:0] temp1;
wire [3:0] temp2;
wire [3:0] temp3;
wire [5:0] temp4;
wire [5:0] temp5;
wire [3:0] temp6;
wire [3:0] temp7;
wire [5:0] w1;
//gate instantiation
vedic2x2 V1(a[1:0], b[1:0], temp1);
assign result[1:0] = temp1[1:0];
vedic2x2 V2(a[3:2], b[1:0], temp2);
vedic2x2 V3(a[1:0], b[3:2], temp3);
assign w1 = {4'b0000, temp1[3:2]};
adder6 A1({2'b00, temp3}, {2'b00, temp2}, temp4);
adder6 A2(temp4, w1, temp5);
assign result[3:2] = temp5[1:0];
vedic2x2 V4(a[3:2], b[3:2], temp6);
adder4 A3(temp6, temp5[5:2], temp7);
assign result[7:4] = temp7;
//end module declaration
endmodule



//module declaration
module vedic2x2(a,b,y);
//port declaration
input [1:0] a,b;
output [3:0] y;
//internal wire
wire [3:0] w;
//gate instantiation    
assign y[0]= a[0]&b[0];
assign w[0]= a[1]&b[0];
assign w[1]= a[0]&b[1];
assign w[2]= a[1]&b[1];
halfAdder h0(w[0], w[1], y[1], w[3]);
halfAdder h1(w[2], w[3], y[2], y[3]);    
//end module declaration    
endmodule


//module declaration
module halfAdder(a,b,sum,carry);
//port declaration
input a,b;
output sum, carry;
//gate instantiation
assign sum   = a ^ b;
assign carry = a & b;
//end module declaration
endmodule


//module declaration
module adder4(a,b,sum);
//port declaration
input [3:0] a,b;
output [3:0] sum;
wire [3:0] sum;
//gate instantiation
assign sum = a + b;
//end module declaration
endmodule


//module declaration
module adder6(a,b,sum);
//port declaration
input [5:0] a,b;
output [5:0] sum;
wire [5:0] sum;
//gate instantiation
assign sum = a + b;
//end module declaration
endmodule


//module declaration
module adder8(a,b,sum);
//port declaration
input [7:0] a,b;
output [7:0] sum;
wire [7:0] sum;
//gate instantiation
assign sum = a + b;
//endmodule declaration
endmodule


//module declaration
module adder10(a,b,sum);
//port declaration
input [9:0] a,b;
output [9:0] sum;
wire [9:0] sum;
//gate instantiation
assign sum = a + b;
//endmodule declaration
endmodule


//module declaration
module adder18(a,b,sum);
//port declaration
input [17:0] a,b;
output [17:0] sum;
wire [17:0] sum;
//gate instantiation
assign sum = a + b;
//endmodule declaration
endmodule


//module declaration
module adder16(a,b,sum);
//port declaration
input [15:0] a,b;
output [15:0] sum;
wire [15:0] sum;
//gate instantiation
assign sum = a + b;
//endmodule declaration
endmodule


//module declaration
module adder34(a,b,sum);
//port declaration
input [33:0] a,b;
output [33:0] sum;
wire [33:0] sum;
//gate instantiation
assign sum = a + b;
//endmodule declaration
endmodule


//module declaration
module adder32(a,b,sum);
//port declaration
input [31:0] a,b;
output [31:0] sum;
wire [31:0] sum;
//gate instantiation
assign sum = a + b;
//endmodule declaration
endmodule

