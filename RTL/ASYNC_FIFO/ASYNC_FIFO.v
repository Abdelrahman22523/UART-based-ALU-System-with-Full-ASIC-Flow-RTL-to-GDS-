module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 3
)(
	input  wire                  w_clk,
	input  wire                  w_rst,
	input  wire                  w_inc,
	input  wire                  r_clk,
	input  wire                  r_rst,
	input  wire                  r_inc,
	input  wire [DATA_WIDTH-1:0] wr_data,
	output wire [DATA_WIDTH-1:0] rd_data,
	output wire                  full,
	output wire                  empty
);

wire wclken;
wire [ADDR_WIDTH-1:0] wr_addr;
wire [ADDR_WIDTH-1:0] rd_addr;
wire [ADDR_WIDTH:0] wr_ptr;
wire [ADDR_WIDTH:0] rq2_wptr;
wire [ADDR_WIDTH:0] rd_ptr;
wire [ADDR_WIDTH:0] rq2_rptr;

FIFO_MEM_CNTRL #(
    .ADDR_WIDTH(ADDR_WIDTH),
    .DATA_WIDTH(DATA_WIDTH)
) u_FIFO_MEM_CNTRL (

	.rd_addr(rd_addr),
	.w_clk  (w_clk),
	.wr_data(wr_data),
	.wclken (wclken),
	.rd_data(rd_data),
	.wr_addr(wr_addr),
	.w_rst  (w_rst)
	
	);


DF_SYNC #(.WIDTH(ADDR_WIDTH)) u_wr_DF_SYNC (

	.clk     (r_clk),
	.rst     (r_rst),
	.data_in (wr_ptr),
	.data_out(rq2_wptr)
	);


DF_SYNC #(.WIDTH(ADDR_WIDTH)) u_rd_DF_SYNC (

	.clk     (w_clk),
	.rst     (w_rst),
	.data_in (rd_ptr),
	.data_out(rq2_rptr)
	);


FIFO_WR #(.WIDTH(ADDR_WIDTH)) u_FIFO_WR (

	.w_clk  (w_clk),
    .w_rst  (w_rst),
    .w_inc  (w_inc),
    .rd_ptr (rq2_rptr),
    .wr_ptr (wr_ptr),
    .wr_addr(wr_addr),
    .wclken (wclken),
    .full   (full)
	);


FIFO_RD #(.WIDTH(ADDR_WIDTH)) u_FIFO_RD (

	.wr_ptr (rq2_wptr),
    .rd_ptr (rd_ptr),
    .rd_addr(rd_addr),
    .r_clk  (r_clk),
    .r_rst  (r_rst),
    .r_inc  (r_inc),
    .empty  (empty)
	);




 
endmodule