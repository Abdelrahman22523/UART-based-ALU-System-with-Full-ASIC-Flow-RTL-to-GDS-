module CLK_GATE (
	input  wire clk,    // Clock
	input  wire clk_en, // Clock Enable
	output wire gated_clk
);

reg latch_out;

always @(clk or clk_en) 
begin
	if(!clk) 
	begin
		latch_out <= clk_en;
	end 
end

assign gated_clk = (latch_out && clk);

endmodule