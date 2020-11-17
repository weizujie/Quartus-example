module display(clk50hz, seg7, seg8, seg, dig);
input clk50hz;
input[7:0] seg7, seg8;
output[7:0] seg, dig;
reg[7:0] seg, dig;

always@(clk50hz)
begin
	if (clk50hz)
	begin
		seg<=seg7;
		dig<=8'b11111101;
	end
	else
	begin
		seg<=seg8;
		dig<=8'b11111110;
	end
end
endmodule
