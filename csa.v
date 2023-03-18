//module declaration
module csa(x,y,cin,sum,cout);
//port declaration
input [63:0] x,y,cin;
output [63:0] sum;
output cout;
//internal wire declaration            
wire [63:0] c1,s1,c2;
wire cout1;
//gate instantiation
fulladder fa1(x[0],y[0],cin[0],s1[0],c1[0]);
fulladder fa2(x[1],y[1],cin[1],s1[1],c1[1]);
fulladder fa3(x[2],y[2],cin[2],s1[2],c1[2]);
fulladder fa4(x[3],y[3],cin[3],s1[3],c1[3]); 
fulladder fa5(x[4],y[4],cin[4],s1[4],c1[4]);
fulladder fa6(x[5],y[5],cin[5],s1[5],c1[5]);
fulladder fa7(x[6],y[6],cin[6],s1[6],c1[6]);
fulladder fa8(x[7],y[7],cin[7],s1[7],c1[7]);
fulladder fa9(x[8],y[8],cin[8],s1[8],c1[8]);
fulladder fa10(x[9],y[9],cin[9],s1[9],c1[9]);
fulladder fa11(x[10],y[10],cin[10],s1[10],c1[10]);
fulladder fa12(x[11],y[11],cin[11],s1[11],c1[11]);
fulladder fa13(x[12],y[12],cin[12],s1[12],c1[12]);
fulladder fa14(x[13],y[13],cin[13],s1[13],c1[13]);
fulladder fa15(x[14],y[14],cin[14],s1[14],c1[14]);
fulladder fa16(x[15],y[15],cin[15],s1[15],c1[15]);
fulladder fa17(x[16],y[16],cin[16],s1[16],c1[16]);
fulladder fa18(x[17],y[17],cin[17],s1[17],c1[17]);
fulladder fa19(x[18],y[18],cin[18],s1[18],c1[18]);
fulladder fa20(x[19],y[19],cin[19],s1[19],c1[19]);
fulladder fa21(x[20],y[20],cin[20],s1[20],c1[20]);
fulladder fa22(x[21],y[21],cin[21],s1[21],c1[21]);
fulladder fa23(x[22],y[22],cin[22],s1[22],c1[22]);
fulladder fa24(x[23],y[23],cin[23],s1[23],c1[23]);
fulladder fa25(x[24],y[24],cin[24],s1[24],c1[24]);
fulladder fa26(x[25],y[25],cin[25],s1[25],c1[25]);
fulladder fa27(x[26],y[26],cin[26],s1[26],c1[26]);
fulladder fa28(x[27],y[27],cin[27],s1[27],c1[27]);
fulladder fa29(x[28],y[28],cin[28],s1[28],c1[28]);
fulladder fa30(x[29],y[29],cin[29],s1[29],c1[29]);
fulladder fa31(x[30],y[30],cin[30],s1[30],c1[30]);
fulladder fa32(x[31],y[31],cin[31],s1[31],c1[31]);
fulladder fa33(x[32],y[32],cin[32],s1[32],c1[32]);
fulladder fa34(x[33],y[33],cin[33],s1[33],c1[33]);
fulladder fa35(x[34],y[34],cin[34],s1[34],c1[34]);
fulladder fa36(x[35],y[35],cin[35],s1[35],c1[35]);
fulladder fa37(x[36],y[36],cin[36],s1[36],c1[36]);
fulladder fa38(x[37],y[37],cin[37],s1[37],c1[37]);
fulladder fa39(x[38],y[38],cin[38],s1[38],c1[38]);
fulladder fa40(x[39],y[39],cin[39],s1[39],c1[39]);
fulladder fa41(x[40],y[40],cin[40],s1[40],c1[40]);
fulladder fa42(x[41],y[41],cin[41],s1[41],c1[41]);
fulladder fa43(x[42],y[42],cin[42],s1[42],c1[42]);
fulladder fa44(x[43],y[43],cin[43],s1[43],c1[43]);
fulladder fa45(x[44],y[44],cin[44],s1[44],c1[44]);
fulladder fa46(x[45],y[45],cin[45],s1[45],c1[45]);
fulladder fa47(x[46],y[46],cin[46],s1[46],c1[46]);
fulladder fa48(x[47],y[47],cin[47],s1[47],c1[47]);
fulladder fa49(x[48],y[48],cin[48],s1[48],c1[48]);
fulladder fa50(x[49],y[49],cin[49],s1[49],c1[49]);
fulladder fa51(x[50],y[50],cin[50],s1[50],c1[50]);
fulladder fa52(x[51],y[51],cin[51],s1[51],c1[51]);
fulladder fa53(x[52],y[52],cin[52],s1[52],c1[52]);
fulladder fa54(x[53],y[53],cin[53],s1[53],c1[53]);
fulladder fa55(x[54],y[54],cin[54],s1[54],c1[54]);
fulladder fa56(x[55],y[55],cin[55],s1[55],c1[55]);
fulladder fa57(x[56],y[56],cin[56],s1[56],c1[56]);
fulladder fa58(x[57],y[57],cin[57],s1[57],c1[57]);
fulladder fa59(x[58],y[58],cin[58],s1[58],c1[58]);
fulladder fa60(x[59],y[59],cin[59],s1[59],c1[59]);
fulladder fa61(x[60],y[60],cin[60],s1[60],c1[60]);
fulladder fa62(x[61],y[61],cin[61],s1[61],c1[61]);
fulladder fa63(x[62],y[62],cin[62],s1[62],c1[62]);
fulladder fa64(x[63],y[63],cin[63],s1[63],c1[63]);

//level2
assign c2[0]=1'b0;
fulladder f1(s1[1],c1[0],c2[0],sum[1],c2[1]);
fulladder f2(s1[2],c1[1],c2[1],sum[2],c2[2]);
fulladder f3(s1[3],c1[2],c2[2],sum[3],c2[3]);
fulladder f4(s1[4],c1[3],c2[3],sum[4],c2[4]); 
fulladder f5(s1[5],c1[4],c2[4],sum[5],c2[5]);
fulladder f6(s1[6],c1[5],c2[5],sum[6],c2[6]);
fulladder f7(s1[7],c1[6],c2[6],sum[7],c2[7]);
fulladder f8(s1[8],c1[7],c2[7],sum[8],c2[8]); 
fulladder f9(s1[9],c1[8],c2[8],sum[9],c2[9]);
fulladder f10(s1[10],c1[9],c2[9],sum[10],c2[10]);
fulladder f11(s1[11],c1[10],c2[10],sum[11],c2[11]);
fulladder f12(s1[12],c1[11],c2[11],sum[12],c2[12]); 
fulladder f13(s1[13],c1[12],c2[12],sum[13],c2[13]);
fulladder f14(s1[14],c1[13],c2[13],sum[14],c2[14]);
fulladder f15(s1[15],c1[14],c2[14],sum[15],c2[15]);
fulladder f16(s1[16],c1[15],c2[15],sum[16],c2[16]); 
fulladder f17(s1[17],c1[16],c2[16],sum[17],c2[17]);
fulladder f18(s1[18],c1[17],c2[17],sum[18],c2[18]);
fulladder f19(s1[19],c1[18],c2[18],sum[19],c2[19]);
fulladder f20(s1[20],c1[19],c2[19],sum[20],c2[20]); 
fulladder f21(s1[21],c1[20],c2[20],sum[21],c2[21]);
fulladder f22(s1[22],c1[21],c2[21],sum[22],c2[22]);
fulladder f23(s1[23],c1[22],c2[22],sum[23],c2[23]);
fulladder f24(s1[24],c1[23],c2[23],sum[24],c2[24]); 
fulladder f25(s1[25],c1[24],c2[24],sum[25],c2[25]);
fulladder f26(s1[26],c1[25],c2[25],sum[26],c2[26]);
fulladder f27(s1[27],c1[26],c2[26],sum[27],c2[27]);
fulladder f28(s1[28],c1[27],c2[27],sum[28],c2[28]); 
fulladder f29(s1[29],c1[28],c2[28],sum[29],c2[29]);
fulladder f30(s1[30],c1[29],c2[29],sum[30],c2[30]);
fulladder f31(s1[31],c1[30],c2[30],sum[31],c2[31]);
fulladder f32(s1[32],c1[31],c2[31],sum[32],c2[32]); 
fulladder f33(s1[33],c1[32],c2[32],sum[33],c2[33]);
fulladder f34(s1[34],c1[33],c2[33],sum[34],c2[34]);
fulladder f35(s1[35],c1[34],c2[34],sum[35],c2[35]);
fulladder f36(s1[36],c1[35],c2[35],sum[36],c2[36]); 
fulladder f37(s1[37],c1[36],c2[36],sum[37],c2[37]);
fulladder f38(s1[38],c1[37],c2[37],sum[38],c2[38]);
fulladder f39(s1[39],c1[38],c2[38],sum[39],c2[39]);
fulladder f40(s1[40],c1[39],c2[39],sum[40],c2[40]); 
fulladder f41(s1[41],c1[40],c2[40],sum[41],c2[41]);
fulladder f42(s1[42],c1[41],c2[41],sum[42],c2[42]);
fulladder f43(s1[43],c1[42],c2[42],sum[43],c2[43]);
fulladder f44(s1[44],c1[43],c2[43],sum[44],c2[44]); 
fulladder f45(s1[45],c1[44],c2[44],sum[45],c2[45]);
fulladder f46(s1[46],c1[45],c2[45],sum[46],c2[46]);
fulladder f47(s1[47],c1[46],c2[46],sum[47],c2[47]);
fulladder f48(s1[48],c1[47],c2[47],sum[48],c2[48]); 
fulladder f49(s1[49],c1[48],c2[48],sum[49],c2[49]);
fulladder f50(s1[50],c1[49],c2[49],sum[50],c2[50]);
fulladder f51(s1[51],c1[50],c2[50],sum[51],c2[51]);
fulladder f52(s1[52],c1[51],c2[51],sum[52],c2[52]); 
fulladder f53(s1[53],c1[52],c2[52],sum[53],c2[53]);
fulladder f54(s1[54],c1[53],c2[53],sum[54],c2[54]);
fulladder f55(s1[55],c1[54],c2[54],sum[55],c2[55]);
fulladder f56(s1[56],c1[55],c2[55],sum[56],c2[56]); 
fulladder f57(s1[57],c1[56],c2[56],sum[57],c2[57]);
fulladder f58(s1[58],c1[57],c2[57],sum[58],c2[58]);
fulladder f59(s1[59],c1[58],c2[58],sum[59],c2[59]);
fulladder f60(s1[60],c1[59],c2[59],sum[60],c2[60]); 
fulladder f61(s1[61],c1[60],c2[60],sum[61],c2[61]);
fulladder f62(s1[62],c1[61],c2[61],sum[62],c2[62]);
fulladder f63(s1[63],c1[62],c2[62],sum[63],c2[63]);
fulladder f64(1'b0,c1[63],c2[63],cout,cout1); 

assign sum[0] = s1[0];
//endmodule declaration
endmodule



//module declaration
module fulladder(a,b,cin,sum,carry);
//port declaration
input a,b,cin;
output sum,carry;
//gate instantiation            
assign sum = a^b^cin;
assign carry =(a & b)|(cin & b)|(a & cin);
//endmodule declaration
endmodule
