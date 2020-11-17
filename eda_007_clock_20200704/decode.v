module decode(din,dout);
input[3:0] din;
output[7:0] dout;
reg[7:0] dout;
always @(din)
begin
	case(din)
	0:dout<=8'hc0;
	1:dout<=8'hF9;
	2:dout<=8'hA4;
	3:dout<=8'hb0; 
	4:dout<=8'h99;
	5:dout<=8'h92;
	6:dout<=8'h82;
	7:dout<=8'hf8;
	8:dout<=8'h80;
	9:dout<=8'h90;
	10:dout<=~8'h40;
	11:dout<=~8'h00;
	12:dout<=8'hC6;
	13:dout<=8'ha1;
	14:dout<=8'h86;
	15:dout<=8'h8e;
	default:dout<=8'hc0;
	endcase
end
endmodule