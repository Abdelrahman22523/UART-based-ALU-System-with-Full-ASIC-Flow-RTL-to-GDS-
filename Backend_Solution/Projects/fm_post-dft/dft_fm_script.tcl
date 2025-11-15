
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "/home/IC/Labs/Projects/DFT/dft/$top_module.svf"


set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################

## Read Reference technology libraries

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

## Read Reference Design Files

read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/ALU.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/ASYNC_FIFO.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/ClkDiv.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/CLKDIV_MUX.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/CLK_GATE.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/data_sampling.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/data_sync.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/deserializer.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/edge_bit_counter.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/FIFO_DF_SYNC.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/FIFO_MEM_CNTRL.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/FIFO_RD.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/FIFO_WR.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/mux.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/mux2X1.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/par_chk.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/parity_calc.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/PULSE_GEN.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/RegFile.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/RST_SYNC.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/Serializer.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/stp_chk.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/strt_chk.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/SYS_CTRL.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/SYS_TOP_dft.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/UART.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/UART_RX.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/uart_rx_fsm.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/UART_TX.v"
read_verilog -container Ref "/home/IC/Labs/Projects/DFT/rtl/uart_tx_fsm.v"


## set the top Reference Design
set_reference_design SYS_TOP
set_top SYS_TOP 


######################## Implementation Container #########################

## Read Implementation technology libraries

read_verilog -container Imp -netlist "/home/IC/Labs/Projects/DFT/dft/netlists/SYS_TOP.v"

## Read Implementation Design Files

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]
 
## set the top Implementation Design
set_implementation_design SYS_TOP
set_top SYS_TOP

############################### Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in

set_dont_verify_points -type port Ref:/WORK/*/SI*
set_dont_verify_points -type port Imp:/WORK/*/SI*

#scan_out

set_dont_verify_points -type port Ref:/WORK/*/SO*
set_dont_verify_points -type port Imp:/WORK/*/SO*

############################### constants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode

set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable

set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0

########################### matching Compare points ##########################

match

################################# verify #####################################

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
