module UART_TX # (
    parameter input_width = 8) 
(
	input  wire                   clk,        // clock
	input  wire                   rst,        // for reset
	input  wire                   data_valid,
	input  wire                   par_en,
	input  wire                   par_typ,
	input  wire [input_width-1:0] p_data,
	output wire                   tx_out,
	output wire                   busy
);

wire       ser_done;
// Control signals from FSM
wire       ser_en;
wire [1:0] mux_sel;
wire       par_busy;

wire       par_bit;
wire       ser_data;

// instantiation for MUX
mux u_mux (

	.tx_out  (tx_out),
	.mux_sel (mux_sel),
	.par_bit (par_bit),
	.ser_data(ser_data),
	.clk     (clk),
	.rst     (rst)
);

// instantiation for parity calc
parity_calc u_parity_calc (

	.clk       (clk),
	.rst       (rst),
	.par_bit   (par_bit),
	.data_valid(data_valid),
	.par_typ   (par_typ),
	.par_en    (par_en),
	.p_data    (p_data),
	.busy      (busy)
);

// instantiation for serializer
serializer u_serializer (

	.clk       (clk),
	.rst       (rst),
	.data_valid(data_valid),
	.p_data    (p_data),
	.ser_data  (ser_data),
	.ser_en    (ser_en),
	.ser_done  (ser_done),
	.busy      (busy)
	
);

// instantiation for finite state machine
TX_FSM u_TX_FSM (

	.clk       (clk),
	.rst       (rst),
	.data_valid(data_valid),
	.ser_en    (ser_en),
	.mux_sel   (mux_sel),
	.ser_done  (ser_done),
	.par_en    (par_en),
	.busy      (busy)
);

endmodule 