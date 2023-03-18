//module declaration
module tb_csa;
//data type declaration
reg [63:0]x,y,cin;
wire [63:0]sum;
wire cout;
//instantiation
csa d1(.x(x),.y(y),.cin(cin),.sum(sum),.cout(cout));
//time declaration
initial
begin
	x=64'b1010101010101010101010101010101010101010101010101010101010101010;y=64'b1010101010101010101010101010101010101010101010101010101010101010;cin=64'b0000000000000000000000000000000000000000000000000000000000000000;
	#1000;$finish;
end
//wave form declaration
initial
begin
	$dumpfile("tb_csa.vcd");
	$dumpvars(0,tb_csa);
end
//end module declaration
endmodule
