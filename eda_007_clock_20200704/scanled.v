module scanled(sel, din, dig, dsel);
input[2:0] sel;
input[31:0] din;
output[7:0] dig;
output[7:0] dsel;

reg[7:0] dig;
reg[3:0] dsel;

always@(sel)
begin
	case(sel)
		3'd0:begin dsel<=din[31:28];end
		3'd1:begin dsel<=din[27:24];end
		3'd2:begin dsel<=din[23:20];end
		3'd3:begin dsel<=din[19:16];end
		3'd4:begin dsel<=din[15:12];end
		3'd5:begin dsel<=din[11: 8];end
		3'd6:begin dsel<=din[ 7: 4];end
		3'd7:begin dsel<=din[ 3: 0];end
		default:begin end
	endcase
		case(sel)
		3'd0:begin dig<=8'b01111111;end
		3'd1:begin dig<=8'b10111111;end
		3'd2:begin dig<=8'b11011111;end
		3'd3:begin dig<=8'b11101111;end
		3'd4:begin dig<=8'b11110111;end
		3'd5:begin dig<=8'b11111011;end
		3'd6:begin dig<=8'b11111101;end
		3'd7:begin dig<=8'b11111110;end
		default:begin end
	endcase
end
endmodule