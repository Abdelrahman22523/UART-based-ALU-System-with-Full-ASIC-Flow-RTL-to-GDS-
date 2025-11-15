module UART_RX #(
    parameter sampling_bits = 6,
    parameter bit_cnt_w     = 4,
    parameter frame_data    = 8
) (
    input  wire                       clk,
    input  wire                       rst,
    input  wire                       par_typ,
    input  wire                       par_en,
    input  wire [sampling_bits-1:0]   prescale,
    input  wire                       rx_in,
    output wire [frame_data-1:0]      p_data,
    output wire                       data_valid,
    output wire                       parity_error,
    output wire                       stop_error
);

    // Internal signals
    wire [sampling_bits-1:0] edge_cnt;
    wire [bit_cnt_w-1:0]     bit_cnt;
    wire                     par_chk_en;
    wire                     strt_chk_en;
    wire                     stp_chk_en;
    wire                     deser_en;
    wire                     enable;
    wire                     dat_samp_en;
    wire                     sampled_bit;
    wire                     par_err;
    wire                     strt_glitch;
    wire                     stp_err;


    // Instantiate FSM module
    RX_FSM u_RX_FSM (
        .clk(clk),
        .rst(rst),
        .rx_in(rx_in),
        .par_en(par_en),
        .par_err(par_err),
        .strt_glitch(strt_glitch),
        .stp_err(stp_err),
        .prescale(prescale),
        .edge_cnt(edge_cnt),
        .bit_cnt(bit_cnt),
        .par_chk_en(par_chk_en),
        .strt_chk_en(strt_chk_en),
        .stp_chk_en(stp_chk_en),
        .deser_en(deser_en),
        .enable(enable),
        .dat_samp_en(dat_samp_en),
        .data_valid(data_valid)
    );

    // Instantiate edge and bit counter
    edge_bit_counter u_edge_bit_counter (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .prescale(prescale),
        .edge_cnt(edge_cnt),
        .bit_cnt(bit_cnt)
    );

    // Instantiate data sampling module
    data_sampling u_data_sampling (
        .clk(clk),
        .rst(rst),
        .rx_in(rx_in),
        .prescale(prescale),
        .edge_cnt(edge_cnt),
        .dat_samp_en(dat_samp_en),
        .sampled_data(sampled_bit)
    );

    // Instantiate deserializer
    deserializer u_deserializer (
        .clk(clk),
        .rst(rst),
        .deser_en(deser_en),
        .sampled_bit(sampled_bit),
        .bit_cnt(bit_cnt),
        .p_data(p_data)
    );

    // Instantiate parity check module
    parity_check u_parity_check (
        .clk(clk),
        .rst(rst),
        .par_typ(par_typ),
        .par_chk_en(par_chk_en),
        .sampled_bit(sampled_bit),
        .p_data(p_data),
        .par_err(par_err),
        .parity_error(parity_error),
        .bit_cnt     (bit_cnt)
    );

    // Instantiate stop bit check module
    stop_check u_stop_check (
        .clk(clk),
        .rst(rst),
        .stp_chk_en(stp_chk_en),
        .sampled_bit(sampled_bit),
        .stp_err(stp_err),
        .stop_error (stop_error),
        .bit_cnt    (bit_cnt) 
    );


    // Instantiate start bit check module
    strt_check u_strt_check (
        .clk(clk),
        .rst(rst),
        .strt_chk_en(strt_chk_en),
        .sampled_bit(sampled_bit),
        .strt_glitch(strt_glitch),
        .bit_cnt    (bit_cnt)
    );

endmodule