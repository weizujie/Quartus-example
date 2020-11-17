module cnt4_to_16(clk, rst, co, q);
input clk, rst;
output co;
reg co;
output[1:0] q;
reg[1:0] q;

always@(posedge clk, negedge rst)
begin
	if (rst==0)
		begin 
			q<=0; 
			co<=0;
		end
	else
		begin
			if (q==3)
				begin
					q<=0; 
					co<=1;
				end
			else
				begin 
					q<=q+1; 
					co<=0;
				end
		end
end
endmodule
