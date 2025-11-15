module deserializer #(
    parameter sampling_bits = 6,
    parameter bit_cnt_w     = 4,
    parameter frame_data    = 8
) (
	input  wire 	               clk,    
	input  wire 	               rst, 
	input  wire 	               deser_en,
	input  wire 	               sampled_bit,
	input  wire	[bit_cnt_w-1:0]    bit_cnt,
	output reg  [frame_data-1:0]   p_data  
);

reg [frame_data-1 : 0] data;

always @(posedge clk or negedge rst) 
begin
	if(!rst) begin
		p_data <= 'b0;
		data   <= 'b0;
	end else 
	begin
		if (deser_en) 
		begin
			if (bit_cnt >= 1 && bit_cnt <= frame_data)  // Collect data bits
			begin
				data[bit_cnt-1] <= sampled_bit;
				if (bit_cnt == frame_data) 
				begin
					p_data <= data;   // When full frame received, transfer to p_data
				end
			end
		end else
		if (bit_cnt == 0) 
		begin
			data   <= 0;
		end
	end
end

endmodule 