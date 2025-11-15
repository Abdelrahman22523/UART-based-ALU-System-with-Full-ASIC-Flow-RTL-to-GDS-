module serializer # (
    parameter input_width = 8) 
(
	input  wire                   clk,        // clock
	input  wire                   rst,        // for reset
	input  wire [input_width-1:0] p_data,     // input data
	input  wire                   ser_en,     // to enable output data
	input  wire                   busy,
	input  wire                   data_valid, // valid data in
	output wire                   ser_done,   // operation done
	output wire                   ser_data	  // output data
);

reg  [input_width-1:0]         data_reg;
reg  [$clog2(input_width)-1:0] count;




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
			end	else
			if (ser_en) 
			begin
				data_reg <= data_reg >> 1 ;
			end
		end
	end

	always @(posedge clk or negedge  rst) 
	begin

		if(!rst)
		begin
			count <= 'b0 ;
		end else
		begin
			if (ser_en)
			begin
		    	count <= count + 'b1 ;		 
			end else
			begin
				count <= 'b0 ;
			end
		end
	end


	assign ser_done = (count == 'b111) ? 1'b1 : 1'b0 ;
	assign ser_data = data_reg[0] ;


endmodule

