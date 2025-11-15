module stop_check #(
    parameter sampling_bits = 6,
    parameter bit_cnt_w     = 4,
    parameter frame_data    = 8
) (
	input  wire					 clk,    
	input  wire					 rst, 
	input  wire					 stp_chk_en,
	input  wire					 sampled_bit,
	input  wire	[bit_cnt_w-1:0]  bit_cnt,
	output reg 					 stp_err,
	output reg 					 stop_error  
);

always @(posedge clk or negedge rst) 
begin 
	if(!rst) 
	begin
		stp_err    <= 1'b0;
		stop_error <= 1'b0;
	end else 
	begin
		if (stp_chk_en) 
		begin
			if (!sampled_bit) 
			begin
				stp_err    <= 1'b1;   // error: stop bit was low
				stop_error <= 1'b1;
			end else
			begin
				stp_err    <= 1'b0;  // valid stop bit
				stop_error <= 1'b0;
			end
		end else
		begin 
			stp_err    <= 1'b0;
			stop_error <= 1'b0;
		end
	end
end

endmodule