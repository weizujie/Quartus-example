module decode(din,dout);
input[3:0] din;
output[7:0] dout;
reg[7:0] dout;
always @(din)
begin
	case(din)
	0:dout<=8'hc0;
	1:dout<=8'hF9;
	2:dout<='hA4;
	3:dout<='hb0; 
	4:dout<='h99;
	5:dout<='h92;
	6:dout<='h82;
	7:dout<='hf8;
	8:dout<='h80;
	9:dout<='h90;
	10:dout<='h88;
	11:dout<='h83;
	12:dout<='hC6;
	13:dout<='ha1;
	14:dout<='h86;
	15:dout<='h8e;
	default:dout<=8'hc0;
	endcase
end
endmodule