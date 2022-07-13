`include "Ha.v"
`timescale 1ns/1ps
module Hatb();
reg atb,btb;
wire stb,ctb;
Ha DUT (
.a(atb),
.b(btb),
.carry(ctb),
.sum(stb)
);
initial
	begin
	$monitor($time,"atb=%b,btb=%b,stb=%b,ctb=%b",atb,btb,stb,ctb);
	$dumpfile("Ha.vcd");
	$dumpvars(0,Hatb);
	atb=1'b0;btb=1'b0;#10;
	atb=1'b0;btb=1'b1;#10;
	atb=1'b1;btb=1'b0;#10;
	atb=1'b1;btb=1'b1;#10
	#10;
	$finish;
	end
endmodule
