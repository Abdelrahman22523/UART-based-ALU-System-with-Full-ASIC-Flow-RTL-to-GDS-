module FIFO_WR #(
    parameter WIDTH = 3
)(
	input  wire				w_clk,  
	input  wire				w_rst, 
	input  wire				w_inc,
	input  wire [WIDTH:0]   rd_ptr,
	output wire [WIDTH:0]   wr_ptr,
	output wire [WIDTH-1:0] wr_addr,
	output wire             wclken,
	output wire             full
	
); 

reg [WIDTH:0] wr_bin;
wire [WIDTH:0] wr_bin_next;


	assign wr_bin_next = wr_bin + 1'b1;
	assign wr_ptr = (wr_bin >> 1) ^ wr_bin;

    assign full = (wr_ptr[WIDTH] != rd_ptr[WIDTH]) && (wr_ptr[WIDTH-1] != rd_ptr[WIDTH-1]) && (wr_ptr[WIDTH-2:0] == rd_ptr[WIDTH-2:0]);
    assign wclken = w_inc && !full;

	always @(posedge w_clk or negedge w_rst) 
	begin
	    if(!w_rst) 
	    begin
	        wr_bin <= 'b0;
	    end else 
	    begin
	        if (w_inc & ~full)
	        begin
	        	wr_bin <= wr_bin_next;
	        end
	    end
	end

	assign wr_addr = wr_bin[WIDTH-1:0];

endmodule 