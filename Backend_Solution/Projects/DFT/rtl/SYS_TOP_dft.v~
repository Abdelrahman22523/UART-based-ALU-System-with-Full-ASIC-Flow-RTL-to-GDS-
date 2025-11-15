module SYS_TOP # ( 
	parameter DATA_WIDTH = 8,
	parameter RF_ADDR = 4 ,
	parameter NUM_OF_CHAINS = 3
) (
 input   wire                     scan_clk,
 input   wire                     scan_rst,
 input   wire                     test_mode,
 input   wire 			  SE,
 input   wire [NUM_OF_CHAINS-1:0] SI,
 output  wire [NUM_OF_CHAINS-1:0] SO,
 input   wire                     RST_N,
 input   wire                     UART_CLK,
 input   wire                     REF_CLK,
 input   wire                     UART_RX_IN,
 output  wire                     UART_TX_O,
 output  wire                     parity_error,
 output  wire                     framing_error
);

// Reset synchronizer outputs
wire                                   SYNC_UART_RST,
                                       SYNC_REF_RST;
									   
// Clock divider outputs
wire					               UART_TX_CLK;
wire					               UART_RX_CLK;

// Register file outputs (operands and configuration)
wire      [DATA_WIDTH-1:0]             Operand_A,
                                       Operand_B,
									   UART_Config,
									   DIV_RATIO;
									   
// UART RX clock divider ratio
wire      [DATA_WIDTH-1:0]             DIV_RATIO_RX;
									   
// UART RX outputs (before synchronization)
wire      [DATA_WIDTH-1:0]             UART_RX_OUT;
wire         						   UART_RX_V_OUT;

// UART RX synchronized outputs
wire      [DATA_WIDTH-1:0]			   UART_RX_SYNC;
wire                                   UART_RX_V_SYNC;

// UART TX inputs (from system controller)
wire      [DATA_WIDTH-1:0]             UART_TX_IN;
wire        						   UART_TX_VLD;

// UART TX synchronized signals (from FIFO)
wire      [DATA_WIDTH-1:0]             UART_TX_SYNC;
wire        						   UART_TX_V_SYNC;

// UART TX status signals
wire                                   UART_TX_Busy;	
wire                                   UART_TX_Busy_PULSE;	
									   
// Register file control signals
wire                                   RF_WrEn;
wire                                   RF_RdEn;
wire      [RF_ADDR-1:0]                RF_Address;
wire      [DATA_WIDTH-1:0]             RF_WrData;
wire      [DATA_WIDTH-1:0]             RF_RdData;
wire                                   RF_RdData_VLD;	
wire                                   RF_wr_done;								   

// ALU control and clock gating signals
wire                                   CLKG_EN;
wire                                   ALU_EN;
wire      [3:0]                        ALU_FUN; 
wire      [DATA_WIDTH*2-1:0]           ALU_OUT;
wire                                   ALU_OUT_VLD; 
									   
// Gated ALU clock
wire                                   ALU_CLK ;								   

// FIFO status signal
wire                                   FIFO_FULL ;
	
// Clock divider enable
wire                                   CLKDIV_EN ;



///********************************************************///
//////////////////// 		 DFT		 /////////////////////
///********************************************************///

wire DFT_UART_CLK;
wire DFT_UART_TX_CLK;
wire DFT_UART_RX_CLK;

wire DFT_REF_CLK;

wire DFT_RST;

wire DFT_REF_RST;
wire DFT_UART_RST;



mux2X1 u_uart_clk_mux (
    .IN_0(UART_CLK),
    .IN_1(scan_clk),
    .SEL (test_mode),
    .OUT (DFT_UART_CLK)

    );


mux2X1 u_uart_TX_clk_mux (
    .IN_0(UART_TX_CLK),
    .IN_1(scan_clk),
    .SEL (test_mode),
    .OUT (DFT_UART_TX_CLK)

    );

mux2X1 u_uart_RX_clk_mux (
    .IN_0(UART_RX_CLK),
    .IN_1(scan_clk),
    .SEL (test_mode),
    .OUT (DFT_UART_RX_CLK)

    );


mux2X1 u_ref_clk_mux (
    .IN_0(REF_CLK),
    .IN_1(scan_clk),
    .SEL (test_mode),
    .OUT (DFT_REF_CLK)

    );



mux2X1 u_rst_mux (
    .IN_0(RST_N),
    .IN_1(scan_rst),
    .SEL (test_mode),
    .OUT (DFT_RST)
    );

mux2X1 u_uart_rst_mux (
    .IN_0(SYNC_UART_RST),
    .IN_1(scan_rst),
    .SEL (test_mode),
    .OUT (DFT_UART_RST)
    );

mux2X1 u_ref_rst_mux (
    .IN_0(SYNC_REF_RST),
    .IN_1(scan_rst),
    .SEL (test_mode),
    .OUT (DFT_REF_RST)
    );
								   
///********************************************************///
//////////////////// Reset synchronizers /////////////////////
///********************************************************///

RST_SYNC # (.NUM_STAGES(2)) U0_RST_SYNC (
.rst(DFT_RST),
.clk(DFT_UART_CLK),
.sync_rst(SYNC_UART_RST)
);

RST_SYNC # (.NUM_STAGES(2)) U1_RST_SYNC (
.rst(DFT_RST),
.clk(DFT_REF_CLK),
.sync_rst(SYNC_REF_RST)
);

///********************************************************///
////////////////////// Data Synchronizer /////////////////////
///********************************************************///

DATA_SYNC # (.NUM_STAGES(2) , .BUS_WIDTH(8)) U0_ref_sync (
.clk(DFT_REF_CLK),
.rst(DFT_REF_RST),
.unsync_bus(UART_RX_OUT),
.bus_enable(UART_RX_V_OUT),
.sync_bus(UART_RX_SYNC),
.enable_pulse(UART_RX_V_SYNC)
);

///********************************************************///
///////////////////////// Async FIFO /////////////////////////
///********************************************************///

ASYNC_FIFO #(.DATA_WIDTH(DATA_WIDTH) , .ADDR_WIDTH(3)) U0_UART_FIFO (
.w_clk(DFT_REF_CLK),
.w_rst(DFT_REF_RST),  
.w_inc(UART_TX_VLD),
.wr_data(UART_TX_IN),             
.r_clk(DFT_UART_TX_CLK),              
.r_rst(DFT_UART_RST),              
.r_inc(UART_TX_Busy_PULSE),              
.rd_data(UART_TX_SYNC),             
.full(FIFO_FULL),               
.empty(UART_TX_V_SYNC)               
);

///********************************************************///
//////////////////////// Pulse Generator /////////////////////
///********************************************************///

PULSE_GEN U0_PULSE_GEN (
.clk(DFT_UART_TX_CLK),
.rst(DFT_UART_RST),
.in_sig(UART_TX_Busy),
.pulse_sig(UART_TX_Busy_PULSE)
);

///********************************************************///
//////////// Clock Divider for UART_TX Clock /////////////////
///********************************************************///

CLK_DIV U0_ClkDiv (
.i_ref_clk(DFT_UART_CLK),             
.i_rst_n(DFT_UART_RST),                 
.i_clk_en(CLKDIV_EN),               
.i_div_ratio(DIV_RATIO),           
.o_div_clk(UART_TX_CLK)             
);

///********************************************************///
/////////////////////// Custom Mux Clock /////////////////////
///********************************************************///

CLKDIV_MUX U0_CLKDIV_MUX (
.in(UART_Config[7:2]),
.out(DIV_RATIO_RX)
);

///********************************************************///
//////////// Clock Divider for UART_RX Clock /////////////////
///********************************************************///

CLK_DIV U1_ClkDiv (
.i_ref_clk(DFT_UART_CLK),             
.i_rst_n(DFT_UART_RST),                 
.i_clk_en(CLKDIV_EN),               
.i_div_ratio(DIV_RATIO_RX),           
.o_div_clk(UART_RX_CLK)             
);

///********************************************************///
/////////////////////////// UART /////////////////////////////
///********************************************************///

UART  U0_UART (
.rst(DFT_UART_RST),
.tx_clk(DFT_UART_TX_CLK),
.rx_clk(DFT_UART_RX_CLK),
.par_en(UART_Config[0]),
.par_typ(UART_Config[1]),
.prescale(UART_Config[7:2]),
.rx_in_s(UART_RX_IN),
.rx_out_p(UART_RX_OUT),                      
.rx_out_v(UART_RX_V_OUT),                      
.tx_in_p(UART_TX_SYNC), 
.tx_in_v(!UART_TX_V_SYNC), 
.tx_out_s(UART_TX_O),
.busy(UART_TX_Busy),
.parity_error(parity_error),
.stop_error(framing_error)                  
);

///********************************************************///
//////////////////// System Controller ///////////////////////
///********************************************************///

SYS_CTRL #(
.alu_data(DATA_WIDTH),
.fun_width(4),
.frame_data(DATA_WIDTH),
.addr_bits(RF_ADDR)
) U0_SYS_CTRL (
.clk(DFT_REF_CLK),
.rst(DFT_REF_RST),
.rddata(RF_RdData),
.rddata_vld(RF_RdData_VLD),
.wr_done   (RF_wr_done),
.wr_en(RF_WrEn),
.rd_en(RF_RdEn),
.address(RF_Address),
.wr_data(RF_WrData),
.alu_en(ALU_EN),
.alu_fun(ALU_FUN), 
.alu_out(ALU_OUT),
.out_vld(ALU_OUT_VLD),  
.clk_en(CLKG_EN), 
.clk_div_en(CLKDIV_EN),   
.rx_p_data(UART_RX_SYNC), 
.rx_d_vld(UART_RX_V_SYNC),
.tx_p_data(UART_TX_IN), 
.tx_d_vld(UART_TX_VLD),
.fifo_full(FIFO_FULL)
);

///********************************************************///
/////////////////////// Register File ////////////////////////
///********************************************************///

Register_File_8_x_16 U0_RegFile (
.CLK(DFT_REF_CLK),
.RST(DFT_REF_RST),
.WrEn(RF_WrEn),
.RdEn(RF_RdEn),
.address(RF_Address), // Only use lower 3 bits for 8 registers
.WrData(RF_WrData),
.RdData(RF_RdData),
.RdData_VLD(RF_RdData_VLD),
.wr_done   (RF_wr_done),
.REG0(Operand_A),
.REG1(Operand_B),
.REG2(UART_Config),
.REG3(DIV_RATIO)
);

///********************************************************///
//////////////////////////// ALU /////////////////////////////
///********************************************************///
 
ALU_16_bit U0_ALU (
.clk(ALU_CLK),
.rst(DFT_REF_RST),  
.A(Operand_A), 
.B(Operand_B),
.EN(ALU_EN),
.ALU_FUN(ALU_FUN),
.ALU_OUT(ALU_OUT),
.ALU_OUT_VLD(ALU_OUT_VLD)
);

///********************************************************///
///////////////////////// Clock Gating ///////////////////////
///********************************************************///

CLK_GATE U0_CLK_GATE (
.clk_en(CLKG_EN),
.clk(DFT_REF_CLK),
.gated_clk(ALU_CLK),
.test_en(test_mode)
);

endmodule
