
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################
set REF_CLK_NAME REF_CLK
set REF_CLK_PER 20
set UART_CLK_NAME UART_CLK
set UART_CLK_PER 271.296798
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_RISE 0.05
set CLK_FALL 0.05
set TX_CLK_PER [expr $UART_CLK_PER * 32]



#1. Master Clocks

create_clock -name $REF_CLK_NAME -period $REF_CLK_PER -waveform "0 [expr $REF_CLK_PER/2]" [get_ports REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $REF_CLK_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $REF_CLK_NAME]
set_clock_transition -rise $CLK_RISE  [get_clocks $REF_CLK_NAME]
set_clock_transition -fall $CLK_FALL  [get_clocks $REF_CLK_NAME]
set_clock_latency $CLK_LAT [get_clocks $REF_CLK_NAME]

create_clock -name $UART_CLK_NAME -period $UART_CLK_PER -waveform "0 [expr $UART_CLK_PER/2]" [get_ports UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $UART_CLK_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $UART_CLK_NAME]
set_clock_transition -rise $CLK_RISE  [get_clocks $UART_CLK_NAME]
set_clock_transition -fall $CLK_FALL  [get_clocks $UART_CLK_NAME]
set_clock_latency $CLK_LAT [get_clocks $UART_CLK_NAME]



#2. Generated clocks

create_generated_clock -master_clock "REF_CLK" \
 -source [get_ports REF_CLK] \
 -name "ALU_CLK" -divide_by 1 [get_ports U0_CLK_GATE/gated_clk]

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks ALU_CLK]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW  [get_clocks ALU_CLK]


create_generated_clock -master_clock "UART_CLK" \
 -source [get_ports UART_CLK] \
 -name "UART_TX_CLK" -divide_by 32 [get_ports U0_ClkDiv/o_div_clk]

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks UART_TX_CLK]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW  [get_clocks UART_TX_CLK]


create_generated_clock -master_clock "UART_CLK" \
 -source [get_ports UART_CLK] \
 -name "UART_RX_CLK" -divide_by 1 [get_ports U1_ClkDiv/o_div_clk]

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks UART_RX_CLK]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW  [get_clocks UART_RX_CLK]


set_dont_touch_network [get_clocks {REF_CLK UART_CLK UART_TX_CLK UART_RX_CLK ALU_CLK}]

####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous \
   -group {REF_CLK ALU_CLK} \
   -group {UART_CLK UART_TX_CLK UART_RX_CLK}

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################
set TX_in_delay  [expr 0.2*$TX_CLK_PER]
set TX_out_delay [expr 0.2*$TX_CLK_PER]

set RX_in_delay  [expr 0.2*$UART_CLK_PER]
set RX_out_delay [expr 0.2*$UART_CLK_PER]

#Constrain Input Paths
set_input_delay $RX_in_delay -clock [get_clocks UART_RX_CLK] [get_ports UART_RX_IN]


#Constrain Output Paths
set_output_delay $TX_out_delay -clock [get_clocks UART_TX_CLK] [get_ports UART_TX_O]
set_output_delay $RX_out_delay -clock [get_clocks UART_RX_CLK] [get_ports parity_error]
set_output_delay $RX_out_delay -clock [get_clocks UART_RX_CLK] [get_ports framing_error]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports UART_RX_IN] 

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_ports UART_TX_O]
set_load 0.1 [get_ports parity_error]
set_load 0.1 [get_ports framing_error]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

#set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################
           #########################################################
                  #### Section 8 : premapped cells ####
           #########################################################
####################################################################################


####################################################################################

