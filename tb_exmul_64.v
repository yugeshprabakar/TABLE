//module declaration
module tb_exmul_64;
//data type declaration
reg[63:0]a,b;
wire[127:0]result;
//instantiation
exmul_64 x1(.a(a),.b(b),.result(result));
//time declaration
initial
begin
	//a=4'b0101;b=4'b1010;
	a=64'b1111000011110000111100001111000011110000111100001111000011110000;b=64'b0000111100001111000011110000111100001111000011110000111100001111;
	#1000; $finish;
end
//wave form declaration
initial
begin
	$dumpfile("tb_exmul_64.vcd");
	$dumpvars(0,tb_exmul_64);
end
//end module declaration
endmodule
