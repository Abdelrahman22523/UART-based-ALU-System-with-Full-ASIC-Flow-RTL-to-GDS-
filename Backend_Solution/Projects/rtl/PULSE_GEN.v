module PULSE_GEN (
	input  wire clk,   
	input  wire rst,
	input  wire in_sig,
	output wire pulse_sig	
);

reg rcv_flop;
reg pls_flop;

always @(posedge clk or negedge rst) begin
	if(!rst) 
	begin
		rcv_flop <= 1'b0;
		pls_flop <= 1'b0;
	end else
	begin
		rcv_flop <= in_sig;
		pls_flop <= rcv_flop;
	end
end

assign pulse_sig = rcv_flop && !pls_flop; 

endmodule