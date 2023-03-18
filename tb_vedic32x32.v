//module declaration
module tb_vedic32x32;
//data type declaration
reg [31:0]a,b;
wire [63:0]result;
//instantiation
vedic32x32 c1(.a(a),.b(b),.result(result));
//time declaration
initial
begin
	a=32'b10101010101010101010101010101010;b=32'b11001100110011001010101010101010;
	#20;$finish;
end
//wave form declaration
initial
begin
	$dumpfile("tb_vedic32x32.vcd");
	$dumpvars(0,tb_vedic32x32);
end
//end module declaration
endmodule
