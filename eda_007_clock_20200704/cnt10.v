module cnt10(clk, en, rst, cnt, co);
input clk, en, rst;
output[3:0] cnt;
output co;
reg[3:0] cnt;
reg co;

always@(posedge clk or negedge rst)
begin
	if (!rst)
	begin
		cnt<=4'b0000;
		co<=1'b0;
	end
	else
	begin
		if(en)
		begin
			if(cnt==4'b1001)
			begin
				cnt<=4'b0000;
				co<=1'b1;
			end
			else
			begin
				cnt<=cnt+1'b1;
				co<=1'b0;
			end
		end
	end
end
endmodule
