module cnt24(clk, en, rst, cnt, co);
input clk, en, rst;
output[7:0] cnt;
output co;
reg[7:0] cnt;
reg co;

always@(posedge clk or negedge rst)
begin
	if (!rst)
	begin
		cnt<=0;
		co<=1'b0;
	end
	else
	begin
		if(en)
		begin
			if(cnt==8'b00100011)
			begin
				cnt<=0;
				co<=1'b1;
			end
			else if (cnt[3:0]==9)
			begin
				cnt<=cnt+7;
				co<=1'b0;
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
