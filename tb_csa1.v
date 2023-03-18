//module declaration
module tb_csa1;
//data type declaration
reg [63:0]A,B,C;
wire [63:0]S;
//instantiation
csa1 d1(.A(A),.B(B),.C(C),.S(S));
//time declaration
initial
begin
	A=64'b1010101010101010101010101010101010101010101010101010101010101010;B=64'b1010101010101010101010101010101010101010101010101010101010101010;C=64'b0000000000000000000000000000000000000000000000000000000000000000;
	#1000;$finish;
end
//wave form declaration
initial
begin
	$dumpfile("tb_csa1.vcd");
	$dumpvars(0,tb_csa1);
end
//end module declaration
endmodule
