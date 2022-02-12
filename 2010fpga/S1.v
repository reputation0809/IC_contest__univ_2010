module S1(clk,
	  rst,
	  RB1_RW,
	  RB1_A,
	  RB1_D,
	  RB1_Q,
	  sen,
	  sd);

  input clk, rst;
  output RB1_RW;      // control signal for RB1: Read/Write
  output reg [4:0] RB1_A; // control signal for RB1: address
  output [7:0] RB1_D; // data path for RB1: input port
  input [7:0] RB1_Q;  // data path for RB1: output port
  output reg sen, sd;

  reg [1:0] state,next_state;

  reg [1:0] cnt_addr_bit;
  reg [2:0] cnt_data;
  reg [2:0] cnt_package;

  assign RB1_RW = 1'b1;
  assign RB1_D = 8'b0;

  always @(negedge clk or posedge rst) begin
	  if(rst) state <= 2'b0;
	  else state <= next_state;
  end

  always @(*) begin
	  case (state)
		  2'b0:begin  //idle
	      	next_state = 2'b1;
		  end 
		  2'b1:begin //address
		  	next_state = (cnt_addr_bit == 2'b0) ? 2'b10 : 2'b1;
		  end 
		  2'b10:begin //data
		  	next_state = (RB1_A == 5'b0) ? 2'b11 : 2'b10;
		  end 
		  2'b11:begin //done
		  	next_state = (cnt_package == 3'b111) ? 2'b0 : 2'b1;
		  end 
	  endcase
  end

  always @(negedge clk or posedge rst) begin
	  if(rst) begin
		  sen <= 1'b1;
		  RB1_A <= 5'b0;
	  end
	  else begin
		  sen <= (state == 2'b1 | state == 2'b10) ? 1'b0 : 1'b1;
		  RB1_A <= (state == 2'b1) ? 5'b10001 : (state == 2'b10) ? RB1_A - 1'b1 : 5'b0;
	  end
  end

  always @(negedge clk or posedge rst) begin
	  if(rst) begin
		  cnt_addr_bit <= 2'b10;
	  end
	  else begin
		  cnt_addr_bit <= (state == 2'b1) ? cnt_addr_bit - 1'b1 : (state == 2'b11) ? 2'b10 : cnt_addr_bit;
	  end
  end
  
  always @(negedge clk or posedge rst) begin
	  if(rst) begin
		  cnt_data <= 3'b111;
	  end
	  else begin
		  cnt_data <= (state == 2'b11) ? cnt_data - 1'b1 : cnt_data;
	  end
  end

  always @(negedge clk or posedge rst) begin
	  if(rst) begin
		  cnt_package <= 3'b0;
	  end
	  else begin
		  cnt_package <= (state == 2'b11) ? cnt_package + 1'b1 : (state == 2'b0) ? 3'b0 : cnt_package;
	  end
  end

  always @(negedge clk or posedge rst) begin
	  if(rst) begin
		  sd <= 1'b0;
	  end
	  else begin
		  if(state == 2'b1) sd <= cnt_package[cnt_addr_bit];
		  else if(state == 2'b10) sd <= RB1_Q[cnt_data];
	  end
  end

endmodule

