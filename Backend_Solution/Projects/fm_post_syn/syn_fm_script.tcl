
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "/home/IC/Labs/Projects/syn/$top_module.svf"


set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################

## Read Reference technology libraries

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

## Read Reference Design Files

read_verilog -container Ref "/home/IC/Labs/Projects/rtl/ALU.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/ASYNC_FIFO.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/ClkDiv.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/CLKDIV_MUX.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/CLK_GATE.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/data_sampling.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/data_sync.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/deserializer.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/edge_bit_counter.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/FIFO_DF_SYNC.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/FIFO_MEM_CNTRL.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/FIFO_RD.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/FIFO_WR.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/mux.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/par_chk.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/parity_calc.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/PULSE_GEN.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/RegFile.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/RST_SYNC.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/Serializer.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/stp_chk.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/strt_chk.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/SYS_CTRL.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/SYS_TOP.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/UART.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/UART_RX.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/uart_rx_fsm.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/UART_TX.v"
read_verilog -container Ref "/home/IC/Labs/Projects/rtl/uart_tx_fsm.v"


## set the top Reference Design 
set_reference_design SYS_TOP
set_top SYS_TOP

######################## Implementation Container #########################

read_verilog -container Imp -netlist "/home/IC/Labs/Projects/syn/netlists/SYS_TOP.v"

## Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]
## Read Implementation Design Files

set_implementation_design SYS_TOP

## set the top Implementation Design

set_top SYS_TOP

## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
