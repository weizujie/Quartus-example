module dvf(clk, cnt_start, cout);
input clk;
input[16:0] cnt_start;
output cout;
reg[16:0] cnt;
reg cout;

always@(posedge clk)
begin
	if (cnt=='h1ffff)
	begin
		cnt<=cnt_start;
		cout<=1'b1;
	end
	else
	begin
		cnt<=cnt+1'b1;
		cout<=1'b0;
	end
end
endmodule
