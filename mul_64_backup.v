//module declaration
module mul_64(a,b,result);
//port declaration
input [63:0]a,b;
output [127:0]result;
//internal wire
wire[127:0]result;
wire[63:0]temp1;
wire[63:0]temp2;
wire[63:0]temp3;
wire[63:0]temp4;
wire[63:32]temp5;
wire cin,cout;
//gate instantiation
vedic32x32 s1([31:0]a,[31:0]b,[63:0]temp1);
assign [31:0]result=[31:0]temp1;
vedic32x32 s2([31:0]a,[63:32]b,[63:0]temp2);
vedic32x32 s3([63:32]a,[31:0]b,[63:0]temp3);
vedic32x32 s4([63:32]a,[63:32]b,[63:0]temp4);
ksa64x64 s5([63:0]temp2,[63:0]temp3,[63:32]result,[63:32]temp1,[63:32]temp5);
ksa64x64 s6([63:0]temp4,[63:32]temp5,[127:64]result,cin,cout]
//end module declaration
endmodule
