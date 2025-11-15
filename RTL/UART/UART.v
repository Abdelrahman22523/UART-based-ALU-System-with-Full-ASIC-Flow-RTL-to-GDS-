module UART #(
    parameter sampling_bits = 6,
    parameter frame_data    = 8
) (
	input  wire						tx_clk, 
	input  wire						rx_clk,   
	input  wire						rst,
	input  wire						tx_in_v,
	input  wire [frame_data-1:0]    tx_in_p,
	input  wire [sampling_bits-1:0] prescale,
	input  wire						rx_in_s,
	input  wire						par_en,
	input  wire						par_typ,
	output wire						tx_out_s,
	output wire						busy,
	output wire [frame_data-1:0]    rx_out_p,
	output wire						rx_out_v,
	output wire                     parity_error,
    output wire                     stop_error
);

UART_TX u_tx (
	.par_en    (par_en),
	.rst       (rst),
	.par_typ   (par_typ),
	.clk       (tx_clk),
	.data_valid(tx_in_v),
	.p_data    (tx_in_p),
	.tx_out    (tx_out_s),
	.busy      (busy)
	);


UART_RX u_rx (
	.clk         (rx_clk),    
	.rst         (rst),
	.par_en      (par_en),
	.par_typ     (par_typ),
	.prescale    (prescale),
	.rx_in       (rx_in_s),
	.p_data      (rx_out_p),   
	.data_valid  (rx_out_v),   
	.parity_error(parity_error),
	.stop_error  (stop_error)
	);


endmodule