module tonetaba(index, cnt_start, seg7, seg8);
input[3:0] index;
output[16:0] cnt_start;
output[7:0] seg7, seg8;
reg[7:0] seg7, seg8;
reg[16:0] cnt_start;

always@(index)
begin
	case(index)
		4'b0000:begin cnt_start<='d131071; seg7<=8'hff; seg8<=8'hff;end
		4'b0001:begin cnt_start<='d62349; seg7<=8'hc7; seg8<=8'h99;end
		4'b0010:begin cnt_start<='d69847; seg7<=8'hc7; seg8<=8'h92;end
		4'b0011:begin cnt_start<='d76527; seg7<=8'hc7; seg8<=8'h82;end
		4'b0100:begin cnt_start<='d82447; seg7<=8'hc7; seg8<=8'hf8;end
		
		
		4'b0101:begin cnt_start<='d85205; seg7<=8'hff; seg8<=8'hf9;end
		4'b0110:begin cnt_start<='d90209; seg7<=8'hff; seg8<=8'ha4;end
		4'b0111:begin cnt_start<='d96327; seg7<=8'hff; seg8<=8'hb0;end
		4'b1000:begin cnt_start<='d96711; seg7<=8'hff; seg8<=8'h99;end
		4'b1001:begin cnt_start<='d100459; seg7<=8'hff; seg8<=8'h92;end
		4'b1010:begin cnt_start<='d103799; seg7<=8'hff; seg8<=8'h82;end
		4'b1011:begin cnt_start<='d106775; seg7<=8'hff; seg8<=8'hf8;end
		
		4'b1100:begin cnt_start<='d108138; seg7<=8'h89; seg8<=8'hf9;end
		4'b1101:begin cnt_start<='d110641; seg7<=8'h89; seg8<=8'ha4;end
		4'b1110:begin cnt_start<='d113700; seg7<=8'h89; seg8<=8'hb0;end
		4'b1111:begin cnt_start<='d113891; seg7<=8'h89; seg8<=8'h99;end	
	endcase
end
endmodule
