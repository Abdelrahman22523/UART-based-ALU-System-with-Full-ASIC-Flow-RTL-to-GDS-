module CLK_GATE (
	input  wire clk,    // Clock
	input  wire clk_en, // Clock Enable
	input  wire test_en,
	output wire gated_clk
);

/*reg latch_out;

always @(clk or clk_en) 
begin
	if(!clk) 
	begin
		latch_out <= clk_en;
	end 
end

assign gated_clk = (latch_out && clk);*/


TLATNCAX12M U0_TLATNCAX12M (
.E(clk_en|test_en),
.CK(clk),
.ECK(gated_clk)
);

endmodule