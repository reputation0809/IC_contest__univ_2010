module S2(clk,
	  rst,
	  S2_done,
	  RB2_RW,
	  RB2_A,
	  RB2_D,
	  RB2_Q,
	  sen,
	  sd);

input clk, rst;
output reg S2_done; 
output reg RB2_RW;
output reg [2:0] RB2_A;
output reg [17:0] RB2_D;
input [17:0] RB2_Q;
input sen, sd;

reg [1:0] state,next_state;

reg [1:0] cnt_addr_bit;
reg [4:0] cnt_data;
reg [2:0] cnt_package;

always @(posedge clk or posedge rst) begin
	if(rst) state <= 2'b0;
	else state <= next_state;
end

always @(*) begin
	case(state)
		2'b0:begin  //idle
			next_state = 2'b1;
		end
		2'b1:begin //address
			next_state = (cnt_addr_bit == 2'b0) ? 2'b10 : 2'b1;
		end
		2'b10:begin //data
			next_state = (cnt_data == 5'b0) ? 2'b11 : 2'b10;
		end
		2'b11:begin //done
			next_state = (cnt_package == 3'b111) ? 2'b0 : 2'b1; 
		end
	endcase
end

always @(posedge clk or posedge rst) begin
	if(rst) S2_done <= 1'b0;
	else S2_done <= (cnt_package == 3'b111 & state == 2'b11);
end

always @(posedge clk or posedge rst) begin
	if(rst) RB2_RW <= 1'b1;
	else if(state == 2'b10) RB2_RW <= 1'b0;
	else RB2_RW <= 1'b1;
end

always @(posedge clk or posedge rst) begin
	if(rst) begin
		RB2_A <= 3'b0;
	end
	else begin
		RB2_A[cnt_addr_bit] <= (state == 2'b1) ? sd : RB2_A[cnt_addr_bit];
	end
end

always @(posedge clk or posedge rst) begin
	if(rst) begin
		RB2_D <= 18'b0;
	end
	else begin
		RB2_D[cnt_data] <= (state == 2'b10) ? sd : RB2_D[cnt_data];
	end
end

always @(posedge clk or posedge rst) begin
	if(rst) begin
		cnt_package <= 3'b0;
	end
	else begin
		cnt_package <= (state == 2'b11) ? cnt_package + 1'b1 : cnt_package;
	end
end

always @(posedge clk or posedge rst) begin
	if(rst) begin
		cnt_addr_bit <= 2'b10;
	end
	else begin
		cnt_addr_bit <= (state == 2'b1) ? cnt_addr_bit - 1'b1 : 2'b10;
	end
end

always @(posedge clk or posedge rst) begin
	if(rst) begin
		cnt_data <= 5'b10001;
	end
	else begin
		cnt_data <= (state == 2'b10) ? cnt_data - 1'b1 : 5'b10001;
	end
end



endmodule

