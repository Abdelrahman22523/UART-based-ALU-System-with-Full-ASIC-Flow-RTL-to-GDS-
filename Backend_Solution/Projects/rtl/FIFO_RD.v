module FIFO_RD #(
    parameter WIDTH = 3
)(
	input  wire				r_clk,  
	input  wire				r_rst, 
	input  wire				r_inc,
	input  wire [WIDTH:0]   wr_ptr,
	output reg  [WIDTH:0]   rd_ptr,   
	output wire [WIDTH-1:0] rd_addr,
	output wire             empty
); 

reg  [WIDTH:0] rd_bin;
wire [WIDTH:0] rd_bin_next;

	assign empty      = (rd_ptr == wr_ptr);
	assign rd_bin_next = rd_bin + (r_inc & ~empty);

	always @(posedge r_clk or negedge r_rst) begin
	    if (!r_rst) begin
	        rd_bin <= 'b0;
	        rd_ptr <= 'b0;
	    end else begin
	        rd_bin <= rd_bin_next;
	        rd_ptr <= (rd_bin_next >> 1) ^ rd_bin_next;
	    end
	end

	assign rd_addr = rd_bin[WIDTH-1:0];

endmodule