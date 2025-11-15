module edge_bit_counter #(
    parameter sampling_bits = 6,
    parameter bit_cnt_w     = 4,
    parameter frame_data    = 8
) (
	input  wire						clk,    
	input  wire						rst, 
	input  wire						enable,
	input  wire [sampling_bits-1:0] prescale,
	output reg	[sampling_bits-1:0] edge_cnt,
	output reg	[bit_cnt_w-1:0]     bit_cnt
);


always @(posedge clk or negedge rst) 
begin
	if(!rst) 
	begin
		bit_cnt  <= 'b0;
		edge_cnt <= 'b0;
	end else 
	begin
		 if (enable) 
		 begin
		 	if (edge_cnt == (prescale - 1)) 
		 	begin
		 		edge_cnt <= 'b0;
		 		bit_cnt  <= bit_cnt + 1'b1;
		 	end else
		 	begin
		 		edge_cnt <= edge_cnt + 1'b1;
		 	end
		 end else
		 begin
		 	bit_cnt  <= 'b0;
			edge_cnt <= 'b0;
		 end
	end

end

endmodule