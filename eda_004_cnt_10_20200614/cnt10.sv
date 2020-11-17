module cnt10(clk, rst, en, updown, load, din, co, q);
input clk, rst, en, updown, load;
input[3:0] din;
output co;
reg co;
output[3:0] q;
reg[3:0] q;

always@(posedge clk, negedge rst)
begin
	if (rst == 0)
		begin q<=0; co<=0; end
	else 
		if (en == 1)
			if (load == 1)
				begin q<=din; co<=0; end
			else
				if (updown == 0)
					if (q == 9)
						begin q<=0; co<=1; end
					else
						begin q<=q+1; co<=0; end
				else
					if (q == 0)
						begin q<=9; co<=1; end
					else
						begin q<=q-1; co<=0; end
end
endmodule

