module int_div(clockin, cnt, clockout);
input clockin;
output [F_DIV_WIDTH-1:0] cnt;
output clockout;
reg[F_DIV_WIDTH-1:0] counter;
reg temp1, temp2;
parameter F_DIV_WIDTH=10, F_DIV=1000;

always@(posedge clockin)
begin
	if(counter==F_DIV-1)
	begin
		counter<='d0;
		temp1<=~temp1;
	end
	else
		counter<=counter+1'b1;
end

always@(negedge clockin)
begin
	if(counter==F_DIV/2)
		temp2<=~temp2;
end

assign clockout=temp1^temp2;
assign cnt=counter;

endmodule
