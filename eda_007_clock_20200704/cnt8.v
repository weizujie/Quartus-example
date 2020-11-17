module cnt8(clk, cnt);
input clk;
output[2:0] cnt;
reg[2:0] cnt;

always@(posedge clk)
begin
	cnt<=cnt+1'b1;
end
endmodule
