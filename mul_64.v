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
wire[63:0]temp5;
wire cout;

//gate instantiation
vedic32x32 s1(a[31:0],b[31:0],temp1[63:0]);
assign result[31:0]= temp1[31:0];
vedic32x32 s2(a[31:0],b[63:32],temp2[63:0]);
vedic32x32 s3(a[63:32],b[31:0],temp3[63:0]);
vedic32x32 s4(a[63:32],b[63:32],temp4[63:0]);
ksa64x64 s5(temp2[63:0],temp3[63:0],temp5[63:0],temp1[63:32],cout);
assign result[63:32]=temp5[31:0];
ksa64x64 s6(temp4[63:0],{32'b00000000000000000000000000000000,temp5[63:32]},result[127:64],0,cout);
//end module declaration
endmodule
