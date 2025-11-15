onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TESTBENCH_SIGNALS -color Coral /SYSTEM_TB/RST_N
add wave -noupdate -expand -group TESTBENCH_SIGNALS -color Coral /SYSTEM_TB/REF_CLK
add wave -noupdate -expand -group TESTBENCH_SIGNALS -color Coral /SYSTEM_TB/UART_CLK
add wave -noupdate -expand -group TESTBENCH_SIGNALS -color Coral /SYSTEM_TB/TX_CLK
add wave -noupdate -expand -group TESTBENCH_SIGNALS -color Coral /SYSTEM_TB/UART_RX_IN
add wave -noupdate -expand -group TESTBENCH_SIGNALS -color Coral /SYSTEM_TB/UART_TX_O
add wave -noupdate -expand -group TESTBENCH_SIGNALS -color Coral /SYSTEM_TB/parity_bit
add wave -noupdate -expand -group UART_RST -color Gold -radix binary /SYSTEM_TB/dut/U0_RST_SYNC/clk
add wave -noupdate -expand -group UART_RST -color Gold -radix binary /SYSTEM_TB/dut/U0_RST_SYNC/rst
add wave -noupdate -expand -group UART_RST -color Gold -radix binary /SYSTEM_TB/dut/U0_RST_SYNC/sync_rst
add wave -noupdate -expand -group UART -radix unsigned /SYSTEM_TB/dut/U0_UART/prescale
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/par_en
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/par_typ
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/rst
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/rx_clk
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/rx_in_s
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/rx_out_p
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/rx_out_v
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/tx_clk
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/tx_in_p
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/tx_in_v
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/busy
add wave -noupdate -expand -group UART -radix binary /SYSTEM_TB/dut/U0_UART/tx_out_s
add wave -noupdate -expand -group UART /SYSTEM_TB/dut/parity_error
add wave -noupdate -expand -group UART /SYSTEM_TB/dut/framing_error
add wave -noupdate -expand -group DATA_SYNC -color Gray90 -radix binary /SYSTEM_TB/dut/U0_ref_sync/rst
add wave -noupdate -expand -group DATA_SYNC -color Gray90 -radix binary /SYSTEM_TB/dut/U0_ref_sync/clk
add wave -noupdate -expand -group DATA_SYNC -color Gray90 -radix binary /SYSTEM_TB/dut/U0_ref_sync/unsync_bus
add wave -noupdate -expand -group DATA_SYNC -color Gray90 -radix binary /SYSTEM_TB/dut/U0_ref_sync/sync_bus
add wave -noupdate -expand -group DATA_SYNC -color Gray90 -radix binary /SYSTEM_TB/dut/U0_ref_sync/bus_enable
add wave -noupdate -expand -group DATA_SYNC -color Gray90 -radix binary /SYSTEM_TB/dut/U0_ref_sync/enable_pulse
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/rst
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/clk
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix hexadecimal /SYSTEM_TB/dut/U0_SYS_CTRL/rx_p_data
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/rx_d_vld
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/wr_en
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix unsigned /SYSTEM_TB/dut/U0_SYS_CTRL/wr_data
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/address
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix unsigned /SYSTEM_TB/dut/U0_SYS_CTRL/rddata
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/rddata_vld
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/rd_en
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/clk_en
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/alu_fun
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/alu_en
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix unsigned /SYSTEM_TB/dut/U0_SYS_CTRL/alu_out
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/out_vld
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix unsigned /SYSTEM_TB/dut/U0_SYS_CTRL/tx_p_data
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/tx_d_vld
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/next_state
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/current_state
add wave -noupdate -expand -group CONTROL_UNIT -color {Yellow Green} -radix binary /SYSTEM_TB/dut/U0_SYS_CTRL/fifo_full
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/RST
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/CLK
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/WrEn
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/address
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/WrData
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary -childformat {{{/SYSTEM_TB/dut/U0_RegFile/Reg_File[0]} -radix binary} {{/SYSTEM_TB/dut/U0_RegFile/Reg_File[1]} -radix binary} {{/SYSTEM_TB/dut/U0_RegFile/Reg_File[2]} -radix binary} {{/SYSTEM_TB/dut/U0_RegFile/Reg_File[3]} -radix binary} {{/SYSTEM_TB/dut/U0_RegFile/Reg_File[4]} -radix binary} {{/SYSTEM_TB/dut/U0_RegFile/Reg_File[5]} -radix binary} {{/SYSTEM_TB/dut/U0_RegFile/Reg_File[6]} -radix binary} {{/SYSTEM_TB/dut/U0_RegFile/Reg_File[7]} -radix binary}} -subitemconfig {{/SYSTEM_TB/dut/U0_RegFile/Reg_File[0]} {-color {Spring Green} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_RegFile/Reg_File[1]} {-color {Spring Green} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_RegFile/Reg_File[2]} {-color {Spring Green} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_RegFile/Reg_File[3]} {-color {Spring Green} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_RegFile/Reg_File[4]} {-color {Spring Green} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_RegFile/Reg_File[5]} {-color {Spring Green} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_RegFile/Reg_File[6]} {-color {Spring Green} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_RegFile/Reg_File[7]} {-color {Spring Green} -height 15 -radix binary}} /SYSTEM_TB/dut/U0_RegFile/Reg_File
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/RdEn
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/RdData
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/RdData_VLD
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/REG3
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/REG2
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/REG1
add wave -noupdate -expand -group REG_FILE -color {Spring Green} -radix binary /SYSTEM_TB/dut/U0_RegFile/REG0
add wave -noupdate -expand -group PULSE_GEN -color Gold -radix binary /SYSTEM_TB/dut/U0_PULSE_GEN/rst
add wave -noupdate -expand -group PULSE_GEN -color Gold -radix binary /SYSTEM_TB/dut/U0_PULSE_GEN/clk
add wave -noupdate -expand -group PULSE_GEN -color Gold -radix binary /SYSTEM_TB/dut/U0_PULSE_GEN/in_sig
add wave -noupdate -expand -group PULSE_GEN -color Gold -radix binary /SYSTEM_TB/dut/U0_PULSE_GEN/pulse_sig
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/w_rst
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/w_clk
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/wr_ptr
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/w_inc
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/wclken
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/full
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary -childformat {{{/SYSTEM_TB/dut/U0_UART_FIFO/wr_addr[2]} -radix binary} {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_addr[1]} -radix binary} {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_addr[0]} -radix binary}} -subitemconfig {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_addr[2]} {-color {Blue Violet} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_UART_FIFO/wr_addr[1]} {-color {Blue Violet} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_UART_FIFO/wr_addr[0]} {-color {Blue Violet} -height 15 -radix binary}} /SYSTEM_TB/dut/U0_UART_FIFO/wr_addr
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary -childformat {{{/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[7]} -radix binary} {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[6]} -radix binary} {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[5]} -radix binary} {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[4]} -radix binary} {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[3]} -radix binary} {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[2]} -radix binary} {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[1]} -radix binary} {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[0]} -radix binary}} -subitemconfig {{/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[7]} {-color {Blue Violet} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[6]} {-color {Blue Violet} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[5]} {-color {Blue Violet} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[4]} {-color {Blue Violet} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[3]} {-color {Blue Violet} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[2]} {-color {Blue Violet} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[1]} {-color {Blue Violet} -height 15 -radix binary} {/SYSTEM_TB/dut/U0_UART_FIFO/wr_data[0]} {-color {Blue Violet} -height 15 -radix binary}} /SYSTEM_TB/dut/U0_UART_FIFO/wr_data
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/rd_ptr
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/r_rst
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/r_clk
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/r_inc
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/empty
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/rd_addr
add wave -noupdate -expand -group FIFO -color {Blue Violet} -radix binary /SYSTEM_TB/dut/U0_UART_FIFO/rd_data
add wave -noupdate -expand -group CLK_GATE -radix binary /SYSTEM_TB/dut/U0_CLK_GATE/clk
add wave -noupdate -expand -group CLK_GATE -radix binary /SYSTEM_TB/dut/U0_CLK_GATE/clk_en
add wave -noupdate -expand -group CLK_GATE -radix binary /SYSTEM_TB/dut/U0_CLK_GATE/gated_clk
add wave -noupdate -expand -group ALU -color Gold -radix binary /SYSTEM_TB/dut/U0_ALU/rst
add wave -noupdate -expand -group ALU -color Gold -radix binary /SYSTEM_TB/dut/U0_ALU/clk
add wave -noupdate -expand -group ALU -color Gold -radix binary /SYSTEM_TB/dut/U0_ALU/EN
add wave -noupdate -expand -group ALU -color Gold -radix binary /SYSTEM_TB/dut/U0_ALU/ALU_FUN
add wave -noupdate -expand -group ALU -color Gold -radix binary /SYSTEM_TB/dut/U0_ALU/A
add wave -noupdate -expand -group ALU -color Gold -radix binary /SYSTEM_TB/dut/U0_ALU/B
add wave -noupdate -expand -group ALU -color Gold -radix binary /SYSTEM_TB/dut/U0_ALU/ALU_OUT
add wave -noupdate -expand -group ALU -color Gold -radix binary /SYSTEM_TB/dut/U0_ALU/ALU_OUT_VLD
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/odd
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/o_div_clk
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/i_rst_n
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/i_ref_clk
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/i_div_ratio
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/i_clk_en
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/half_count
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/full_count
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/flag
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/div_clk_reg
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/counter
add wave -noupdate -expand -group TX_CLK_DIV -radix binary /SYSTEM_TB/dut/U0_ClkDiv/clk_div_en
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/i_ref_clk
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/i_rst_n
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/i_clk_en
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/i_div_ratio
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/o_div_clk
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/clk_div_en
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/odd
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/half_count
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/full_count
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/counter
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/flag
add wave -noupdate -expand -group RX_CLK_DIV -radix binary /SYSTEM_TB/dut/U1_ClkDiv/div_clk_reg
add wave -noupdate -expand -group SYSTEM_RST -radix binary /SYSTEM_TB/dut/U1_RST_SYNC/clk
add wave -noupdate -expand -group SYSTEM_RST -radix binary /SYSTEM_TB/dut/U1_RST_SYNC/rst
add wave -noupdate -expand -group SYSTEM_RST -radix binary /SYSTEM_TB/dut/U1_RST_SYNC/sync_rst
add wave -noupdate -expand -group SYSTEM_RST -radix binary /SYSTEM_TB/dut/U1_RST_SYNC/sync_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {18306229 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 202
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {49910777 ps}
