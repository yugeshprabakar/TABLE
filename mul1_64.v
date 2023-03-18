//module declaration
module mul1_64(a,b,result);
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

//gate instantiation
ve32 s1(a[31:0],b[31:0],temp1[63:0]);
assign result[31:0]= temp1[31:0];
ve32 s2(a[31:0],b[63:32],temp2[63:0]);
ve32 s3(a[63:32],b[31:0],temp3[63:0]);
ve32 s4(a[63:32],b[63:32],temp4[63:0]);
csa1 s5(temp2[63:0],temp3[63:0],{temp1[63:32],32'b00000000000000000000000000000000},temp5[63:0]);
//csa1 s5(temp2[63:0],temp3[63:0],{32'b00000000000000000000000000000000,temp1[63:32]},temp5[63:0]);

assign result[63:32]=temp5[31:0];
csa1 s6(temp4[63:0],{32'b00000000000000000000000000000000,temp5[63:32]},64'b00000000000000000000000000000000000000000000000000000000000000,result[127:64]);
//end module declaration
endmodule
