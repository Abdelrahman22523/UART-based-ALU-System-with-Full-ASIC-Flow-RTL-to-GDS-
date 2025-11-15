module parity_calc # (
    parameter input_width = 8) 
(	input  wire                   clk,        // clock
	input  wire                   rst,        // for reset
	input  wire [input_width-1:0] p_data,     // input data
	input  wire                   data_valid, // to enable calculation
	input  wire                   par_typ,    // even or odd
	input  wire                   par_en,
	input  wire                   busy,       // check sending
	output reg                    par_bit	  // output parity bit
);


reg  [input_width-1:0]         data_reg;


	always @(posedge clk or negedge rst) 
	begin
		if(!rst) 
		begin
			data_reg <= 'b0;
		end else 
		begin
			if(data_valid && !busy)
			begin
				data_reg <= p_data ;
			end	
		end
	end

	always @(posedge clk or negedge rst) 
	begin
	    if (!rst) 
	    begin
	        par_bit     <= 1'b0;
	    end else
	    begin
	    	if (par_en) 
	    	begin
	    		if (par_typ)               
				begin         
					par_bit <= ~(^data_reg);     // odd parity
				end else                   
				begin
					par_bit <= (^data_reg);    // even parity
				end
	    	end
		     
	    end
	end

endmodule 