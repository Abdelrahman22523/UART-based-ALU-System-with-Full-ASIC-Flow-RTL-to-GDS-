module RST_SYNC #(
	parameter NUM_STAGES = 2
) (
	input  wire clk,     
	input  wire rst,
	output wire sync_rst  
);

reg [NUM_STAGES-1:0] sync_reg;


	always @(posedge clk or negedge rst)
	begin
		if(!rst)      // active low
		begin
			sync_reg <= 'b0 ;
		end else
		begin
			sync_reg <= {sync_reg[NUM_STAGES-2:0],1'b1};
		end  
	end

	assign sync_rst = sync_reg[NUM_STAGES-1];

	initial
	begin
		sync_reg = {NUM_STAGES{1'b1}};
	end

endmodule 