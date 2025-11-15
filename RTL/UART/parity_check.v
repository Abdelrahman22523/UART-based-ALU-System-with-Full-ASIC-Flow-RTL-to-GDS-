module parity_check #(
    parameter sampling_bits = 6,
    parameter bit_cnt_w     = 4,
    parameter frame_data    = 8
) (
	input  wire    				 clk,    
	input  wire    				 rst, 
	input  wire    			     par_typ,
	input  wire    				 par_chk_en,
	input  wire    				 sampled_bit,
	input  wire [frame_data-1:0] p_data,
	input  wire	[bit_cnt_w-1:0]  bit_cnt,
	output reg  	 			 par_err,
	output reg                   parity_error  
);

reg par_bit;

always @(posedge clk or negedge rst) 
begin
	if(!rst) 
	begin
		par_err 	 <= 1'b0;
		parity_error <= 1'b0;

	end else 
	begin
		if (par_chk_en) 
		begin
			if (par_bit == sampled_bit) 
			begin
				par_err 	 <= 1'b0;
				parity_error <= 1'b0;
			end else
			begin
				par_err 	 <= 1'b1;
				parity_error <= 1'b1;
			end
		end else
		begin
			par_err 	 <= 1'b0;
			parity_error <= 1'b0;
		end
	end
end


always @(*) 
begin

	if (par_typ)               
	begin         
		par_bit = ~(^p_data);     // odd parity
	end else                   
	begin
		par_bit = (^p_data);    // even parity
	end

end

endmodule