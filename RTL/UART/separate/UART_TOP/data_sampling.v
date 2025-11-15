module data_sampling #(
    parameter sampling_bits = 6,
    parameter bit_cnt_w     = 4,
    parameter frame_data    = 8
) (
	input  wire 	 			    clk,    
	input  wire 				    rst,
	input  wire 				    rx_in,
	input  wire [sampling_bits-1:0] prescale,
	input  wire	[sampling_bits-1:0] edge_cnt,
	input  wire     				dat_samp_en,
	output reg      				sampled_data
	
);

reg  [2:0] samples;
wire [sampling_bits-2:0] mid;  

always @(posedge clk or negedge rst) 
begin
	if(!rst) 
	begin
		samples <= 3'b0;
	end else 
	begin
		if (dat_samp_en) 
		begin
			if (edge_cnt == (mid-1)) 
			begin
				samples[0] <= rx_in;
			end else 
			if (edge_cnt == mid) 
			begin
				samples[1] <= rx_in;
			end else 
			if (edge_cnt == (mid+1)) 
			begin
				samples[2] <= rx_in;
			end
		end else
		begin
			samples <= 3'b0;
		end
	end
end


always @(*) 
begin
	if (dat_samp_en) 
	begin
		if (edge_cnt == (mid+2)) 
		begin
			if (samples[0] + samples[1] + samples[2] >= 2)
			begin
				sampled_data = 1'b1;
			end else
			begin
				sampled_data = 1'b0;
			end
		end else
		begin
			sampled_data = sampled_data;
		end
	end else
	begin
		sampled_data = 1'b0;
	end
	
end


assign mid = prescale >> 1;   // divide by 2




endmodule