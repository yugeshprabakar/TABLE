//module declaration
module tb_ksa64x64;
//datatype declaration
reg [63:0] x,y;
reg [31:0]cin;
wire [63:0] sum;
wire cout;
//instantiation
ksa64x64 d1(.x(x),.y(y),.sum(sum),.cin(cin),.cout(cout));
//time declaration
initial
begin
	x=64'b1110111010101010101010101011101111101110101010101010101010111011;y=64'b1110111010101010101010101011101111101110101010101010101010111011;cin=0;
	#20;$finish;
end
//wave form declaration
initial
begin
	$dumpfile("tb_ksa64x64.vcd");
	$dumpvars(0,tb_ksa64x64);
end
//end module declaration
endmodule
