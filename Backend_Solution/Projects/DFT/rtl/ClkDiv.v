module CLK_DIV #( 
 parameter RATIO_WD = 8 
)
(
	input  wire		           i_ref_clk,    // ref Clock
	input  wire		           i_rst_n,
	input  wire		  		   i_clk_en,
	input  wire [RATIO_WD-1:0] i_div_ratio, 
	output wire                o_div_clk
);

wire       clk_div_en; 
wire       odd;
wire [7:0] half_count;
wire [7:0] full_count;


reg [7:0] counter;
reg       flag;
reg       div_clk_reg;


assign odd = i_div_ratio[0];
assign half_count = i_div_ratio >> 1;
assign full_count = i_div_ratio - half_count;
assign clk_div_en = i_clk_en && (i_div_ratio > 1);
//assign clk_div_en = i_clk_en && (i_div_ratio != 8'd0) && (i_div_ratio != 8'd1);

assign o_div_clk = (clk_div_en && i_rst_n) ? div_clk_reg : i_ref_clk;



always @(posedge i_ref_clk or negedge i_rst_n) 
begin
	if(!i_rst_n) 
	begin
		div_clk_reg <= 0;
		flag        <= 0;
		counter     <= 8'b0;
	end else
	if (clk_div_en) 
	begin
		if (!odd && counter == half_count-1) 
		begin
			div_clk_reg <= ! div_clk_reg;
			flag        <= ! flag;
			counter     <= 8'b0;
		end else
		if (odd && ((counter == half_count-1 && flag) || (counter == full_count-1 && !flag))) 
		begin
			div_clk_reg <= ! div_clk_reg;
			flag        <= ! flag;
			counter     <= 8'b0;
		end else 
		begin
			counter <= counter + 1;
		end 
	end else
	begin
		div_clk_reg <= 0;
		flag        <= 0;
		counter     <= 8'b0;
	end
	
end

endmodule