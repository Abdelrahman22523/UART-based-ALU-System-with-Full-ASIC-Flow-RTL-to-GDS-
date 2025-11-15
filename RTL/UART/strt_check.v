module strt_check #(
    parameter sampling_bits = 6,
    parameter bit_cnt_w     = 4,
    parameter frame_data    = 8
) (
	input  wire					 clk,    
	input  wire					 rst, 
	input  wire					 strt_chk_en,
	input  wire					 sampled_bit,
	input  wire	[bit_cnt_w-1:0]  bit_cnt,
	output reg                   strt_glitch  
);

always @(posedge clk or negedge rst) 
begin 
	if(!rst) 
	begin
		strt_glitch <= 1'b0;
	end else 
	begin
		if (strt_chk_en) 
		begin
			if (sampled_bit) 
			begin
				strt_glitch <= 1'b1;   // glitch: start bit was high
			end else
			begin
				strt_glitch <= 1'b0;  // valid start bit
			end
		end else
		begin
			strt_glitch <= 1'b0;
		end
	end
end


endmodule 