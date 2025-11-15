/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep 30 21:11:52 2025
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   CLKMX2X4M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN27_scan_rst;
   wire FE_PHN24_scan_rst;
   wire FE_PHN23_RST_N;
   wire FE_PHN22_RST_N;
   wire FE_PHN15_DFT_RST;
   wire FE_PHN2_RST_N;
   wire FE_PHN1_RST_N;
   wire FE_PHN0_RST_N;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC27_scan_rst (.Y(FE_PHN27_scan_rst), 
	.A(FE_PHN24_scan_rst));
   DLY4X1M FE_PHC24_scan_rst (.Y(FE_PHN24_scan_rst), 
	.A(IN_1));
   DLY4X1M FE_PHC23_RST_N (.Y(FE_PHN23_RST_N), 
	.A(FE_PHN22_RST_N));
   DLY4X1M FE_PHC22_RST_N (.Y(FE_PHN22_RST_N), 
	.A(IN_0));
   CLKBUFX2M FE_PHC14_DFT_RST (.Y(OUT), 
	.A(FE_PHN15_DFT_RST));
   CLKBUFX2M FE_PHC2_RST_N (.Y(FE_PHN2_RST_N), 
	.A(FE_PHN1_RST_N));
   CLKBUFX2M FE_PHC1_RST_N (.Y(FE_PHN1_RST_N), 
	.A(FE_PHN0_RST_N));
   CLKBUFX2M FE_PHC0_RST_N (.Y(FE_PHN0_RST_N), 
	.A(FE_PHN23_RST_N));
   MX2X2M U1 (.Y(FE_PHN15_DFT_RST), 
	.S0(N0), 
	.B(FE_PHN27_scan_rst), 
	.A(FE_PHN2_RST_N));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN26_scan_rst;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC26_scan_rst (.Y(FE_PHN26_scan_rst), 
	.A(IN_1));
   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN26_scan_rst), 
	.A(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN28_scan_rst;
   wire FE_PHN25_scan_rst;
   wire FE_PHN13_DFT_REF_RST;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC28_scan_rst (.Y(FE_PHN28_scan_rst), 
	.A(FE_PHN25_scan_rst));
   DLY4X1M FE_PHC25_scan_rst (.Y(FE_PHN25_scan_rst), 
	.A(IN_1));
   CLKBUFX8M FE_PHC3_DFT_REF_RST (.Y(OUT), 
	.A(FE_PHN13_DFT_REF_RST));
   MX2X2M U1 (.Y(FE_PHN13_DFT_REF_RST), 
	.S0(N0), 
	.B(FE_PHN28_scan_rst), 
	.A(IN_0));
endmodule

module RST_SYNC_NUM_STAGES2_test_0 (
	clk, 
	rst, 
	sync_rst, 
	test_si, 
	test_se, 
	DFT_UART_CLK__L8_N3);
   input clk;
   input rst;
   output sync_rst;
   input test_si;
   input test_se;
   input DFT_UART_CLK__L8_N3;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_rst), 
	.D(\sync_reg[0] ), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(DFT_UART_CLK__L8_N3));
endmodule

module RST_SYNC_NUM_STAGES2_test_1 (
	clk, 
	rst, 
	sync_rst, 
	test_si, 
	test_se);
   input clk;
   input rst;
   output sync_rst;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_rst), 
	.D(\sync_reg[0] ), 
	.CK(clk));
endmodule

module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 (
	clk, 
	rst, 
	unsync_bus, 
	bus_enable, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input [7:0] unsync_bus;
   input bus_enable;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire pulse_flop;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n23;
   wire [1:0] sync_reg;

   assign test_so = sync_reg[1] ;

   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[6]), 
	.D(n16), 
	.CK(clk));
   SDFFRQX2M pulse_flop_reg (.SI(enable_pulse), 
	.SE(test_se), 
	.RN(rst), 
	.Q(pulse_flop), 
	.D(sync_reg[1]), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[5]), 
	.D(n14), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[2]), 
	.D(n8), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(pulse_flop), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(clk));
   SDFFRQX2M enable_pulse_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(enable_pulse), 
	.D(n23), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_reg[0]), 
	.D(bus_enable), 
	.CK(clk));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(sync_reg[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_reg[1]), 
	.D(sync_reg[0]), 
	.CK(clk));
   INVX2M U4 (.Y(n23), 
	.A(n1));
   NAND2BX2M U5 (.Y(n1), 
	.B(sync_reg[1]), 
	.AN(pulse_flop));
   AO22X1M U6 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n23), 
	.A0(unsync_bus[0]));
   AO22X1M U7 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n23), 
	.A0(unsync_bus[1]));
   AO22X1M U8 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n23), 
	.A0(unsync_bus[2]));
   AO22X1M U9 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n23), 
	.A0(unsync_bus[3]));
   AO22X1M U10 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n23), 
	.A0(unsync_bus[4]));
   AO22X1M U11 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n23), 
	.A0(unsync_bus[5]));
   AO22X1M U12 (.Y(n16), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n23), 
	.A0(unsync_bus[6]));
   AO22X1M U25 (.Y(n18), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n23), 
	.A0(unsync_bus[7]));
endmodule

module FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH3_test_1 (
	w_clk, 
	w_rst, 
	wclken, 
	wr_data, 
	wr_addr, 
	rd_addr, 
	rd_data, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_DFT_REF_RST);
   input w_clk;
   input w_rst;
   input wclken;
   input [7:0] wr_data;
   input [2:0] wr_addr;
   input [2:0] rd_addr;
   output [7:0] rd_data;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_DFT_REF_RST;

   // Internal wires
   wire N10;
   wire N11;
   wire N12;
   wire \mem[0][7] ;
   wire \mem[0][6] ;
   wire \mem[0][5] ;
   wire \mem[0][4] ;
   wire \mem[0][3] ;
   wire \mem[0][2] ;
   wire \mem[0][1] ;
   wire \mem[0][0] ;
   wire \mem[1][7] ;
   wire \mem[1][6] ;
   wire \mem[1][5] ;
   wire \mem[1][4] ;
   wire \mem[1][3] ;
   wire \mem[1][2] ;
   wire \mem[1][1] ;
   wire \mem[1][0] ;
   wire \mem[2][7] ;
   wire \mem[2][6] ;
   wire \mem[2][5] ;
   wire \mem[2][4] ;
   wire \mem[2][3] ;
   wire \mem[2][2] ;
   wire \mem[2][1] ;
   wire \mem[2][0] ;
   wire \mem[3][7] ;
   wire \mem[3][6] ;
   wire \mem[3][5] ;
   wire \mem[3][4] ;
   wire \mem[3][3] ;
   wire \mem[3][2] ;
   wire \mem[3][1] ;
   wire \mem[3][0] ;
   wire \mem[4][7] ;
   wire \mem[4][6] ;
   wire \mem[4][5] ;
   wire \mem[4][4] ;
   wire \mem[4][3] ;
   wire \mem[4][2] ;
   wire \mem[4][1] ;
   wire \mem[4][0] ;
   wire \mem[5][7] ;
   wire \mem[5][6] ;
   wire \mem[5][5] ;
   wire \mem[5][4] ;
   wire \mem[5][3] ;
   wire \mem[5][2] ;
   wire \mem[5][1] ;
   wire \mem[5][0] ;
   wire \mem[6][7] ;
   wire \mem[6][6] ;
   wire \mem[6][5] ;
   wire \mem[6][4] ;
   wire \mem[6][3] ;
   wire \mem[6][2] ;
   wire \mem[6][1] ;
   wire \mem[6][0] ;
   wire \mem[7][7] ;
   wire \mem[7][6] ;
   wire \mem[7][5] ;
   wire \mem[7][4] ;
   wire \mem[7][3] ;
   wire \mem[7][2] ;
   wire \mem[7][1] ;
   wire \mem[7][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;

   assign N10 = rd_addr[0] ;
   assign N11 = rd_addr[1] ;
   assign N12 = rd_addr[2] ;
   assign test_so1 = \mem[2][0]  ;
   assign test_so2 = \mem[7][7]  ;

   SDFFRQX2M \mem_reg[1][7]  (.SI(\mem[1][6] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[1][7] ), 
	.D(n140), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[1][6]  (.SI(\mem[1][5] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[1][6] ), 
	.D(n139), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[1][5]  (.SI(\mem[1][4] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[1][5] ), 
	.D(n138), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[1][4]  (.SI(\mem[1][3] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[1][4] ), 
	.D(n137), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[1][3]  (.SI(\mem[1][2] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[1][3] ), 
	.D(n136), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[1][2]  (.SI(\mem[1][1] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[1][2] ), 
	.D(n135), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[1][1]  (.SI(\mem[1][0] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[1][1] ), 
	.D(n134), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[1][0]  (.SI(\mem[0][7] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[1][0] ), 
	.D(n133), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[5][7]  (.SI(\mem[5][6] ), 
	.SE(n188), 
	.RN(FE_OFN0_DFT_REF_RST), 
	.Q(\mem[5][7] ), 
	.D(n108), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[5][6]  (.SI(\mem[5][5] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[5][6] ), 
	.D(n107), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[5][5]  (.SI(\mem[5][4] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[5][5] ), 
	.D(n106), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[5][4]  (.SI(\mem[5][3] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[5][4] ), 
	.D(n105), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[5][3]  (.SI(\mem[5][2] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[5][3] ), 
	.D(n104), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[5][2]  (.SI(\mem[5][1] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[5][2] ), 
	.D(n103), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[5][1]  (.SI(\mem[5][0] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[5][1] ), 
	.D(n102), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[5][0]  (.SI(\mem[4][7] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[5][0] ), 
	.D(n101), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[3][7]  (.SI(\mem[3][6] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[3][7] ), 
	.D(n124), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[3][6]  (.SI(\mem[3][5] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[3][6] ), 
	.D(n123), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[3][5]  (.SI(\mem[3][4] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[3][5] ), 
	.D(n122), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[3][4]  (.SI(\mem[3][3] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[3][4] ), 
	.D(n121), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[3][3]  (.SI(\mem[3][2] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[3][3] ), 
	.D(n120), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[3][2]  (.SI(\mem[3][1] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[3][2] ), 
	.D(n119), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[3][1]  (.SI(\mem[3][0] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[3][1] ), 
	.D(n118), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[3][0]  (.SI(\mem[2][7] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[3][0] ), 
	.D(n117), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[7][7]  (.SI(\mem[7][6] ), 
	.SE(n188), 
	.RN(FE_OFN0_DFT_REF_RST), 
	.Q(\mem[7][7] ), 
	.D(n92), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[7][6]  (.SI(\mem[7][5] ), 
	.SE(n187), 
	.RN(FE_OFN0_DFT_REF_RST), 
	.Q(\mem[7][6] ), 
	.D(n91), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[7][5]  (.SI(\mem[7][4] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[7][5] ), 
	.D(n90), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[7][4]  (.SI(\mem[7][3] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[7][4] ), 
	.D(n89), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[7][3]  (.SI(\mem[7][2] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[7][3] ), 
	.D(n88), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[7][2]  (.SI(\mem[7][1] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[7][2] ), 
	.D(n87), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[7][1]  (.SI(\mem[7][0] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[7][1] ), 
	.D(n86), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[7][0]  (.SI(\mem[6][7] ), 
	.SE(n185), 
	.RN(FE_OFN0_DFT_REF_RST), 
	.Q(\mem[7][0] ), 
	.D(n85), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[2][7]  (.SI(\mem[2][6] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[2][7] ), 
	.D(n132), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[2][6]  (.SI(\mem[2][5] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[2][6] ), 
	.D(n131), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[2][5]  (.SI(\mem[2][4] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[2][5] ), 
	.D(n130), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[2][4]  (.SI(\mem[2][3] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[2][4] ), 
	.D(n129), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[2][3]  (.SI(\mem[2][2] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[2][3] ), 
	.D(n128), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[2][2]  (.SI(\mem[2][1] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[2][2] ), 
	.D(n127), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[2][1]  (.SI(test_si2), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[2][1] ), 
	.D(n126), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[2][0]  (.SI(\mem[1][7] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[2][0] ), 
	.D(n125), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[6][7]  (.SI(\mem[6][6] ), 
	.SE(n188), 
	.RN(FE_OFN0_DFT_REF_RST), 
	.Q(\mem[6][7] ), 
	.D(n100), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[6][6]  (.SI(\mem[6][5] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[6][6] ), 
	.D(n99), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[6][5]  (.SI(\mem[6][4] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[6][5] ), 
	.D(n98), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[6][4]  (.SI(\mem[6][3] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[6][4] ), 
	.D(n97), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[6][3]  (.SI(\mem[6][2] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[6][3] ), 
	.D(n96), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[6][2]  (.SI(\mem[6][1] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[6][2] ), 
	.D(n95), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[6][1]  (.SI(\mem[6][0] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[6][1] ), 
	.D(n94), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[6][0]  (.SI(\mem[5][7] ), 
	.SE(n185), 
	.RN(FE_OFN0_DFT_REF_RST), 
	.Q(\mem[6][0] ), 
	.D(n93), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[0][7]  (.SI(\mem[0][6] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[0][7] ), 
	.D(n148), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[0][6]  (.SI(\mem[0][5] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[0][6] ), 
	.D(n147), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[0][5]  (.SI(\mem[0][4] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[0][5] ), 
	.D(n146), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[0][4]  (.SI(\mem[0][3] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[0][4] ), 
	.D(n145), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[0][3]  (.SI(\mem[0][2] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[0][3] ), 
	.D(n144), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[0][2]  (.SI(\mem[0][1] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[0][2] ), 
	.D(n143), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[0][1]  (.SI(\mem[0][0] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[0][1] ), 
	.D(n142), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[0][0]  (.SI(test_si1), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[0][0] ), 
	.D(n141), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[4][7]  (.SI(\mem[4][6] ), 
	.SE(n188), 
	.RN(FE_OFN0_DFT_REF_RST), 
	.Q(\mem[4][7] ), 
	.D(n116), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[4][6]  (.SI(\mem[4][5] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[4][6] ), 
	.D(n115), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[4][5]  (.SI(\mem[4][4] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[4][5] ), 
	.D(n114), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[4][4]  (.SI(\mem[4][3] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[4][4] ), 
	.D(n113), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[4][3]  (.SI(\mem[4][2] ), 
	.SE(n188), 
	.RN(w_rst), 
	.Q(\mem[4][3] ), 
	.D(n112), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[4][2]  (.SI(\mem[4][1] ), 
	.SE(n187), 
	.RN(w_rst), 
	.Q(\mem[4][2] ), 
	.D(n111), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[4][1]  (.SI(\mem[4][0] ), 
	.SE(n186), 
	.RN(w_rst), 
	.Q(\mem[4][1] ), 
	.D(n110), 
	.CK(w_clk));
   SDFFRQX2M \mem_reg[4][0]  (.SI(\mem[3][7] ), 
	.SE(n185), 
	.RN(w_rst), 
	.Q(\mem[4][0] ), 
	.D(n109), 
	.CK(w_clk));
   NAND3X2M U79 (.Y(n79), 
	.C(n76), 
	.B(n180), 
	.A(n179));
   NAND3X2M U80 (.Y(n84), 
	.C(n81), 
	.B(n180), 
	.A(n179));
   NOR2BX2M U81 (.Y(n81), 
	.B(wr_addr[2]), 
	.AN(wclken));
   OAI2BB2X1M U82 (.Y(n141), 
	.B1(n84), 
	.B0(n178), 
	.A1N(n84), 
	.A0N(\mem[0][0] ));
   OAI2BB2X1M U83 (.Y(n142), 
	.B1(n84), 
	.B0(n177), 
	.A1N(n84), 
	.A0N(\mem[0][1] ));
   OAI2BB2X1M U84 (.Y(n143), 
	.B1(n84), 
	.B0(n176), 
	.A1N(n84), 
	.A0N(\mem[0][2] ));
   OAI2BB2X1M U85 (.Y(n144), 
	.B1(n84), 
	.B0(n175), 
	.A1N(n84), 
	.A0N(\mem[0][3] ));
   OAI2BB2X1M U86 (.Y(n145), 
	.B1(n84), 
	.B0(n174), 
	.A1N(n84), 
	.A0N(\mem[0][4] ));
   OAI2BB2X1M U87 (.Y(n146), 
	.B1(n84), 
	.B0(n173), 
	.A1N(n84), 
	.A0N(\mem[0][5] ));
   OAI2BB2X1M U88 (.Y(n147), 
	.B1(n84), 
	.B0(n172), 
	.A1N(n84), 
	.A0N(\mem[0][6] ));
   OAI2BB2X1M U89 (.Y(n148), 
	.B1(n84), 
	.B0(n171), 
	.A1N(n84), 
	.A0N(\mem[0][7] ));
   OAI2BB2X1M U90 (.Y(n109), 
	.B1(n79), 
	.B0(n178), 
	.A1N(n79), 
	.A0N(\mem[4][0] ));
   OAI2BB2X1M U91 (.Y(n110), 
	.B1(n79), 
	.B0(n177), 
	.A1N(n79), 
	.A0N(\mem[4][1] ));
   OAI2BB2X1M U92 (.Y(n111), 
	.B1(n79), 
	.B0(n176), 
	.A1N(n79), 
	.A0N(\mem[4][2] ));
   OAI2BB2X1M U93 (.Y(n112), 
	.B1(n79), 
	.B0(n175), 
	.A1N(n79), 
	.A0N(\mem[4][3] ));
   OAI2BB2X1M U94 (.Y(n113), 
	.B1(n79), 
	.B0(n174), 
	.A1N(n79), 
	.A0N(\mem[4][4] ));
   OAI2BB2X1M U95 (.Y(n114), 
	.B1(n79), 
	.B0(n173), 
	.A1N(n79), 
	.A0N(\mem[4][5] ));
   OAI2BB2X1M U96 (.Y(n115), 
	.B1(n79), 
	.B0(n172), 
	.A1N(n79), 
	.A0N(\mem[4][6] ));
   OAI2BB2X1M U97 (.Y(n116), 
	.B1(n79), 
	.B0(n171), 
	.A1N(n79), 
	.A0N(\mem[4][7] ));
   INVX2M U98 (.Y(n178), 
	.A(wr_data[0]));
   INVX2M U99 (.Y(n177), 
	.A(wr_data[1]));
   INVX2M U100 (.Y(n176), 
	.A(wr_data[2]));
   INVX2M U101 (.Y(n175), 
	.A(wr_data[3]));
   INVX2M U102 (.Y(n174), 
	.A(wr_data[4]));
   INVX2M U103 (.Y(n173), 
	.A(wr_data[5]));
   INVX2M U104 (.Y(n172), 
	.A(wr_data[6]));
   INVX2M U105 (.Y(n171), 
	.A(wr_data[7]));
   NAND3X2M U107 (.Y(n83), 
	.C(n81), 
	.B(n180), 
	.A(wr_addr[0]));
   OAI2BB2X1M U108 (.Y(n93), 
	.B1(n77), 
	.B0(n178), 
	.A1N(n77), 
	.A0N(\mem[6][0] ));
   OAI2BB2X1M U109 (.Y(n94), 
	.B1(n77), 
	.B0(n177), 
	.A1N(n77), 
	.A0N(\mem[6][1] ));
   OAI2BB2X1M U110 (.Y(n95), 
	.B1(n77), 
	.B0(n176), 
	.A1N(n77), 
	.A0N(\mem[6][2] ));
   OAI2BB2X1M U111 (.Y(n96), 
	.B1(n77), 
	.B0(n175), 
	.A1N(n77), 
	.A0N(\mem[6][3] ));
   OAI2BB2X1M U112 (.Y(n97), 
	.B1(n77), 
	.B0(n174), 
	.A1N(n77), 
	.A0N(\mem[6][4] ));
   OAI2BB2X1M U113 (.Y(n98), 
	.B1(n77), 
	.B0(n173), 
	.A1N(n77), 
	.A0N(\mem[6][5] ));
   OAI2BB2X1M U114 (.Y(n99), 
	.B1(n77), 
	.B0(n172), 
	.A1N(n77), 
	.A0N(\mem[6][6] ));
   OAI2BB2X1M U115 (.Y(n100), 
	.B1(n77), 
	.B0(n171), 
	.A1N(n77), 
	.A0N(\mem[6][7] ));
   OAI2BB2X1M U116 (.Y(n101), 
	.B1(n78), 
	.B0(n178), 
	.A1N(n78), 
	.A0N(\mem[5][0] ));
   OAI2BB2X1M U117 (.Y(n102), 
	.B1(n78), 
	.B0(n177), 
	.A1N(n78), 
	.A0N(\mem[5][1] ));
   OAI2BB2X1M U118 (.Y(n103), 
	.B1(n78), 
	.B0(n176), 
	.A1N(n78), 
	.A0N(\mem[5][2] ));
   OAI2BB2X1M U119 (.Y(n104), 
	.B1(n78), 
	.B0(n175), 
	.A1N(n78), 
	.A0N(\mem[5][3] ));
   OAI2BB2X1M U120 (.Y(n105), 
	.B1(n78), 
	.B0(n174), 
	.A1N(n78), 
	.A0N(\mem[5][4] ));
   OAI2BB2X1M U121 (.Y(n106), 
	.B1(n78), 
	.B0(n173), 
	.A1N(n78), 
	.A0N(\mem[5][5] ));
   OAI2BB2X1M U122 (.Y(n107), 
	.B1(n78), 
	.B0(n172), 
	.A1N(n78), 
	.A0N(\mem[5][6] ));
   OAI2BB2X1M U123 (.Y(n108), 
	.B1(n78), 
	.B0(n171), 
	.A1N(n78), 
	.A0N(\mem[5][7] ));
   OAI2BB2X1M U124 (.Y(n117), 
	.B1(n80), 
	.B0(n178), 
	.A1N(n80), 
	.A0N(\mem[3][0] ));
   OAI2BB2X1M U125 (.Y(n118), 
	.B1(n80), 
	.B0(n177), 
	.A1N(n80), 
	.A0N(\mem[3][1] ));
   OAI2BB2X1M U126 (.Y(n119), 
	.B1(n80), 
	.B0(n176), 
	.A1N(n80), 
	.A0N(\mem[3][2] ));
   OAI2BB2X1M U127 (.Y(n120), 
	.B1(n80), 
	.B0(n175), 
	.A1N(n80), 
	.A0N(\mem[3][3] ));
   OAI2BB2X1M U128 (.Y(n121), 
	.B1(n80), 
	.B0(n174), 
	.A1N(n80), 
	.A0N(\mem[3][4] ));
   OAI2BB2X1M U129 (.Y(n122), 
	.B1(n80), 
	.B0(n173), 
	.A1N(n80), 
	.A0N(\mem[3][5] ));
   OAI2BB2X1M U130 (.Y(n123), 
	.B1(n80), 
	.B0(n172), 
	.A1N(n80), 
	.A0N(\mem[3][6] ));
   OAI2BB2X1M U131 (.Y(n124), 
	.B1(n80), 
	.B0(n171), 
	.A1N(n80), 
	.A0N(\mem[3][7] ));
   OAI2BB2X1M U132 (.Y(n125), 
	.B1(n82), 
	.B0(n178), 
	.A1N(n82), 
	.A0N(\mem[2][0] ));
   OAI2BB2X1M U133 (.Y(n126), 
	.B1(n82), 
	.B0(n177), 
	.A1N(n82), 
	.A0N(\mem[2][1] ));
   OAI2BB2X1M U134 (.Y(n127), 
	.B1(n82), 
	.B0(n176), 
	.A1N(n82), 
	.A0N(\mem[2][2] ));
   OAI2BB2X1M U135 (.Y(n128), 
	.B1(n82), 
	.B0(n175), 
	.A1N(n82), 
	.A0N(\mem[2][3] ));
   OAI2BB2X1M U136 (.Y(n129), 
	.B1(n82), 
	.B0(n174), 
	.A1N(n82), 
	.A0N(\mem[2][4] ));
   OAI2BB2X1M U137 (.Y(n130), 
	.B1(n82), 
	.B0(n173), 
	.A1N(n82), 
	.A0N(\mem[2][5] ));
   OAI2BB2X1M U138 (.Y(n131), 
	.B1(n82), 
	.B0(n172), 
	.A1N(n82), 
	.A0N(\mem[2][6] ));
   OAI2BB2X1M U139 (.Y(n132), 
	.B1(n82), 
	.B0(n171), 
	.A1N(n82), 
	.A0N(\mem[2][7] ));
   OAI2BB2X1M U140 (.Y(n133), 
	.B1(n83), 
	.B0(n178), 
	.A1N(n83), 
	.A0N(\mem[1][0] ));
   OAI2BB2X1M U141 (.Y(n134), 
	.B1(n83), 
	.B0(n177), 
	.A1N(n83), 
	.A0N(\mem[1][1] ));
   OAI2BB2X1M U142 (.Y(n135), 
	.B1(n83), 
	.B0(n176), 
	.A1N(n83), 
	.A0N(\mem[1][2] ));
   OAI2BB2X1M U143 (.Y(n136), 
	.B1(n83), 
	.B0(n175), 
	.A1N(n83), 
	.A0N(\mem[1][3] ));
   OAI2BB2X1M U144 (.Y(n137), 
	.B1(n83), 
	.B0(n174), 
	.A1N(n83), 
	.A0N(\mem[1][4] ));
   OAI2BB2X1M U145 (.Y(n138), 
	.B1(n83), 
	.B0(n173), 
	.A1N(n83), 
	.A0N(\mem[1][5] ));
   OAI2BB2X1M U146 (.Y(n139), 
	.B1(n83), 
	.B0(n172), 
	.A1N(n83), 
	.A0N(\mem[1][6] ));
   OAI2BB2X1M U147 (.Y(n140), 
	.B1(n83), 
	.B0(n171), 
	.A1N(n83), 
	.A0N(\mem[1][7] ));
   OAI2BB2X1M U148 (.Y(n85), 
	.B1(n178), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][0] ));
   OAI2BB2X1M U149 (.Y(n86), 
	.B1(n177), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][1] ));
   OAI2BB2X1M U150 (.Y(n87), 
	.B1(n176), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][2] ));
   OAI2BB2X1M U151 (.Y(n88), 
	.B1(n175), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][3] ));
   OAI2BB2X1M U152 (.Y(n89), 
	.B1(n174), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][4] ));
   OAI2BB2X1M U153 (.Y(n90), 
	.B1(n173), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][5] ));
   OAI2BB2X1M U154 (.Y(n91), 
	.B1(n172), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][6] ));
   OAI2BB2X1M U155 (.Y(n92), 
	.B1(n171), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][7] ));
   AND2X2M U156 (.Y(n76), 
	.B(wclken), 
	.A(wr_addr[2]));
   NAND3X2M U157 (.Y(n78), 
	.C(wr_addr[0]), 
	.B(n180), 
	.A(n76));
   NAND3X2M U158 (.Y(n80), 
	.C(n81), 
	.B(wr_addr[0]), 
	.A(wr_addr[1]));
   NAND3X2M U159 (.Y(n82), 
	.C(n81), 
	.B(n179), 
	.A(wr_addr[1]));
   NAND3X2M U160 (.Y(n75), 
	.C(wr_addr[1]), 
	.B(n76), 
	.A(wr_addr[0]));
   NAND3X2M U161 (.Y(n77), 
	.C(wr_addr[1]), 
	.B(n179), 
	.A(n76));
   INVX2M U162 (.Y(n179), 
	.A(wr_addr[0]));
   INVX2M U163 (.Y(n180), 
	.A(wr_addr[1]));
   MX2X2M U164 (.Y(rd_data[0]), 
	.S0(N12), 
	.B(n65), 
	.A(n66));
   MX4X1M U165 (.Y(n66), 
	.S1(N11), 
	.S0(n156), 
	.D(\mem[3][0] ), 
	.C(\mem[2][0] ), 
	.B(\mem[1][0] ), 
	.A(\mem[0][0] ));
   MX4X1M U166 (.Y(n65), 
	.S1(N11), 
	.S0(n155), 
	.D(\mem[7][0] ), 
	.C(\mem[6][0] ), 
	.B(\mem[5][0] ), 
	.A(\mem[4][0] ));
   MX2X2M U167 (.Y(rd_data[1]), 
	.S0(N12), 
	.B(n67), 
	.A(n68));
   MX4X1M U168 (.Y(n68), 
	.S1(N11), 
	.S0(n156), 
	.D(\mem[3][1] ), 
	.C(\mem[2][1] ), 
	.B(\mem[1][1] ), 
	.A(\mem[0][1] ));
   MX4X1M U169 (.Y(n67), 
	.S1(N11), 
	.S0(n155), 
	.D(\mem[7][1] ), 
	.C(\mem[6][1] ), 
	.B(\mem[5][1] ), 
	.A(\mem[4][1] ));
   MX2X2M U170 (.Y(rd_data[2]), 
	.S0(N12), 
	.B(n69), 
	.A(n70));
   MX4X1M U171 (.Y(n70), 
	.S1(N11), 
	.S0(n156), 
	.D(\mem[3][2] ), 
	.C(\mem[2][2] ), 
	.B(\mem[1][2] ), 
	.A(\mem[0][2] ));
   MX4X1M U172 (.Y(n69), 
	.S1(N11), 
	.S0(n155), 
	.D(\mem[7][2] ), 
	.C(\mem[6][2] ), 
	.B(\mem[5][2] ), 
	.A(\mem[4][2] ));
   MX2X2M U173 (.Y(rd_data[3]), 
	.S0(N12), 
	.B(n71), 
	.A(n72));
   MX4X1M U174 (.Y(n72), 
	.S1(N11), 
	.S0(n156), 
	.D(\mem[3][3] ), 
	.C(\mem[2][3] ), 
	.B(\mem[1][3] ), 
	.A(\mem[0][3] ));
   MX4X1M U175 (.Y(n71), 
	.S1(N11), 
	.S0(n155), 
	.D(\mem[7][3] ), 
	.C(\mem[6][3] ), 
	.B(\mem[5][3] ), 
	.A(\mem[4][3] ));
   MX2X2M U176 (.Y(rd_data[4]), 
	.S0(N12), 
	.B(n73), 
	.A(n74));
   MX4X1M U177 (.Y(n74), 
	.S1(N11), 
	.S0(n156), 
	.D(\mem[3][4] ), 
	.C(\mem[2][4] ), 
	.B(\mem[1][4] ), 
	.A(\mem[0][4] ));
   MX4X1M U178 (.Y(n73), 
	.S1(N11), 
	.S0(n155), 
	.D(\mem[7][4] ), 
	.C(\mem[6][4] ), 
	.B(\mem[5][4] ), 
	.A(\mem[4][4] ));
   MX2X2M U179 (.Y(rd_data[5]), 
	.S0(N12), 
	.B(n149), 
	.A(n150));
   MX4X1M U180 (.Y(n150), 
	.S1(N11), 
	.S0(n156), 
	.D(\mem[3][5] ), 
	.C(\mem[2][5] ), 
	.B(\mem[1][5] ), 
	.A(\mem[0][5] ));
   MX4X1M U181 (.Y(n149), 
	.S1(N11), 
	.S0(n155), 
	.D(\mem[7][5] ), 
	.C(\mem[6][5] ), 
	.B(\mem[5][5] ), 
	.A(\mem[4][5] ));
   MX2X2M U182 (.Y(rd_data[6]), 
	.S0(N12), 
	.B(n151), 
	.A(n152));
   MX4X1M U183 (.Y(n152), 
	.S1(N11), 
	.S0(n156), 
	.D(\mem[3][6] ), 
	.C(\mem[2][6] ), 
	.B(\mem[1][6] ), 
	.A(\mem[0][6] ));
   MX4X1M U184 (.Y(n151), 
	.S1(N11), 
	.S0(n155), 
	.D(\mem[7][6] ), 
	.C(\mem[6][6] ), 
	.B(\mem[5][6] ), 
	.A(\mem[4][6] ));
   MX2X2M U185 (.Y(rd_data[7]), 
	.S0(N12), 
	.B(n153), 
	.A(n154));
   MX4X1M U186 (.Y(n154), 
	.S1(N11), 
	.S0(n156), 
	.D(\mem[3][7] ), 
	.C(\mem[2][7] ), 
	.B(\mem[1][7] ), 
	.A(\mem[0][7] ));
   MX4X1M U187 (.Y(n153), 
	.S1(N11), 
	.S0(n155), 
	.D(\mem[7][7] ), 
	.C(\mem[6][7] ), 
	.B(\mem[5][7] ), 
	.A(\mem[4][7] ));
   BUFX2M U188 (.Y(n155), 
	.A(N10));
   BUFX2M U189 (.Y(n156), 
	.A(N10));
   INVXLM U190 (.Y(n184), 
	.A(test_se));
   CLKINVX2M U191 (.Y(n185), 
	.A(n184));
   CLKINVX2M U192 (.Y(n186), 
	.A(n184));
   CLKINVX2M U193 (.Y(n187), 
	.A(n184));
   CLKINVX2M U194 (.Y(n188), 
	.A(n184));
endmodule

module FIFO_DF_SYNC_WIDTH3_test_1 (
	clk, 
	rst, 
	data_in, 
	data_out, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input [3:0] data_in;
   output [3:0] data_out;
   input test_si;
   input test_se;

   // Internal wires
   wire \sync_reg[0][3] ;
   wire \sync_reg[0][2] ;
   wire \sync_reg[0][1] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[1][3]  (.SI(data_out[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_out[3]), 
	.D(\sync_reg[0][3] ), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[1][2]  (.SI(data_out[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_out[2]), 
	.D(\sync_reg[0][2] ), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(data_out[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_out[1]), 
	.D(\sync_reg[0][1] ), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(\sync_reg[0][3] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_out[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[0][3]  (.SI(\sync_reg[0][2] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][3] ), 
	.D(data_in[3]), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[0][2]  (.SI(\sync_reg[0][1] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][2] ), 
	.D(data_in[2]), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][1] ), 
	.D(data_in[1]), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][0] ), 
	.D(data_in[0]), 
	.CK(clk));
endmodule

module FIFO_DF_SYNC_WIDTH3_test_0 (
	clk, 
	rst, 
	data_in, 
	data_out, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input [3:0] data_in;
   output [3:0] data_out;
   input test_si;
   input test_se;

   // Internal wires
   wire \sync_reg[0][3] ;
   wire \sync_reg[0][2] ;
   wire \sync_reg[0][1] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(data_out[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_out[1]), 
	.D(\sync_reg[0][1] ), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(\sync_reg[0][3] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_out[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[1][3]  (.SI(data_out[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_out[3]), 
	.D(\sync_reg[0][3] ), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[1][2]  (.SI(data_out[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_out[2]), 
	.D(\sync_reg[0][2] ), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[0][3]  (.SI(\sync_reg[0][2] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][3] ), 
	.D(data_in[3]), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[0][2]  (.SI(\sync_reg[0][1] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][2] ), 
	.D(data_in[2]), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][1] ), 
	.D(data_in[1]), 
	.CK(clk));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][0] ), 
	.D(data_in[0]), 
	.CK(clk));
endmodule

module FIFO_WR_WIDTH3_test_1 (
	w_clk, 
	w_rst, 
	w_inc, 
	rd_ptr, 
	wr_ptr, 
	wr_addr, 
	wclken, 
	full, 
	test_si, 
	test_se, 
	FE_OFN0_DFT_REF_RST);
   input w_clk;
   input w_rst;
   input w_inc;
   input [3:0] rd_ptr;
   output [3:0] wr_ptr;
   output [2:0] wr_addr;
   output wclken;
   output full;
   input test_si;
   input test_se;
   input FE_OFN0_DFT_REF_RST;

   // Internal wires
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;

   SDFFRQX2M \wr_bin_reg[3]  (.SI(wr_addr[2]), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(wr_ptr[3]), 
	.D(n15), 
	.CK(w_clk));
   SDFFRQX2M \wr_bin_reg[2]  (.SI(wr_addr[1]), 
	.SE(test_se), 
	.RN(FE_OFN0_DFT_REF_RST), 
	.Q(wr_addr[2]), 
	.D(n16), 
	.CK(w_clk));
   SDFFRQX2M \wr_bin_reg[1]  (.SI(wr_addr[0]), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(wr_addr[1]), 
	.D(n17), 
	.CK(w_clk));
   SDFFRX1M \wr_bin_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(w_rst), 
	.QN(n5), 
	.Q(wr_addr[0]), 
	.D(n18), 
	.CK(w_clk));
   INVX2M U8 (.Y(wclken), 
	.A(n6));
   NAND2X2M U9 (.Y(n6), 
	.B(full), 
	.A(w_inc));
   XNOR2X2M U11 (.Y(n11), 
	.B(rd_ptr[1]), 
	.A(wr_ptr[1]));
   XNOR2X2M U12 (.Y(wr_ptr[0]), 
	.B(wr_addr[1]), 
	.A(n5));
   NOR2X2M U13 (.Y(n9), 
	.B(n5), 
	.A(n6));
   XNOR2X2M U14 (.Y(n16), 
	.B(n8), 
	.A(wr_addr[2]));
   XNOR2X2M U15 (.Y(n15), 
	.B(n7), 
	.A(wr_ptr[3]));
   NAND2BX2M U16 (.Y(n7), 
	.B(wr_addr[2]), 
	.AN(n8));
   NAND4X2M U17 (.Y(full), 
	.D(n14), 
	.C(n13), 
	.B(n12), 
	.A(n11));
   CLKXOR2X2M U18 (.Y(n14), 
	.B(rd_ptr[3]), 
	.A(wr_ptr[3]));
   XNOR2X2M U19 (.Y(n12), 
	.B(rd_ptr[0]), 
	.A(wr_ptr[0]));
   CLKXOR2X2M U20 (.Y(n13), 
	.B(wr_ptr[2]), 
	.A(rd_ptr[2]));
   NAND2X2M U21 (.Y(n8), 
	.B(wr_addr[1]), 
	.A(n9));
   CLKXOR2X2M U22 (.Y(wr_ptr[2]), 
	.B(wr_addr[2]), 
	.A(wr_ptr[3]));
   CLKXOR2X2M U23 (.Y(wr_ptr[1]), 
	.B(wr_addr[2]), 
	.A(wr_addr[1]));
   CLKXOR2X2M U24 (.Y(n17), 
	.B(n9), 
	.A(wr_addr[1]));
   CLKXOR2X2M U25 (.Y(n18), 
	.B(n6), 
	.A(n5));
endmodule

module FIFO_RD_WIDTH3_test_1 (
	r_clk, 
	r_rst, 
	r_inc, 
	wr_ptr, 
	rd_ptr, 
	rd_addr, 
	empty, 
	test_si, 
	test_se);
   input r_clk;
   input r_rst;
   input r_inc;
   input [3:0] wr_ptr;
   output [3:0] rd_ptr;
   output [2:0] rd_addr;
   output empty;
   input test_si;
   input test_se;

   // Internal wires
   wire \rd_bin[3] ;
   wire N2;
   wire N3;
   wire N4;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire [3:0] rd_bin_next;

   SDFFRQX2M \rd_bin_reg[3]  (.SI(rd_addr[2]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(\rd_bin[3] ), 
	.D(rd_bin_next[3]), 
	.CK(r_clk));
   SDFFRQX2M \rd_ptr_reg[1]  (.SI(rd_ptr[0]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(rd_ptr[1]), 
	.D(N3), 
	.CK(r_clk));
   SDFFRQX2M \rd_ptr_reg[3]  (.SI(rd_ptr[2]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(rd_ptr[3]), 
	.D(rd_bin_next[3]), 
	.CK(r_clk));
   SDFFRQX2M \rd_ptr_reg[2]  (.SI(rd_ptr[1]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(rd_ptr[2]), 
	.D(N2), 
	.CK(r_clk));
   SDFFRQX2M \rd_ptr_reg[0]  (.SI(\rd_bin[3] ), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(rd_ptr[0]), 
	.D(N4), 
	.CK(r_clk));
   SDFFRQX2M \rd_bin_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(rd_addr[0]), 
	.D(rd_bin_next[0]), 
	.CK(r_clk));
   SDFFRQX2M \rd_bin_reg[2]  (.SI(rd_addr[1]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(rd_addr[2]), 
	.D(rd_bin_next[2]), 
	.CK(r_clk));
   SDFFRQX4M \rd_bin_reg[1]  (.SI(rd_addr[0]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(rd_addr[1]), 
	.D(rd_bin_next[1]), 
	.CK(r_clk));
   CLKXOR2X2M U12 (.Y(N3), 
	.B(rd_bin_next[1]), 
	.A(rd_bin_next[2]));
   CLKXOR2X2M U13 (.Y(N4), 
	.B(rd_bin_next[0]), 
	.A(rd_bin_next[1]));
   CLKXOR2X2M U14 (.Y(N2), 
	.B(rd_bin_next[2]), 
	.A(rd_bin_next[3]));
   XNOR2X2M U15 (.Y(rd_bin_next[2]), 
	.B(rd_addr[2]), 
	.A(n12));
   NAND2X2M U16 (.Y(n12), 
	.B(n11), 
	.A(rd_addr[1]));
   XNOR2X2M U17 (.Y(rd_bin_next[3]), 
	.B(\rd_bin[3] ), 
	.A(n13));
   NAND3X2M U18 (.Y(n13), 
	.C(rd_addr[2]), 
	.B(n11), 
	.A(rd_addr[1]));
   NOR2BX2M U19 (.Y(n11), 
	.B(n10), 
	.AN(rd_addr[0]));
   XNOR2X2M U20 (.Y(rd_bin_next[0]), 
	.B(rd_addr[0]), 
	.A(n10));
   XNOR2X2M U21 (.Y(n17), 
	.B(rd_ptr[2]), 
	.A(wr_ptr[2]));
   NAND4X2M U22 (.Y(empty), 
	.D(n17), 
	.C(n16), 
	.B(n15), 
	.A(n14));
   XNOR2X2M U23 (.Y(n14), 
	.B(rd_ptr[1]), 
	.A(wr_ptr[1]));
   XNOR2X2M U24 (.Y(n15), 
	.B(rd_ptr[0]), 
	.A(wr_ptr[0]));
   XNOR2X2M U25 (.Y(n16), 
	.B(rd_ptr[3]), 
	.A(wr_ptr[3]));
   NAND2X2M U26 (.Y(n10), 
	.B(empty), 
	.A(r_inc));
   CLKXOR2X2M U27 (.Y(rd_bin_next[1]), 
	.B(n11), 
	.A(rd_addr[1]));
endmodule

module ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3_test_1 (
	w_clk, 
	w_rst, 
	w_inc, 
	r_clk, 
	r_rst, 
	r_inc, 
	wr_data, 
	rd_data, 
	full, 
	empty, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_DFT_REF_RST, 
	FE_OFN23_DFT_UART_RST__Exclude_0_NET);
   input w_clk;
   input w_rst;
   input w_inc;
   input r_clk;
   input r_rst;
   input r_inc;
   input [7:0] wr_data;
   output [7:0] rd_data;
   output full;
   output empty;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_DFT_REF_RST;
   input FE_OFN23_DFT_UART_RST__Exclude_0_NET;

   // Internal wires
   wire wclken;
   wire n3;
   wire [2:0] rd_addr;
   wire [2:0] wr_addr;
   wire [3:0] wr_ptr;
   wire [3:0] rq2_wptr;
   wire [3:0] rd_ptr;
   wire [3:0] rq2_rptr;

   assign test_so2 = rq2_wptr[3] ;

   FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH3_test_1 u_FIFO_MEM_CNTRL (.w_clk(w_clk), 
	.w_rst(w_rst), 
	.wclken(wclken), 
	.wr_data({ wr_data[7],
		wr_data[6],
		wr_data[5],
		wr_data[4],
		wr_data[3],
		wr_data[2],
		wr_data[1],
		wr_data[0] }), 
	.wr_addr({ wr_addr[2],
		wr_addr[1],
		wr_addr[0] }), 
	.rd_addr({ rd_addr[2],
		rd_addr[1],
		rd_addr[0] }), 
	.rd_data({ rd_data[7],
		rd_data[6],
		rd_data[5],
		rd_data[4],
		rd_data[3],
		rd_data[2],
		rd_data[1],
		rd_data[0] }), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so2(n3), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN0_DFT_REF_RST(FE_OFN0_DFT_REF_RST));
   FIFO_DF_SYNC_WIDTH3_test_1 u_wr_DF_SYNC (.clk(r_clk), 
	.rst(FE_OFN23_DFT_UART_RST__Exclude_0_NET), 
	.data_in({ wr_ptr[3],
		wr_ptr[2],
		wr_ptr[1],
		wr_ptr[0] }), 
	.data_out({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.test_si(rq2_rptr[3]), 
	.test_se(test_se));
   FIFO_DF_SYNC_WIDTH3_test_0 u_rd_DF_SYNC (.clk(w_clk), 
	.rst(w_rst), 
	.data_in({ rd_ptr[3],
		rd_ptr[2],
		rd_ptr[1],
		rd_ptr[0] }), 
	.data_out({ rq2_rptr[3],
		rq2_rptr[2],
		rq2_rptr[1],
		rq2_rptr[0] }), 
	.test_si(wr_ptr[3]), 
	.test_se(test_se));
   FIFO_WR_WIDTH3_test_1 u_FIFO_WR (.w_clk(w_clk), 
	.w_rst(w_rst), 
	.w_inc(w_inc), 
	.rd_ptr({ rq2_rptr[3],
		rq2_rptr[2],
		rq2_rptr[1],
		rq2_rptr[0] }), 
	.wr_ptr({ wr_ptr[3],
		wr_ptr[2],
		wr_ptr[1],
		wr_ptr[0] }), 
	.wr_addr({ wr_addr[2],
		wr_addr[1],
		wr_addr[0] }), 
	.wclken(wclken), 
	.full(full), 
	.test_si(rd_ptr[3]), 
	.test_se(test_se), 
	.FE_OFN0_DFT_REF_RST(FE_OFN0_DFT_REF_RST));
   FIFO_RD_WIDTH3_test_1 u_FIFO_RD (.r_clk(r_clk), 
	.r_rst(r_rst), 
	.r_inc(r_inc), 
	.wr_ptr({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.rd_ptr({ rd_ptr[3],
		rd_ptr[2],
		rd_ptr[1],
		rd_ptr[0] }), 
	.rd_addr({ rd_addr[2],
		rd_addr[1],
		rd_addr[0] }), 
	.empty(empty), 
	.test_si(n3), 
	.test_se(test_se));
endmodule

module PULSE_GEN_test_1 (
	clk, 
	rst, 
	in_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input in_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire pls_flop;
   wire rcv_flop;

   assign test_so = rcv_flop ;

   SDFFRQX2M rcv_flop_reg (.SI(pls_flop), 
	.SE(test_se), 
	.RN(rst), 
	.Q(rcv_flop), 
	.D(in_sig), 
	.CK(clk));
   SDFFRQX2M pls_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(pls_flop), 
	.D(rcv_flop), 
	.CK(clk));
   NOR2BX2M U5 (.Y(pulse_sig), 
	.B(pls_flop), 
	.AN(rcv_flop));
endmodule

module CLK_DIV_0_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module CLK_DIV_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	DFT_UART_RST__Exclude_0_NET, 
	DFT_UART_CLK__L8_N1, 
	DFT_UART_CLK__L8_N2);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input DFT_UART_RST__Exclude_0_NET;
   input DFT_UART_CLK__L8_N1;
   input DFT_UART_CLK__L8_N2;

   // Internal wires
   wire FE_PHN30_div_clk_reg__Exclude_0_NET;
   wire FE_RN_373_0;
   wire FE_RN_372_0;
   wire FE_RN_371_0;
   wire FE_RN_370_0;
   wire FE_RN_369_0;
   wire FE_RN_368_0;
   wire FE_RN_367_0;
   wire FE_RN_366_0;
   wire FE_RN_365_0;
   wire FE_RN_364_0;
   wire FE_RN_363_0;
   wire FE_RN_362_0;
   wire FE_RN_361_0;
   wire FE_RN_360_0;
   wire FE_RN_359_0;
   wire FE_RN_358_0;
   wire FE_RN_357_0;
   wire FE_RN_356_0;
   wire FE_RN_355_0;
   wire FE_RN_354_0;
   wire FE_RN_353_0;
   wire FE_RN_352_0;
   wire FE_RN_351_0;
   wire FE_RN_350_0;
   wire FE_RN_349_0;
   wire FE_RN_348_0;
   wire FE_RN_173_0;
   wire FE_RN_172_0;
   wire FE_RN_171_0;
   wire FE_RN_170_0;
   wire FE_RN_169_0;
   wire FE_RN_168_0;
   wire FE_RN_167_0;
   wire FE_RN_166_0;
   wire FE_RN_165_0;
   wire FE_RN_164_0;
   wire FE_RN_163_0;
   wire FE_RN_162_0;
   wire FE_RN_161_0;
   wire FE_RN_160_0;
   wire FE_RN_159_0;
   wire FE_RN_158_0;
   wire FE_RN_157_0;
   wire FE_RN_156_0;
   wire FE_RN_155_0;
   wire FE_RN_154_0;
   wire FE_RN_153_0;
   wire FE_RN_152_0;
   wire FE_RN_151_0;
   wire FE_RN_150_0;
   wire FE_RN_149_0;
   wire FE_RN_148_0;
   wire FE_RN_147_0;
   wire FE_RN_146_0;
   wire FE_RN_145_0;
   wire FE_RN_144_0;
   wire FE_RN_143_0;
   wire FE_RN_142_0;
   wire FE_RN_141_0;
   wire FE_RN_140_0;
   wire FE_RN_139_0;
   wire FE_RN_138_0;
   wire FE_RN_137_0;
   wire FE_RN_136_0;
   wire FE_RN_135_0;
   wire FE_RN_134_0;
   wire FE_RN_133_0;
   wire FE_RN_132_0;
   wire FE_RN_131_0;
   wire FE_RN_130_0;
   wire FE_RN_129_0;
   wire FE_RN_128_0;
   wire FE_RN_127_0;
   wire FE_RN_126_0;
   wire FE_RN_125_0;
   wire FE_RN_124_0;
   wire FE_RN_123_0;
   wire FE_RN_122_0;
   wire FE_RN_121_0;
   wire div_clk_reg__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire FE_RN_111_0;
   wire FE_RN_110_0;
   wire FE_RN_109_0;
   wire FE_RN_108_0;
   wire FE_RN_105_0;
   wire FE_RN_104_0;
   wire FE_RN_103_0;
   wire FE_RN_102_0;
   wire FE_RN_99_0;
   wire FE_RN_98_0;
   wire FE_RN_97_0;
   wire FE_RN_96_0;
   wire FE_RN_95_0;
   wire FE_RN_94_0;
   wire FE_RN_93_0;
   wire FE_RN_92_0;
   wire FE_RN_91_0;
   wire FE_RN_90_0;
   wire FE_RN_88_0;
   wire FE_RN_87_0;
   wire FE_UNCONNECTED_0;
   wire N0;
   wire N5;
   wire div_clk_reg;
   wire flag;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N45;
   wire N55;
   wire N56;
   wire N57;
   wire N58;
   wire N59;
   wire N60;
   wire N61;
   wire N62;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire \sub_25/carry[6] ;
   wire \sub_25/carry[1] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire [7:0] full_count;
   wire [7:0] counter;

   assign test_so = flag ;

   BUFX2M FE_PHC30_div_clk_reg__Exclude_0_NET (.Y(FE_PHN30_div_clk_reg__Exclude_0_NET), 
	.A(div_clk_reg__Exclude_0_NET));
   AND2X4M FE_RC_455_0 (.Y(FE_RN_373_0), 
	.B(i_div_ratio[4]), 
	.A(FE_RN_364_0));
   NAND2X2M FE_RC_454_0 (.Y(FE_RN_372_0), 
	.B(FE_RN_136_0), 
	.A(FE_RN_373_0));
   NAND3X4M FE_RC_453_0 (.Y(FE_RN_371_0), 
	.C(n12), 
	.B(FE_RN_364_0), 
	.A(FE_RN_349_0));
   INVX2M FE_RC_452_0 (.Y(FE_RN_370_0), 
	.A(i_div_ratio[4]));
   INVX2M FE_RC_451_0 (.Y(FE_RN_369_0), 
	.A(FE_RN_364_0));
   NAND3X3M FE_RC_450_0 (.Y(FE_RN_368_0), 
	.C(FE_RN_370_0), 
	.B(FE_RN_369_0), 
	.A(FE_RN_359_0));
   INVX2M FE_RC_449_0 (.Y(FE_RN_367_0), 
	.A(FE_RN_136_0));
   INVX2M FE_RC_448_0 (.Y(FE_RN_366_0), 
	.A(i_div_ratio[5]));
   INVX2M FE_RC_447_0 (.Y(FE_RN_365_0), 
	.A(n13));
   OAI21X8M FE_RC_446_0 (.Y(FE_RN_364_0), 
	.B0(FE_RN_353_0), 
	.A1(FE_RN_365_0), 
	.A0(FE_RN_366_0));
   INVX2M FE_RC_445_0 (.Y(FE_RN_363_0), 
	.A(FE_RN_364_0));
   INVX2M FE_RC_444_0 (.Y(FE_RN_362_0), 
	.A(n12));
   NOR2X4M FE_RC_443_0 (.Y(FE_RN_361_0), 
	.B(FE_RN_131_0), 
	.A(FE_RN_352_0));
   NOR2X3M FE_RC_442_0 (.Y(FE_RN_360_0), 
	.B(FE_RN_362_0), 
	.A(FE_RN_361_0));
   OAI21X3M FE_RC_441_0 (.Y(FE_RN_359_0), 
	.B0(FE_RN_360_0), 
	.A1(FE_RN_121_0), 
	.A0(FE_RN_352_0));
   NAND3X3M FE_RC_440_0 (.Y(FE_RN_358_0), 
	.C(FE_RN_367_0), 
	.B(FE_RN_363_0), 
	.A(FE_RN_359_0));
   NAND4X4M FE_RC_439_0 (.Y(full_count[5]), 
	.D(FE_RN_372_0), 
	.C(FE_RN_371_0), 
	.B(FE_RN_368_0), 
	.A(FE_RN_358_0));
   NAND2X2M FE_RC_438_0 (.Y(FE_RN_357_0), 
	.B(n13), 
	.A(i_div_ratio[5]));
   NAND2X4M FE_RC_437_0 (.Y(FE_RN_356_0), 
	.B(i_div_ratio[4]), 
	.A(FE_RN_353_0));
   NAND2BX4M FE_RC_436_0 (.Y(FE_RN_355_0), 
	.B(FE_RN_136_0), 
	.AN(FE_RN_356_0));
   INVX2M FE_RC_435_0 (.Y(FE_RN_354_0), 
	.A(i_div_ratio[5]));
   NAND2BX8M FE_RC_434_0 (.Y(FE_RN_353_0), 
	.B(FE_RN_354_0), 
	.AN(n13));
   NAND2X4M FE_RC_433_0 (.Y(FE_RN_352_0), 
	.B(FE_RN_135_0), 
	.A(FE_RN_134_0));
   INVX2M FE_RC_432_0 (.Y(FE_RN_351_0), 
	.A(FE_RN_352_0));
   NAND2X4M FE_RC_431_0 (.Y(FE_RN_350_0), 
	.B(FE_RN_131_0), 
	.A(FE_RN_121_0));
   NAND2X4M FE_RC_430_0 (.Y(FE_RN_349_0), 
	.B(FE_RN_351_0), 
	.A(FE_RN_350_0));
   NAND3X4M FE_RC_429_0 (.Y(FE_RN_348_0), 
	.C(n12), 
	.B(FE_RN_353_0), 
	.A(FE_RN_349_0));
   NAND3X4M FE_RC_428_0 (.Y(\sub_25/carry[6] ), 
	.C(FE_RN_357_0), 
	.B(FE_RN_355_0), 
	.A(FE_RN_348_0));
   INVX8M FE_RC_379_0 (.Y(n10), 
	.A(i_div_ratio[3]));
   NAND2X5M FE_RC_378_0 (.Y(FE_RN_128_0), 
	.B(i_div_ratio[3]), 
	.A(FE_RN_129_0));
   INVX2M FE_RC_202_0 (.Y(FE_RN_173_0), 
	.A(FE_RN_169_0));
   NAND2X4M FE_RC_201_0 (.Y(FE_RN_172_0), 
	.B(FE_RN_173_0), 
	.A(FE_RN_136_0));
   INVX2M FE_RC_200_0 (.Y(FE_RN_171_0), 
	.A(i_div_ratio[4]));
   NAND2X2M FE_RC_199_0 (.Y(FE_RN_170_0), 
	.B(n12), 
	.A(FE_RN_171_0));
   OAI2B1X4M FE_RC_198_0 (.Y(FE_RN_169_0), 
	.B0(FE_RN_170_0), 
	.A1N(i_div_ratio[4]), 
	.A0(n12));
   NAND3X3M FE_RC_197_0 (.Y(FE_RN_168_0), 
	.C(FE_RN_130_0), 
	.B(FE_RN_134_0), 
	.A(FE_RN_150_0));
   INVX2M FE_RC_196_0 (.Y(FE_RN_167_0), 
	.A(n11));
   NAND2X3M FE_RC_195_0 (.Y(FE_RN_166_0), 
	.B(FE_RN_167_0), 
	.A(FE_RN_159_0));
   INVX2M FE_RC_194_0 (.Y(FE_RN_165_0), 
	.A(i_div_ratio[3]));
   NAND2X4M FE_RC_193_0 (.Y(FE_RN_164_0), 
	.B(FE_RN_165_0), 
	.A(FE_RN_159_0));
   NAND4X4M FE_RC_192_0 (.Y(FE_RN_163_0), 
	.D(FE_RN_131_0), 
	.C(FE_RN_168_0), 
	.B(FE_RN_166_0), 
	.A(FE_RN_164_0));
   CLKNAND2X2M FE_RC_191_0 (.Y(FE_RN_162_0), 
	.B(FE_RN_169_0), 
	.A(FE_RN_163_0));
   NAND2X3M FE_RC_190_0 (.Y(full_count[4]), 
	.B(FE_RN_172_0), 
	.A(FE_RN_162_0));
   INVX2M FE_RC_189_0 (.Y(FE_RN_161_0), 
	.A(FE_RN_125_0));
   CLKNAND2X4M FE_RC_188_0 (.Y(FE_RN_160_0), 
	.B(FE_RN_130_0), 
	.A(FE_RN_161_0));
   NAND2X4M FE_RC_187_0 (.Y(FE_RN_159_0), 
	.B(FE_RN_128_0), 
	.A(FE_RN_160_0));
   AOI21X4M FE_RC_186_0 (.Y(FE_RN_158_0), 
	.B0(FE_RN_159_0), 
	.A1(FE_RN_130_0), 
	.A0(FE_RN_150_0));
   INVX2M FE_RC_185_0 (.Y(FE_RN_157_0), 
	.A(n11));
   INVX2M FE_RC_184_0 (.Y(FE_RN_156_0), 
	.A(i_div_ratio[3]));
   AOI22X2M FE_RC_183_0 (.Y(FE_RN_155_0), 
	.B1(FE_RN_156_0), 
	.B0(n11), 
	.A1(FE_RN_157_0), 
	.A0(i_div_ratio[3]));
   CLKNAND2X4M FE_RC_182_0 (.Y(FE_RN_154_0), 
	.B(FE_RN_131_0), 
	.A(FE_RN_134_0));
   NAND2X2M FE_RC_181_0 (.Y(FE_RN_153_0), 
	.B(FE_RN_121_0), 
	.A(FE_RN_154_0));
   OAI21X4M FE_RC_180_0 (.Y(full_count[3]), 
	.B0(FE_RN_153_0), 
	.A1(FE_RN_155_0), 
	.A0(FE_RN_158_0));
   NAND2X4M FE_RC_179_0 (.Y(FE_RN_152_0), 
	.B(FE_RN_128_0), 
	.A(FE_RN_130_0));
   INVX2M FE_RC_178_0 (.Y(FE_RN_151_0), 
	.A(FE_RN_127_0));
   NOR2X6M FE_RC_177_0 (.Y(FE_RN_150_0), 
	.B(\sub_25/carry[1] ), 
	.A(FE_RN_151_0));
   INVX2M FE_RC_176_0 (.Y(FE_RN_149_0), 
	.A(i_div_ratio[2]));
   AND2X4M FE_RC_175_0 (.Y(FE_RN_148_0), 
	.B(n10), 
	.A(FE_RN_149_0));
   INVX2M FE_RC_174_0 (.Y(FE_RN_147_0), 
	.A(i_div_ratio[2]));
   NOR2X4M FE_RC_173_0 (.Y(FE_RN_146_0), 
	.B(n10), 
	.A(FE_RN_147_0));
   OAI2B2X4M FE_RC_172_0 (.Y(FE_RN_145_0), 
	.B1(FE_RN_146_0), 
	.B0(FE_RN_148_0), 
	.A1N(FE_RN_125_0), 
	.A0(FE_RN_150_0));
   OAI2BB1X4M FE_RC_171_0 (.Y(full_count[2]), 
	.B0(FE_RN_145_0), 
	.A1N(FE_RN_152_0), 
	.A0N(FE_RN_123_0));
   INVX2M FE_RC_170_0 (.Y(FE_RN_144_0), 
	.A(\sub_25/carry[1] ));
   INVX2M FE_RC_169_0 (.Y(FE_RN_143_0), 
	.A(i_div_ratio[1]));
   NAND2X2M FE_RC_168_0 (.Y(FE_RN_142_0), 
	.B(n9), 
	.A(FE_RN_143_0));
   OAI2B1X4M FE_RC_167_0 (.Y(FE_RN_141_0), 
	.B0(FE_RN_142_0), 
	.A1N(i_div_ratio[1]), 
	.A0(n9));
   CLKNAND2X2M FE_RC_166_0 (.Y(FE_RN_140_0), 
	.B(FE_RN_144_0), 
	.A(FE_RN_141_0));
   NAND2X4M FE_RC_165_0 (.Y(FE_RN_139_0), 
	.B(FE_RN_125_0), 
	.A(FE_RN_127_0));
   NAND2X3M FE_RC_164_0 (.Y(FE_RN_138_0), 
	.B(\sub_25/carry[1] ), 
	.A(FE_RN_139_0));
   NAND2X3M FE_RC_163_0 (.Y(full_count[1]), 
	.B(FE_RN_140_0), 
	.A(FE_RN_138_0));
   NAND2X4M FE_RC_162_0 (.Y(FE_RN_137_0), 
	.B(FE_RN_131_0), 
	.A(FE_RN_121_0));
   NAND2X4M FE_RC_161_0 (.Y(FE_RN_136_0), 
	.B(FE_RN_134_0), 
	.A(FE_RN_137_0));
   INVX2M FE_RC_160_0 (.Y(FE_RN_135_0), 
	.A(i_div_ratio[4]));
   NAND2X3M FE_RC_159_0 (.Y(FE_RN_134_0), 
	.B(n11), 
	.A(i_div_ratio[3]));
   INVX2M FE_RC_158_0 (.Y(FE_RN_133_0), 
	.A(n11));
   INVX2M FE_RC_157_0 (.Y(FE_RN_132_0), 
	.A(i_div_ratio[3]));
   NAND2X4M FE_RC_156_0 (.Y(FE_RN_131_0), 
	.B(FE_RN_133_0), 
	.A(FE_RN_132_0));
   NAND2X5M FE_RC_155_0 (.Y(FE_RN_130_0), 
	.B(n10), 
	.A(i_div_ratio[2]));
   INVX2M FE_RC_154_0 (.Y(FE_RN_129_0), 
	.A(i_div_ratio[2]));
   NAND2X4M FE_RC_152_0 (.Y(FE_RN_127_0), 
	.B(n9), 
	.A(i_div_ratio[1]));
   INVX2M FE_RC_151_0 (.Y(FE_RN_126_0), 
	.A(i_div_ratio[1]));
   NAND2BX8M FE_RC_150_0 (.Y(FE_RN_125_0), 
	.B(FE_RN_126_0), 
	.AN(n9));
   NAND2X4M FE_RC_149_0 (.Y(FE_RN_124_0), 
	.B(\sub_25/carry[1] ), 
	.A(FE_RN_125_0));
   NAND2X4M FE_RC_148_0 (.Y(FE_RN_123_0), 
	.B(FE_RN_127_0), 
	.A(FE_RN_124_0));
   NAND2X4M FE_RC_147_0 (.Y(FE_RN_122_0), 
	.B(FE_RN_128_0), 
	.A(FE_RN_123_0));
   NAND2X4M FE_RC_146_0 (.Y(FE_RN_121_0), 
	.B(FE_RN_130_0), 
	.A(FE_RN_122_0));
   CLKBUFX1M div_clk_reg__Exclude_0 (.Y(div_clk_reg__Exclude_0_NET), 
	.A(div_clk_reg));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   INVX2M FE_RC_128_0 (.Y(FE_RN_111_0), 
	.A(\sub_25/carry[6] ));
   INVX2M FE_RC_127_0 (.Y(FE_RN_110_0), 
	.A(FE_RN_90_0));
   INVX2M FE_RC_126_0 (.Y(FE_RN_109_0), 
	.A(FE_RN_95_0));
   AOI2B1X2M FE_RC_125_0 (.Y(FE_RN_108_0), 
	.B0(FE_RN_109_0), 
	.A1N(FE_RN_110_0), 
	.A0(FE_RN_111_0));
   AOI2B1X1M FE_RC_122_0 (.Y(FE_RN_105_0), 
	.B0(FE_RN_110_0), 
	.A1N(FE_RN_109_0), 
	.A0(\sub_25/carry[6] ));
   MXI2X2M FE_RC_121_0 (.Y(full_count[7]), 
	.S0(i_div_ratio[7]), 
	.B(FE_RN_105_0), 
	.A(FE_RN_108_0));
   INVX2M FE_RC_120_0 (.Y(FE_RN_104_0), 
	.A(FE_RN_91_0));
   MXI2X1M FE_RC_119_0 (.Y(FE_RN_103_0), 
	.S0(i_div_ratio[6]), 
	.B(FE_RN_104_0), 
	.A(FE_RN_91_0));
   INVX2M FE_RC_118_0 (.Y(FE_RN_102_0), 
	.A(\sub_25/carry[6] ));
   NOR2X2M FE_RC_115_0 (.Y(FE_RN_99_0), 
	.B(FE_RN_110_0), 
	.A(FE_RN_109_0));
   OAI22X4M FE_RC_114_0 (.Y(full_count[6]), 
	.B1(FE_RN_99_0), 
	.B0(FE_RN_102_0), 
	.A1(\sub_25/carry[6] ), 
	.A0(FE_RN_103_0));
   INVX2M FE_RC_113_0 (.Y(FE_RN_98_0), 
	.A(i_div_ratio[7]));
   CLKNAND2X2M FE_RC_112_0 (.Y(FE_RN_97_0), 
	.B(FE_RN_98_0), 
	.A(FE_RN_95_0));
   INVX2M FE_RC_111_0 (.Y(FE_RN_96_0), 
	.A(i_div_ratio[6]));
   NAND2BX2M FE_RC_110_0 (.Y(FE_RN_95_0), 
	.B(FE_RN_96_0), 
	.AN(FE_RN_91_0));
   MXI2X1M FE_RC_109_0 (.Y(FE_RN_94_0), 
	.S0(i_div_ratio[7]), 
	.B(FE_RN_95_0), 
	.A(FE_RN_90_0));
   AOI2B1X2M FE_RC_108_0 (.Y(FE_RN_93_0), 
	.B0(FE_RN_94_0), 
	.A1N(FE_RN_97_0), 
	.A0(\sub_25/carry[6] ));
   INVX2M FE_RC_107_0 (.Y(FE_RN_92_0), 
	.A(\sub_25/carry[6] ));
   INVX2M FE_RC_106_0 (.Y(FE_RN_91_0), 
	.A(i_div_ratio[7]));
   CLKNAND2X2M FE_RC_105_0 (.Y(FE_RN_90_0), 
	.B(FE_RN_91_0), 
	.A(i_div_ratio[6]));
   NOR2X2M FE_RC_103_0 (.Y(FE_RN_88_0), 
	.B(FE_RN_91_0), 
	.A(FE_RN_110_0));
   NAND2X2M FE_RC_102_0 (.Y(FE_RN_87_0), 
	.B(FE_RN_92_0), 
	.A(FE_RN_88_0));
   AOI21X4M FE_RC_101_0 (.Y(N33), 
	.B0(n35), 
	.A1(FE_RN_87_0), 
	.A0(FE_RN_93_0));
   SDFFRQX2M div_clk_reg_reg (.SI(counter[7]), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(div_clk_reg), 
	.D(n33), 
	.CK(DFT_UART_CLK__L8_N1));
   SDFFRQX2M flag_reg (.SI(n64), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(flag), 
	.D(n32), 
	.CK(DFT_UART_CLK__L8_N2));
   SDFFRX4M \counter_reg[7]  (.SI(counter[6]), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(counter[7]), 
	.D(N62), 
	.CK(DFT_UART_CLK__L8_N2));
   SDFFRX4M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(counter[0]), 
	.D(N55), 
	.CK(DFT_UART_CLK__L8_N2));
   SDFFRX4M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(counter[6]), 
	.D(N61), 
	.CK(DFT_UART_CLK__L8_N2));
   SDFFRX4M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(counter[5]), 
	.D(N60), 
	.CK(DFT_UART_CLK__L8_N2));
   SDFFRX4M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(counter[4]), 
	.D(N59), 
	.CK(DFT_UART_CLK__L8_N2));
   SDFFRX4M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(counter[3]), 
	.D(N58), 
	.CK(DFT_UART_CLK__L8_N2));
   SDFFRX4M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(counter[2]), 
	.D(N57), 
	.CK(DFT_UART_CLK__L8_N2));
   SDFFRX4M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(counter[1]), 
	.D(N56), 
	.CK(DFT_UART_CLK__L8_N2));
   NOR2BX1M U5 (.Y(N56), 
	.B(n61), 
	.AN(N39));
   NOR2BXLM U6 (.Y(N57), 
	.B(n61), 
	.AN(N40));
   NOR2BXLM U7 (.Y(N58), 
	.B(n61), 
	.AN(N41));
   NOR2BXLM U8 (.Y(N59), 
	.B(n61), 
	.AN(N42));
   NOR2BXLM U9 (.Y(N60), 
	.B(n61), 
	.AN(N43));
   NOR2BX1M U10 (.Y(N61), 
	.B(n61), 
	.AN(N44));
   OR2X8M U16 (.Y(n35), 
	.B(full_count[6]), 
	.A(n34));
   OAI32X1M U20 (.Y(n33), 
	.B1(n64), 
	.B0(n61), 
	.A2(n30), 
	.A1(div_clk_reg__Exclude_0_NET), 
	.A0(n29));
   OAI32XLM U21 (.Y(n32), 
	.B1(n61), 
	.B0(n63), 
	.A2(n30), 
	.A1(flag), 
	.A0(n29));
   XNOR2X1M U22 (.Y(full_count[0]), 
	.B(n8), 
	.A(i_div_ratio[0]));
   OAI2BB1X1M U23 (.Y(N31), 
	.B0(n35), 
	.A1N(full_count[6]), 
	.A0N(n34));
   OAI2BB1X1M U24 (.Y(N30), 
	.B0(n34), 
	.A1N(full_count[5]), 
	.A0N(n28));
   NAND3BX1M U25 (.Y(n59), 
	.C(n55), 
	.B(n56), 
	.AN(N33));
   NOR2BXLM U28 (.Y(N62), 
	.B(n61), 
	.AN(N45));
   NOR2BX2M U29 (.Y(N55), 
	.B(n61), 
	.AN(n48));
   AO22X4M U30 (.Y(n31), 
	.B1(n63), 
	.B0(N34), 
	.A1(N22), 
	.A0(flag));
   XOR2X2M U31 (.Y(n58), 
	.B(counter[7]), 
	.A(N32));
   OR2X2M U32 (.Y(n3), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   AOI221X4M U33 (.Y(n30), 
	.C0(n29), 
	.B1(N22), 
	.B0(n62), 
	.A1(i_div_ratio[0]), 
	.A0(n31));
   INVX3M U34 (.Y(n61), 
	.A(n30));
   OR2X6M U35 (.Y(n25), 
	.B(full_count[0]), 
	.A(full_count[1]));
   NOR2X2M U36 (.Y(N0), 
	.B(n29), 
	.A(n2));
   INVX2M U37 (.Y(n2), 
	.A(i_rst_n));
   INVX2M U38 (.Y(n62), 
	.A(i_div_ratio[0]));
   INVX2M U39 (.Y(n64), 
	.A(FE_PHN30_div_clk_reg__Exclude_0_NET));
   INVX2M U41 (.Y(n9), 
	.A(i_div_ratio[2]));
   INVX2M U42 (.Y(n13), 
	.A(i_div_ratio[6]));
   INVX2M U44 (.Y(n12), 
	.A(i_div_ratio[5]));
   CLKINVX8M U49 (.Y(n11), 
	.A(i_div_ratio[4]));
   INVX2M U50 (.Y(n8), 
	.A(i_div_ratio[1]));
   NAND2X2M U51 (.Y(n29), 
	.B(N5), 
	.A(HTIE_LTIEHI_NET));
   AOI21BX2M U52 (.Y(n1), 
	.B0N(n3), 
	.A1(i_div_ratio[2]), 
	.A0(i_div_ratio[1]));
   INVX2M U53 (.Y(n48), 
	.A(counter[0]));
   INVX2M U54 (.Y(n63), 
	.A(flag));
   MX2X2M U55 (.Y(o_div_clk), 
	.S0(N0), 
	.B(div_clk_reg), 
	.A(i_ref_clk));
   OR2X2M U57 (.Y(\sub_25/carry[1] ), 
	.B(i_div_ratio[0]), 
	.A(n8));
   OR2X2M U58 (.Y(n4), 
	.B(i_div_ratio[3]), 
	.A(n3));
   OAI2BB1X1M U59 (.Y(N16), 
	.B0(n4), 
	.A1N(i_div_ratio[3]), 
	.A0N(n3));
   OR2X2M U60 (.Y(n5), 
	.B(i_div_ratio[4]), 
	.A(n4));
   OAI2BB1X1M U61 (.Y(N17), 
	.B0(n5), 
	.A1N(i_div_ratio[4]), 
	.A0N(n4));
   OR2X2M U62 (.Y(n6), 
	.B(i_div_ratio[5]), 
	.A(n5));
   OAI2BB1X1M U63 (.Y(N18), 
	.B0(n6), 
	.A1N(i_div_ratio[5]), 
	.A0N(n5));
   XNOR2X1M U64 (.Y(N19), 
	.B(n6), 
	.A(i_div_ratio[6]));
   NOR3X1M U65 (.Y(N21), 
	.C(n6), 
	.B(i_div_ratio[7]), 
	.A(i_div_ratio[6]));
   OAI21X1M U66 (.Y(n7), 
	.B0(i_div_ratio[7]), 
	.A1(n6), 
	.A0(i_div_ratio[6]));
   NAND2BX1M U67 (.Y(N20), 
	.B(n7), 
	.AN(N21));
   CLKINVX1M U68 (.Y(N25), 
	.A(full_count[0]));
   OAI2BB1X1M U69 (.Y(N26), 
	.B0(n25), 
	.A1N(full_count[1]), 
	.A0N(full_count[0]));
   OR2X2M U70 (.Y(n26), 
	.B(full_count[2]), 
	.A(n25));
   OAI2BB1X1M U71 (.Y(N27), 
	.B0(n26), 
	.A1N(full_count[2]), 
	.A0N(n25));
   OR2X6M U72 (.Y(n27), 
	.B(full_count[3]), 
	.A(n26));
   OAI2BB1X1M U73 (.Y(N28), 
	.B0(n27), 
	.A1N(full_count[3]), 
	.A0N(n26));
   OR2X12M U74 (.Y(n28), 
	.B(full_count[4]), 
	.A(n27));
   OAI2BB1X1M U75 (.Y(N29), 
	.B0(n28), 
	.A1N(full_count[4]), 
	.A0N(n27));
   OR2X6M U76 (.Y(n34), 
	.B(full_count[5]), 
	.A(n28));
   AO21X4M U78 (.Y(N32), 
	.B0(N33), 
	.A1(full_count[7]), 
	.A0(n35));
   OR4X1M U79 (.Y(n36), 
	.D(i_div_ratio[6]), 
	.C(i_div_ratio[7]), 
	.B(i_div_ratio[4]), 
	.A(i_div_ratio[5]));
   OR4X1M U80 (.Y(N5), 
	.D(n36), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[2]), 
	.A(i_div_ratio[3]));
   XNOR2X1M U81 (.Y(n47), 
	.B(counter[2]), 
	.A(N16));
   NOR2X1M U82 (.Y(n37), 
	.B(n8), 
	.A(n48));
   OAI22X1M U83 (.Y(n46), 
	.B1(n1), 
	.B0(n37), 
	.A1(n37), 
	.A0(counter[1]));
   CLKNAND2X2M U84 (.Y(n38), 
	.B(n48), 
	.A(n8));
   AOI22X1M U85 (.Y(n39), 
	.B1(counter[1]), 
	.B0(n38), 
	.A1(n1), 
	.A0(n38));
   NOR3X1M U86 (.Y(n45), 
	.C(counter[7]), 
	.B(N21), 
	.A(n39));
   CLKXOR2X2M U87 (.Y(n43), 
	.B(counter[3]), 
	.A(N17));
   CLKXOR2X2M U88 (.Y(n42), 
	.B(counter[4]), 
	.A(N18));
   CLKXOR2X2M U89 (.Y(n41), 
	.B(counter[5]), 
	.A(N19));
   CLKXOR2X2M U90 (.Y(n40), 
	.B(counter[6]), 
	.A(N20));
   NOR4X1M U91 (.Y(n44), 
	.D(n40), 
	.C(n41), 
	.B(n42), 
	.A(n43));
   AND4X1M U92 (.Y(N22), 
	.D(n44), 
	.C(n45), 
	.B(n46), 
	.A(n47));
   XNOR2X2M U93 (.Y(n52), 
	.B(counter[6]), 
	.A(N31));
   XNOR2X2M U94 (.Y(n51), 
	.B(counter[5]), 
	.A(N30));
   XNOR2X2M U95 (.Y(n50), 
	.B(counter[4]), 
	.A(N29));
   XNOR2X1M U96 (.Y(n49), 
	.B(counter[3]), 
	.A(N28));
   NAND4X2M U97 (.Y(n60), 
	.D(n49), 
	.C(n50), 
	.B(n51), 
	.A(n52));
   NOR2BX1M U98 (.Y(n53), 
	.B(counter[0]), 
	.AN(N25));
   OAI2B2X1M U99 (.Y(n56), 
	.B1(n53), 
	.B0(N26), 
	.A1N(counter[1]), 
	.A0(n53));
   NOR2BX1M U100 (.Y(n54), 
	.B(N25), 
	.AN(counter[0]));
   OAI2B2X1M U101 (.Y(n55), 
	.B1(n54), 
	.B0(counter[1]), 
	.A1N(N26), 
	.A0(n54));
   CLKXOR2X2M U102 (.Y(n57), 
	.B(counter[2]), 
	.A(N27));
   NOR4X1M U103 (.Y(N34), 
	.D(n57), 
	.C(n58), 
	.B(n59), 
	.A(n60));
   CLK_DIV_0_DW01_inc_0 add_56 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N45,
		N44,
		N43,
		N42,
		N41,
		N40,
		N39,
		FE_UNCONNECTED_0 }));
endmodule

module CLKDIV_MUX (
	in, 
	out);
   input [5:0] in;
   output [7:0] out;

   // Internal wires
   wire FE_OCPN27_UART_Config_6_;
   wire FE_RN_117_0;
   wire FE_RN_116_0;
   wire FE_RN_115_0;
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   BUFX2M FE_OCPC27_UART_Config_6_ (.Y(FE_OCPN27_UART_Config_6_), 
	.A(in[4]));
   NAND2BX1M FE_RC_141_0 (.Y(FE_RN_117_0), 
	.B(n7), 
	.AN(n8));
   INVX2M FE_RC_140_0 (.Y(FE_RN_116_0), 
	.A(n6));
   AND2X4M FE_RC_139_0 (.Y(FE_RN_115_0), 
	.B(n17), 
	.A(n16));
   OAI21X4M FE_RC_138_0 (.Y(out[0]), 
	.B0(FE_RN_115_0), 
	.A1(FE_RN_116_0), 
	.A0(FE_RN_117_0));
   INVX12M FE_RC_130_0 (.Y(n15), 
	.A(in[2]));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NAND4BX2M U11 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(in[3]), 
	.AN(in[4]));
   NOR3X4M U12 (.Y(out[2]), 
	.C(in[0]), 
	.B(in[1]), 
	.A(n6));
   NAND4BX4M U13 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(in[4]), 
	.AN(in[3]));
   NOR3X8M U14 (.Y(out[1]), 
	.C(in[0]), 
	.B(in[1]), 
	.A(n7));
   CLKINVX8M U15 (.Y(n14), 
	.A(in[5]));
   NAND3X1M U17 (.Y(n5), 
	.C(in[2]), 
	.B(n16), 
	.A(n17));
   INVX2M U19 (.Y(n16), 
	.A(in[1]));
   NOR4X2M U21 (.Y(n8), 
	.D(n15), 
	.C(in[3]), 
	.B(in[4]), 
	.A(in[5]));
   NOR4X2M U22 (.Y(out[3]), 
	.D(FE_OCPN27_UART_Config_6_), 
	.C(in[5]), 
	.B(in[3]), 
	.A(n5));
   INVX2M U23 (.Y(n17), 
	.A(in[0]));
   INVX2M U3 (.Y(out[4]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(out[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(out[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(out[7]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module CLK_DIV_1_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module CLK_DIV_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	DFT_UART_RST__Exclude_0_NET, 
	DFT_UART_CLK__L8_N0, 
	DFT_UART_CLK__L8_N3);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input DFT_UART_RST__Exclude_0_NET;
   input DFT_UART_CLK__L8_N0;
   input DFT_UART_CLK__L8_N3;

   // Internal wires
   wire FE_PHN29_div_clk_reg__Exclude_0_NET;
   wire FE_RN_568_0;
   wire FE_RN_567_0;
   wire FE_RN_566_0;
   wire FE_RN_565_0;
   wire FE_RN_564_0;
   wire FE_RN_563_0;
   wire FE_RN_562_0;
   wire FE_RN_561_0;
   wire FE_RN_560_0;
   wire FE_OCPN31_DIV_RATIO_RX_0_;
   wire FE_OCPN30_DIV_RATIO_RX_1_;
   wire FE_RN_386_0;
   wire FE_RN_385_0;
   wire FE_RN_384_0;
   wire FE_RN_315_0;
   wire FE_RN_314_0;
   wire FE_RN_313_0;
   wire FE_RN_312_0;
   wire FE_RN_311_0;
   wire FE_RN_310_0;
   wire FE_RN_309_0;
   wire FE_RN_308_0;
   wire FE_RN_307_0;
   wire FE_RN_303_0;
   wire FE_RN_275_0;
   wire FE_RN_274_0;
   wire FE_RN_273_0;
   wire FE_RN_272_0;
   wire FE_RN_271_0;
   wire FE_RN_270_0;
   wire FE_RN_269_0;
   wire FE_RN_268_0;
   wire FE_RN_267_0;
   wire FE_RN_266_0;
   wire FE_RN_265_0;
   wire FE_RN_264_0;
   wire FE_RN_263_0;
   wire FE_RN_262_0;
   wire FE_RN_261_0;
   wire FE_RN_260_0;
   wire FE_RN_258_0;
   wire FE_RN_257_0;
   wire FE_RN_256_0;
   wire FE_RN_255_0;
   wire FE_RN_254_0;
   wire FE_RN_253_0;
   wire FE_RN_252_0;
   wire FE_RN_251_0;
   wire FE_RN_250_0;
   wire FE_RN_249_0;
   wire FE_RN_248_0;
   wire FE_RN_247_0;
   wire FE_RN_246_0;
   wire FE_RN_245_0;
   wire FE_RN_244_0;
   wire FE_RN_243_0;
   wire FE_RN_242_0;
   wire FE_RN_241_0;
   wire FE_PHN21_n9__Exclude_0_NET;
   wire FE_PHN20_n9__Exclude_0_NET;
   wire n9__Exclude_0_NET;
   wire div_clk_reg__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire FE_RN_86_0;
   wire FE_RN_85_0;
   wire FE_RN_84_0;
   wire FE_RN_83_0;
   wire FE_RN_82_0;
   wire FE_RN_81_0;
   wire FE_RN_80_0;
   wire FE_RN_78_0;
   wire FE_RN_76_0;
   wire FE_RN_74_0;
   wire FE_RN_73_0;
   wire FE_RN_71_0;
   wire FE_RN_70_0;
   wire FE_RN_69_0;
   wire FE_RN_68_0;
   wire FE_RN_67_0;
   wire FE_RN_66_0;
   wire FE_RN_65_0;
   wire FE_RN_64_0;
   wire FE_RN_63_0;
   wire FE_RN_62_0;
   wire FE_RN_61_0;
   wire FE_RN_60_0;
   wire FE_RN_59_0;
   wire FE_RN_58_0;
   wire FE_UNCONNECTED_0;
   wire N0;
   wire N5;
   wire div_clk_reg;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N33;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N45;
   wire N55;
   wire N56;
   wire N57;
   wire N58;
   wire N59;
   wire N60;
   wire N61;
   wire N62;
   wire \sub_25/carry[7] ;
   wire \sub_25/carry[6] ;
   wire \sub_25/carry[2] ;
   wire \sub_25/carry[1] ;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n68;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n75;
   wire n76;
   wire n90;
   wire [7:0] full_count;
   wire [7:0] counter;

   CLKBUFX2M FE_PHC29_div_clk_reg__Exclude_0_NET (.Y(FE_PHN29_div_clk_reg__Exclude_0_NET), 
	.A(div_clk_reg__Exclude_0_NET));
   NAND2X4M FE_RC_729_0 (.Y(\sub_25/carry[7] ), 
	.B(FE_RN_273_0), 
	.A(FE_RN_270_0));
   NAND3BX2M FE_RC_728_0 (.Y(n5), 
	.C(FE_RN_273_0), 
	.B(FE_RN_270_0), 
	.AN(LTIE_LTIELO_NET));
   NAND3X2M FE_RC_725_0 (.Y(FE_RN_58_0), 
	.C(FE_RN_61_0), 
	.B(\sub_25/carry[2] ), 
	.A(FE_RN_59_0));
   INVX2M FE_RC_715_0 (.Y(FE_RN_568_0), 
	.A(FE_RN_307_0));
   AOI2B1X4M FE_RC_714_0 (.Y(FE_RN_308_0), 
	.B0(FE_RN_309_0), 
	.A1N(FE_RN_568_0), 
	.A0(FE_RN_313_0));
   XNOR2X4M FE_RC_713_0 (.Y(n65), 
	.B(counter[7]), 
	.A(n7));
   XOR2X4M FE_RC_712_0 (.Y(n7), 
	.B(n42), 
	.A(full_count[7]));
   OR2X2M FE_RC_711_0 (.Y(FE_RN_567_0), 
	.B(FE_RN_315_0), 
	.A(FE_RN_314_0));
   NOR2X4M FE_RC_710_0 (.Y(n75), 
	.B(FE_RN_567_0), 
	.A(FE_RN_308_0));
   CLKINVX4M FE_RC_709_0 (.Y(FE_RN_566_0), 
	.A(n90));
   NOR2X4M FE_RC_708_0 (.Y(FE_RN_565_0), 
	.B(FE_RN_566_0), 
	.A(n64));
   AND2X2M FE_RC_707_0 (.Y(FE_RN_564_0), 
	.B(FE_RN_565_0), 
	.A(n56));
   AND2X4M FE_RC_706_0 (.Y(FE_RN_563_0), 
	.B(n57), 
	.A(FE_RN_564_0));
   NAND2X2M FE_RC_705_0 (.Y(FE_RN_562_0), 
	.B(n58), 
	.A(FE_RN_563_0));
   NOR2X4M FE_RC_704_0 (.Y(FE_RN_311_0), 
	.B(FE_RN_562_0), 
	.A(FE_RN_312_0));
   CLKNAND2X4M FE_RC_703_0 (.Y(FE_RN_561_0), 
	.B(FE_RN_260_0), 
	.A(FE_RN_386_0));
   NAND2BX4M FE_RC_702_0 (.Y(n40), 
	.B(FE_RN_384_0), 
	.AN(FE_RN_561_0));
   CLKINVX4M FE_RC_701_0 (.Y(FE_RN_560_0), 
	.A(full_count[5]));
   NAND4X6M FE_RC_700_0 (.Y(n41), 
	.D(FE_RN_260_0), 
	.C(FE_RN_560_0), 
	.B(FE_RN_386_0), 
	.A(FE_RN_384_0));
   BUFX2M FE_OCPC31_DIV_RATIO_RX_0_ (.Y(FE_OCPN31_DIV_RATIO_RX_0_), 
	.A(i_div_ratio[0]));
   BUFX2M FE_OCPC30_DIV_RATIO_RX_1_ (.Y(FE_OCPN30_DIV_RATIO_RX_1_), 
	.A(i_div_ratio[1]));
   NAND3BX4M FE_RC_474_0 (.Y(n39), 
	.C(FE_RN_261_0), 
	.B(FE_RN_260_0), 
	.AN(full_count[3]));
   INVX2M FE_RC_473_0 (.Y(FE_RN_386_0), 
	.A(full_count[3]));
   INVX2M FE_RC_472_0 (.Y(FE_RN_385_0), 
	.A(FE_RN_261_0));
   NOR2X8M FE_RC_471_0 (.Y(FE_RN_384_0), 
	.B(FE_RN_385_0), 
	.A(full_count[4]));
   INVX2M FE_RC_377_0 (.Y(FE_RN_315_0), 
	.A(n3));
   INVX2M FE_RC_376_0 (.Y(FE_RN_314_0), 
	.A(n2));
   NAND2BX4M FE_RC_375_0 (.Y(FE_RN_313_0), 
	.B(FE_RN_303_0), 
	.AN(n65));
   INVX2M FE_RC_374_0 (.Y(FE_RN_312_0), 
	.A(n59));
   INVX2M FE_RC_372_0 (.Y(FE_RN_310_0), 
	.A(FE_RN_307_0));
   OAI21X3M FE_RC_371_0 (.Y(FE_RN_309_0), 
	.B0(FE_OCPN31_DIV_RATIO_RX_0_), 
	.A1(FE_RN_310_0), 
	.A0(FE_RN_311_0));
   NAND2X2M FE_RC_368_0 (.Y(FE_RN_307_0), 
	.B(N22), 
	.A(test_so));
   INVX2M FE_RC_364_0 (.Y(FE_RN_303_0), 
	.A(n66));
   NOR2X4M FE_RC_337_0 (.Y(N33), 
	.B(full_count[7]), 
	.A(n42));
   INVX2M FE_RC_326_0 (.Y(FE_RN_275_0), 
	.A(FE_RN_266_0));
   NAND2X2M FE_RC_325_0 (.Y(FE_RN_274_0), 
	.B(\sub_25/carry[6] ), 
	.A(FE_RN_275_0));
   OAI2B1X2M FE_RC_324_0 (.Y(full_count[6]), 
	.B0(FE_RN_274_0), 
	.A1N(FE_RN_266_0), 
	.A0(\sub_25/carry[6] ));
   NAND2X2M FE_RC_323_0 (.Y(FE_RN_273_0), 
	.B(n25), 
	.A(LTIE_LTIELO_NET));
   INVX2M FE_RC_322_0 (.Y(FE_RN_272_0), 
	.A(n25));
   INVX2M FE_RC_321_0 (.Y(FE_RN_271_0), 
	.A(LTIE_LTIELO_NET));
   OAI2BB1X4M FE_RC_320_0 (.Y(FE_RN_270_0), 
	.B0(\sub_25/carry[6] ), 
	.A1N(FE_RN_271_0), 
	.A0N(FE_RN_272_0));
   INVX2M FE_RC_318_0 (.Y(FE_RN_269_0), 
	.A(FE_RN_266_0));
   INVX2M FE_RC_317_0 (.Y(FE_RN_268_0), 
	.A(n25));
   INVX2M FE_RC_316_0 (.Y(FE_RN_267_0), 
	.A(LTIE_LTIELO_NET));
   OAI22X1M FE_RC_315_0 (.Y(FE_RN_266_0), 
	.B1(FE_RN_267_0), 
	.B0(n25), 
	.A1(FE_RN_268_0), 
	.A0(LTIE_LTIELO_NET));
   INVX2M FE_RC_314_0 (.Y(FE_RN_265_0), 
	.A(FE_RN_266_0));
   NOR2X4M FE_RC_313_0 (.Y(FE_RN_264_0), 
	.B(\sub_25/carry[6] ), 
	.A(FE_RN_265_0));
   AOI21X4M FE_RC_312_0 (.Y(FE_RN_263_0), 
	.B0(FE_RN_264_0), 
	.A1(\sub_25/carry[6] ), 
	.A0(FE_RN_269_0));
   NAND2BX8M FE_RC_311_0 (.Y(n42), 
	.B(FE_RN_263_0), 
	.AN(n41));
   INVX2M FE_RC_310_0 (.Y(FE_RN_262_0), 
	.A(n37));
   NAND2BX8M FE_RC_309_0 (.Y(n38), 
	.B(FE_RN_262_0), 
	.AN(full_count[2]));
   INVX2M FE_RC_308_0 (.Y(FE_RN_261_0), 
	.A(n37));
   INVX2M FE_RC_307_0 (.Y(FE_RN_260_0), 
	.A(full_count[2]));
   CLKINVX4M FE_RC_304_0 (.Y(FE_RN_83_0), 
	.A(\sub_25/carry[2] ));
   NAND3X2M FE_RC_303_0 (.Y(FE_RN_258_0), 
	.C(FE_RN_59_0), 
	.B(FE_RN_76_0), 
	.A(\sub_25/carry[2] ));
   NAND3X4M FE_RC_302_0 (.Y(full_count[3]), 
	.C(FE_RN_258_0), 
	.B(FE_RN_78_0), 
	.A(FE_RN_80_0));
   INVX2M FE_RC_301_0 (.Y(FE_RN_257_0), 
	.A(LTIE_LTIELO_NET));
   INVX2M FE_RC_300_0 (.Y(FE_RN_256_0), 
	.A(LTIE_LTIELO_NET));
   AOI2BB2X2M FE_RC_299_0 (.Y(FE_RN_255_0), 
	.B1(n26), 
	.B0(FE_RN_256_0), 
	.A1N(FE_RN_257_0), 
	.A0N(FE_RN_247_0));
   NAND2X2M FE_RC_298_0 (.Y(FE_RN_254_0), 
	.B(n26), 
	.A(FE_RN_248_0));
   INVX2M FE_RC_297_0 (.Y(FE_RN_253_0), 
	.A(n27));
   INVX2M FE_RC_296_0 (.Y(FE_RN_252_0), 
	.A(n26));
   INVX2M FE_RC_295_0 (.Y(FE_RN_251_0), 
	.A(LTIE_LTIELO_NET));
   OAI32X1M FE_RC_294_0 (.Y(FE_RN_250_0), 
	.B1(FE_RN_251_0), 
	.B0(FE_RN_252_0), 
	.A2(LTIE_LTIELO_NET), 
	.A1(FE_RN_253_0), 
	.A0(n26));
   CLKNAND2X4M FE_RC_293_0 (.Y(FE_RN_249_0), 
	.B(FE_RN_250_0), 
	.A(FE_RN_242_0));
   OAI211X8M FE_RC_292_0 (.Y(full_count[5]), 
	.C0(FE_RN_249_0), 
	.B0(FE_RN_254_0), 
	.A1(FE_RN_255_0), 
	.A0(FE_RN_242_0));
   OAI2BB2X1M FE_RC_291_0 (.Y(FE_RN_248_0), 
	.B1(n27), 
	.B0(LTIE_LTIELO_NET), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n27));
   XNOR2X8M FE_RC_290_0 (.Y(full_count[4]), 
	.B(FE_RN_248_0), 
	.A(FE_RN_242_0));
   OR2X2M FE_RC_289_0 (.Y(FE_RN_247_0), 
	.B(n27), 
	.A(n26));
   NAND2X2M FE_RC_288_0 (.Y(FE_RN_246_0), 
	.B(LTIE_LTIELO_NET), 
	.A(FE_RN_247_0));
   INVX2M FE_RC_287_0 (.Y(FE_RN_245_0), 
	.A(LTIE_LTIELO_NET));
   OAI2BB1X2M FE_RC_286_0 (.Y(FE_RN_244_0), 
	.B0(FE_RN_245_0), 
	.A1N(n26), 
	.A0N(n27));
   AND2X4M FE_RC_285_0 (.Y(FE_RN_243_0), 
	.B(FE_RN_66_0), 
	.A(FE_RN_63_0));
   NAND2X6M FE_RC_284_0 (.Y(FE_RN_242_0), 
	.B(FE_RN_58_0), 
	.A(FE_RN_243_0));
   CLKNAND2X4M FE_RC_283_0 (.Y(FE_RN_241_0), 
	.B(FE_RN_244_0), 
	.A(FE_RN_242_0));
   CLKNAND2X8M FE_RC_282_0 (.Y(\sub_25/carry[6] ), 
	.B(FE_RN_246_0), 
	.A(FE_RN_241_0));
   DLY4X1M FE_PHC21_n9__Exclude_0_NET (.Y(FE_PHN20_n9__Exclude_0_NET), 
	.A(FE_PHN21_n9__Exclude_0_NET));
   DLY4X1M FE_PHC20_n9__Exclude_0_NET (.Y(n9__Exclude_0_NET), 
	.A(FE_PHN20_n9__Exclude_0_NET));
   CLKBUFX1M n9__Exclude_0 (.Y(FE_PHN21_n9__Exclude_0_NET), 
	.A(n9));
   CLKBUFX1M div_clk_reg__Exclude_0 (.Y(div_clk_reg__Exclude_0_NET), 
	.A(div_clk_reg));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   INVX2M FE_RC_100_0 (.Y(FE_RN_86_0), 
	.A(n28));
   NAND2BX2M FE_RC_99_0 (.Y(FE_RN_85_0), 
	.B(n28), 
	.AN(i_div_ratio[3]));
   OAI2BB1X2M FE_RC_98_0 (.Y(FE_RN_84_0), 
	.B0(FE_RN_85_0), 
	.A1N(i_div_ratio[3]), 
	.A0N(FE_RN_86_0));
   CLKNAND2X2M FE_RC_96_0 (.Y(FE_RN_82_0), 
	.B(FE_RN_83_0), 
	.A(FE_RN_65_0));
   NAND2X4M FE_RC_95_0 (.Y(FE_RN_81_0), 
	.B(FE_RN_59_0), 
	.A(FE_RN_82_0));
   CLKNAND2X4M FE_RC_94_0 (.Y(FE_RN_80_0), 
	.B(FE_RN_84_0), 
	.A(FE_RN_81_0));
   CLKNAND2X2M FE_RC_92_0 (.Y(FE_RN_78_0), 
	.B(FE_RN_76_0), 
	.A(FE_RN_64_0));
   OAI2BB1X2M FE_RC_90_0 (.Y(FE_RN_76_0), 
	.B0(FE_RN_61_0), 
	.A1N(i_div_ratio[3]), 
	.A0N(n28));
   INVX2M FE_RC_87_0 (.Y(FE_RN_74_0), 
	.A(\sub_25/carry[2] ));
   INVX3M FE_RC_86_0 (.Y(FE_RN_73_0), 
	.A(n34));
   MXI2X1M FE_RC_84_0 (.Y(FE_RN_71_0), 
	.S0(FE_RN_60_0), 
	.B(FE_RN_73_0), 
	.A(n34));
   CLKNAND2X2M FE_RC_83_0 (.Y(FE_RN_70_0), 
	.B(FE_RN_74_0), 
	.A(FE_RN_71_0));
   NAND2X2M FE_RC_82_0 (.Y(FE_RN_69_0), 
	.B(FE_RN_65_0), 
	.A(FE_RN_59_0));
   NAND2X2M FE_RC_81_0 (.Y(FE_RN_68_0), 
	.B(\sub_25/carry[2] ), 
	.A(FE_RN_69_0));
   NAND2X4M FE_RC_80_0 (.Y(full_count[2]), 
	.B(FE_RN_70_0), 
	.A(FE_RN_68_0));
   INVX2M FE_RC_79_0 (.Y(FE_RN_67_0), 
	.A(n28));
   NAND2BX2M FE_RC_78_0 (.Y(FE_RN_66_0), 
	.B(i_div_ratio[3]), 
	.AN(FE_RN_67_0));
   CLKNAND2X2M FE_RC_77_0 (.Y(FE_RN_65_0), 
	.B(n34), 
	.A(i_div_ratio[2]));
   INVX2M FE_RC_76_0 (.Y(FE_RN_64_0), 
	.A(FE_RN_65_0));
   NAND2X3M FE_RC_75_0 (.Y(FE_RN_63_0), 
	.B(FE_RN_61_0), 
	.A(FE_RN_64_0));
   INVX2M FE_RC_74_0 (.Y(FE_RN_62_0), 
	.A(n28));
   NAND2BX2M FE_RC_73_0 (.Y(FE_RN_61_0), 
	.B(FE_RN_62_0), 
	.AN(i_div_ratio[3]));
   INVX2M FE_RC_72_0 (.Y(FE_RN_60_0), 
	.A(i_div_ratio[2]));
   NAND2BX8M FE_RC_71_0 (.Y(FE_RN_59_0), 
	.B(FE_RN_60_0), 
	.AN(n34));
   SDFFRQX2M div_clk_reg_reg (.SI(counter[7]), 
	.SE(test_se), 
	.RN(n8), 
	.Q(div_clk_reg), 
	.D(n72), 
	.CK(DFT_UART_CLK__L8_N0));
   SDFFRQX2M \counter_reg[7]  (.SI(counter[6]), 
	.SE(test_se), 
	.RN(n8), 
	.Q(counter[7]), 
	.D(N62), 
	.CK(DFT_UART_CLK__L8_N3));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(n8), 
	.Q(counter[2]), 
	.D(N57), 
	.CK(DFT_UART_CLK__L8_N3));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(n8), 
	.Q(counter[0]), 
	.D(N55), 
	.CK(DFT_UART_CLK__L8_N3));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(n8), 
	.Q(counter[6]), 
	.D(N61), 
	.CK(DFT_UART_CLK__L8_N3));
   SDFFRX4M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(n8), 
	.Q(counter[5]), 
	.D(N60), 
	.CK(DFT_UART_CLK__L8_N3));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(n8), 
	.Q(counter[4]), 
	.D(N59), 
	.CK(DFT_UART_CLK__L8_N3));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(n8), 
	.Q(counter[3]), 
	.D(N58), 
	.CK(DFT_UART_CLK__L8_N3));
   SDFFRX4M \counter_reg[1]  (.SI(n55), 
	.SE(test_se), 
	.RN(n8), 
	.Q(counter[1]), 
	.D(N56), 
	.CK(DFT_UART_CLK__L8_N3));
   INVX4M U5 (.Y(n68), 
	.A(n75));
   NOR2BXLM U10 (.Y(N56), 
	.B(n68), 
	.AN(N39));
   NOR2BXLM U16 (.Y(N57), 
	.B(n68), 
	.AN(N40));
   NOR2BXLM U20 (.Y(N58), 
	.B(n68), 
	.AN(N41));
   NOR2BXLM U21 (.Y(N55), 
	.B(n68), 
	.AN(n55));
   NOR2BXLM U22 (.Y(N62), 
	.B(n68), 
	.AN(N45));
   NOR2BXLM U23 (.Y(N61), 
	.B(n68), 
	.AN(N44));
   NOR2BX2M U24 (.Y(N60), 
	.B(n68), 
	.AN(N43));
   NOR2BXLM U25 (.Y(N59), 
	.B(n68), 
	.AN(N42));
   CLKNAND2X2M U28 (.Y(full_count[7]), 
	.B(n5), 
	.A(n4));
   OAI2BB1XLM U29 (.Y(N16), 
	.B0(n11), 
	.A1N(i_div_ratio[3]), 
	.A0N(n10));
   NAND2X2M U30 (.Y(n2), 
	.B(N22), 
	.A(n71));
   INVX2M U31 (.Y(n3), 
	.A(n76));
   INVXLM U33 (.Y(n71), 
	.A(FE_OCPN31_DIV_RATIO_RX_0_));
   CLKNAND2X2M U37 (.Y(n4), 
	.B(\sub_25/carry[7] ), 
	.A(LTIE_LTIELO_NET));
   OR2X2M U38 (.Y(n37), 
	.B(full_count[0]), 
	.A(full_count[1]));
   INVX2M U39 (.Y(n8), 
	.A(n9__Exclude_0_NET));
   OR2X2M U40 (.Y(n10), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   ADDFHX4M U41 (.S(full_count[1]), 
	.CO(\sub_25/carry[2] ), 
	.CI(\sub_25/carry[1] ), 
	.B(n36), 
	.A(i_div_ratio[1]));
   INVX2M U42 (.Y(n36), 
	.A(i_div_ratio[2]));
   OR2X2M U43 (.Y(\sub_25/carry[1] ), 
	.B(i_div_ratio[0]), 
	.A(n35));
   INVX2M U44 (.Y(n34), 
	.A(i_div_ratio[3]));
   AOI21BX2M U45 (.Y(n6), 
	.B0N(n10), 
	.A1(i_div_ratio[2]), 
	.A0(FE_OCPN30_DIV_RATIO_RX_1_));
   NOR2X2M U46 (.Y(N0), 
	.B(n76), 
	.A(n9));
   INVX2M U47 (.Y(n9), 
	.A(i_rst_n));
   INVX2M U48 (.Y(n70), 
	.A(FE_PHN29_div_clk_reg__Exclude_0_NET));
   INVX2M U50 (.Y(n27), 
	.A(LTIE_LTIELO_NET));
   INVX2M U51 (.Y(n26), 
	.A(LTIE_LTIELO_NET));
   INVX2M U53 (.Y(n28), 
	.A(LTIE_LTIELO_NET));
   INVX2M U54 (.Y(n25), 
	.A(LTIE_LTIELO_NET));
   NAND2X2M U55 (.Y(n76), 
	.B(N5), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U56 (.Y(n55), 
	.A(counter[0]));
   MX2X2M U58 (.Y(o_div_clk), 
	.S0(N0), 
	.B(div_clk_reg), 
	.A(i_ref_clk));
   OAI32X1M U59 (.Y(n72), 
	.B1(n70), 
	.B0(n68), 
	.A2(n75), 
	.A1(div_clk_reg__Exclude_0_NET), 
	.A0(n76));
   OAI32X1M U60 (.Y(n73), 
	.B1(n68), 
	.B0(n90), 
	.A2(n75), 
	.A1(test_so), 
	.A0(n76));
   INVX2M U61 (.Y(n35), 
	.A(i_div_ratio[1]));
   XNOR2X1M U62 (.Y(full_count[0]), 
	.B(n35), 
	.A(i_div_ratio[0]));
   OR2X2M U63 (.Y(n11), 
	.B(i_div_ratio[3]), 
	.A(n10));
   OR2X2M U64 (.Y(n12), 
	.B(LTIE_LTIELO_NET), 
	.A(n11));
   OAI2BB1X1M U65 (.Y(N17), 
	.B0(n12), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n11));
   OR2X2M U66 (.Y(n13), 
	.B(LTIE_LTIELO_NET), 
	.A(n12));
   OAI2BB1X1M U67 (.Y(N18), 
	.B0(n13), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n12));
   XNOR2X1M U68 (.Y(N19), 
	.B(n13), 
	.A(LTIE_LTIELO_NET));
   NOR3X1M U69 (.Y(N21), 
	.C(n13), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   OAI21X1M U70 (.Y(n24), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n13), 
	.A0(LTIE_LTIELO_NET));
   NAND2BX2M U71 (.Y(N20), 
	.B(n24), 
	.AN(N21));
   CLKINVX1M U72 (.Y(N25), 
	.A(full_count[0]));
   OAI2BB1X1M U73 (.Y(N26), 
	.B0(n37), 
	.A1N(full_count[1]), 
	.A0N(full_count[0]));
   OAI2BB1X1M U75 (.Y(N27), 
	.B0(n38), 
	.A1N(full_count[2]), 
	.A0N(n37));
   OAI2BB1X1M U77 (.Y(N28), 
	.B0(n39), 
	.A1N(full_count[3]), 
	.A0N(n38));
   OAI2BB1X1M U79 (.Y(N29), 
	.B0(n40), 
	.A1N(full_count[4]), 
	.A0N(n39));
   OAI2BB1X1M U81 (.Y(N30), 
	.B0(n41), 
	.A1N(full_count[5]), 
	.A0N(n40));
   OAI2BB1X2M U83 (.Y(N31), 
	.B0(n42), 
	.A1N(full_count[6]), 
	.A0N(n41));
   OR4X1M U84 (.Y(n43), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   OR4X1M U85 (.Y(N5), 
	.D(n43), 
	.C(FE_OCPN30_DIV_RATIO_RX_1_), 
	.B(i_div_ratio[2]), 
	.A(i_div_ratio[3]));
   XNOR2X1M U86 (.Y(n54), 
	.B(counter[2]), 
	.A(N16));
   NOR2X1M U87 (.Y(n44), 
	.B(n35), 
	.A(n55));
   OAI22X1M U88 (.Y(n53), 
	.B1(n6), 
	.B0(n44), 
	.A1(n44), 
	.A0(counter[1]));
   CLKNAND2X2M U89 (.Y(n45), 
	.B(n55), 
	.A(n35));
   AOI22X1M U90 (.Y(n46), 
	.B1(counter[1]), 
	.B0(n45), 
	.A1(n6), 
	.A0(n45));
   NOR3X1M U91 (.Y(n52), 
	.C(counter[7]), 
	.B(N21), 
	.A(n46));
   CLKXOR2X2M U92 (.Y(n50), 
	.B(counter[3]), 
	.A(N17));
   XOR2X2M U93 (.Y(n49), 
	.B(counter[4]), 
	.A(N18));
   XOR2X2M U94 (.Y(n48), 
	.B(counter[5]), 
	.A(N19));
   XOR2X2M U95 (.Y(n47), 
	.B(counter[6]), 
	.A(N20));
   NOR4X2M U96 (.Y(n51), 
	.D(n47), 
	.C(n48), 
	.B(n49), 
	.A(n50));
   AND4X2M U97 (.Y(N22), 
	.D(n51), 
	.C(n52), 
	.B(n53), 
	.A(n54));
   XNOR2X2M U98 (.Y(n59), 
	.B(counter[6]), 
	.A(N31));
   XNOR2X2M U99 (.Y(n58), 
	.B(counter[5]), 
	.A(N30));
   XNOR2X2M U100 (.Y(n57), 
	.B(counter[4]), 
	.A(N29));
   XNOR2X2M U101 (.Y(n56), 
	.B(counter[3]), 
	.A(N28));
   NOR2BX1M U103 (.Y(n60), 
	.B(counter[0]), 
	.AN(N25));
   OAI2B2X1M U104 (.Y(n63), 
	.B1(n60), 
	.B0(N26), 
	.A1N(counter[1]), 
	.A0(n60));
   NOR2BX1M U105 (.Y(n61), 
	.B(N25), 
	.AN(counter[0]));
   OAI2B2X1M U106 (.Y(n62), 
	.B1(n61), 
	.B0(counter[1]), 
	.A1N(N26), 
	.A0(n61));
   NAND3BX2M U107 (.Y(n66), 
	.C(n62), 
	.B(n63), 
	.AN(N33));
   XOR2X2M U108 (.Y(n64), 
	.B(counter[2]), 
	.A(N27));
   CLK_DIV_1_DW01_inc_0 add_56 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N45,
		N44,
		N43,
		N42,
		N41,
		N40,
		N39,
		FE_UNCONNECTED_0 }));
   SDFFRX4M flag_reg (.SI(n70), 
	.SE(test_se), 
	.RN(DFT_UART_RST__Exclude_0_NET), 
	.Q(test_so), 
	.D(n73), 
	.CK(DFT_UART_CLK__L8_N3));
   INVX2M U3 (.Y(n90), 
	.A(test_so));
endmodule

module mux_test_1 (
	clk, 
	rst, 
	mux_sel, 
	ser_data, 
	par_bit, 
	tx_out, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input [1:0] mux_sel;
   input ser_data;
   input par_bit;
   output tx_out;
   input test_si;
   input test_se;

   // Internal wires
   wire mux_out;
   wire n3;
   wire n4;
   wire n2;

   SDFFRQX4M tx_out_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(tx_out), 
	.D(mux_out), 
	.CK(clk));
   INVX2M U4 (.Y(n2), 
	.A(mux_sel[0]));
   OAI21X2M U5 (.Y(mux_out), 
	.B0(n4), 
	.A1(n2), 
	.A0(n3));
   NOR2BX2M U6 (.Y(n3), 
	.B(par_bit), 
	.AN(mux_sel[1]));
   NAND3X2M U7 (.Y(n4), 
	.C(ser_data), 
	.B(n2), 
	.A(mux_sel[1]));
endmodule

module parity_calc_test_1 (
	clk, 
	rst, 
	p_data, 
	data_valid, 
	par_typ, 
	par_en, 
	busy, 
	par_bit, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input [7:0] p_data;
   input data_valid;
   input par_typ;
   input par_en;
   input busy;
   output par_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n2;
   wire [7:0] data_reg;

   SDFFRQX2M par_bit_reg (.SI(data_reg[7]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(par_bit), 
	.D(n9), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[5]  (.SI(data_reg[4]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_reg[5]), 
	.D(n21), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[1]  (.SI(data_reg[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_reg[1]), 
	.D(n13), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[4]  (.SI(data_reg[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_reg[4]), 
	.D(n19), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_reg[0]), 
	.D(n11), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[2]  (.SI(data_reg[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_reg[2]), 
	.D(n15), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[3]  (.SI(data_reg[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_reg[3]), 
	.D(n17), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[6]  (.SI(data_reg[5]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_reg[6]), 
	.D(n23), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[7]  (.SI(data_reg[6]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_reg[7]), 
	.D(n25), 
	.CK(clk));
   NOR2BX2M U2 (.Y(n7), 
	.B(busy), 
	.AN(data_valid));
   XNOR2X2M U3 (.Y(n5), 
	.B(data_reg[3]), 
	.A(data_reg[2]));
   OAI2BB2X1M U4 (.Y(n9), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(par_bit));
   INVX2M U5 (.Y(n2), 
	.A(par_en));
   XOR3XLM U6 (.Y(n1), 
	.C(n4), 
	.B(par_typ), 
	.A(n3));
   XOR3XLM U7 (.Y(n4), 
	.C(n5), 
	.B(data_reg[0]), 
	.A(data_reg[1]));
   XOR3XLM U8 (.Y(n3), 
	.C(n6), 
	.B(data_reg[4]), 
	.A(data_reg[5]));
   CLKXOR2X2M U9 (.Y(n6), 
	.B(data_reg[6]), 
	.A(data_reg[7]));
   AO2B2X2M U10 (.Y(n11), 
	.B1(n7), 
	.B0(p_data[0]), 
	.A1N(n7), 
	.A0(data_reg[0]));
   AO2B2X2M U11 (.Y(n13), 
	.B1(n7), 
	.B0(p_data[1]), 
	.A1N(n7), 
	.A0(data_reg[1]));
   AO2B2X2M U12 (.Y(n15), 
	.B1(n7), 
	.B0(p_data[2]), 
	.A1N(n7), 
	.A0(data_reg[2]));
   AO2B2X2M U13 (.Y(n17), 
	.B1(n7), 
	.B0(p_data[3]), 
	.A1N(n7), 
	.A0(data_reg[3]));
   AO2B2X2M U14 (.Y(n19), 
	.B1(n7), 
	.B0(p_data[4]), 
	.A1N(n7), 
	.A0(data_reg[4]));
   AO2B2X2M U15 (.Y(n21), 
	.B1(n7), 
	.B0(p_data[5]), 
	.A1N(n7), 
	.A0(data_reg[5]));
   AO2B2X2M U16 (.Y(n23), 
	.B1(n7), 
	.B0(p_data[6]), 
	.A1N(n7), 
	.A0(data_reg[6]));
   AO2B2X2M U17 (.Y(n25), 
	.B1(n7), 
	.B0(p_data[7]), 
	.A1N(n7), 
	.A0(data_reg[7]));
endmodule

module serializer_test_1 (
	clk, 
	rst, 
	p_data, 
	ser_en, 
	busy, 
	data_valid, 
	ser_done, 
	ser_data, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input [7:0] p_data;
   input ser_en;
   input busy;
   input data_valid;
   output ser_done;
   output ser_data;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire N23;
   wire N24;
   wire N25;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n13;
   wire n14;
   wire n35;
   wire n38;
   wire n39;
   wire [7:1] data_reg;
   wire [2:0] count;

   assign test_so = data_reg[7] ;

   SDFFRQX2M \data_reg_reg[6]  (.SI(data_reg[5]), 
	.SE(n39), 
	.RN(rst), 
	.Q(data_reg[6]), 
	.D(n29), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[5]  (.SI(data_reg[4]), 
	.SE(n39), 
	.RN(rst), 
	.Q(data_reg[5]), 
	.D(n30), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[4]  (.SI(data_reg[3]), 
	.SE(n39), 
	.RN(rst), 
	.Q(data_reg[4]), 
	.D(n31), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[3]  (.SI(data_reg[2]), 
	.SE(n39), 
	.RN(rst), 
	.Q(data_reg[3]), 
	.D(n32), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[2]  (.SI(data_reg[1]), 
	.SE(n39), 
	.RN(rst), 
	.Q(data_reg[2]), 
	.D(n33), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[1]  (.SI(ser_data), 
	.SE(n39), 
	.RN(rst), 
	.Q(data_reg[1]), 
	.D(n34), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[7]  (.SI(data_reg[6]), 
	.SE(n39), 
	.RN(rst), 
	.Q(data_reg[7]), 
	.D(n28), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[0]  (.SI(n35), 
	.SE(n39), 
	.RN(rst), 
	.Q(ser_data), 
	.D(n27), 
	.CK(clk));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(n39), 
	.RN(rst), 
	.Q(count[1]), 
	.D(N24), 
	.CK(clk));
   SDFFRQX2M \count_reg[2]  (.SI(n14), 
	.SE(n39), 
	.RN(rst), 
	.Q(count[2]), 
	.D(N25), 
	.CK(clk));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(n39), 
	.RN(rst), 
	.Q(count[0]), 
	.D(N23), 
	.CK(clk));
   NOR2X2M U14 (.Y(n17), 
	.B(n18), 
	.A(n13));
   NOR2X2M U15 (.Y(n15), 
	.B(n17), 
	.A(n18));
   AND3X2M U16 (.Y(ser_done), 
	.C(count[1]), 
	.B(count[2]), 
	.A(count[0]));
   OAI2BB2X1M U17 (.Y(N25), 
	.B1(n13), 
	.B0(n25), 
	.A1N(N23), 
	.A0N(count[2]));
   AOI32X1M U18 (.Y(n25), 
	.B1(n14), 
	.B0(count[2]), 
	.A2(count[1]), 
	.A1(n35), 
	.A0(count[0]));
   INVX2M U19 (.Y(n35), 
	.A(count[2]));
   INVX2M U20 (.Y(n13), 
	.A(ser_en));
   NOR2X2M U21 (.Y(N23), 
	.B(count[0]), 
	.A(n13));
   NOR2BX2M U23 (.Y(n18), 
	.B(busy), 
	.AN(data_valid));
   NOR2X2M U24 (.Y(N24), 
	.B(n13), 
	.A(n26));
   CLKXOR2X2M U25 (.Y(n26), 
	.B(n14), 
	.A(count[0]));
   OAI2BB1X2M U26 (.Y(n27), 
	.B0(n16), 
	.A1N(n15), 
	.A0N(ser_data));
   AOI22X1M U27 (.Y(n16), 
	.B1(n18), 
	.B0(p_data[0]), 
	.A1(n17), 
	.A0(data_reg[1]));
   OAI2BB1X2M U28 (.Y(n34), 
	.B0(n24), 
	.A1N(n15), 
	.A0N(data_reg[1]));
   AOI22X1M U29 (.Y(n24), 
	.B1(n18), 
	.B0(p_data[1]), 
	.A1(n17), 
	.A0(data_reg[2]));
   OAI2BB1X2M U30 (.Y(n33), 
	.B0(n23), 
	.A1N(data_reg[2]), 
	.A0N(n15));
   AOI22X1M U31 (.Y(n23), 
	.B1(n18), 
	.B0(p_data[2]), 
	.A1(n17), 
	.A0(data_reg[3]));
   OAI2BB1X2M U32 (.Y(n32), 
	.B0(n22), 
	.A1N(data_reg[3]), 
	.A0N(n15));
   AOI22X1M U33 (.Y(n22), 
	.B1(n18), 
	.B0(p_data[3]), 
	.A1(n17), 
	.A0(data_reg[4]));
   OAI2BB1X2M U34 (.Y(n31), 
	.B0(n21), 
	.A1N(data_reg[4]), 
	.A0N(n15));
   AOI22X1M U35 (.Y(n21), 
	.B1(n18), 
	.B0(p_data[4]), 
	.A1(n17), 
	.A0(data_reg[5]));
   OAI2BB1X2M U36 (.Y(n30), 
	.B0(n20), 
	.A1N(data_reg[5]), 
	.A0N(n15));
   AOI22X1M U37 (.Y(n20), 
	.B1(n18), 
	.B0(p_data[5]), 
	.A1(n17), 
	.A0(data_reg[6]));
   OAI2BB1X2M U38 (.Y(n29), 
	.B0(n19), 
	.A1N(data_reg[6]), 
	.A0N(n15));
   AOI22X1M U39 (.Y(n19), 
	.B1(n18), 
	.B0(p_data[6]), 
	.A1(n17), 
	.A0(data_reg[7]));
   AO22X1M U40 (.Y(n28), 
	.B1(n18), 
	.B0(p_data[7]), 
	.A1(data_reg[7]), 
	.A0(n15));
   INVX2M U41 (.Y(n14), 
	.A(count[1]));
   INVXLM U42 (.Y(n38), 
	.A(test_se));
   CLKINVX2M U43 (.Y(n39), 
	.A(n38));
endmodule

module TX_FSM_test_1 (
	clk, 
	rst, 
	data_valid, 
	par_en, 
	ser_done, 
	mux_sel, 
	ser_en, 
	busy, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input data_valid;
   input par_en;
   input ser_done;
   output [1:0] mux_sel;
   output ser_en;
   output busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire busy_c;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n12;
   wire n20;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign test_so = n10 ;

   SDFFRQX2M \current_state_reg[1]  (.SI(n20), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[1]), 
	.D(n8), 
	.CK(clk));
   SDFFRQX2M busy_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(busy), 
	.D(busy_c), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[2]  (.SI(n9), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(clk));
   SDFFRX1M \current_state_reg[0]  (.SI(busy), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n11), 
	.Q(n20), 
	.D(next_state[0]), 
	.CK(clk));
   OAI211X2M U8 (.Y(busy_c), 
	.C0(n15), 
	.B0(n7), 
	.A1(n10), 
	.A0(n19));
   INVX2M U9 (.Y(n7), 
	.A(n13));
   NAND2X2M U10 (.Y(n14), 
	.B(n12), 
	.A(ser_done));
   INVX2M U11 (.Y(n8), 
	.A(n16));
   AOI32X1M U12 (.Y(n16), 
	.B1(n13), 
	.B0(n9), 
	.A2(n14), 
	.A1(n11), 
	.A0(mux_sel[1]));
   NOR2X2M U13 (.Y(n13), 
	.B(current_state[2]), 
	.A(n11));
   OAI211X2M U14 (.Y(mux_sel[0]), 
	.C0(n10), 
	.B0(n19), 
	.A1(n9), 
	.A0(n11));
   OAI31X1M U15 (.Y(next_state[0]), 
	.B0(n18), 
	.A2(n12), 
	.A1(n15), 
	.A0(n17));
   NAND2X2M U16 (.Y(n17), 
	.B(n11), 
	.A(ser_done));
   NAND3X2M U17 (.Y(n18), 
	.C(data_valid), 
	.B(n10), 
	.A(n6));
   INVX2M U18 (.Y(n6), 
	.A(n19));
   NAND2X2M U19 (.Y(n19), 
	.B(n9), 
	.A(n11));
   NAND2X2M U20 (.Y(n15), 
	.B(n10), 
	.A(current_state[1]));
   INVX2M U21 (.Y(mux_sel[1]), 
	.A(n15));
   NOR4X1M U22 (.Y(ser_en), 
	.D(n9), 
	.C(n13), 
	.B(current_state[2]), 
	.A(ser_done));
   INVX2M U23 (.Y(n10), 
	.A(current_state[2]));
   AOI21X2M U24 (.Y(next_state[2]), 
	.B0(n15), 
	.A1(n14), 
	.A0(n11));
   INVX2M U25 (.Y(n9), 
	.A(current_state[1]));
   INVX2M U26 (.Y(n12), 
	.A(par_en));
endmodule

module UART_TX_test_1 (
	clk, 
	rst, 
	data_valid, 
	par_en, 
	par_typ, 
	p_data, 
	tx_out, 
	busy, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN23_DFT_UART_RST__Exclude_0_NET);
   input clk;
   input rst;
   input data_valid;
   input par_en;
   input par_typ;
   input [7:0] p_data;
   output tx_out;
   output busy;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN23_DFT_UART_RST__Exclude_0_NET;

   // Internal wires
   wire par_bit;
   wire ser_data;
   wire ser_en;
   wire ser_done;
   wire n4;
   wire [1:0] mux_sel;

   mux_test_1 u_mux (.clk(clk), 
	.rst(rst), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.ser_data(ser_data), 
	.par_bit(par_bit), 
	.tx_out(tx_out), 
	.test_si(test_si2), 
	.test_se(test_se));
   parity_calc_test_1 u_parity_calc (.clk(clk), 
	.rst(rst), 
	.p_data({ p_data[7],
		p_data[6],
		p_data[5],
		p_data[4],
		p_data[3],
		p_data[2],
		p_data[1],
		p_data[0] }), 
	.data_valid(data_valid), 
	.par_typ(par_typ), 
	.par_en(par_en), 
	.busy(busy), 
	.par_bit(par_bit), 
	.test_si(n4), 
	.test_se(test_se));
   serializer_test_1 u_serializer (.clk(clk), 
	.rst(rst), 
	.p_data({ p_data[7],
		p_data[6],
		p_data[5],
		p_data[4],
		p_data[3],
		p_data[2],
		p_data[1],
		p_data[0] }), 
	.ser_en(ser_en), 
	.busy(busy), 
	.data_valid(data_valid), 
	.ser_done(ser_done), 
	.ser_data(ser_data), 
	.test_si(par_bit), 
	.test_so(test_so1), 
	.test_se(test_se));
   TX_FSM_test_1 u_TX_FSM (.clk(clk), 
	.rst(FE_OFN23_DFT_UART_RST__Exclude_0_NET), 
	.data_valid(data_valid), 
	.par_en(par_en), 
	.ser_done(ser_done), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.ser_en(ser_en), 
	.busy(busy), 
	.test_si(test_si1), 
	.test_so(n4), 
	.test_se(test_se));
endmodule

module RX_FSM_test_1 (
	clk, 
	rst, 
	rx_in, 
	par_en, 
	par_err, 
	strt_glitch, 
	stp_err, 
	prescale, 
	edge_cnt, 
	bit_cnt, 
	par_chk_en, 
	strt_chk_en, 
	stp_chk_en, 
	deser_en, 
	enable, 
	dat_samp_en, 
	data_valid, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input rx_in;
   input par_en;
   input par_err;
   input strt_glitch;
   input stp_err;
   input [5:0] prescale;
   input [5:0] edge_cnt;
   input [3:0] bit_cnt;
   output par_chk_en;
   output strt_chk_en;
   output stp_chk_en;
   output deser_en;
   output enable;
   output dat_samp_en;
   output data_valid;
   input test_si;
   input test_se;

   // Internal wires
   wire data_valid_c;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire \r112/EQ ;
   wire \r112/B[0] ;
   wire \r112/B[1] ;
   wire \r112/B[2] ;
   wire \r112/B[3] ;
   wire \r112/B[4] ;
   wire \r112/B[5] ;
   wire \r112/B[9] ;
   wire \r113/carry[4] ;
   wire \r113/carry[3] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign N107 = prescale[1] ;

   SDFFRQX2M \current_state_reg[1]  (.SI(n35), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[2]  (.SI(n36), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(clk));
   SDFFRQX2M data_valid_reg (.SI(current_state[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(data_valid), 
	.D(data_valid_c), 
	.CK(clk));
   CLKINVX2M U7 (.Y(N108), 
	.A(prescale[2]));
   OR2X2M U8 (.Y(n1), 
	.B(prescale[0]), 
	.A(N107));
   OAI2BB1XLM U9 (.Y(\r112/B[1] ), 
	.B0(n1), 
	.A1N(N107), 
	.A0N(prescale[0]));
   OAI2BB1XLM U10 (.Y(\r112/B[3] ), 
	.B0(n3), 
	.A1N(prescale[3]), 
	.A0N(n2));
   XOR2XLM U11 (.Y(N109), 
	.B(prescale[2]), 
	.A(prescale[3]));
   OAI31X1M U12 (.Y(enable), 
	.B0(n28), 
	.A2(current_state[2]), 
	.A1(rx_in), 
	.A0(current_state[0]));
   NOR3X2M U13 (.Y(n64), 
	.C(n35), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NOR2X2M U14 (.Y(n55), 
	.B(current_state[2]), 
	.A(n36));
   NOR2X2M U15 (.Y(stp_chk_en), 
	.B(n56), 
	.A(n27));
   NOR2X2M U16 (.Y(deser_en), 
	.B(n61), 
	.A(n27));
   INVX2M U17 (.Y(n34), 
	.A(n61));
   INVX2M U18 (.Y(n33), 
	.A(\r112/EQ ));
   NAND2BX2M U19 (.Y(n56), 
	.B(n33), 
	.AN(n71));
   OAI211X2M U20 (.Y(next_state[1]), 
	.C0(n63), 
	.B0(n62), 
	.A1(n61), 
	.A0(n58));
   NAND3X2M U21 (.Y(n62), 
	.C(n65), 
	.B(n29), 
	.A(n64));
   INVX2M U22 (.Y(n32), 
	.A(n65));
   INVX2M U23 (.Y(n31), 
	.A(n66));
   INVX2M U24 (.Y(n27), 
	.A(N113));
   NAND2BX2M U25 (.Y(n63), 
	.B(n60), 
	.AN(n57));
   INVX2M U26 (.Y(n26), 
	.A(N110));
   NAND2X2M U27 (.Y(n61), 
	.B(n35), 
	.A(n55));
   INVX2M U28 (.Y(n28), 
	.A(dat_samp_en));
   NOR4X1M U29 (.Y(\r112/EQ ), 
	.D(n10), 
	.C(n11), 
	.B(n12), 
	.A(n13));
   NOR3BX2M U30 (.Y(n65), 
	.C(bit_cnt[3]), 
	.B(bit_cnt[0]), 
	.AN(n70));
   NOR3X2M U31 (.Y(n70), 
	.C(n33), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[2]));
   AO21XLM U32 (.Y(next_state[2]), 
	.B0(n59), 
	.A1(n34), 
	.A0(n58));
   OAI31X1M U33 (.Y(n59), 
	.B0(n56), 
	.A2(n60), 
	.A1(par_err), 
	.A0(n57));
   NAND3BX2M U34 (.Y(n66), 
	.C(bit_cnt[3]), 
	.B(n70), 
	.AN(bit_cnt[0]));
   OAI211X2M U35 (.Y(next_state[0]), 
	.C0(n69), 
	.B0(n63), 
	.A1(n68), 
	.A0(n67));
   OR2X2M U36 (.Y(n67), 
	.B(current_state[1]), 
	.A(rx_in));
   OAI2BB1X2M U37 (.Y(n68), 
	.B0(n35), 
	.A1N(current_state[2]), 
	.A0N(n33));
   AOI32X1M U38 (.Y(n69), 
	.B1(n32), 
	.B0(n64), 
	.A2(par_en), 
	.A1(n31), 
	.A0(n34));
   NAND4X2M U39 (.Y(dat_samp_en), 
	.D(n73), 
	.C(n72), 
	.B(n61), 
	.A(n56));
   AOI22X1M U40 (.Y(n73), 
	.B1(n30), 
	.B0(n55), 
	.A1(n29), 
	.A0(n64));
   OAI21X2M U41 (.Y(n72), 
	.B0(n33), 
	.A1(n55), 
	.A0(n64));
   INVX2M U42 (.Y(n30), 
	.A(par_err));
   NOR2X2M U43 (.Y(n58), 
	.B(par_en), 
	.A(n66));
   NAND3X2M U44 (.Y(n60), 
	.C(bit_cnt[3]), 
	.B(n70), 
	.A(bit_cnt[0]));
   NOR3X2M U45 (.Y(par_chk_en), 
	.C(n27), 
	.B(\r112/EQ ), 
	.A(n57));
   NOR4X1M U46 (.Y(strt_chk_en), 
	.D(current_state[2]), 
	.C(\r112/EQ ), 
	.B(n55), 
	.A(n54));
   NAND2X2M U47 (.Y(n54), 
	.B(N113), 
	.A(current_state[0]));
   INVX2M U48 (.Y(n24), 
	.A(edge_cnt[5]));
   INVX2M U49 (.Y(n22), 
	.A(edge_cnt[3]));
   INVX2M U50 (.Y(n25), 
	.A(N109));
   INVX2M U51 (.Y(n21), 
	.A(edge_cnt[2]));
   INVX2M U52 (.Y(n20), 
	.A(edge_cnt[1]));
   NOR3X2M U53 (.Y(data_valid_c), 
	.C(n71), 
	.B(stp_err), 
	.A(n33));
   INVX2M U54 (.Y(n23), 
	.A(edge_cnt[4]));
   NAND3X2M U55 (.Y(n71), 
	.C(current_state[2]), 
	.B(n36), 
	.A(n35));
   INVX2M U56 (.Y(n35), 
	.A(current_state[0]));
   INVX2M U57 (.Y(n36), 
	.A(current_state[1]));
   INVX2M U58 (.Y(n29), 
	.A(strt_glitch));
   NAND2X2M U59 (.Y(n57), 
	.B(current_state[0]), 
	.A(n55));
   OAI2BB1XLM U60 (.Y(\r112/B[2] ), 
	.B0(n2), 
	.A1N(prescale[2]), 
	.A0N(n1));
   NAND4BX1M U61 (.Y(n13), 
	.D(n7), 
	.C(n8), 
	.B(n9), 
	.AN(\r112/B[9] ));
   AND2X1M U62 (.Y(N112), 
	.B(prescale[5]), 
	.A(\r113/carry[4] ));
   CLKXOR2X2M U63 (.Y(N111), 
	.B(\r113/carry[4] ), 
	.A(prescale[5]));
   AND2X1M U64 (.Y(\r113/carry[4] ), 
	.B(prescale[4]), 
	.A(\r113/carry[3] ));
   CLKXOR2X2M U65 (.Y(N110), 
	.B(\r113/carry[3] ), 
	.A(prescale[4]));
   AND2X1M U66 (.Y(\r113/carry[3] ), 
	.B(prescale[3]), 
	.A(prescale[2]));
   CLKINVX1M U67 (.Y(\r112/B[0] ), 
	.A(prescale[0]));
   OR2X2M U68 (.Y(n2), 
	.B(prescale[2]), 
	.A(n1));
   OR2X2M U69 (.Y(n3), 
	.B(prescale[3]), 
	.A(n2));
   OR2X2M U70 (.Y(n4), 
	.B(prescale[4]), 
	.A(n3));
   OAI2BB1X1M U71 (.Y(\r112/B[4] ), 
	.B0(n4), 
	.A1N(prescale[4]), 
	.A0N(n3));
   NOR2X1M U72 (.Y(\r112/B[9] ), 
	.B(prescale[5]), 
	.A(n4));
   AO21X1M U73 (.Y(\r112/B[5] ), 
	.B0(\r112/B[9] ), 
	.A1(prescale[5]), 
	.A0(n4));
   NOR2BX1M U74 (.Y(n5), 
	.B(edge_cnt[0]), 
	.AN(\r112/B[0] ));
   OAI2B2X1M U75 (.Y(n9), 
	.B1(n5), 
	.B0(\r112/B[1] ), 
	.A1N(edge_cnt[1]), 
	.A0(n5));
   XNOR2X2M U76 (.Y(n8), 
	.B(edge_cnt[5]), 
	.A(\r112/B[5] ));
   NOR2BX1M U77 (.Y(n6), 
	.B(\r112/B[0] ), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U78 (.Y(n7), 
	.B1(n6), 
	.B0(edge_cnt[1]), 
	.A1N(\r112/B[1] ), 
	.A0(n6));
   CLKXOR2X2M U79 (.Y(n12), 
	.B(edge_cnt[4]), 
	.A(\r112/B[4] ));
   CLKXOR2X2M U80 (.Y(n11), 
	.B(edge_cnt[2]), 
	.A(\r112/B[2] ));
   CLKXOR2X2M U81 (.Y(n10), 
	.B(edge_cnt[3]), 
	.A(\r112/B[3] ));
   NOR2X1M U82 (.Y(n18), 
	.B(n23), 
	.A(N111));
   AOI2BB1X1M U83 (.Y(n14), 
	.B0(edge_cnt[0]), 
	.A1N(n20), 
	.A0N(N108));
   AOI222X1M U84 (.Y(n15), 
	.C1(n20), 
	.C0(N108), 
	.B1(N107), 
	.B0(n14), 
	.A1(n21), 
	.A0(N109));
   AOI221XLM U85 (.Y(n16), 
	.C0(n15), 
	.B1(n25), 
	.B0(edge_cnt[2]), 
	.A1(n26), 
	.A0(edge_cnt[3]));
   AOI221XLM U86 (.Y(n17), 
	.C0(n16), 
	.B1(n22), 
	.B0(N110), 
	.A1(n23), 
	.A0(N111));
   OAI2BB2X1M U87 (.Y(n19), 
	.B1(n17), 
	.B0(n18), 
	.A1N(N112), 
	.A0N(n24));
   OAI21X1M U88 (.Y(N113), 
	.B0(n19), 
	.A1(n24), 
	.A0(N112));
endmodule

module edge_bit_counter_test_1 (
	clk, 
	rst, 
	enable, 
	prescale, 
	edge_cnt, 
	bit_cnt, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input enable;
   input [5:0] prescale;
   output [5:0] edge_cnt;
   output [3:0] bit_cnt;
   input test_si;
   input test_se;

   // Internal wires
   wire FE_OFN11_n27;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire \add_31/carry[5] ;
   wire \add_31/carry[4] ;
   wire \add_31/carry[3] ;
   wire \add_31/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n43;
   wire n44;

   BUFX4M FE_OFC11_n27 (.Y(FE_OFN11_n27), 
	.A(n27));
   SDFFRQX2M \bit_cnt_reg[3]  (.SI(n39), 
	.SE(n44), 
	.RN(rst), 
	.Q(bit_cnt[3]), 
	.D(n28), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[2]  (.SI(n38), 
	.SE(n44), 
	.RN(rst), 
	.Q(bit_cnt[2]), 
	.D(n29), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[1]  (.SI(n37), 
	.SE(n44), 
	.RN(rst), 
	.Q(bit_cnt[1]), 
	.D(n30), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[0]  (.SI(test_si), 
	.SE(n44), 
	.RN(rst), 
	.Q(bit_cnt[0]), 
	.D(n31), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[5]  (.SI(edge_cnt[4]), 
	.SE(n44), 
	.RN(rst), 
	.Q(edge_cnt[5]), 
	.D(N42), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[0]  (.SI(n40), 
	.SE(n44), 
	.RN(rst), 
	.Q(edge_cnt[0]), 
	.D(N37), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[4]  (.SI(edge_cnt[3]), 
	.SE(n44), 
	.RN(rst), 
	.Q(edge_cnt[4]), 
	.D(N41), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[3]  (.SI(edge_cnt[2]), 
	.SE(n44), 
	.RN(rst), 
	.Q(edge_cnt[3]), 
	.D(N40), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[2]  (.SI(edge_cnt[1]), 
	.SE(n44), 
	.RN(rst), 
	.Q(edge_cnt[2]), 
	.D(N39), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[1]  (.SI(N20), 
	.SE(n44), 
	.RN(rst), 
	.Q(edge_cnt[1]), 
	.D(N38), 
	.CK(clk));
   OR2X1M U7 (.Y(n1), 
	.B(prescale[0]), 
	.A(prescale[1]));
   OAI2BB1XLM U8 (.Y(N8), 
	.B0(n1), 
	.A1N(prescale[1]), 
	.A0N(prescale[0]));
   OAI2BB1XLM U15 (.Y(N10), 
	.B0(n3), 
	.A1N(prescale[3]), 
	.A0N(n2));
   INVX2M U16 (.Y(n34), 
	.A(FE_OFN11_n27));
   NOR2X2M U17 (.Y(n27), 
	.B(N14), 
	.A(n35));
   INVX2M U18 (.Y(n35), 
	.A(enable));
   AOI21X2M U19 (.Y(n26), 
	.B0(FE_OFN11_n27), 
	.A1(enable), 
	.A0(n37));
   AND2X2M U20 (.Y(N38), 
	.B(FE_OFN11_n27), 
	.A(N21));
   AND2X2M U21 (.Y(N39), 
	.B(FE_OFN11_n27), 
	.A(N22));
   AND2X2M U22 (.Y(N40), 
	.B(FE_OFN11_n27), 
	.A(N23));
   AND2X2M U23 (.Y(N41), 
	.B(FE_OFN11_n27), 
	.A(N24));
   NOR3X2M U24 (.Y(n23), 
	.C(n39), 
	.B(n37), 
	.A(n38));
   OAI32X1M U25 (.Y(n31), 
	.B1(n34), 
	.B0(n37), 
	.A2(FE_OFN11_n27), 
	.A1(bit_cnt[0]), 
	.A0(n35));
   OAI32X1M U26 (.Y(n29), 
	.B1(n39), 
	.B0(n25), 
	.A2(n38), 
	.A1(bit_cnt[2]), 
	.A0(n24));
   OA21X2M U27 (.Y(n25), 
	.B0(n26), 
	.A1(bit_cnt[1]), 
	.A0(n35));
   OAI22X1M U28 (.Y(n28), 
	.B1(n35), 
	.B0(n22), 
	.A1(n34), 
	.A0(n40));
   AOI32X1M U29 (.Y(n22), 
	.B1(n36), 
	.B0(bit_cnt[3]), 
	.A2(N14), 
	.A1(n40), 
	.A0(n23));
   INVX2M U30 (.Y(n40), 
	.A(bit_cnt[3]));
   INVX2M U31 (.Y(n36), 
	.A(n23));
   OAI22X1M U32 (.Y(n30), 
	.B1(n24), 
	.B0(bit_cnt[1]), 
	.A1(n38), 
	.A0(n26));
   NAND3X2M U33 (.Y(n24), 
	.C(enable), 
	.B(n34), 
	.A(bit_cnt[0]));
   AND2X2M U34 (.Y(N42), 
	.B(FE_OFN11_n27), 
	.A(N25));
   AND2X2M U35 (.Y(N37), 
	.B(FE_OFN11_n27), 
	.A(N20));
   INVX2M U36 (.Y(n37), 
	.A(bit_cnt[0]));
   INVX2M U37 (.Y(n38), 
	.A(bit_cnt[1]));
   INVX2M U38 (.Y(n39), 
	.A(bit_cnt[2]));
   ADDHX1M U39 (.S(N21), 
	.CO(\add_31/carry[2] ), 
	.B(edge_cnt[0]), 
	.A(edge_cnt[1]));
   ADDHX1M U40 (.S(N22), 
	.CO(\add_31/carry[3] ), 
	.B(\add_31/carry[2] ), 
	.A(edge_cnt[2]));
   ADDHX1M U41 (.S(N23), 
	.CO(\add_31/carry[4] ), 
	.B(\add_31/carry[3] ), 
	.A(edge_cnt[3]));
   ADDHX1M U42 (.S(N24), 
	.CO(\add_31/carry[5] ), 
	.B(\add_31/carry[4] ), 
	.A(edge_cnt[4]));
   OAI2BB1XLM U43 (.Y(N9), 
	.B0(n2), 
	.A1N(prescale[2]), 
	.A0N(n1));
   CLKINVX1M U44 (.Y(N7), 
	.A(prescale[0]));
   OR2X1M U45 (.Y(n2), 
	.B(prescale[2]), 
	.A(n1));
   OR2X1M U46 (.Y(n3), 
	.B(prescale[3]), 
	.A(n2));
   OR2X1M U47 (.Y(n4), 
	.B(prescale[4]), 
	.A(n3));
   OAI2BB1X1M U48 (.Y(N11), 
	.B0(n4), 
	.A1N(prescale[4]), 
	.A0N(n3));
   NOR2X1M U49 (.Y(N13), 
	.B(prescale[5]), 
	.A(n4));
   AO21XLM U50 (.Y(N12), 
	.B0(N13), 
	.A1(prescale[5]), 
	.A0(n4));
   CLKINVX1M U51 (.Y(N20), 
	.A(edge_cnt[0]));
   CLKXOR2X2M U52 (.Y(N25), 
	.B(edge_cnt[5]), 
	.A(\add_31/carry[5] ));
   NOR2BX1M U53 (.Y(n15), 
	.B(edge_cnt[0]), 
	.AN(N7));
   OAI2B2X1M U54 (.Y(n19), 
	.B1(n15), 
	.B0(N8), 
	.A1N(edge_cnt[1]), 
	.A0(n15));
   XNOR2X1M U55 (.Y(n18), 
	.B(edge_cnt[5]), 
	.A(N12));
   NOR2BX1M U56 (.Y(n16), 
	.B(N7), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U57 (.Y(n17), 
	.B1(n16), 
	.B0(edge_cnt[1]), 
	.A1N(N8), 
	.A0(n16));
   NAND4BX1M U58 (.Y(n33), 
	.D(n17), 
	.C(n18), 
	.B(n19), 
	.AN(N13));
   CLKXOR2X2M U59 (.Y(n32), 
	.B(edge_cnt[4]), 
	.A(N11));
   CLKXOR2X2M U60 (.Y(n21), 
	.B(edge_cnt[2]), 
	.A(N9));
   CLKXOR2X2M U61 (.Y(n20), 
	.B(edge_cnt[3]), 
	.A(N10));
   NOR4X1M U62 (.Y(N14), 
	.D(n20), 
	.C(n21), 
	.B(n32), 
	.A(n33));
   INVXLM U63 (.Y(n43), 
	.A(test_se));
   CLKINVX2M U64 (.Y(n44), 
	.A(n43));
endmodule

module data_sampling_test_1 (
	clk, 
	rst, 
	rx_in, 
	prescale, 
	edge_cnt, 
	dat_samp_en, 
	sampled_data, 
	test_si, 
	test_so, 
	test_se, 
	FE_OCPN29_UART_Config_6_);
   input clk;
   input rst;
   input rx_in;
   input [5:0] prescale;
   input [5:0] edge_cnt;
   input dat_samp_en;
   output sampled_data;
   input test_si;
   output test_so;
   input test_se;
   input FE_OCPN29_UART_Config_6_;

   // Internal wires
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire \add_38/carry[4] ;
   wire \add_38/carry[3] ;
   wire \add_38/carry[2] ;
   wire \r100/carry[4] ;
   wire \r100/carry[3] ;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire [2:0] samples;

   assign test_so = samples[2] ;
   assign N30 = prescale[1] ;

   SDFFRQX2M \samples_reg[0]  (.SI(n58), 
	.SE(test_se), 
	.RN(rst), 
	.Q(samples[0]), 
	.D(n46), 
	.CK(clk));
   SDFFRQX2M \samples_reg[1]  (.SI(n43), 
	.SE(test_se), 
	.RN(rst), 
	.Q(samples[1]), 
	.D(n47), 
	.CK(clk));
   SDFFRQX2M \samples_reg[2]  (.SI(n35), 
	.SE(test_se), 
	.RN(rst), 
	.Q(samples[2]), 
	.D(n48), 
	.CK(clk));
   SDFFSX1M sampled_reg_reg (.SN(rst), 
	.SI(test_si), 
	.SE(test_se), 
	.QN(n13), 
	.Q(n58), 
	.D(n45), 
	.CK(clk));
   OAI31X1M U5 (.Y(sampled_data), 
	.B0(n16), 
	.A2(n15), 
	.A1(n14), 
	.A0(n13));
   XOR2XLM U7 (.Y(n55), 
	.B(N30), 
	.A(edge_cnt[0]));
   INVXLM U8 (.Y(N6), 
	.A(N30));
   XOR2XLM U9 (.Y(n24), 
	.B(prescale[3]), 
	.A(edge_cnt[2]));
   OAI2BB1XLM U10 (.Y(N8), 
	.B0(n3), 
	.A1N(prescale[3]), 
	.A0N(n2));
   XOR2XLM U11 (.Y(N32), 
	.B(prescale[2]), 
	.A(prescale[3]));
   XNOR2X1M U14 (.Y(n39), 
	.B(prescale[2]), 
	.A(edge_cnt[1]));
   OR2X2M U15 (.Y(n2), 
	.B(N30), 
	.A(prescale[2]));
   ADDHX1M U16 (.S(N17), 
	.CO(\add_38/carry[4] ), 
	.B(\add_38/carry[3] ), 
	.A(FE_OCPN29_UART_Config_6_));
   ADDHX1M U17 (.S(N16), 
	.CO(\add_38/carry[3] ), 
	.B(\add_38/carry[2] ), 
	.A(prescale[3]));
   INVX2M U18 (.Y(N31), 
	.A(prescale[2]));
   ADDHX1M U19 (.S(N18), 
	.CO(N19), 
	.B(\add_38/carry[4] ), 
	.A(prescale[5]));
   ADDHX1M U20 (.S(N15), 
	.CO(\add_38/carry[2] ), 
	.B(N30), 
	.A(prescale[2]));
   OAI2BB1XLM U21 (.Y(N7), 
	.B0(n2), 
	.A1N(prescale[2]), 
	.A0N(N30));
   INVX2M U22 (.Y(n15), 
	.A(dat_samp_en));
   AND2X1M U23 (.Y(N35), 
	.B(prescale[5]), 
	.A(\r100/carry[4] ));
   CLKXOR2X2M U24 (.Y(N34), 
	.B(\r100/carry[4] ), 
	.A(prescale[5]));
   AND2X1M U25 (.Y(\r100/carry[4] ), 
	.B(prescale[4]), 
	.A(\r100/carry[3] ));
   CLKXOR2X2M U26 (.Y(N33), 
	.B(\r100/carry[3] ), 
	.A(prescale[4]));
   AND2X1M U27 (.Y(\r100/carry[3] ), 
	.B(prescale[3]), 
	.A(prescale[2]));
   OR2X1M U28 (.Y(n3), 
	.B(prescale[3]), 
	.A(n2));
   XNOR2X1M U29 (.Y(N9), 
	.B(n3), 
	.A(FE_OCPN29_UART_Config_6_));
   NOR3X1M U30 (.Y(N11), 
	.C(n3), 
	.B(prescale[5]), 
	.A(FE_OCPN29_UART_Config_6_));
   OAI21X1M U31 (.Y(n4), 
	.B0(prescale[5]), 
	.A1(n3), 
	.A0(FE_OCPN29_UART_Config_6_));
   NAND2BX1M U32 (.Y(N10), 
	.B(n4), 
	.AN(N11));
   NOR2BX1M U33 (.Y(n5), 
	.B(N6), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U34 (.Y(n8), 
	.B1(n5), 
	.B0(edge_cnt[1]), 
	.A1N(N7), 
	.A0(n5));
   NOR2BX1M U35 (.Y(n6), 
	.B(edge_cnt[0]), 
	.AN(N6));
   OAI2B2X1M U36 (.Y(n7), 
	.B1(n6), 
	.B0(N7), 
	.A1N(edge_cnt[1]), 
	.A0(n6));
   NAND4BBX1M U37 (.Y(n12), 
	.D(n7), 
	.C(n8), 
	.BN(edge_cnt[5]), 
	.AN(N11));
   CLKXOR2X2M U38 (.Y(n11), 
	.B(edge_cnt[4]), 
	.A(N10));
   CLKXOR2X2M U39 (.Y(n10), 
	.B(edge_cnt[2]), 
	.A(N8));
   CLKXOR2X2M U40 (.Y(n9), 
	.B(edge_cnt[3]), 
	.A(N9));
   NOR4X1M U41 (.Y(N12), 
	.D(n9), 
	.C(n10), 
	.B(n11), 
	.A(n12));
   CLKMX2X2M U42 (.Y(n48), 
	.S0(n17), 
	.B(rx_in), 
	.A(samples[2]));
   NOR4X1M U43 (.Y(n17), 
	.D(n21), 
	.C(n20), 
	.B(n19), 
	.A(n18));
   CLKXOR2X2M U44 (.Y(n21), 
	.B(N15), 
	.A(edge_cnt[1]));
   CLKXOR2X2M U45 (.Y(n20), 
	.B(N6), 
	.A(edge_cnt[0]));
   OR3X1M U46 (.Y(n19), 
	.C(n15), 
	.B(N12), 
	.A(n22));
   NOR4BX1M U47 (.Y(n22), 
	.D(n26), 
	.C(n25), 
	.B(n24), 
	.AN(n23));
   NAND4X1M U48 (.Y(n18), 
	.D(n30), 
	.C(n29), 
	.B(n28), 
	.A(n27));
   XNOR2X1M U49 (.Y(n30), 
	.B(N16), 
	.A(edge_cnt[2]));
   XNOR2X1M U50 (.Y(n29), 
	.B(N17), 
	.A(edge_cnt[3]));
   XNOR2X1M U51 (.Y(n28), 
	.B(N18), 
	.A(edge_cnt[4]));
   XNOR2X1M U52 (.Y(n27), 
	.B(N19), 
	.A(edge_cnt[5]));
   MXI2X1M U53 (.Y(n47), 
	.S0(n37), 
	.B(n36), 
	.A(n35));
   NOR4X1M U54 (.Y(n37), 
	.D(n24), 
	.C(n26), 
	.B(n25), 
	.A(n38));
   CLKXOR2X2M U55 (.Y(n26), 
	.B(prescale[4]), 
	.A(edge_cnt[3]));
   NAND3BX1M U56 (.Y(n25), 
	.C(n40), 
	.B(n39), 
	.AN(edge_cnt[5]));
   CLKXOR2X2M U57 (.Y(n40), 
	.B(N30), 
	.A(n41));
   CLKINVX1M U58 (.Y(n41), 
	.A(edge_cnt[0]));
   NAND3X1M U59 (.Y(n38), 
	.C(n23), 
	.B(n42), 
	.A(dat_samp_en));
   XNOR2X1M U60 (.Y(n23), 
	.B(prescale[5]), 
	.A(edge_cnt[4]));
   MXI2X1M U61 (.Y(n46), 
	.S0(n44), 
	.B(n36), 
	.A(n43));
   NOR2X1M U62 (.Y(n44), 
	.B(n42), 
	.A(n15));
   CLKINVX1M U63 (.Y(n42), 
	.A(N12));
   CLKINVX1M U64 (.Y(n36), 
	.A(rx_in));
   OAI21X1M U65 (.Y(n45), 
	.B0(n16), 
	.A1(n13), 
	.A0(n14));
   NAND3X1M U66 (.Y(n16), 
	.C(n49), 
	.B(dat_samp_en), 
	.A(n14));
   AOI21X1M U67 (.Y(n49), 
	.B0(n50), 
	.A1(n35), 
	.A0(n43));
   AOI21X1M U68 (.Y(n50), 
	.B0(samples[2]), 
	.A1(samples[0]), 
	.A0(samples[1]));
   CLKINVX1M U69 (.Y(n35), 
	.A(samples[1]));
   CLKINVX1M U70 (.Y(n43), 
	.A(samples[0]));
   AND4X1M U71 (.Y(n14), 
	.D(n54), 
	.C(n53), 
	.B(n52), 
	.A(n51));
   NOR3X1M U72 (.Y(n54), 
	.C(n57), 
	.B(n56), 
	.A(n55));
   CLKXOR2X2M U73 (.Y(n57), 
	.B(N34), 
	.A(edge_cnt[4]));
   CLKXOR2X2M U74 (.Y(n56), 
	.B(N31), 
	.A(edge_cnt[1]));
   XNOR2X1M U75 (.Y(n53), 
	.B(N32), 
	.A(edge_cnt[2]));
   XNOR2X1M U76 (.Y(n52), 
	.B(N33), 
	.A(edge_cnt[3]));
   XNOR2X1M U77 (.Y(n51), 
	.B(N35), 
	.A(edge_cnt[5]));
endmodule

module deserializer_test_1 (
	clk, 
	rst, 
	deser_en, 
	sampled_bit, 
	bit_cnt, 
	p_data, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input deser_en;
   input sampled_bit;
   input [3:0] bit_cnt;
   output [7:0] p_data;
   input test_si;
   input test_se;

   // Internal wires
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n4;
   wire n29;
   wire n30;
   wire n31;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n73;
   wire n74;

   SDFFRX1M \data_reg[7]  (.SI(n64), 
	.SE(n74), 
	.RN(rst), 
	.QN(n21), 
	.Q(n31), 
	.D(n63), 
	.CK(clk));
   SDFFRX1M \data_reg[6]  (.SI(n65), 
	.SE(n74), 
	.RN(rst), 
	.QN(n22), 
	.Q(n64), 
	.D(n62), 
	.CK(clk));
   SDFFRX1M \data_reg[5]  (.SI(n66), 
	.SE(n74), 
	.RN(rst), 
	.QN(n23), 
	.Q(n65), 
	.D(n61), 
	.CK(clk));
   SDFFRX1M \data_reg[4]  (.SI(n67), 
	.SE(n74), 
	.RN(rst), 
	.QN(n24), 
	.Q(n66), 
	.D(n60), 
	.CK(clk));
   SDFFRX1M \data_reg[3]  (.SI(n68), 
	.SE(n74), 
	.RN(rst), 
	.QN(n25), 
	.Q(n67), 
	.D(n59), 
	.CK(clk));
   SDFFRX1M \data_reg[2]  (.SI(n69), 
	.SE(n74), 
	.RN(rst), 
	.QN(n26), 
	.Q(n68), 
	.D(n58), 
	.CK(clk));
   SDFFRX1M \data_reg[1]  (.SI(n70), 
	.SE(n74), 
	.RN(rst), 
	.QN(n27), 
	.Q(n69), 
	.D(n57), 
	.CK(clk));
   SDFFRX1M \data_reg[0]  (.SI(test_si), 
	.SE(n74), 
	.RN(rst), 
	.QN(n28), 
	.Q(n70), 
	.D(n56), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[5]  (.SI(p_data[4]), 
	.SE(n74), 
	.RN(rst), 
	.Q(p_data[5]), 
	.D(n53), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[1]  (.SI(p_data[0]), 
	.SE(n74), 
	.RN(rst), 
	.Q(p_data[1]), 
	.D(n49), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[4]  (.SI(p_data[3]), 
	.SE(n74), 
	.RN(rst), 
	.Q(p_data[4]), 
	.D(n52), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[0]  (.SI(n31), 
	.SE(n74), 
	.RN(rst), 
	.Q(p_data[0]), 
	.D(n48), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[7]  (.SI(p_data[6]), 
	.SE(n74), 
	.RN(rst), 
	.Q(p_data[7]), 
	.D(n55), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[3]  (.SI(p_data[2]), 
	.SE(n74), 
	.RN(rst), 
	.Q(p_data[3]), 
	.D(n51), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[6]  (.SI(p_data[5]), 
	.SE(n74), 
	.RN(rst), 
	.Q(p_data[6]), 
	.D(n54), 
	.CK(clk));
   SDFFRQX2M \p_data_reg[2]  (.SI(p_data[1]), 
	.SE(n74), 
	.RN(rst), 
	.Q(p_data[2]), 
	.D(n50), 
	.CK(clk));
   INVX2M U19 (.Y(n4), 
	.A(deser_en));
   NAND2X2M U22 (.Y(n34), 
	.B(deser_en), 
	.A(sampled_bit));
   NAND2X2M U23 (.Y(n37), 
	.B(n4), 
	.A(n46));
   NAND4BX2M U25 (.Y(n32), 
	.D(n29), 
	.C(n35), 
	.B(deser_en), 
	.AN(n46));
   OAI2B2X1M U26 (.Y(n58), 
	.B1(n40), 
	.B0(n26), 
	.A1N(n40), 
	.A0(n34));
   OAI21X2M U27 (.Y(n40), 
	.B0(n37), 
	.A1(n29), 
	.A0(n39));
   OAI2B2X1M U28 (.Y(n63), 
	.B1(n47), 
	.B0(n21), 
	.A1N(n47), 
	.A0(n34));
   NAND2X2M U29 (.Y(n47), 
	.B(n32), 
	.A(n37));
   OAI2B2X1M U30 (.Y(n57), 
	.B1(n38), 
	.B0(n27), 
	.A1N(n38), 
	.A0(n34));
   OAI21X2M U31 (.Y(n38), 
	.B0(n37), 
	.A1(n39), 
	.A0(bit_cnt[0]));
   OAI2B2X1M U32 (.Y(n56), 
	.B1(n33), 
	.B0(n28), 
	.A1N(n33), 
	.A0(n34));
   OAI2BB1X2M U33 (.Y(n33), 
	.B0(n37), 
	.A1N(n36), 
	.A0N(n35));
   OAI2B2X1M U34 (.Y(n62), 
	.B1(n45), 
	.B0(n22), 
	.A1N(n45), 
	.A0(n34));
   OAI31X1M U35 (.Y(n45), 
	.B0(n37), 
	.A2(n29), 
	.A1(n30), 
	.A0(n42));
   OAI2B2X1M U36 (.Y(n60), 
	.B1(n43), 
	.B0(n24), 
	.A1N(n43), 
	.A0(n34));
   OAI31X1M U37 (.Y(n43), 
	.B0(n37), 
	.A2(n29), 
	.A1(bit_cnt[1]), 
	.A0(n42));
   OAI2B2X1M U38 (.Y(n61), 
	.B1(n44), 
	.B0(n23), 
	.A1N(n44), 
	.A0(n34));
   OAI31X1M U39 (.Y(n44), 
	.B0(n37), 
	.A2(n30), 
	.A1(bit_cnt[0]), 
	.A0(n42));
   OAI2B2X1M U40 (.Y(n59), 
	.B1(n41), 
	.B0(n25), 
	.A1N(n41), 
	.A0(n34));
   OAI31X1M U41 (.Y(n41), 
	.B0(n37), 
	.A2(bit_cnt[0]), 
	.A1(bit_cnt[1]), 
	.A0(n42));
   NOR3X2M U42 (.Y(n36), 
	.C(n4), 
	.B(bit_cnt[3]), 
	.A(n46));
   NAND3BX2M U43 (.Y(n39), 
	.C(bit_cnt[1]), 
	.B(n36), 
	.AN(bit_cnt[2]));
   OAI2BB2X1M U44 (.Y(n48), 
	.B1(n28), 
	.B0(n32), 
	.A1N(n32), 
	.A0N(p_data[0]));
   OAI2BB2X1M U45 (.Y(n49), 
	.B1(n27), 
	.B0(n32), 
	.A1N(n32), 
	.A0N(p_data[1]));
   OAI2BB2X1M U46 (.Y(n50), 
	.B1(n26), 
	.B0(n32), 
	.A1N(n32), 
	.A0N(p_data[2]));
   OAI2BB2X1M U47 (.Y(n51), 
	.B1(n25), 
	.B0(n32), 
	.A1N(n32), 
	.A0N(p_data[3]));
   OAI2BB2X1M U48 (.Y(n52), 
	.B1(n24), 
	.B0(n32), 
	.A1N(n32), 
	.A0N(p_data[4]));
   OAI2BB2X1M U49 (.Y(n53), 
	.B1(n23), 
	.B0(n32), 
	.A1N(n32), 
	.A0N(p_data[5]));
   OAI2BB2X1M U50 (.Y(n54), 
	.B1(n22), 
	.B0(n32), 
	.A1N(n32), 
	.A0N(p_data[6]));
   OAI2BB2X1M U51 (.Y(n55), 
	.B1(n21), 
	.B0(n32), 
	.A1N(n32), 
	.A0N(p_data[7]));
   NAND2X2M U52 (.Y(n42), 
	.B(n36), 
	.A(bit_cnt[2]));
   NOR3BX2M U53 (.Y(n46), 
	.C(bit_cnt[3]), 
	.B(bit_cnt[0]), 
	.AN(n35));
   NOR2X2M U54 (.Y(n35), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[1]));
   INVX2M U55 (.Y(n29), 
	.A(bit_cnt[0]));
   INVX2M U56 (.Y(n30), 
	.A(bit_cnt[1]));
   INVXLM U57 (.Y(n73), 
	.A(test_se));
   INVX2M U58 (.Y(n74), 
	.A(n73));
endmodule

module parity_check_test_1 (
	clk, 
	rst, 
	par_typ, 
	par_chk_en, 
	sampled_bit, 
	p_data, 
	par_err, 
	parity_error, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input par_typ;
   input par_chk_en;
   input sampled_bit;
   input [7:0] p_data;
   output par_err;
   output parity_error;
   input test_si;
   input test_se;

   // Internal wires
   wire FE_OFN24_parity_error;
   wire N9;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;

   BUFX4M FE_OFC24_parity_error (.Y(parity_error), 
	.A(FE_OFN24_parity_error));
   SDFFRQX2M par_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(par_err), 
	.D(N9), 
	.CK(clk));
   SDFFRQX2M parity_error_reg (.SI(par_err), 
	.SE(test_se), 
	.RN(rst), 
	.Q(FE_OFN24_parity_error), 
	.D(N9), 
	.CK(clk));
   NOR2BX2M U5 (.Y(N9), 
	.B(n3), 
	.AN(par_chk_en));
   XOR3X1M U6 (.Y(n3), 
	.C(n6), 
	.B(n5), 
	.A(n4));
   XOR3XLM U7 (.Y(n5), 
	.C(n7), 
	.B(p_data[4]), 
	.A(p_data[5]));
   XNOR2X2M U8 (.Y(n7), 
	.B(p_data[6]), 
	.A(p_data[7]));
   XOR3XLM U9 (.Y(n4), 
	.C(n8), 
	.B(p_data[0]), 
	.A(p_data[1]));
   XNOR2X2M U10 (.Y(n8), 
	.B(p_data[2]), 
	.A(p_data[3]));
   XNOR2X2M U11 (.Y(n6), 
	.B(par_typ), 
	.A(sampled_bit));
endmodule

module stop_check_test_1 (
	clk, 
	rst, 
	stp_chk_en, 
	sampled_bit, 
	stp_err, 
	stop_error, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input stp_chk_en;
   input sampled_bit;
   output stp_err;
   output stop_error;
   input test_si;
   input test_se;

   // Internal wires
   wire N5;

   SDFFRQX2M stp_err_reg (.SI(stop_error), 
	.SE(test_se), 
	.RN(rst), 
	.Q(stp_err), 
	.D(N5), 
	.CK(clk));
   SDFFRQX4M stop_error_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(stop_error), 
	.D(N5), 
	.CK(clk));
   NOR2BX2M U5 (.Y(N5), 
	.B(sampled_bit), 
	.AN(stp_chk_en));
endmodule

module strt_check_test_1 (
	clk, 
	rst, 
	strt_chk_en, 
	sampled_bit, 
	strt_glitch, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input strt_chk_en;
   input sampled_bit;
   output strt_glitch;
   input test_si;
   input test_se;

   // Internal wires
   wire N4;

   SDFFRQX2M strt_glitch_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(strt_glitch), 
	.D(N4), 
	.CK(clk));
   AND2X2M U4 (.Y(N4), 
	.B(sampled_bit), 
	.A(strt_chk_en));
endmodule

module UART_RX_test_1 (
	clk, 
	rst, 
	par_typ, 
	par_en, 
	prescale, 
	rx_in, 
	p_data, 
	data_valid, 
	parity_error, 
	stop_error, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input par_typ;
   input par_en;
   input [5:0] prescale;
   input rx_in;
   output [7:0] p_data;
   output data_valid;
   output parity_error;
   output stop_error;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire FE_OCPN29_UART_Config_6_;
   wire par_err;
   wire strt_glitch;
   wire stp_err;
   wire par_chk_en;
   wire strt_chk_en;
   wire stp_chk_en;
   wire deser_en;
   wire enable;
   wire dat_samp_en;
   wire sampled_bit;
   wire n3;
   wire [5:0] edge_cnt;
   wire [3:0] bit_cnt;

   assign test_so = strt_glitch ;

   BUFX2M FE_OCPC29_UART_Config_6_ (.Y(FE_OCPN29_UART_Config_6_), 
	.A(prescale[4]));
   RX_FSM_test_1 u_RX_FSM (.clk(clk), 
	.rst(rst), 
	.rx_in(rx_in), 
	.par_en(par_en), 
	.par_err(par_err), 
	.strt_glitch(strt_glitch), 
	.stp_err(stp_err), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.par_chk_en(par_chk_en), 
	.strt_chk_en(strt_chk_en), 
	.stp_chk_en(stp_chk_en), 
	.deser_en(deser_en), 
	.enable(enable), 
	.dat_samp_en(dat_samp_en), 
	.data_valid(data_valid), 
	.test_si(test_si), 
	.test_se(test_se));
   edge_bit_counter_test_1 u_edge_bit_counter (.clk(clk), 
	.rst(rst), 
	.enable(enable), 
	.prescale({ prescale[5],
		FE_OCPN29_UART_Config_6_,
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.test_si(p_data[7]), 
	.test_se(test_se));
   data_sampling_test_1 u_data_sampling (.clk(clk), 
	.rst(rst), 
	.rx_in(rx_in), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.dat_samp_en(dat_samp_en), 
	.sampled_data(sampled_bit), 
	.test_si(data_valid), 
	.test_so(n3), 
	.test_se(test_se), 
	.FE_OCPN29_UART_Config_6_(FE_OCPN29_UART_Config_6_));
   deserializer_test_1 u_deserializer (.clk(clk), 
	.rst(rst), 
	.deser_en(deser_en), 
	.sampled_bit(sampled_bit), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.p_data({ p_data[7],
		p_data[6],
		p_data[5],
		p_data[4],
		p_data[3],
		p_data[2],
		p_data[1],
		p_data[0] }), 
	.test_si(n3), 
	.test_se(test_se));
   parity_check_test_1 u_parity_check (.clk(clk), 
	.rst(rst), 
	.par_typ(par_typ), 
	.par_chk_en(par_chk_en), 
	.sampled_bit(sampled_bit), 
	.p_data({ p_data[7],
		p_data[6],
		p_data[5],
		p_data[4],
		p_data[3],
		p_data[2],
		p_data[1],
		p_data[0] }), 
	.par_err(par_err), 
	.parity_error(parity_error), 
	.test_si(edge_cnt[5]), 
	.test_se(test_se));
   stop_check_test_1 u_stop_check (.clk(clk), 
	.rst(rst), 
	.stp_chk_en(stp_chk_en), 
	.sampled_bit(sampled_bit), 
	.stp_err(stp_err), 
	.stop_error(stop_error), 
	.test_si(parity_error), 
	.test_se(test_se));
   strt_check_test_1 u_strt_check (.clk(clk), 
	.rst(rst), 
	.strt_chk_en(strt_chk_en), 
	.sampled_bit(sampled_bit), 
	.strt_glitch(strt_glitch), 
	.test_si(stp_err), 
	.test_se(test_se));
endmodule

module UART_test_1 (
	tx_clk, 
	rx_clk, 
	rst, 
	tx_in_v, 
	tx_in_p, 
	prescale, 
	rx_in_s, 
	par_en, 
	par_typ, 
	tx_out_s, 
	busy, 
	rx_out_p, 
	rx_out_v, 
	parity_error, 
	stop_error, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN23_DFT_UART_RST__Exclude_0_NET);
   input tx_clk;
   input rx_clk;
   input rst;
   input tx_in_v;
   input [7:0] tx_in_p;
   input [5:0] prescale;
   input rx_in_s;
   input par_en;
   input par_typ;
   output tx_out_s;
   output busy;
   output [7:0] rx_out_p;
   output rx_out_v;
   output parity_error;
   output stop_error;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN23_DFT_UART_RST__Exclude_0_NET;

   // Internal wires
   wire n4;

   UART_TX_test_1 u_tx (.clk(tx_clk), 
	.rst(rst), 
	.data_valid(tx_in_v), 
	.par_en(par_en), 
	.par_typ(par_typ), 
	.p_data({ tx_in_p[7],
		tx_in_p[6],
		tx_in_p[5],
		tx_in_p[4],
		tx_in_p[3],
		tx_in_p[2],
		tx_in_p[1],
		tx_in_p[0] }), 
	.tx_out(tx_out_s), 
	.busy(busy), 
	.test_si2(test_si2), 
	.test_si1(n4), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN23_DFT_UART_RST__Exclude_0_NET(FE_OFN23_DFT_UART_RST__Exclude_0_NET));
   UART_RX_test_1 u_rx (.clk(rx_clk), 
	.rst(FE_OFN23_DFT_UART_RST__Exclude_0_NET), 
	.par_typ(par_typ), 
	.par_en(par_en), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.rx_in(rx_in_s), 
	.p_data({ rx_out_p[7],
		rx_out_p[6],
		rx_out_p[5],
		rx_out_p[4],
		rx_out_p[3],
		rx_out_p[2],
		rx_out_p[1],
		rx_out_p[0] }), 
	.data_valid(rx_out_v), 
	.parity_error(parity_error), 
	.stop_error(stop_error), 
	.test_si(test_si1), 
	.test_so(n4), 
	.test_se(test_se));
endmodule

module SYS_CTRL_alu_data8_fun_width4_frame_data8_addr_bits4_test_1 (
	clk, 
	rst, 
	alu_out, 
	out_vld, 
	rddata, 
	rddata_vld, 
	wr_done, 
	rx_p_data, 
	rx_d_vld, 
	fifo_full, 
	alu_fun, 
	alu_en, 
	clk_en, 
	address, 
	wr_data, 
	wr_en, 
	rd_en, 
	tx_p_data, 
	tx_d_vld, 
	clk_div_en, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input [15:0] alu_out;
   input out_vld;
   input [7:0] rddata;
   input rddata_vld;
   input wr_done;
   input [7:0] rx_p_data;
   input rx_d_vld;
   input fifo_full;
   output [3:0] alu_fun;
   output alu_en;
   output clk_en;
   output [3:0] address;
   output [7:0] wr_data;
   output wr_en;
   output rd_en;
   output [7:0] tx_p_data;
   output tx_d_vld;
   output clk_div_en;
   output test_so;
   input test_se;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire FE_OFN3_RF_Address_2_;
   wire FE_OFN2_RF_Address_1_;
   wire \addr_reg[0] ;
   wire n28;
   wire n29;
   wire n30;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n19;
   wire n20;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n31;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire [2:0] current_state;
   wire [1:0] cmd_reg;

   assign test_so = current_state[2] ;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   BUFX2M FE_OFC3_RF_Address_2_ (.Y(address[2]), 
	.A(FE_OFN3_RF_Address_2_));
   BUFX2M FE_OFC2_RF_Address_1_ (.Y(address[1]), 
	.A(FE_OFN2_RF_Address_1_));
   SDFFRX1M \alu_fun_reg_reg[3]  (.SI(n108), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n32), 
	.Q(n107), 
	.D(n92), 
	.CK(clk));
   SDFFRX1M \alu_fun_reg_reg[2]  (.SI(n109), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n33), 
	.Q(n108), 
	.D(n91), 
	.CK(clk));
   SDFFRX1M \alu_fun_reg_reg[1]  (.SI(n110), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n34), 
	.Q(n109), 
	.D(n90), 
	.CK(clk));
   SDFFRX1M \alu_fun_reg_reg[0]  (.SI(n111), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n35), 
	.Q(n110), 
	.D(n89), 
	.CK(clk));
   SDFFRX1M \addr_reg_reg[3]  (.SI(n112), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n28), 
	.Q(n111), 
	.D(n96), 
	.CK(clk));
   SDFFRX1M \addr_reg_reg[2]  (.SI(n113), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n29), 
	.Q(n112), 
	.D(n95), 
	.CK(clk));
   SDFFRQX2M \addr_reg_reg[0]  (.SI(wr_done), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\addr_reg[0] ), 
	.D(n93), 
	.CK(clk));
   SDFFRX1M \addr_reg_reg[1]  (.SI(\addr_reg[0] ), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n30), 
	.Q(n113), 
	.D(n94), 
	.CK(clk));
   SDFFRQX2M \cmd_reg_reg[0]  (.SI(n107), 
	.SE(test_se), 
	.RN(rst), 
	.Q(cmd_reg[0]), 
	.D(n101), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[0]  (.SI(clk_en), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[0]), 
	.D(n97), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[2]  (.SI(n39), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[2]), 
	.D(n99), 
	.CK(clk));
   SDFFRX1M \cmd_reg_reg[1]  (.SI(n25), 
	.SE(test_se), 
	.RN(rst), 
	.QN(clk_en), 
	.Q(cmd_reg[1]), 
	.D(n100), 
	.CK(clk));
   OAI22X1M U18 (.Y(FE_OFN2_RF_Address_1_), 
	.B1(n30), 
	.B0(n86), 
	.A1(n26), 
	.A0(n104));
   OAI22X1M U20 (.Y(FE_OFN3_RF_Address_2_), 
	.B1(n29), 
	.B0(n86), 
	.A1(n26), 
	.A0(n103));
   OAI21X2M U21 (.Y(address[0]), 
	.B0(n87), 
	.A1(n26), 
	.A0(n105));
   OAI22X1M U22 (.Y(alu_fun[2]), 
	.B1(n84), 
	.B0(n103), 
	.A1(n33), 
	.A0(n82));
   OAI22X1M U23 (.Y(alu_fun[1]), 
	.B1(n84), 
	.B0(n104), 
	.A1(n34), 
	.A0(n82));
   OAI22X1M U24 (.Y(alu_fun[0]), 
	.B1(n84), 
	.B0(n105), 
	.A1(n35), 
	.A0(n82));
   INVX2M U25 (.Y(n26), 
	.A(n65));
   INVX2M U26 (.Y(n23), 
	.A(wr_en));
   INVX2M U27 (.Y(n20), 
	.A(tx_d_vld));
   INVX2M U28 (.Y(n36), 
	.A(n67));
   INVX2M U29 (.Y(n24), 
	.A(n43));
   NOR2X2M U30 (.Y(n65), 
	.B(clk_en), 
	.A(n42));
   OAI221X1M U31 (.Y(n68), 
	.C0(n55), 
	.B1(n57), 
	.B0(tx_d_vld), 
	.A1(n79), 
	.A0(n78));
   OAI21X2M U32 (.Y(tx_d_vld), 
	.B0(n58), 
	.A1(n56), 
	.A0(n82));
   OAI32X1M U33 (.Y(n101), 
	.B1(n81), 
	.B0(n25), 
	.A2(n80), 
	.A1(n31), 
	.A0(n105));
   OAI32X1M U34 (.Y(n100), 
	.B1(n81), 
	.B0(clk_en), 
	.A2(n80), 
	.A1(n31), 
	.A0(n104));
   OAI21BX1M U35 (.Y(rd_en), 
	.B0N(n60), 
	.A1(n59), 
	.A0(n42));
   OAI21X2M U36 (.Y(wr_en), 
	.B0(n44), 
	.A1(n43), 
	.A0(n42));
   NOR2X2M U37 (.Y(n46), 
	.B(n57), 
	.A(n56));
   NOR2X2M U38 (.Y(n47), 
	.B(n56), 
	.A(n55));
   INVX2M U39 (.Y(n22), 
	.A(n61));
   NOR2X2M U40 (.Y(n60), 
	.B(n78), 
	.A(n59));
   NOR2X2M U41 (.Y(wr_data[0]), 
	.B(n105), 
	.A(n23));
   NOR2X2M U42 (.Y(wr_data[1]), 
	.B(n104), 
	.A(n23));
   NOR2X2M U43 (.Y(wr_data[2]), 
	.B(n103), 
	.A(n23));
   NOR2X2M U44 (.Y(wr_data[3]), 
	.B(n102), 
	.A(n23));
   AND2X2M U45 (.Y(n82), 
	.B(n55), 
	.A(n57));
   NAND2X2M U46 (.Y(n43), 
	.B(clk_en), 
	.A(n25));
   NAND2X2M U47 (.Y(n55), 
	.B(clk_en), 
	.A(n37));
   INVX2M U48 (.Y(n37), 
	.A(n78));
   INVX2M U50 (.Y(n19), 
	.A(n58));
   OAI22X1M U51 (.Y(n93), 
	.B1(n41), 
	.B0(n65), 
	.A1(n26), 
	.A0(n105));
   OAI22X1M U52 (.Y(n98), 
	.B1(n73), 
	.B0(n36), 
	.A1(n67), 
	.A0(n39));
   AOI22X1M U53 (.Y(n73), 
	.B1(n25), 
	.B0(n74), 
	.A1(n24), 
	.A0(n69));
   NAND2X2M U54 (.Y(n67), 
	.B(n77), 
	.A(n106));
   OR4X1M U55 (.Y(n77), 
	.D(n72), 
	.C(n74), 
	.B(n64), 
	.A(n69));
   INVX2M U56 (.Y(n31), 
	.A(n81));
   NAND2X2M U57 (.Y(alu_en), 
	.B(n84), 
	.A(n82));
   AOI32X1M U60 (.Y(n87), 
	.B1(n60), 
	.B0(\addr_reg[0] ), 
	.A2(n69), 
	.A1(n88), 
	.A0(rx_d_vld));
   OAI21X2M U61 (.Y(n88), 
	.B0(n43), 
	.A1(n41), 
	.A0(cmd_reg[0]));
   NOR3X2M U62 (.Y(n74), 
	.C(n40), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NOR3X2M U63 (.Y(n69), 
	.C(n39), 
	.B(current_state[2]), 
	.A(current_state[0]));
   AOI2B1X1M U64 (.Y(n86), 
	.B0(n60), 
	.A1N(n44), 
	.A0(cmd_reg[1]));
   NAND2X2M U65 (.Y(n42), 
	.B(n74), 
	.A(rx_d_vld));
   INVX2M U67 (.Y(n40), 
	.A(current_state[0]));
   NAND3X2M U68 (.Y(n44), 
	.C(n69), 
	.B(n25), 
	.A(rx_d_vld));
   AOI32X1M U69 (.Y(n61), 
	.B1(n64), 
	.B0(rx_d_vld), 
	.A2(n63), 
	.A1(current_state[0]), 
	.A0(n62));
   OAI22X1M U70 (.Y(n97), 
	.B1(n67), 
	.B0(n40), 
	.A1(n36), 
	.A0(n66));
   AOI221XLM U71 (.Y(n66), 
	.C0(n70), 
	.B1(n24), 
	.B0(n69), 
	.A1(n68), 
	.A0(current_state[0]));
   OAI221X1M U72 (.Y(n70), 
	.C0(n38), 
	.B1(n106), 
	.B0(n71), 
	.A1(n55), 
	.A0(n20));
   INVX2M U73 (.Y(n38), 
	.A(n72));
   OAI22X1M U74 (.Y(n89), 
	.B1(n35), 
	.B0(n22), 
	.A1(n105), 
	.A0(n61));
   OAI22X1M U75 (.Y(n90), 
	.B1(n34), 
	.B0(n22), 
	.A1(n104), 
	.A0(n61));
   OAI22X1M U76 (.Y(n91), 
	.B1(n33), 
	.B0(n22), 
	.A1(n103), 
	.A0(n61));
   OAI22X1M U77 (.Y(n92), 
	.B1(n32), 
	.B0(n22), 
	.A1(n102), 
	.A0(n61));
   AOI31X2M U78 (.Y(n71), 
	.B0(tx_d_vld), 
	.A2(wr_done), 
	.A1(cmd_reg[1]), 
	.A0(n37));
   AOI21X2M U79 (.Y(n80), 
	.B0(n62), 
	.A1(n79), 
	.A0(rx_d_vld));
   NAND3X2M U80 (.Y(n57), 
	.C(current_state[2]), 
	.B(n39), 
	.A(current_state[0]));
   NAND2X2M U81 (.Y(n59), 
	.B(cmd_reg[1]), 
	.A(cmd_reg[0]));
   NAND3X2M U82 (.Y(n78), 
	.C(current_state[2]), 
	.B(n39), 
	.A(n40));
   OAI2BB1X2M U83 (.Y(tx_p_data[0]), 
	.B0(n54), 
	.A1N(n19), 
	.A0N(rddata[0]));
   AOI22X1M U84 (.Y(n54), 
	.B1(n47), 
	.B0(alu_out[0]), 
	.A1(n46), 
	.A0(alu_out[8]));
   OAI2BB1X2M U85 (.Y(tx_p_data[1]), 
	.B0(n53), 
	.A1N(n19), 
	.A0N(rddata[1]));
   AOI22X1M U86 (.Y(n53), 
	.B1(n47), 
	.B0(alu_out[1]), 
	.A1(n46), 
	.A0(alu_out[9]));
   OAI2BB1X2M U87 (.Y(tx_p_data[2]), 
	.B0(n52), 
	.A1N(n19), 
	.A0N(rddata[2]));
   AOI22X1M U88 (.Y(n52), 
	.B1(n47), 
	.B0(alu_out[2]), 
	.A1(n46), 
	.A0(alu_out[10]));
   OAI2BB1X2M U89 (.Y(tx_p_data[3]), 
	.B0(n51), 
	.A1N(n19), 
	.A0N(rddata[3]));
   AOI22X1M U90 (.Y(n51), 
	.B1(n47), 
	.B0(alu_out[3]), 
	.A1(n46), 
	.A0(alu_out[11]));
   OAI2BB1X2M U91 (.Y(tx_p_data[4]), 
	.B0(n50), 
	.A1N(n19), 
	.A0N(rddata[4]));
   AOI22X1M U92 (.Y(n50), 
	.B1(n47), 
	.B0(alu_out[4]), 
	.A1(n46), 
	.A0(alu_out[12]));
   OAI2BB1X2M U93 (.Y(tx_p_data[5]), 
	.B0(n49), 
	.A1N(n19), 
	.A0N(rddata[5]));
   AOI22X1M U94 (.Y(n49), 
	.B1(n47), 
	.B0(alu_out[5]), 
	.A1(n46), 
	.A0(alu_out[13]));
   OAI2BB1X2M U95 (.Y(tx_p_data[6]), 
	.B0(n48), 
	.A1N(n19), 
	.A0N(rddata[6]));
   AOI22X1M U96 (.Y(n48), 
	.B1(n47), 
	.B0(alu_out[6]), 
	.A1(n46), 
	.A0(alu_out[14]));
   OAI2BB1X2M U97 (.Y(tx_p_data[7]), 
	.B0(n45), 
	.A1N(n19), 
	.A0N(rddata[7]));
   AOI22X1M U98 (.Y(n45), 
	.B1(n47), 
	.B0(alu_out[7]), 
	.A1(n46), 
	.A0(alu_out[15]));
   NOR2BX2M U99 (.Y(wr_data[5]), 
	.B(n23), 
	.AN(rx_p_data[5]));
   NOR2BX2M U100 (.Y(wr_data[6]), 
	.B(n23), 
	.AN(rx_p_data[6]));
   NOR2BX2M U101 (.Y(wr_data[7]), 
	.B(n23), 
	.AN(rx_p_data[7]));
   NAND2X2M U102 (.Y(n56), 
	.B(fifo_full), 
	.A(out_vld));
   NOR2X2M U103 (.Y(n63), 
	.B(cmd_reg[1]), 
	.A(n25));
   OAI22X1M U104 (.Y(address[3]), 
	.B1(n28), 
	.B0(n86), 
	.A1(n26), 
	.A0(n102));
   NOR2BX2M U105 (.Y(wr_data[4]), 
	.B(n23), 
	.AN(rx_p_data[4]));
   NAND3X2M U106 (.Y(n58), 
	.C(rddata_vld), 
	.B(fifo_full), 
	.A(n60));
   INVX2M U107 (.Y(n25), 
	.A(cmd_reg[0]));
   AOI21X2M U108 (.Y(n99), 
	.B0(n36), 
	.A1(n76), 
	.A0(n75));
   AOI31X2M U109 (.Y(n76), 
	.B0(n64), 
	.A2(n69), 
	.A1(n25), 
	.A0(cmd_reg[1]));
   AOI21X2M U110 (.Y(n75), 
	.B0(n68), 
	.A1(n74), 
	.A0(cmd_reg[0]));
   INVX2M U111 (.Y(n104), 
	.A(rx_p_data[1]));
   INVX2M U112 (.Y(n105), 
	.A(rx_p_data[0]));
   OR2X2M U113 (.Y(n79), 
	.B(tx_d_vld), 
	.A(wr_done));
   INVX2M U114 (.Y(n41), 
	.A(\addr_reg[0] ));
   NOR3X2M U115 (.Y(n72), 
	.C(current_state[0]), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NOR3X2M U116 (.Y(n64), 
	.C(n39), 
	.B(current_state[2]), 
	.A(n40));
   OAI21X2M U117 (.Y(n81), 
	.B0(n83), 
	.A1(n57), 
	.A0(cmd_reg[1]));
   AOI31X2M U118 (.Y(n83), 
	.B0(n72), 
	.A2(cmd_reg[1]), 
	.A1(n39), 
	.A0(n40));
   OAI22X1M U119 (.Y(n94), 
	.B1(n30), 
	.B0(n65), 
	.A1(n26), 
	.A0(n104));
   OAI22X1M U120 (.Y(n95), 
	.B1(n29), 
	.B0(n65), 
	.A1(n26), 
	.A0(n103));
   OAI22X1M U121 (.Y(n96), 
	.B1(n28), 
	.B0(n65), 
	.A1(n26), 
	.A0(n102));
   NOR2X2M U122 (.Y(n62), 
	.B(current_state[2]), 
	.A(n106));
   INVX2M U123 (.Y(n106), 
	.A(rx_d_vld));
   INVX2M U124 (.Y(n102), 
	.A(rx_p_data[3]));
   INVX2M U125 (.Y(n103), 
	.A(rx_p_data[2]));
   NAND2X2M U126 (.Y(n84), 
	.B(n85), 
	.A(rx_d_vld));
   AO21XLM U127 (.Y(n85), 
	.B0(n64), 
	.A1(n63), 
	.A0(n74));
   OAI22X2M U128 (.Y(alu_fun[3]), 
	.B1(n84), 
	.B0(n102), 
	.A1(n32), 
	.A0(n82));
   SDFFRX1M \current_state_reg[1]  (.SI(n40), 
	.SE(test_se), 
	.RN(rst), 
	.QN(n39), 
	.Q(current_state[1]), 
	.D(n98), 
	.CK(clk));
   INVX2M U3 (.Y(clk_div_en), 
	.A(LTIE_LTIELO_NET));
endmodule

module Register_File_8_x_16_test_1 (
	WrEn, 
	RdEn, 
	CLK, 
	RST, 
	address, 
	WrData, 
	RdData, 
	RdData_VLD, 
	wr_done, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OCPN26_UART_Config_6_);
   input WrEn;
   input RdEn;
   input CLK;
   input RST;
   input [3:0] address;
   input [7:0] WrData;
   output [7:0] RdData;
   output RdData_VLD;
   output wr_done;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OCPN26_UART_Config_6_;

   // Internal wires
   wire FE_OCPN28_UART_Config_6_;
   wire FE_OFN10_UART_Config_3_;
   wire FE_OFN9_UART_Config_2_;
   wire FE_OFN8_UART_Config_5_;
   wire FE_OFN7_UART_Config_4_;
   wire FE_OFN6_UART_Config_6_;
   wire FE_OFN5_UART_Config_7_;
   wire FE_OFN1_DFT_REF_RST;
   wire N10;
   wire N11;
   wire N12;
   wire \Reg_File[4][7] ;
   wire \Reg_File[4][6] ;
   wire \Reg_File[4][5] ;
   wire \Reg_File[4][4] ;
   wire \Reg_File[4][3] ;
   wire \Reg_File[4][2] ;
   wire \Reg_File[4][1] ;
   wire \Reg_File[4][0] ;
   wire \Reg_File[5][7] ;
   wire \Reg_File[5][6] ;
   wire \Reg_File[5][5] ;
   wire \Reg_File[5][4] ;
   wire \Reg_File[5][3] ;
   wire \Reg_File[5][2] ;
   wire \Reg_File[5][1] ;
   wire \Reg_File[5][0] ;
   wire \Reg_File[6][7] ;
   wire \Reg_File[6][6] ;
   wire \Reg_File[6][5] ;
   wire \Reg_File[6][4] ;
   wire \Reg_File[6][3] ;
   wire \Reg_File[6][2] ;
   wire \Reg_File[6][1] ;
   wire \Reg_File[6][0] ;
   wire \Reg_File[7][7] ;
   wire \Reg_File[7][6] ;
   wire \Reg_File[7][5] ;
   wire \Reg_File[7][4] ;
   wire \Reg_File[7][3] ;
   wire \Reg_File[7][2] ;
   wire \Reg_File[7][1] ;
   wire \Reg_File[7][0] ;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n209;
   wire n210;
   wire n211;

   assign N10 = address[0] ;
   assign N11 = address[1] ;
   assign N12 = address[2] ;
   assign test_so1 = \Reg_File[7][3]  ;

   BUFX2M FE_OCPC28_UART_Config_6_ (.Y(FE_OCPN28_UART_Config_6_), 
	.A(FE_OCPN26_UART_Config_6_));
   BUFX10M FE_OFC10_UART_Config_3_ (.Y(REG2[3]), 
	.A(FE_OFN10_UART_Config_3_));
   BUFX10M FE_OFC9_UART_Config_2_ (.Y(REG2[2]), 
	.A(FE_OFN9_UART_Config_2_));
   BUFX10M FE_OFC8_UART_Config_5_ (.Y(REG2[5]), 
	.A(FE_OFN8_UART_Config_5_));
   BUFX14M FE_OFC7_UART_Config_4_ (.Y(REG2[4]), 
	.A(FE_OFN7_UART_Config_4_));
   BUFX10M FE_OFC6_UART_Config_6_ (.Y(REG2[6]), 
	.A(FE_OFN6_UART_Config_6_));
   BUFX18M FE_OFC5_UART_Config_7_ (.Y(REG2[7]), 
	.A(FE_OFN5_UART_Config_7_));
   BUFX8M FE_OFC1_DFT_REF_RST (.Y(FE_OFN1_DFT_REF_RST), 
	.A(RST));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(RdData[7]), 
	.D(n172), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(n209), 
	.RN(RST), 
	.Q(RdData[6]), 
	.D(n171), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(n211), 
	.RN(RST), 
	.Q(RdData[5]), 
	.D(n170), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(n210), 
	.RN(RST), 
	.Q(RdData[4]), 
	.D(n169), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(n209), 
	.RN(RST), 
	.Q(RdData[3]), 
	.D(n168), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(n209), 
	.RN(RST), 
	.Q(RdData[2]), 
	.D(n167), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(n211), 
	.RN(RST), 
	.Q(RdData[1]), 
	.D(n166), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[0]  (.SI(RdData_VLD), 
	.SE(n210), 
	.RN(RST), 
	.Q(RdData[0]), 
	.D(n165), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][7]  (.SI(\Reg_File[5][6] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[5][7] ), 
	.D(n124), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][6]  (.SI(\Reg_File[5][5] ), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[5][6] ), 
	.D(n123), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][5]  (.SI(\Reg_File[5][4] ), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[5][5] ), 
	.D(n122), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][4]  (.SI(\Reg_File[5][3] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[5][4] ), 
	.D(n121), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][3]  (.SI(\Reg_File[5][2] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[5][3] ), 
	.D(n120), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][2]  (.SI(\Reg_File[5][1] ), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[5][2] ), 
	.D(n119), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][1]  (.SI(\Reg_File[5][0] ), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[5][1] ), 
	.D(n118), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[5][0]  (.SI(\Reg_File[4][7] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[5][0] ), 
	.D(n117), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[7][7]  (.SI(\Reg_File[7][6] ), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[7][7] ), 
	.D(n108), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[7][6]  (.SI(\Reg_File[7][5] ), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[7][6] ), 
	.D(n107), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[7][5]  (.SI(\Reg_File[7][4] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[7][5] ), 
	.D(n106), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[7][4]  (.SI(test_si2), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[7][4] ), 
	.D(n105), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[7][3]  (.SI(\Reg_File[7][2] ), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[7][3] ), 
	.D(n104), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[7][2]  (.SI(\Reg_File[7][1] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[7][2] ), 
	.D(n103), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[7][1]  (.SI(\Reg_File[7][0] ), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[7][1] ), 
	.D(n102), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[7][0]  (.SI(\Reg_File[6][7] ), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[7][0] ), 
	.D(n101), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][7]  (.SI(\Reg_File[6][6] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[6][7] ), 
	.D(n116), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][6]  (.SI(\Reg_File[6][5] ), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[6][6] ), 
	.D(n115), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][5]  (.SI(\Reg_File[6][4] ), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[6][5] ), 
	.D(n114), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][4]  (.SI(\Reg_File[6][3] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[6][4] ), 
	.D(n113), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][3]  (.SI(\Reg_File[6][2] ), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[6][3] ), 
	.D(n112), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][2]  (.SI(\Reg_File[6][1] ), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[6][2] ), 
	.D(n111), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][1]  (.SI(\Reg_File[6][0] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[6][1] ), 
	.D(n110), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[6][0]  (.SI(\Reg_File[5][7] ), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[6][0] ), 
	.D(n109), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][7]  (.SI(\Reg_File[4][6] ), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[4][7] ), 
	.D(n132), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][6]  (.SI(\Reg_File[4][5] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[4][6] ), 
	.D(n131), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][5]  (.SI(\Reg_File[4][4] ), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[4][5] ), 
	.D(n130), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][4]  (.SI(\Reg_File[4][3] ), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[4][4] ), 
	.D(n129), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][3]  (.SI(\Reg_File[4][2] ), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[4][3] ), 
	.D(n128), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][2]  (.SI(\Reg_File[4][1] ), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[4][2] ), 
	.D(n127), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][1]  (.SI(\Reg_File[4][0] ), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[4][1] ), 
	.D(n126), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[4][0]  (.SI(REG3[7]), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(\Reg_File[4][0] ), 
	.D(n125), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[2][1]  (.SI(REG2[0]), 
	.SE(n211), 
	.RN(RST), 
	.Q(REG2[1]), 
	.D(n142), 
	.CK(CLK));
   SDFFRQX2M RdData_VLD_reg (.SI(test_si1), 
	.SE(n210), 
	.RN(RST), 
	.Q(RdData_VLD), 
	.D(n100), 
	.CK(CLK));
   SDFFRQX2M wr_done_reg (.SI(\Reg_File[7][7] ), 
	.SE(n209), 
	.RN(RST), 
	.Q(wr_done), 
	.D(n173), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[0][4]  (.SI(REG0[3]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG0[4]), 
	.D(n161), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[1][6]  (.SI(REG1[5]), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG1[6]), 
	.D(n155), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[0][7]  (.SI(REG0[6]), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG0[7]), 
	.D(n164), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[0][6]  (.SI(REG0[5]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG0[6]), 
	.D(n163), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[0][5]  (.SI(REG0[4]), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG0[5]), 
	.D(n162), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[0][3]  (.SI(REG0[2]), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG0[3]), 
	.D(n160), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[0][2]  (.SI(REG0[1]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG0[2]), 
	.D(n159), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[0][1]  (.SI(REG0[0]), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG0[1]), 
	.D(n158), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[0][0]  (.SI(RdData[7]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG0[0]), 
	.D(n157), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[1][1]  (.SI(REG1[0]), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG1[1]), 
	.D(n150), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[1][4]  (.SI(REG1[3]), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG1[4]), 
	.D(n153), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[1][5]  (.SI(REG1[4]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG1[5]), 
	.D(n154), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[1][7]  (.SI(REG1[6]), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG1[7]), 
	.D(n156), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[1][3]  (.SI(REG1[2]), 
	.SE(n209), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG1[3]), 
	.D(n152), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[1][2]  (.SI(REG1[1]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG1[2]), 
	.D(n151), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[1][0]  (.SI(REG0[7]), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG1[0]), 
	.D(n149), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[3][7]  (.SI(REG3[6]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG3[7]), 
	.D(n140), 
	.CK(CLK));
   SDFFSQX2M \Reg_File_reg[3][5]  (.SN(FE_OFN1_DFT_REF_RST), 
	.SI(REG3[4]), 
	.SE(n209), 
	.Q(REG3[5]), 
	.D(n138), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[3][4]  (.SI(REG3[3]), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG3[4]), 
	.D(n137), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[3][6]  (.SI(REG3[5]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG3[6]), 
	.D(n139), 
	.CK(CLK));
   SDFFRHQX1M \Reg_File_reg[3][0]  (.SI(REG2[7]), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG3[0]), 
	.D(n133), 
	.CK(CLK));
   SDFFRHQX2M \Reg_File_reg[3][2]  (.SI(REG3[1]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG3[2]), 
	.D(n135), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[3][3]  (.SI(REG3[2]), 
	.SE(n210), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG3[3]), 
	.D(n136), 
	.CK(CLK));
   SDFFRHQX4M \Reg_File_reg[3][1]  (.SI(REG3[0]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(REG3[1]), 
	.D(n134), 
	.CK(CLK));
   SDFFRHQX2M \Reg_File_reg[2][3]  (.SI(REG2[2]), 
	.SE(n210), 
	.RN(RST), 
	.Q(FE_OFN10_UART_Config_3_), 
	.D(n144), 
	.CK(CLK));
   SDFFRHQX2M \Reg_File_reg[2][2]  (.SI(REG2[1]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(FE_OFN9_UART_Config_2_), 
	.D(n143), 
	.CK(CLK));
   SDFFRHQX2M \Reg_File_reg[2][5]  (.SI(REG2[4]), 
	.SE(n210), 
	.RN(RST), 
	.Q(FE_OFN8_UART_Config_5_), 
	.D(n146), 
	.CK(CLK));
   SDFFRHQX4M \Reg_File_reg[2][4]  (.SI(REG2[3]), 
	.SE(n211), 
	.RN(FE_OFN1_DFT_REF_RST), 
	.Q(FE_OFN7_UART_Config_4_), 
	.D(n145), 
	.CK(CLK));
   SDFFSQX1M \Reg_File_reg[2][0]  (.SN(FE_OFN1_DFT_REF_RST), 
	.SI(REG1[7]), 
	.SE(n209), 
	.Q(REG2[0]), 
	.D(n141), 
	.CK(CLK));
   SDFFRHQX2M \Reg_File_reg[2][6]  (.SI(REG2[5]), 
	.SE(n210), 
	.RN(RST), 
	.Q(FE_OFN6_UART_Config_6_), 
	.D(n147), 
	.CK(CLK));
   OAI2BB2XLM U78 (.Y(n145), 
	.B1(n97), 
	.B0(n200), 
	.A1N(n97), 
	.A0N(REG2[4]));
   MX4XLM U79 (.Y(n85), 
	.S1(N11), 
	.S0(n179), 
	.D(REG3[4]), 
	.C(REG2[4]), 
	.B(REG1[4]), 
	.A(REG0[4]));
   OAI2BB2XLM U80 (.Y(n133), 
	.B1(n95), 
	.B0(n204), 
	.A1N(n95), 
	.A0N(REG3[0]));
   OAI2BB2XLM U81 (.Y(n134), 
	.B1(n95), 
	.B0(n203), 
	.A1N(n95), 
	.A0N(REG3[1]));
   OAI2BB2XLM U82 (.Y(n135), 
	.B1(n95), 
	.B0(n202), 
	.A1N(n95), 
	.A0N(REG3[2]));
   OAI2BB2XLM U83 (.Y(n144), 
	.B1(n97), 
	.B0(n201), 
	.A1N(n97), 
	.A0N(REG2[3]));
   MX4XLM U84 (.Y(n77), 
	.S1(N11), 
	.S0(n179), 
	.D(REG3[0]), 
	.C(REG2[0]), 
	.B(REG1[0]), 
	.A(REG0[0]));
   MX4XLM U85 (.Y(n79), 
	.S1(N11), 
	.S0(n179), 
	.D(REG3[1]), 
	.C(REG2[1]), 
	.B(REG1[1]), 
	.A(REG0[1]));
   MX4XLM U86 (.Y(n81), 
	.S1(N11), 
	.S0(n179), 
	.D(REG3[2]), 
	.C(REG2[2]), 
	.B(REG1[2]), 
	.A(REG0[2]));
   MX4XLM U87 (.Y(n83), 
	.S1(N11), 
	.S0(n179), 
	.D(REG3[3]), 
	.C(REG2[3]), 
	.B(REG1[3]), 
	.A(REG0[3]));
   NOR2BX2M U88 (.Y(n96), 
	.B(N12), 
	.AN(n94));
   OAI2BB2XLM U89 (.Y(n148), 
	.B1(n97), 
	.B0(n197), 
	.A1N(n97), 
	.A0N(REG2[7]));
   OAI2BB2XLM U90 (.Y(n146), 
	.B1(n97), 
	.B0(n199), 
	.A1N(n97), 
	.A0N(REG2[5]));
   MX4XLM U91 (.Y(n174), 
	.S1(N11), 
	.S0(n179), 
	.D(REG3[5]), 
	.C(REG2[5]), 
	.B(REG1[5]), 
	.A(REG0[5]));
   MX4XLM U92 (.Y(n178), 
	.S1(N11), 
	.S0(n179), 
	.D(REG3[7]), 
	.C(REG2[7]), 
	.B(REG1[7]), 
	.A(REG0[7]));
   INVX2M U93 (.Y(n195), 
	.A(n88));
   NAND3X2M U94 (.Y(n93), 
	.C(n90), 
	.B(n194), 
	.A(n205));
   NAND3X2M U95 (.Y(n99), 
	.C(n96), 
	.B(n194), 
	.A(n205));
   NAND2X2M U96 (.Y(n88), 
	.B(n196), 
	.A(RdEn));
   NOR2X2M U97 (.Y(n87), 
	.B(RdEn), 
	.A(n196));
   INVX2M U98 (.Y(n196), 
	.A(WrEn));
   INVX2M U105 (.Y(n194), 
	.A(N11));
   NAND3X2M U107 (.Y(n95), 
	.C(n96), 
	.B(N10), 
	.A(N11));
   NAND3X2M U109 (.Y(n97), 
	.C(n96), 
	.B(n205), 
	.A(N11));
   NAND3X2M U111 (.Y(n98), 
	.C(n96), 
	.B(n194), 
	.A(N10));
   BUFX4M U112 (.Y(n179), 
	.A(N10));
   NAND3X2M U114 (.Y(n92), 
	.C(N10), 
	.B(n194), 
	.A(n90));
   NAND3X2M U116 (.Y(n91), 
	.C(N11), 
	.B(n205), 
	.A(n90));
   NAND3X2M U118 (.Y(n89), 
	.C(N11), 
	.B(n90), 
	.A(N10));
   INVX2M U119 (.Y(n205), 
	.A(N10));
   INVX2M U120 (.Y(n204), 
	.A(WrData[0]));
   INVX2M U121 (.Y(n203), 
	.A(WrData[1]));
   INVX2M U122 (.Y(n202), 
	.A(WrData[2]));
   INVX2M U123 (.Y(n201), 
	.A(WrData[3]));
   AND2X2M U124 (.Y(n90), 
	.B(n94), 
	.A(N12));
   OAI2BB2X1M U127 (.Y(n157), 
	.B1(n99), 
	.B0(n204), 
	.A1N(n99), 
	.A0N(REG0[0]));
   OAI2BB2X1M U128 (.Y(n158), 
	.B1(n99), 
	.B0(n203), 
	.A1N(n99), 
	.A0N(REG0[1]));
   OAI2BB2X1M U129 (.Y(n159), 
	.B1(n99), 
	.B0(n202), 
	.A1N(n99), 
	.A0N(REG0[2]));
   OAI2BB2X1M U130 (.Y(n160), 
	.B1(n99), 
	.B0(n201), 
	.A1N(n99), 
	.A0N(REG0[3]));
   OAI2BB2X1M U131 (.Y(n161), 
	.B1(n99), 
	.B0(n200), 
	.A1N(n99), 
	.A0N(REG0[4]));
   OAI2BB2X1M U132 (.Y(n162), 
	.B1(n99), 
	.B0(n199), 
	.A1N(n99), 
	.A0N(REG0[5]));
   OAI2BB2X1M U133 (.Y(n163), 
	.B1(n99), 
	.B0(n198), 
	.A1N(n99), 
	.A0N(REG0[6]));
   OAI2BB2X1M U134 (.Y(n164), 
	.B1(n99), 
	.B0(n197), 
	.A1N(n99), 
	.A0N(REG0[7]));
   OAI2BB2X1M U135 (.Y(n125), 
	.B1(n93), 
	.B0(n204), 
	.A1N(n93), 
	.A0N(\Reg_File[4][0] ));
   OAI2BB2X1M U136 (.Y(n126), 
	.B1(n93), 
	.B0(n203), 
	.A1N(n93), 
	.A0N(\Reg_File[4][1] ));
   OAI2BB2X1M U137 (.Y(n127), 
	.B1(n93), 
	.B0(n202), 
	.A1N(n93), 
	.A0N(\Reg_File[4][2] ));
   OAI2BB2X1M U138 (.Y(n128), 
	.B1(n93), 
	.B0(n201), 
	.A1N(n93), 
	.A0N(\Reg_File[4][3] ));
   OAI2BB2X1M U139 (.Y(n129), 
	.B1(n93), 
	.B0(n200), 
	.A1N(n93), 
	.A0N(\Reg_File[4][4] ));
   OAI2BB2X1M U140 (.Y(n130), 
	.B1(n93), 
	.B0(n199), 
	.A1N(n93), 
	.A0N(\Reg_File[4][5] ));
   OAI2BB2X1M U141 (.Y(n131), 
	.B1(n93), 
	.B0(n198), 
	.A1N(n93), 
	.A0N(\Reg_File[4][6] ));
   OAI2BB2X1M U142 (.Y(n132), 
	.B1(n93), 
	.B0(n197), 
	.A1N(n93), 
	.A0N(\Reg_File[4][7] ));
   OAI2BB2X1M U143 (.Y(n142), 
	.B1(n97), 
	.B0(n203), 
	.A1N(n97), 
	.A0N(REG2[1]));
   OAI2BB2X1M U144 (.Y(n143), 
	.B1(n97), 
	.B0(n202), 
	.A1N(n97), 
	.A0N(REG2[2]));
   OAI2BB2X1M U145 (.Y(n147), 
	.B1(n97), 
	.B0(n198), 
	.A1N(n97), 
	.A0N(FE_OCPN26_UART_Config_6_));
   OAI2BB2X1M U146 (.Y(n109), 
	.B1(n91), 
	.B0(n204), 
	.A1N(n91), 
	.A0N(\Reg_File[6][0] ));
   OAI2BB2X1M U147 (.Y(n110), 
	.B1(n91), 
	.B0(n203), 
	.A1N(n91), 
	.A0N(\Reg_File[6][1] ));
   OAI2BB2X1M U148 (.Y(n111), 
	.B1(n91), 
	.B0(n202), 
	.A1N(n91), 
	.A0N(\Reg_File[6][2] ));
   OAI2BB2X1M U149 (.Y(n112), 
	.B1(n91), 
	.B0(n201), 
	.A1N(n91), 
	.A0N(\Reg_File[6][3] ));
   OAI2BB2X1M U150 (.Y(n113), 
	.B1(n91), 
	.B0(n200), 
	.A1N(n91), 
	.A0N(\Reg_File[6][4] ));
   OAI2BB2X1M U151 (.Y(n114), 
	.B1(n91), 
	.B0(n199), 
	.A1N(n91), 
	.A0N(\Reg_File[6][5] ));
   OAI2BB2X1M U152 (.Y(n115), 
	.B1(n91), 
	.B0(n198), 
	.A1N(n91), 
	.A0N(\Reg_File[6][6] ));
   OAI2BB2X1M U153 (.Y(n116), 
	.B1(n91), 
	.B0(n197), 
	.A1N(n91), 
	.A0N(\Reg_File[6][7] ));
   OAI2BB2X1M U154 (.Y(n117), 
	.B1(n92), 
	.B0(n204), 
	.A1N(n92), 
	.A0N(\Reg_File[5][0] ));
   OAI2BB2X1M U155 (.Y(n118), 
	.B1(n92), 
	.B0(n203), 
	.A1N(n92), 
	.A0N(\Reg_File[5][1] ));
   OAI2BB2X1M U156 (.Y(n119), 
	.B1(n92), 
	.B0(n202), 
	.A1N(n92), 
	.A0N(\Reg_File[5][2] ));
   OAI2BB2X1M U157 (.Y(n120), 
	.B1(n92), 
	.B0(n201), 
	.A1N(n92), 
	.A0N(\Reg_File[5][3] ));
   OAI2BB2X1M U158 (.Y(n121), 
	.B1(n92), 
	.B0(n200), 
	.A1N(n92), 
	.A0N(\Reg_File[5][4] ));
   OAI2BB2X1M U159 (.Y(n122), 
	.B1(n92), 
	.B0(n199), 
	.A1N(n92), 
	.A0N(\Reg_File[5][5] ));
   OAI2BB2X1M U160 (.Y(n123), 
	.B1(n92), 
	.B0(n198), 
	.A1N(n92), 
	.A0N(\Reg_File[5][6] ));
   OAI2BB2X1M U161 (.Y(n124), 
	.B1(n92), 
	.B0(n197), 
	.A1N(n92), 
	.A0N(\Reg_File[5][7] ));
   OAI2BB2X1M U162 (.Y(n136), 
	.B1(n95), 
	.B0(n201), 
	.A1N(n95), 
	.A0N(REG3[3]));
   OAI2BB2X1M U163 (.Y(n137), 
	.B1(n95), 
	.B0(n200), 
	.A1N(n95), 
	.A0N(REG3[4]));
   OAI2BB2X1M U164 (.Y(n139), 
	.B1(n95), 
	.B0(n198), 
	.A1N(n95), 
	.A0N(REG3[6]));
   OAI2BB2X1M U165 (.Y(n140), 
	.B1(n95), 
	.B0(n197), 
	.A1N(n95), 
	.A0N(REG3[7]));
   OAI2BB2X1M U166 (.Y(n149), 
	.B1(n98), 
	.B0(n204), 
	.A1N(n98), 
	.A0N(REG1[0]));
   OAI2BB2X1M U167 (.Y(n150), 
	.B1(n98), 
	.B0(n203), 
	.A1N(n98), 
	.A0N(REG1[1]));
   OAI2BB2X1M U168 (.Y(n151), 
	.B1(n98), 
	.B0(n202), 
	.A1N(n98), 
	.A0N(REG1[2]));
   OAI2BB2X1M U169 (.Y(n152), 
	.B1(n98), 
	.B0(n201), 
	.A1N(n98), 
	.A0N(REG1[3]));
   OAI2BB2X1M U170 (.Y(n153), 
	.B1(n98), 
	.B0(n200), 
	.A1N(n98), 
	.A0N(REG1[4]));
   OAI2BB2X1M U171 (.Y(n154), 
	.B1(n98), 
	.B0(n199), 
	.A1N(n98), 
	.A0N(REG1[5]));
   OAI2BB2X1M U172 (.Y(n155), 
	.B1(n98), 
	.B0(n198), 
	.A1N(n98), 
	.A0N(REG1[6]));
   OAI2BB2X1M U173 (.Y(n156), 
	.B1(n98), 
	.B0(n197), 
	.A1N(n98), 
	.A0N(REG1[7]));
   OAI2BB2X1M U174 (.Y(n101), 
	.B1(n204), 
	.B0(n89), 
	.A1N(n89), 
	.A0N(\Reg_File[7][0] ));
   OAI2BB2X1M U175 (.Y(n102), 
	.B1(n203), 
	.B0(n89), 
	.A1N(n89), 
	.A0N(\Reg_File[7][1] ));
   OAI2BB2X1M U176 (.Y(n103), 
	.B1(n202), 
	.B0(n89), 
	.A1N(n89), 
	.A0N(\Reg_File[7][2] ));
   OAI2BB2X1M U177 (.Y(n104), 
	.B1(n201), 
	.B0(n89), 
	.A1N(n89), 
	.A0N(\Reg_File[7][3] ));
   OAI2BB2X1M U178 (.Y(n105), 
	.B1(n200), 
	.B0(n89), 
	.A1N(n89), 
	.A0N(\Reg_File[7][4] ));
   OAI2BB2X1M U179 (.Y(n106), 
	.B1(n199), 
	.B0(n89), 
	.A1N(n89), 
	.A0N(\Reg_File[7][5] ));
   OAI2BB2X1M U180 (.Y(n107), 
	.B1(n198), 
	.B0(n89), 
	.A1N(n89), 
	.A0N(\Reg_File[7][6] ));
   OAI2BB2X1M U181 (.Y(n108), 
	.B1(n197), 
	.B0(n89), 
	.A1N(n89), 
	.A0N(\Reg_File[7][7] ));
   OAI2BB2X1M U182 (.Y(n141), 
	.B1(n97), 
	.B0(n204), 
	.A1N(n97), 
	.A0N(REG2[0]));
   OAI2BB2X1M U183 (.Y(n138), 
	.B1(n95), 
	.B0(n199), 
	.A1N(n95), 
	.A0N(REG3[5]));
   AO22X1M U184 (.Y(n169), 
	.B1(n88), 
	.B0(RdData[4]), 
	.A1(n195), 
	.A0(N29));
   MX2X2M U185 (.Y(N29), 
	.S0(N12), 
	.B(n84), 
	.A(n85));
   MX4X1M U186 (.Y(n84), 
	.S1(N11), 
	.S0(n179), 
	.D(\Reg_File[7][4] ), 
	.C(\Reg_File[6][4] ), 
	.B(\Reg_File[5][4] ), 
	.A(\Reg_File[4][4] ));
   AO22X1M U187 (.Y(n165), 
	.B1(n88), 
	.B0(RdData[0]), 
	.A1(n195), 
	.A0(N33));
   MX2X2M U188 (.Y(N33), 
	.S0(N12), 
	.B(n76), 
	.A(n77));
   MX4X1M U189 (.Y(n76), 
	.S1(N11), 
	.S0(n179), 
	.D(\Reg_File[7][0] ), 
	.C(\Reg_File[6][0] ), 
	.B(\Reg_File[5][0] ), 
	.A(\Reg_File[4][0] ));
   AO22X1M U190 (.Y(n166), 
	.B1(n88), 
	.B0(RdData[1]), 
	.A1(n195), 
	.A0(N32));
   MX2X2M U191 (.Y(N32), 
	.S0(N12), 
	.B(n78), 
	.A(n79));
   MX4X1M U192 (.Y(n78), 
	.S1(N11), 
	.S0(n179), 
	.D(\Reg_File[7][1] ), 
	.C(\Reg_File[6][1] ), 
	.B(\Reg_File[5][1] ), 
	.A(\Reg_File[4][1] ));
   AO22X1M U193 (.Y(n167), 
	.B1(n88), 
	.B0(RdData[2]), 
	.A1(n195), 
	.A0(N31));
   MX2X2M U194 (.Y(N31), 
	.S0(N12), 
	.B(n80), 
	.A(n81));
   MX4X1M U195 (.Y(n80), 
	.S1(N11), 
	.S0(n179), 
	.D(\Reg_File[7][2] ), 
	.C(\Reg_File[6][2] ), 
	.B(\Reg_File[5][2] ), 
	.A(\Reg_File[4][2] ));
   AO22X1M U196 (.Y(n168), 
	.B1(n88), 
	.B0(RdData[3]), 
	.A1(n195), 
	.A0(N30));
   MX2X2M U197 (.Y(N30), 
	.S0(N12), 
	.B(n82), 
	.A(n83));
   MX4X1M U198 (.Y(n82), 
	.S1(N11), 
	.S0(n179), 
	.D(\Reg_File[7][3] ), 
	.C(\Reg_File[6][3] ), 
	.B(\Reg_File[5][3] ), 
	.A(\Reg_File[4][3] ));
   AO22X1M U199 (.Y(n170), 
	.B1(n88), 
	.B0(RdData[5]), 
	.A1(n195), 
	.A0(N28));
   MX2X2M U200 (.Y(N28), 
	.S0(N12), 
	.B(n86), 
	.A(n174));
   MX4X1M U201 (.Y(n86), 
	.S1(N11), 
	.S0(n179), 
	.D(\Reg_File[7][5] ), 
	.C(\Reg_File[6][5] ), 
	.B(\Reg_File[5][5] ), 
	.A(\Reg_File[4][5] ));
   AO22X1M U202 (.Y(n171), 
	.B1(n88), 
	.B0(RdData[6]), 
	.A1(n195), 
	.A0(N27));
   MX2X2M U203 (.Y(N27), 
	.S0(N12), 
	.B(n175), 
	.A(n176));
   MX4X1M U204 (.Y(n176), 
	.S1(N11), 
	.S0(n179), 
	.D(REG3[6]), 
	.C(FE_OCPN28_UART_Config_6_), 
	.B(REG1[6]), 
	.A(REG0[6]));
   MX4X1M U205 (.Y(n175), 
	.S1(N11), 
	.S0(n179), 
	.D(\Reg_File[7][6] ), 
	.C(\Reg_File[6][6] ), 
	.B(\Reg_File[5][6] ), 
	.A(\Reg_File[4][6] ));
   AO22X1M U206 (.Y(n172), 
	.B1(n88), 
	.B0(RdData[7]), 
	.A1(n195), 
	.A0(N26));
   MX2X2M U207 (.Y(N26), 
	.S0(N12), 
	.B(n177), 
	.A(n178));
   MX4X1M U208 (.Y(n177), 
	.S1(N11), 
	.S0(n179), 
	.D(\Reg_File[7][7] ), 
	.C(\Reg_File[6][7] ), 
	.B(\Reg_File[5][7] ), 
	.A(\Reg_File[4][7] ));
   INVX2M U209 (.Y(n199), 
	.A(WrData[5]));
   INVX2M U210 (.Y(n198), 
	.A(WrData[6]));
   INVX2M U211 (.Y(n197), 
	.A(WrData[7]));
   NOR2BX2M U212 (.Y(n94), 
	.B(address[3]), 
	.AN(n87));
   INVX2M U213 (.Y(n200), 
	.A(WrData[4]));
   OAI2BB1X2M U214 (.Y(n100), 
	.B0(n88), 
	.A1N(n87), 
	.A0N(RdData_VLD));
   AO21XLM U215 (.Y(n173), 
	.B0(n87), 
	.A1(n195), 
	.A0(wr_done));
   SDFFSHQX4M \Reg_File_reg[2][7]  (.SN(FE_OFN1_DFT_REF_RST), 
	.SI(FE_OCPN28_UART_Config_6_), 
	.SE(n209), 
	.Q(FE_OFN5_UART_Config_7_), 
	.D(n148), 
	.CK(CLK));
   DLY1X4M U216 (.Y(n209), 
	.A(test_se));
   DLY1X4M U217 (.Y(n210), 
	.A(test_se));
   DLY1X4M U218 (.Y(n211), 
	.A(test_se));
endmodule

module ALU_16_bit_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n135, 
	n136, 
	n149, 
	n150, 
	n151, 
	n148, 
	n147, 
	n146, 
	n145, 
	n143, 
	n142, 
	n137, 
	n144, 
	n134);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n135;
   input n136;
   input n149;
   input n150;
   input n151;
   input n148;
   input n147;
   input n146;
   input n145;
   input n143;
   input n142;
   input n137;
   input n144;
   input n134;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n1;
   wire n2;
   wire n3;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;

   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n11), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M U1 (.Y(n18), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n18));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n18));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n18));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n18));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n18));
   OR2X2M U8 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U9 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n18));
   NAND2X2M U10 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n3), 
	.A(n2));
   INVX2M U11 (.Y(n3), 
	.A(a[5]));
   INVX2M U12 (.Y(n2), 
	.A(n18));
   NAND2X2M U13 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n5), 
	.A(n2));
   INVX2M U14 (.Y(n5), 
	.A(a[4]));
   NAND2X2M U16 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n7), 
	.A(n2));
   INVX2M U17 (.Y(n7), 
	.A(a[3]));
   NAND2X2M U19 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n8), 
	.A(n2));
   INVX2M U20 (.Y(n8), 
	.A(a[2]));
   NAND2X2M U21 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n9), 
	.A(n2));
   INVX2M U22 (.Y(n9), 
	.A(a[1]));
   NAND2X2M U23 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n10), 
	.A(n2));
   INVX2M U24 (.Y(n10), 
	.A(a[0]));
   NAND2X2M U25 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n1), 
	.A(n2));
   INVX2M U26 (.Y(n1), 
	.A(a[6]));
   INVX2M U27 (.Y(n12), 
	.A(b[6]));
   INVX2M U28 (.Y(n17), 
	.A(b[1]));
   INVX2M U29 (.Y(n16), 
	.A(b[2]));
   INVX2M U30 (.Y(n15), 
	.A(b[3]));
   INVX2M U31 (.Y(n14), 
	.A(b[4]));
   INVX2M U32 (.Y(n13), 
	.A(b[5]));
   INVX2M U33 (.Y(n11), 
	.A(b[7]));
   CLKMX2X2M U34 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U38 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   CLKMX2X2M U39 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U40 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U45 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   CLKMX2X2M U46 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U60 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U61 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U62 (.Y(quotient[7]), 
	.D(n16), 
	.C(n17), 
	.B(n19), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U63 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n16), 
	.A(n19));
   AND2X1M U64 (.Y(quotient[5]), 
	.B(n19), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X1M U65 (.Y(n19), 
	.B(n15), 
	.A(n20));
   AND2X1M U66 (.Y(quotient[4]), 
	.B(n20), 
	.A(\u_div/CryTmp[4][4] ));
   AND3X1M U67 (.Y(n20), 
	.C(n13), 
	.B(n14), 
	.A(n21));
   AND3X1M U68 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n13), 
	.A(n21));
   AND2X1M U69 (.Y(quotient[2]), 
	.B(n21), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X1M U70 (.Y(n21), 
	.B(b[7]), 
	.A(b[6]));
   AND2X1M U71 (.Y(quotient[1]), 
	.B(n11), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module ALU_16_bit_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n134, 
	n135, 
	n136, 
	n149, 
	n150, 
	n151, 
	n148, 
	n137);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n134;
   input n135;
   input n136;
   input n149;
   input n150;
   input n151;
   input n148;
   input n137;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n2), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n4), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n5), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n3), 
	.A(A[6]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n9));
   INVX2M U2 (.Y(n3), 
	.A(B[6]));
   INVX2M U3 (.Y(n9), 
	.A(B[0]));
   INVX2M U4 (.Y(n7), 
	.A(B[2]));
   INVX2M U5 (.Y(n6), 
	.A(B[3]));
   INVX2M U6 (.Y(n5), 
	.A(B[4]));
   INVX2M U7 (.Y(n4), 
	.A(B[5]));
   NAND2X2M U8 (.Y(carry[1]), 
	.B(n1), 
	.A(B[0]));
   INVX2M U9 (.Y(n8), 
	.A(B[1]));
   INVX2M U10 (.Y(n1), 
	.A(A[0]));
   INVX2M U11 (.Y(n2), 
	.A(B[7]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_16_bit_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_16_bit_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;

   AOI21BX2M U2 (.Y(n1), 
	.B0N(n19), 
	.A1(A[12]), 
	.A0(n18));
   NAND2X2M U3 (.Y(n15), 
	.B(B[7]), 
	.A(A[7]));
   XNOR2X2M U4 (.Y(SUM[7]), 
	.B(n8), 
	.A(A[7]));
   INVX2M U5 (.Y(n8), 
	.A(B[7]));
   XNOR2X2M U6 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   INVX2M U7 (.Y(n9), 
	.A(A[6]));
   INVX2M U8 (.Y(SUM[6]), 
	.A(n9));
   BUFX2M U9 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U10 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U11 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U12 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U13 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U14 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U15 (.Y(SUM[9]), 
	.B(n11), 
	.A(n10));
   NOR2X1M U16 (.Y(n11), 
	.B(n13), 
	.A(n12));
   CLKXOR2X2M U17 (.Y(SUM[8]), 
	.B(n15), 
	.A(n14));
   NAND2BX1M U18 (.Y(n14), 
	.B(n17), 
	.AN(n16));
   OAI21X1M U19 (.Y(n19), 
	.B0(B[12]), 
	.A1(n18), 
	.A0(A[12]));
   XOR3XLM U20 (.Y(SUM[12]), 
	.C(n18), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U21 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   XNOR2X1M U22 (.Y(SUM[11]), 
	.B(n23), 
	.A(n21));
   NOR2X1M U23 (.Y(n23), 
	.B(n20), 
	.A(n22));
   NOR2X1M U24 (.Y(n20), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U25 (.Y(n22), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U26 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKXOR2X2M U27 (.Y(SUM[10]), 
	.B(n25), 
	.A(n27));
   AOI2BB1X1M U28 (.Y(n25), 
	.B0(n12), 
	.A1N(n13), 
	.A0N(n10));
   AND2X1M U29 (.Y(n12), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U30 (.Y(n13), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U31 (.Y(n10), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   CLKNAND2X2M U32 (.Y(n17), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U33 (.Y(n16), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   CLKNAND2X2M U35 (.Y(n26), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U36 (.Y(n24), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_16_bit_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n134, 
	n135, 
	n136, 
	n149, 
	n150, 
	n151, 
	n148, 
	n147, 
	n146, 
	n145, 
	n143, 
	n142, 
	n141, 
	n137, 
	n144);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n134;
   input n135;
   input n136;
   input n149;
   input n150;
   input n151;
   input n148;
   input n147;
   input n146;
   input n145;
   input n143;
   input n142;
   input n141;
   input n137;
   input n144;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;

   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n8), 
	.A(\ab[2][6] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n9), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n7), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n6), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n5), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n4), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n3), 
	.A(\ab[2][5] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n22), 
	.A(\ab[0][6] ));
   CLKXOR2X2M U11 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U12 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   CLKXOR2X2M U13 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U14 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U15 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U16 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U17 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U18 (.Y(n23), 
	.A(\ab[0][7] ));
   INVX2M U19 (.Y(n21), 
	.A(\ab[0][5] ));
   INVX2M U20 (.Y(n20), 
	.A(\ab[0][4] ));
   INVX2M U21 (.Y(n19), 
	.A(\ab[0][3] ));
   INVX2M U22 (.Y(n18), 
	.A(\ab[0][2] ));
   XNOR2X2M U23 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U24 (.Y(n17), 
	.A(\SUMB[7][1] ));
   AND2X2M U25 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U26 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U27 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U28 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U29 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U30 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   XNOR2X2M U31 (.Y(\SUMB[1][6] ), 
	.B(n23), 
	.A(\ab[1][6] ));
   XNOR2X2M U32 (.Y(\SUMB[1][5] ), 
	.B(n22), 
	.A(\ab[1][5] ));
   XNOR2X2M U33 (.Y(\SUMB[1][4] ), 
	.B(n21), 
	.A(\ab[1][4] ));
   XNOR2X2M U34 (.Y(\SUMB[1][3] ), 
	.B(n20), 
	.A(\ab[1][3] ));
   XNOR2X2M U35 (.Y(\SUMB[1][2] ), 
	.B(n19), 
	.A(\ab[1][2] ));
   XNOR2X2M U36 (.Y(\SUMB[1][1] ), 
	.B(n18), 
	.A(\ab[1][1] ));
   INVX2M U37 (.Y(n24), 
	.A(A[7]));
   INVX2M U38 (.Y(n25), 
	.A(A[6]));
   INVX2M U39 (.Y(n30), 
	.A(A[1]));
   INVX2M U40 (.Y(n31), 
	.A(A[0]));
   INVX2M U41 (.Y(n28), 
	.A(A[3]));
   INVX2M U42 (.Y(n29), 
	.A(A[2]));
   INVX2M U43 (.Y(n26), 
	.A(A[5]));
   INVX2M U44 (.Y(n27), 
	.A(A[4]));
   INVX2M U45 (.Y(n33), 
	.A(B[6]));
   INVX2M U46 (.Y(n39), 
	.A(B[0]));
   INVX2M U47 (.Y(n37), 
	.A(B[2]));
   INVX2M U48 (.Y(n36), 
	.A(B[3]));
   INVX2M U49 (.Y(n32), 
	.A(B[7]));
   INVX2M U50 (.Y(n34), 
	.A(B[5]));
   INVX2M U51 (.Y(n35), 
	.A(B[4]));
   INVX2M U52 (.Y(n38), 
	.A(B[1]));
   NOR2X1M U54 (.Y(\ab[7][7] ), 
	.B(n32), 
	.A(n24));
   NOR2X1M U55 (.Y(\ab[7][6] ), 
	.B(n33), 
	.A(n24));
   NOR2X1M U56 (.Y(\ab[7][5] ), 
	.B(n34), 
	.A(n24));
   NOR2X1M U57 (.Y(\ab[7][4] ), 
	.B(n35), 
	.A(n24));
   NOR2X1M U58 (.Y(\ab[7][3] ), 
	.B(n36), 
	.A(n24));
   NOR2X1M U59 (.Y(\ab[7][2] ), 
	.B(n37), 
	.A(n24));
   NOR2X1M U60 (.Y(\ab[7][1] ), 
	.B(n38), 
	.A(n24));
   NOR2X1M U61 (.Y(\ab[7][0] ), 
	.B(n39), 
	.A(n24));
   NOR2X1M U62 (.Y(\ab[6][7] ), 
	.B(n25), 
	.A(n32));
   NOR2X1M U63 (.Y(\ab[6][6] ), 
	.B(n25), 
	.A(n33));
   NOR2X1M U64 (.Y(\ab[6][5] ), 
	.B(n25), 
	.A(n34));
   NOR2X1M U65 (.Y(\ab[6][4] ), 
	.B(n25), 
	.A(n35));
   NOR2X1M U66 (.Y(\ab[6][3] ), 
	.B(n25), 
	.A(n36));
   NOR2X1M U67 (.Y(\ab[6][2] ), 
	.B(n25), 
	.A(n37));
   NOR2X1M U68 (.Y(\ab[6][1] ), 
	.B(n25), 
	.A(n38));
   NOR2X1M U69 (.Y(\ab[6][0] ), 
	.B(n25), 
	.A(n39));
   NOR2X1M U70 (.Y(\ab[5][7] ), 
	.B(n26), 
	.A(n32));
   NOR2X1M U71 (.Y(\ab[5][6] ), 
	.B(n26), 
	.A(n33));
   NOR2X1M U72 (.Y(\ab[5][5] ), 
	.B(n26), 
	.A(n34));
   NOR2X1M U73 (.Y(\ab[5][4] ), 
	.B(n26), 
	.A(n35));
   NOR2X1M U74 (.Y(\ab[5][3] ), 
	.B(n26), 
	.A(n36));
   NOR2X1M U75 (.Y(\ab[5][2] ), 
	.B(n26), 
	.A(n37));
   NOR2X1M U76 (.Y(\ab[5][1] ), 
	.B(n26), 
	.A(n38));
   NOR2X1M U77 (.Y(\ab[5][0] ), 
	.B(n26), 
	.A(n39));
   NOR2X1M U78 (.Y(\ab[4][7] ), 
	.B(n27), 
	.A(n32));
   NOR2X1M U79 (.Y(\ab[4][6] ), 
	.B(n27), 
	.A(n33));
   NOR2X1M U80 (.Y(\ab[4][5] ), 
	.B(n27), 
	.A(n34));
   NOR2X1M U81 (.Y(\ab[4][4] ), 
	.B(n27), 
	.A(n35));
   NOR2X1M U82 (.Y(\ab[4][3] ), 
	.B(n27), 
	.A(n36));
   NOR2X1M U83 (.Y(\ab[4][2] ), 
	.B(n27), 
	.A(n37));
   NOR2X1M U84 (.Y(\ab[4][1] ), 
	.B(n27), 
	.A(n38));
   NOR2X1M U85 (.Y(\ab[4][0] ), 
	.B(n27), 
	.A(n39));
   NOR2X1M U86 (.Y(\ab[3][7] ), 
	.B(n28), 
	.A(n32));
   NOR2X1M U87 (.Y(\ab[3][6] ), 
	.B(n28), 
	.A(n33));
   NOR2X1M U88 (.Y(\ab[3][5] ), 
	.B(n28), 
	.A(n34));
   NOR2X1M U89 (.Y(\ab[3][4] ), 
	.B(n28), 
	.A(n35));
   NOR2X1M U90 (.Y(\ab[3][3] ), 
	.B(n28), 
	.A(n36));
   NOR2X1M U91 (.Y(\ab[3][2] ), 
	.B(n28), 
	.A(n37));
   NOR2X1M U92 (.Y(\ab[3][1] ), 
	.B(n28), 
	.A(n38));
   NOR2X1M U93 (.Y(\ab[3][0] ), 
	.B(n28), 
	.A(n39));
   NOR2X1M U94 (.Y(\ab[2][7] ), 
	.B(n29), 
	.A(n32));
   NOR2X1M U95 (.Y(\ab[2][6] ), 
	.B(n29), 
	.A(n33));
   NOR2X1M U96 (.Y(\ab[2][5] ), 
	.B(n29), 
	.A(n34));
   NOR2X1M U97 (.Y(\ab[2][4] ), 
	.B(n29), 
	.A(n35));
   NOR2X1M U98 (.Y(\ab[2][3] ), 
	.B(n29), 
	.A(n36));
   NOR2X1M U99 (.Y(\ab[2][2] ), 
	.B(n29), 
	.A(n37));
   NOR2X1M U100 (.Y(\ab[2][1] ), 
	.B(n29), 
	.A(n38));
   NOR2X1M U101 (.Y(\ab[2][0] ), 
	.B(n29), 
	.A(n39));
   NOR2X1M U102 (.Y(\ab[1][7] ), 
	.B(n30), 
	.A(n32));
   NOR2X1M U103 (.Y(\ab[1][6] ), 
	.B(n30), 
	.A(n33));
   NOR2X1M U104 (.Y(\ab[1][5] ), 
	.B(n30), 
	.A(n34));
   NOR2X1M U105 (.Y(\ab[1][4] ), 
	.B(n30), 
	.A(n35));
   NOR2X1M U106 (.Y(\ab[1][3] ), 
	.B(n30), 
	.A(n36));
   NOR2X1M U107 (.Y(\ab[1][2] ), 
	.B(n30), 
	.A(n37));
   NOR2X1M U108 (.Y(\ab[1][1] ), 
	.B(n30), 
	.A(n38));
   NOR2X1M U109 (.Y(\ab[1][0] ), 
	.B(n30), 
	.A(n39));
   NOR2X1M U110 (.Y(\ab[0][7] ), 
	.B(n31), 
	.A(n32));
   NOR2X1M U111 (.Y(\ab[0][6] ), 
	.B(n31), 
	.A(n33));
   NOR2X1M U112 (.Y(\ab[0][5] ), 
	.B(n31), 
	.A(n34));
   NOR2X1M U113 (.Y(\ab[0][4] ), 
	.B(n31), 
	.A(n35));
   NOR2X1M U114 (.Y(\ab[0][3] ), 
	.B(n31), 
	.A(n36));
   NOR2X1M U115 (.Y(\ab[0][2] ), 
	.B(n31), 
	.A(n37));
   NOR2X1M U116 (.Y(\ab[0][1] ), 
	.B(n31), 
	.A(n38));
   NOR2X1M U117 (.Y(PRODUCT[0]), 
	.B(n31), 
	.A(n39));
   ALU_16_bit_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_16_bit_test_1 (
	A, 
	B, 
	EN, 
	ALU_FUN, 
	clk, 
	rst, 
	ALU_OUT, 
	ALU_OUT_VLD, 
	test_si, 
	test_se);
   input [7:0] A;
   input [7:0] B;
   input EN;
   input [3:0] ALU_FUN;
   input clk;
   input rst;
   output [15:0] ALU_OUT;
   output ALU_OUT_VLD;
   input test_si;
   input test_se;

   // Internal wires
   wire FE_OFN4_n52;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N132;
   wire N157;
   wire N158;
   wire N159;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire [15:0] ALU_OUT_Comb;

   BUFX2M FE_OFC4_n52 (.Y(FE_OFN4_n52), 
	.A(n52));
   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_Comb[7]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_Comb[6]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_Comb[5]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_Comb[4]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_Comb[3]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_Comb[2]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_Comb[1]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[0]  (.SI(ALU_OUT_VLD), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_Comb[0]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_Comb[15]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_Comb[14]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_Comb[13]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_Comb[12]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_Comb[11]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_Comb[10]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_Comb[9]), 
	.CK(clk));
   SDFFRQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_Comb[8]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_VLD_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(ALU_OUT_VLD), 
	.D(EN), 
	.CK(clk));
   OAI2BB1X2M U23 (.Y(ALU_OUT_Comb[9]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N118));
   OAI2BB1X2M U24 (.Y(ALU_OUT_Comb[10]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N119));
   OAI2BB1X2M U25 (.Y(ALU_OUT_Comb[11]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N120));
   OAI2BB1X2M U26 (.Y(ALU_OUT_Comb[12]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N121));
   OAI2BB1X2M U27 (.Y(ALU_OUT_Comb[13]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N122));
   OAI2BB1X2M U28 (.Y(ALU_OUT_Comb[14]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N123));
   OAI2BB1X2M U29 (.Y(ALU_OUT_Comb[15]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N124));
   OAI2BB1X2M U30 (.Y(n64), 
	.B0(n118), 
	.A1N(n122), 
	.A0N(n157));
   OAI2BB1X2M U31 (.Y(n65), 
	.B0(n118), 
	.A1N(n116), 
	.A0N(n117));
   NOR2BX2M U32 (.Y(n54), 
	.B(n154), 
	.AN(n123));
   AND2X2M U33 (.Y(n59), 
	.B(n122), 
	.A(n116));
   NOR2BX2M U34 (.Y(n48), 
	.B(n152), 
	.AN(FE_OFN4_n52));
   AND2X2M U35 (.Y(n67), 
	.B(n122), 
	.A(n123));
   NAND2X2M U36 (.Y(n49), 
	.B(n140), 
	.A(EN));
   INVX2M U37 (.Y(n154), 
	.A(n117));
   INVX2M U38 (.Y(n152), 
	.A(EN));
   NOR2X2M U40 (.Y(n58), 
	.B(n154), 
	.A(n124));
   INVX2M U41 (.Y(n155), 
	.A(n108));
   INVX2M U42 (.Y(n157), 
	.A(n124));
   NOR3BX2M U43 (.Y(n66), 
	.C(ALU_FUN[2]), 
	.B(n156), 
	.AN(n122));
   INVX2M U44 (.Y(n137), 
	.A(B[6]));
   NOR3X2M U45 (.Y(n52), 
	.C(n156), 
	.B(ALU_FUN[2]), 
	.A(n154));
   OAI222X1M U46 (.Y(n71), 
	.C1(n143), 
	.C0(n53), 
	.B1(n73), 
	.B0(B[6]), 
	.A1(n137), 
	.A0(n72));
   AOI221XLM U47 (.Y(n73), 
	.C0(n58), 
	.B1(n142), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[6]));
   AOI221XLM U48 (.Y(n72), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[6]), 
	.A1(n142), 
	.A0(n63));
   NOR2X2M U49 (.Y(n123), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   NAND2X2M U50 (.Y(n124), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   INVX2M U51 (.Y(n153), 
	.A(ALU_FUN[0]));
   AND3X2M U52 (.Y(n63), 
	.C(ALU_FUN[3]), 
	.B(n153), 
	.A(n123));
   NAND3X2M U53 (.Y(n108), 
	.C(n116), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   INVX2M U54 (.Y(n156), 
	.A(ALU_FUN[1]));
   NAND3X2M U55 (.Y(n53), 
	.C(ALU_FUN[3]), 
	.B(n153), 
	.A(n157));
   AOI31X2M U56 (.Y(ALU_OUT_Comb[2]), 
	.B0(n152), 
	.A2(n94), 
	.A1(n93), 
	.A0(n92));
   AOI22X1M U57 (.Y(n92), 
	.B1(n54), 
	.B0(N93), 
	.A1(n67), 
	.A0(N102));
   AOI221XLM U58 (.Y(n94), 
	.C0(n95), 
	.B1(n146), 
	.B0(n58), 
	.A1(n155), 
	.A0(A[3]));
   AOI222X1M U59 (.Y(n93), 
	.C1(n66), 
	.C0(N127), 
	.B1(n59), 
	.B0(A[2]), 
	.A1(FE_OFN4_n52), 
	.A0(N111));
   AOI31X2M U60 (.Y(ALU_OUT_Comb[3]), 
	.B0(n152), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI22X1M U61 (.Y(n86), 
	.B1(n54), 
	.B0(N94), 
	.A1(n67), 
	.A0(N103));
   AOI221XLM U62 (.Y(n88), 
	.C0(n89), 
	.B1(n145), 
	.B0(n58), 
	.A1(n155), 
	.A0(A[4]));
   AOI222X1M U63 (.Y(n87), 
	.C1(n66), 
	.C0(N128), 
	.B1(n59), 
	.B0(A[3]), 
	.A1(FE_OFN4_n52), 
	.A0(N112));
   AOI31X2M U64 (.Y(ALU_OUT_Comb[4]), 
	.B0(n152), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI22X1M U65 (.Y(n80), 
	.B1(n54), 
	.B0(N95), 
	.A1(n67), 
	.A0(N104));
   AOI221XLM U66 (.Y(n82), 
	.C0(n83), 
	.B1(n144), 
	.B0(n58), 
	.A1(A[5]), 
	.A0(n155));
   AOI222X1M U67 (.Y(n81), 
	.C1(n66), 
	.C0(N129), 
	.B1(n59), 
	.B0(A[4]), 
	.A1(FE_OFN4_n52), 
	.A0(N113));
   AOI31X2M U68 (.Y(ALU_OUT_Comb[5]), 
	.B0(n152), 
	.A2(n76), 
	.A1(n75), 
	.A0(n74));
   AOI22X1M U69 (.Y(n74), 
	.B1(n54), 
	.B0(N96), 
	.A1(n67), 
	.A0(N105));
   AOI221XLM U70 (.Y(n76), 
	.C0(n77), 
	.B1(n143), 
	.B0(n58), 
	.A1(A[6]), 
	.A0(n155));
   AOI222X1M U71 (.Y(n75), 
	.C1(n66), 
	.C0(N130), 
	.B1(n59), 
	.B0(A[5]), 
	.A1(FE_OFN4_n52), 
	.A0(N114));
   AOI31X2M U72 (.Y(ALU_OUT_Comb[6]), 
	.B0(n152), 
	.A2(n70), 
	.A1(n69), 
	.A0(n68));
   AOI22X1M U73 (.Y(n68), 
	.B1(n54), 
	.B0(N97), 
	.A1(n67), 
	.A0(N106));
   AOI221XLM U74 (.Y(n70), 
	.C0(n71), 
	.B1(n142), 
	.B0(n58), 
	.A1(A[7]), 
	.A0(n155));
   AOI222X1M U75 (.Y(n69), 
	.C1(n66), 
	.C0(N131), 
	.B1(A[6]), 
	.B0(n59), 
	.A1(FE_OFN4_n52), 
	.A0(N115));
   AOI31X2M U76 (.Y(ALU_OUT_Comb[7]), 
	.B0(n152), 
	.A2(n57), 
	.A1(n56), 
	.A0(n55));
   AOI22X1M U77 (.Y(n56), 
	.B1(FE_OFN4_n52), 
	.B0(N116), 
	.A1(n66), 
	.A0(N132));
   AOI22X1M U78 (.Y(n55), 
	.B1(n54), 
	.B0(N98), 
	.A1(n67), 
	.A0(N107));
   AOI221XLM U79 (.Y(n57), 
	.C0(n60), 
	.B1(A[7]), 
	.B0(n59), 
	.A1(n141), 
	.A0(n58));
   AOI31X2M U80 (.Y(ALU_OUT_Comb[0]), 
	.B0(n152), 
	.A2(n112), 
	.A1(n111), 
	.A0(n110));
   AOI22X1M U81 (.Y(n110), 
	.B1(n54), 
	.B0(N91), 
	.A1(n67), 
	.A0(N100));
   AOI211X2M U82 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n148), 
	.A0(n58));
   AOI222X1M U83 (.Y(n111), 
	.C1(n66), 
	.C0(N125), 
	.B1(n59), 
	.B0(A[0]), 
	.A1(FE_OFN4_n52), 
	.A0(N109));
   AOI31X2M U84 (.Y(ALU_OUT_Comb[1]), 
	.B0(n152), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI211X2M U85 (.Y(n100), 
	.C0(n102), 
	.B0(n101), 
	.A1(n155), 
	.A0(A[2]));
   AOI222X1M U86 (.Y(n99), 
	.C1(n59), 
	.C0(A[1]), 
	.B1(n147), 
	.B0(n58), 
	.A1(n66), 
	.A0(N126));
   AOI222X1M U87 (.Y(n98), 
	.C1(n67), 
	.C0(N101), 
	.B1(FE_OFN4_n52), 
	.B0(N110), 
	.A1(n54), 
	.A0(N92));
   NOR2X2M U88 (.Y(n117), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NOR2X2M U89 (.Y(n122), 
	.B(ALU_FUN[3]), 
	.A(n153));
   NAND3X2M U90 (.Y(n118), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n123));
   INVX2M U91 (.Y(n140), 
	.A(n109));
   AOI211X2M U92 (.Y(n109), 
	.C0(n64), 
	.B0(n58), 
	.A1(n67), 
	.A0(N108));
   AOI21X2M U93 (.Y(ALU_OUT_Comb[8]), 
	.B0(n152), 
	.A1(n51), 
	.A0(n50));
   AOI21X2M U94 (.Y(n50), 
	.B0(n140), 
	.A1(n54), 
	.A0(N99));
   AOI2BB2XLM U95 (.Y(n51), 
	.B1(FE_OFN4_n52), 
	.B0(N117), 
	.A1N(n53), 
	.A0N(n141));
   AND2X2M U96 (.Y(n116), 
	.B(n156), 
	.A(ALU_FUN[2]));
   AND4X2M U97 (.Y(n107), 
	.D(n153), 
	.C(ALU_FUN[3]), 
	.B(n116), 
	.A(N159));
   INVX2M U98 (.Y(n147), 
	.A(A[1]));
   INVX2M U99 (.Y(n148), 
	.A(A[0]));
   INVX2M U100 (.Y(n142), 
	.A(A[6]));
   INVX2M U101 (.Y(n141), 
	.A(A[7]));
   INVX2M U102 (.Y(n145), 
	.A(A[3]));
   INVX2M U103 (.Y(n146), 
	.A(A[2]));
   INVX2M U104 (.Y(n143), 
	.A(A[5]));
   INVX2M U105 (.Y(n144), 
	.A(A[4]));
   OAI222X1M U106 (.Y(n95), 
	.C1(n147), 
	.C0(n53), 
	.B1(n97), 
	.B0(B[2]), 
	.A1(n135), 
	.A0(n96));
   AOI221XLM U107 (.Y(n97), 
	.C0(n58), 
	.B1(n146), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[2]));
   AOI221XLM U108 (.Y(n96), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[2]), 
	.A1(n146), 
	.A0(n63));
   OAI222X1M U109 (.Y(n89), 
	.C1(n146), 
	.C0(n53), 
	.B1(n91), 
	.B0(B[3]), 
	.A1(n136), 
	.A0(n90));
   AOI221XLM U110 (.Y(n91), 
	.C0(n58), 
	.B1(n145), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[3]));
   AOI221XLM U111 (.Y(n90), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[3]), 
	.A1(n145), 
	.A0(n63));
   OAI222X1M U112 (.Y(n83), 
	.C1(n145), 
	.C0(n53), 
	.B1(n85), 
	.B0(B[4]), 
	.A1(n151), 
	.A0(n84));
   INVX2M U113 (.Y(n151), 
	.A(B[4]));
   AOI221XLM U114 (.Y(n85), 
	.C0(n58), 
	.B1(n144), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[4]));
   AOI221XLM U115 (.Y(n84), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[4]), 
	.A1(n144), 
	.A0(n63));
   OAI222X1M U116 (.Y(n77), 
	.C1(n144), 
	.C0(n53), 
	.B1(n79), 
	.B0(B[5]), 
	.A1(n150), 
	.A0(n78));
   INVX2M U117 (.Y(n150), 
	.A(B[5]));
   AOI221XLM U118 (.Y(n79), 
	.C0(n58), 
	.B1(n143), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[5]));
   AOI221XLM U119 (.Y(n78), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[5]), 
	.A1(n143), 
	.A0(n63));
   OAI222X1M U120 (.Y(n60), 
	.C1(n142), 
	.C0(n53), 
	.B1(n62), 
	.B0(B[7]), 
	.A1(n149), 
	.A0(n61));
   INVX2M U121 (.Y(n149), 
	.A(B[7]));
   AOI221XLM U122 (.Y(n62), 
	.C0(n58), 
	.B1(n141), 
	.B0(n64), 
	.A1(A[7]), 
	.A0(n63));
   AOI221XLM U123 (.Y(n61), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[7]), 
	.A1(n141), 
	.A0(n63));
   INVX2M U124 (.Y(n138), 
	.A(n31));
   OAI2B2X1M U125 (.Y(n114), 
	.B1(n147), 
	.B0(n108), 
	.A1N(B[0]), 
	.A0(n115));
   AOI221XLM U126 (.Y(n115), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[0]), 
	.A1(n148), 
	.A0(n63));
   OAI2B2X1M U127 (.Y(n102), 
	.B1(n148), 
	.B0(n53), 
	.A1N(B[1]), 
	.A0(n103));
   AOI221XLM U128 (.Y(n103), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[1]), 
	.A1(n147), 
	.A0(n63));
   INVX2M U129 (.Y(n139), 
	.A(n42));
   OAI21X2M U130 (.Y(n113), 
	.B0(n120), 
	.A1(n119), 
	.A0(B[0]));
   AOI31X2M U131 (.Y(n120), 
	.B0(n107), 
	.A2(n121), 
	.A1(ALU_FUN[3]), 
	.A0(N157));
   AOI221XLM U132 (.Y(n119), 
	.C0(n58), 
	.B1(n148), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[0]));
   NOR3X2M U133 (.Y(n121), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n156));
   OAI21X2M U134 (.Y(n101), 
	.B0(n105), 
	.A1(n104), 
	.A0(B[1]));
   AOI31X2M U135 (.Y(n105), 
	.B0(n107), 
	.A2(n106), 
	.A1(ALU_FUN[3]), 
	.A0(N158));
   AOI221XLM U136 (.Y(n104), 
	.C0(n58), 
	.B1(n147), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[1]));
   NOR3X2M U137 (.Y(n106), 
	.C(n156), 
	.B(ALU_FUN[2]), 
	.A(n153));
   INVX2M U147 (.Y(n134), 
	.A(B[0]));
   INVX2M U148 (.Y(n135), 
	.A(B[2]));
   INVX2M U149 (.Y(n136), 
	.A(B[3]));
   NOR2X1M U150 (.Y(n130), 
	.B(B[7]), 
	.A(n141));
   NAND2BX1M U151 (.Y(n46), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U152 (.Y(n35), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U153 (.Y(n125), 
	.B(n35), 
	.A(n46));
   NOR2X1M U154 (.Y(n43), 
	.B(A[3]), 
	.A(n136));
   NOR2X1M U155 (.Y(n34), 
	.B(A[2]), 
	.A(n135));
   NOR2X1M U156 (.Y(n31), 
	.B(A[0]), 
	.A(n134));
   CLKNAND2X2M U157 (.Y(n45), 
	.B(n135), 
	.A(A[2]));
   NAND2BX1M U158 (.Y(n40), 
	.B(n45), 
	.AN(n34));
   AOI21X1M U159 (.Y(n32), 
	.B0(B[1]), 
	.A1(n147), 
	.A0(n31));
   AOI211X1M U160 (.Y(n33), 
	.C0(n32), 
	.B0(n40), 
	.A1(n138), 
	.A0(A[1]));
   CLKNAND2X2M U161 (.Y(n44), 
	.B(n136), 
	.A(A[3]));
   OAI31X1M U162 (.Y(n36), 
	.B0(n44), 
	.A2(n33), 
	.A1(n34), 
	.A0(n43));
   NAND2BX1M U163 (.Y(n128), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U164 (.Y(n37), 
	.C0(n128), 
	.B0(n35), 
	.A1(n36), 
	.A0(n125));
   NAND2BX1M U165 (.Y(n47), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U166 (.Y(n127), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U167 (.Y(n38), 
	.B1(n142), 
	.B0(B[6]), 
	.A2(n127), 
	.A1(n47), 
	.A0(n37));
   CLKNAND2X2M U168 (.Y(n131), 
	.B(n141), 
	.A(B[7]));
   OAI21X1M U169 (.Y(N159), 
	.B0(n131), 
	.A1(n38), 
	.A0(n130));
   CLKNAND2X2M U170 (.Y(n41), 
	.B(n134), 
	.A(A[0]));
   OA21X1M U171 (.Y(n39), 
	.B0(B[1]), 
	.A1(n147), 
	.A0(n41));
   AOI211X1M U172 (.Y(n42), 
	.C0(n39), 
	.B0(n40), 
	.A1(n147), 
	.A0(n41));
   AOI31X1M U173 (.Y(n126), 
	.B0(n43), 
	.A2(n44), 
	.A1(n45), 
	.A0(n139));
   OAI2B11X1M U174 (.Y(n129), 
	.C0(n46), 
	.B0(n47), 
	.A1N(n126), 
	.A0(n125));
   AOI32X1M U175 (.Y(n132), 
	.B1(n137), 
	.B0(A[6]), 
	.A2(n127), 
	.A1(n128), 
	.A0(n129));
   AOI2B1X1M U176 (.Y(n133), 
	.B0(n130), 
	.A1N(n132), 
	.A0(n131));
   CLKINVX1M U177 (.Y(N158), 
	.A(n133));
   NOR2X1M U178 (.Y(N157), 
	.B(N158), 
	.A(N159));
   ALU_16_bit_DW_div_uns_0 div_60 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N132,
		N131,
		N130,
		N129,
		N128,
		N127,
		N126,
		N125 }), 
	.n135(n135), 
	.n136(n136), 
	.n149(n149), 
	.n150(n150), 
	.n151(n151), 
	.n148(n148), 
	.n147(n147), 
	.n146(n146), 
	.n145(n145), 
	.n143(n143), 
	.n142(n142), 
	.n137(n137), 
	.n144(n144), 
	.n134(n134));
   ALU_16_bit_DW01_sub_0 sub_52 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101,
		N100 }), 
	.n134(n134), 
	.n135(n135), 
	.n136(n136), 
	.n149(n149), 
	.n150(n150), 
	.n151(n151), 
	.n148(n148), 
	.n137(n137));
   ALU_16_bit_DW01_add_0 add_48 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91 }));
   ALU_16_bit_DW02_mult_0 mult_56 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N124,
		N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109 }), 
	.n134(n134), 
	.n135(n135), 
	.n136(n136), 
	.n149(n149), 
	.n150(n150), 
	.n151(n151), 
	.n148(n148), 
	.n147(n147), 
	.n146(n146), 
	.n145(n145), 
	.n143(n143), 
	.n142(n142), 
	.n141(n141), 
	.n137(n137), 
	.n144(n144));
endmodule

module CLK_GATE (
	clk, 
	clk_en, 
	test_en, 
	gated_clk);
   input clk;
   input clk_en;
   input test_en;
   output gated_clk;

   // Internal wires
   wire _0_net_;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(gated_clk), 
	.E(_0_net_), 
	.CK(clk));
   OR2X2M U1 (.Y(_0_net_), 
	.B(test_en), 
	.A(clk_en));
endmodule

module SYS_TOP (
	scan_clk, 
	scan_rst, 
	test_mode, 
	SE, 
	SI, 
	SO, 
	RST_N, 
	UART_CLK, 
	REF_CLK, 
	UART_RX_IN, 
	UART_TX_O, 
	parity_error, 
	framing_error);
   input scan_clk;
   input scan_rst;
   input test_mode;
   input SE;
   input [2:0] SI;
   output [2:0] SO;
   input RST_N;
   input UART_CLK;
   input REF_CLK;
   input UART_RX_IN;
   output UART_TX_O;
   output parity_error;
   output framing_error;

   // Internal wires
   wire FE_PHN31_DFT_UART_RST__Exclude_0_NET;
   wire FE_OCPN26_UART_Config_6_;
   wire FE_OCPN25_UART_Config_6_;
   wire FE_OFN23_DFT_UART_RST__Exclude_0_NET;
   wire FE_OFN22_DFT_UART_RST__Exclude_0_NET;
   wire FE_PHN19_SYNC_UART_RST__Exclude_0_NET;
   wire FE_PHN18_SYNC_UART_RST__Exclude_0_NET;
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N1;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N1;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire DFT_UART_CLK__L8_N3;
   wire DFT_UART_CLK__L8_N2;
   wire DFT_UART_CLK__L8_N1;
   wire DFT_UART_CLK__L8_N0;
   wire DFT_UART_CLK__L7_N1;
   wire DFT_UART_CLK__L7_N0;
   wire DFT_UART_CLK__L6_N3;
   wire DFT_UART_CLK__L6_N2;
   wire DFT_UART_CLK__L6_N1;
   wire DFT_UART_CLK__L6_N0;
   wire DFT_UART_CLK__L5_N2;
   wire DFT_UART_CLK__L5_N1;
   wire DFT_UART_CLK__L5_N0;
   wire DFT_UART_CLK__L4_N2;
   wire DFT_UART_CLK__L4_N1;
   wire DFT_UART_CLK__L4_N0;
   wire DFT_UART_CLK__L3_N2;
   wire DFT_UART_CLK__L3_N1;
   wire DFT_UART_CLK__L3_N0;
   wire DFT_UART_CLK__L2_N3;
   wire DFT_UART_CLK__L2_N2;
   wire DFT_UART_CLK__L2_N1;
   wire DFT_UART_CLK__L2_N0;
   wire DFT_UART_CLK__L1_N2;
   wire DFT_UART_CLK__L1_N1;
   wire DFT_UART_CLK__L1_N0;
   wire SYNC_UART_RST__Exclude_0_NET;
   wire DFT_UART_RST__Exclude_0_NET;
   wire DFT_UART_TX_CLK__L1_N0;
   wire DFT_UART_RX_CLK__L1_N0;
   wire DFT_REF_CLK__L2_N1;
   wire DFT_REF_CLK__L2_N0;
   wire DFT_REF_CLK__L1_N0;
   wire FE_OFN0_DFT_REF_RST;
   wire DFT_UART_CLK;
   wire UART_TX_CLK;
   wire DFT_UART_TX_CLK;
   wire UART_RX_CLK;
   wire DFT_UART_RX_CLK;
   wire DFT_REF_CLK;
   wire DFT_RST;
   wire SYNC_UART_RST;
   wire DFT_UART_RST;
   wire SYNC_REF_RST;
   wire DFT_REF_RST;
   wire UART_RX_V_OUT;
   wire UART_RX_V_SYNC;
   wire UART_TX_VLD;
   wire UART_TX_Busy_PULSE;
   wire FIFO_FULL;
   wire UART_TX_V_SYNC;
   wire UART_TX_Busy;
   wire RF_RdData_VLD;
   wire RF_wr_done;
   wire RF_WrEn;
   wire RF_RdEn;
   wire ALU_EN;
   wire ALU_OUT_VLD;
   wire CLKG_EN;
   wire ALU_CLK;
   wire n7;
   wire n8;
   wire n9;
   wire n11;
   wire n12;
   wire n13;
   wire n16;
   wire n17;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire [7:0] UART_RX_OUT;
   wire [7:0] UART_RX_SYNC;
   wire [7:0] UART_TX_IN;
   wire [7:0] UART_TX_SYNC;
   wire [7:0] DIV_RATIO;
   wire [7:0] UART_Config;
   wire [7:0] DIV_RATIO_RX;
   wire [7:0] RF_RdData;
   wire [3:0] RF_Address;
   wire [7:0] RF_WrData;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [7:0] Operand_A;
   wire [7:0] Operand_B;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   DLY4X1M FE_PHC31_DFT_UART_RST__Exclude_0_NET (.Y(DFT_UART_RST__Exclude_0_NET), 
	.A(FE_PHN31_DFT_UART_RST__Exclude_0_NET));
   BUFX12M FE_OCPC26_UART_Config_6_ (.Y(FE_OCPN26_UART_Config_6_), 
	.A(FE_OCPN25_UART_Config_6_));
   BUFX2M FE_OCPC25_UART_Config_6_ (.Y(FE_OCPN25_UART_Config_6_), 
	.A(UART_Config[6]));
   CLKBUFX8M FE_OFC23_DFT_UART_RST__Exclude_0_NET (.Y(FE_OFN23_DFT_UART_RST__Exclude_0_NET), 
	.A(FE_OFN22_DFT_UART_RST__Exclude_0_NET));
   BUFX4M FE_OFC22_DFT_UART_RST__Exclude_0_NET (.Y(FE_OFN22_DFT_UART_RST__Exclude_0_NET), 
	.A(DFT_UART_RST__Exclude_0_NET));
   DLY4X1M FE_PHC19_SYNC_UART_RST__Exclude_0_NET (.Y(FE_PHN18_SYNC_UART_RST__Exclude_0_NET), 
	.A(FE_PHN19_SYNC_UART_RST__Exclude_0_NET));
   DLY4X1M FE_PHC18_SYNC_UART_RST__Exclude_0_NET (.Y(SYNC_UART_RST__Exclude_0_NET), 
	.A(FE_PHN18_SYNC_UART_RST__Exclude_0_NET));
   CLKINVX8M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX8M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   INVX2M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N1));
   CLKBUFX1M scan_clk__L9_I1 (.Y(scan_clk__L9_N1), 
	.A(scan_clk__L8_N0));
   INVX2M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   INVXLM scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   INVXLM scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   INVXLM scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   INVXLM scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   INVXLM scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   INVXLM scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N1));
   BUFX3M scan_clk__L2_I1 (.Y(scan_clk__L2_N1), 
	.A(scan_clk__L1_N0));
   INVX2M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   INVX4M DFT_UART_CLK__L8_I3 (.Y(DFT_UART_CLK__L8_N3), 
	.A(DFT_UART_CLK__L7_N1));
   INVX4M DFT_UART_CLK__L8_I2 (.Y(DFT_UART_CLK__L8_N2), 
	.A(DFT_UART_CLK__L7_N1));
   INVX4M DFT_UART_CLK__L8_I1 (.Y(DFT_UART_CLK__L8_N1), 
	.A(DFT_UART_CLK__L7_N0));
   INVX4M DFT_UART_CLK__L8_I0 (.Y(DFT_UART_CLK__L8_N0), 
	.A(DFT_UART_CLK__L7_N0));
   CLKINVX32M DFT_UART_CLK__L7_I1 (.Y(DFT_UART_CLK__L7_N1), 
	.A(DFT_UART_CLK__L6_N3));
   CLKINVX32M DFT_UART_CLK__L7_I0 (.Y(DFT_UART_CLK__L7_N0), 
	.A(DFT_UART_CLK__L6_N0));
   CLKBUFX40M DFT_UART_CLK__L6_I3 (.Y(DFT_UART_CLK__L6_N3), 
	.A(DFT_UART_CLK__L5_N2));
   INVX4M DFT_UART_CLK__L6_I2 (.Y(DFT_UART_CLK__L6_N2), 
	.A(DFT_UART_CLK__L5_N1));
   INVX4M DFT_UART_CLK__L6_I1 (.Y(DFT_UART_CLK__L6_N1), 
	.A(DFT_UART_CLK__L5_N1));
   CLKINVX40M DFT_UART_CLK__L6_I0 (.Y(DFT_UART_CLK__L6_N0), 
	.A(DFT_UART_CLK__L5_N0));
   CLKBUFX1M DFT_UART_CLK__L5_I2 (.Y(DFT_UART_CLK__L5_N2), 
	.A(DFT_UART_CLK__L4_N2));
   CLKINVX32M DFT_UART_CLK__L5_I1 (.Y(DFT_UART_CLK__L5_N1), 
	.A(DFT_UART_CLK__L4_N1));
   CLKBUFX40M DFT_UART_CLK__L5_I0 (.Y(DFT_UART_CLK__L5_N0), 
	.A(DFT_UART_CLK__L4_N0));
   CLKBUFX1M DFT_UART_CLK__L4_I2 (.Y(DFT_UART_CLK__L4_N2), 
	.A(DFT_UART_CLK__L3_N2));
   CLKBUFX40M DFT_UART_CLK__L4_I1 (.Y(DFT_UART_CLK__L4_N1), 
	.A(DFT_UART_CLK__L3_N1));
   CLKBUFX40M DFT_UART_CLK__L4_I0 (.Y(DFT_UART_CLK__L4_N0), 
	.A(DFT_UART_CLK__L3_N0));
   CLKBUFX1M DFT_UART_CLK__L3_I2 (.Y(DFT_UART_CLK__L3_N2), 
	.A(DFT_UART_CLK__L2_N3));
   INVXLM DFT_UART_CLK__L3_I1 (.Y(DFT_UART_CLK__L3_N1), 
	.A(DFT_UART_CLK__L2_N2));
   CLKBUFX40M DFT_UART_CLK__L3_I0 (.Y(DFT_UART_CLK__L3_N0), 
	.A(DFT_UART_CLK__L2_N1));
   CLKBUFX1M DFT_UART_CLK__L2_I3 (.Y(DFT_UART_CLK__L2_N3), 
	.A(DFT_UART_CLK__L1_N2));
   INVXLM DFT_UART_CLK__L2_I2 (.Y(DFT_UART_CLK__L2_N2), 
	.A(DFT_UART_CLK__L1_N1));
   CLKBUFX40M DFT_UART_CLK__L2_I1 (.Y(DFT_UART_CLK__L2_N1), 
	.A(DFT_UART_CLK__L1_N0));
   INVX4M DFT_UART_CLK__L2_I0 (.Y(DFT_UART_CLK__L2_N0), 
	.A(DFT_UART_CLK__L1_N0));
   CLKBUFX1M DFT_UART_CLK__L1_I2 (.Y(DFT_UART_CLK__L1_N2), 
	.A(DFT_UART_CLK));
   CLKBUFX1M DFT_UART_CLK__L1_I1 (.Y(DFT_UART_CLK__L1_N1), 
	.A(DFT_UART_CLK));
   CLKINVX24M DFT_UART_CLK__L1_I0 (.Y(DFT_UART_CLK__L1_N0), 
	.A(DFT_UART_CLK));
   CLKBUFX1M SYNC_UART_RST__Exclude_0 (.Y(FE_PHN19_SYNC_UART_RST__Exclude_0_NET), 
	.A(SYNC_UART_RST));
   CLKBUFX1M DFT_UART_RST__Exclude_0 (.Y(FE_PHN31_DFT_UART_RST__Exclude_0_NET), 
	.A(DFT_UART_RST));
   BUFX32M DFT_UART_TX_CLK__L1_I0 (.Y(DFT_UART_TX_CLK__L1_N0), 
	.A(DFT_UART_TX_CLK));
   CLKBUFX40M DFT_UART_RX_CLK__L1_I0 (.Y(DFT_UART_RX_CLK__L1_N0), 
	.A(DFT_UART_RX_CLK));
   CLKINVX40M DFT_REF_CLK__L2_I1 (.Y(DFT_REF_CLK__L2_N1), 
	.A(DFT_REF_CLK__L1_N0));
   CLKINVX40M DFT_REF_CLK__L2_I0 (.Y(DFT_REF_CLK__L2_N0), 
	.A(DFT_REF_CLK__L1_N0));
   CLKINVX8M DFT_REF_CLK__L1_I0 (.Y(DFT_REF_CLK__L1_N0), 
	.A(DFT_REF_CLK));
   BUFX8M FE_OFC0_DFT_REF_RST (.Y(FE_OFN0_DFT_REF_RST), 
	.A(DFT_REF_RST));
   DLY1X4M U15 (.Y(n22), 
	.A(n25));
   DLY1X1M U16 (.Y(n23), 
	.A(n28));
   INVXLM U17 (.Y(n24), 
	.A(n36));
   INVXLM U18 (.Y(n25), 
	.A(n24));
   CLKINVX2M U19 (.Y(n26), 
	.A(n24));
   INVXLM U20 (.Y(n27), 
	.A(n38));
   INVXLM U21 (.Y(n28), 
	.A(n27));
   INVXLM U22 (.Y(n29), 
	.A(n27));
   DLY1X4M U23 (.Y(n30), 
	.A(n32));
   INVXLM U24 (.Y(n31), 
	.A(n35));
   INVXLM U25 (.Y(n32), 
	.A(n31));
   CLKINVX2M U26 (.Y(n33), 
	.A(n31));
   CLKINVX2M U27 (.Y(n34), 
	.A(SE));
   CLKINVX2M U28 (.Y(n35), 
	.A(n34));
   INVXLM U29 (.Y(n36), 
	.A(n34));
   CLKINVX2M U30 (.Y(n37), 
	.A(n34));
   CLKINVX2M U31 (.Y(n38), 
	.A(n34));
   mux2X1_1 u_uart_clk_mux (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(test_mode), 
	.OUT(DFT_UART_CLK));
   mux2X1_4 u_uart_TX_clk_mux (.IN_0(UART_TX_CLK), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(test_mode), 
	.OUT(DFT_UART_TX_CLK));
   mux2X1_3 u_uart_RX_clk_mux (.IN_0(UART_RX_CLK), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(test_mode), 
	.OUT(DFT_UART_RX_CLK));
   mux2X1_2 u_ref_clk_mux (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L9_N0), 
	.SEL(test_mode), 
	.OUT(DFT_REF_CLK));
   mux2X1_0 u_rst_mux (.IN_0(RST_N), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(DFT_RST));
   mux2X1_6 u_uart_rst_mux (.IN_0(SYNC_UART_RST), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(DFT_UART_RST));
   mux2X1_5 u_ref_rst_mux (.IN_0(SYNC_REF_RST), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(DFT_REF_RST));
   RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC (.clk(DFT_UART_CLK__L2_N0), 
	.rst(DFT_RST), 
	.sync_rst(SYNC_UART_RST), 
	.test_si(n16), 
	.test_se(n33), 
	.DFT_UART_CLK__L8_N3(DFT_UART_CLK__L8_N3));
   RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC (.clk(DFT_REF_CLK__L2_N1), 
	.rst(DFT_RST), 
	.sync_rst(SYNC_REF_RST), 
	.test_si(n7), 
	.test_se(n26));
   DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_ref_sync (.clk(DFT_REF_CLK__L2_N1), 
	.rst(FE_OFN0_DFT_REF_RST), 
	.unsync_bus({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.bus_enable(UART_RX_V_OUT), 
	.sync_bus({ UART_RX_SYNC[7],
		UART_RX_SYNC[6],
		UART_RX_SYNC[5],
		UART_RX_SYNC[4],
		UART_RX_SYNC[3],
		UART_RX_SYNC[2],
		UART_RX_SYNC[1],
		UART_RX_SYNC[0] }), 
	.enable_pulse(UART_RX_V_SYNC), 
	.test_si(n9), 
	.test_so(n8), 
	.test_se(n33));
   ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3_test_1 U0_UART_FIFO (.w_clk(DFT_REF_CLK__L2_N1), 
	.w_rst(DFT_REF_RST), 
	.w_inc(UART_TX_VLD), 
	.r_clk(DFT_UART_TX_CLK__L1_N0), 
	.r_rst(FE_OFN22_DFT_UART_RST__Exclude_0_NET), 
	.r_inc(UART_TX_Busy_PULSE), 
	.wr_data({ UART_TX_IN[7],
		UART_TX_IN[6],
		UART_TX_IN[5],
		UART_TX_IN[4],
		UART_TX_IN[3],
		UART_TX_IN[2],
		UART_TX_IN[1],
		UART_TX_IN[0] }), 
	.rd_data({ UART_TX_SYNC[7],
		UART_TX_SYNC[6],
		UART_TX_SYNC[5],
		UART_TX_SYNC[4],
		UART_TX_SYNC[3],
		UART_TX_SYNC[2],
		UART_TX_SYNC[1],
		UART_TX_SYNC[0] }), 
	.full(FIFO_FULL), 
	.empty(UART_TX_V_SYNC), 
	.test_si2(SI[0]), 
	.test_si1(n12), 
	.test_so2(n9), 
	.test_so1(n11), 
	.test_se(n30), 
	.FE_OFN0_DFT_REF_RST(FE_OFN0_DFT_REF_RST), 
	.FE_OFN23_DFT_UART_RST__Exclude_0_NET(FE_OFN23_DFT_UART_RST__Exclude_0_NET));
   PULSE_GEN_test_1 U0_PULSE_GEN (.clk(DFT_UART_TX_CLK__L1_N0), 
	.rst(FE_OFN23_DFT_UART_RST__Exclude_0_NET), 
	.in_sig(UART_TX_Busy), 
	.pulse_sig(UART_TX_Busy_PULSE), 
	.test_si(n17), 
	.test_so(n16), 
	.test_se(n29));
   CLK_DIV_test_0 U0_ClkDiv (.i_ref_clk(DFT_UART_CLK__L6_N1), 
	.i_rst_n(DFT_UART_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.o_div_clk(UART_TX_CLK), 
	.test_si(ALU_OUT[15]), 
	.test_so(n17), 
	.test_se(n35), 
	.DFT_UART_RST__Exclude_0_NET(FE_OFN23_DFT_UART_RST__Exclude_0_NET), 
	.DFT_UART_CLK__L8_N1(DFT_UART_CLK__L8_N1), 
	.DFT_UART_CLK__L8_N2(DFT_UART_CLK__L8_N2));
   CLKDIV_MUX U0_CLKDIV_MUX (.in({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.out({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		DIV_RATIO_RX[3],
		DIV_RATIO_RX[2],
		DIV_RATIO_RX[1],
		DIV_RATIO_RX[0] }));
   CLK_DIV_test_1 U1_ClkDiv (.i_ref_clk(DFT_UART_CLK__L6_N2), 
	.i_rst_n(DFT_UART_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		DIV_RATIO_RX[3],
		DIV_RATIO_RX[2],
		DIV_RATIO_RX[1],
		DIV_RATIO_RX[0] }), 
	.o_div_clk(UART_RX_CLK), 
	.test_si(n8), 
	.test_so(n7), 
	.test_se(n26), 
	.DFT_UART_RST__Exclude_0_NET(FE_OFN23_DFT_UART_RST__Exclude_0_NET), 
	.DFT_UART_CLK__L8_N0(DFT_UART_CLK__L8_N0), 
	.DFT_UART_CLK__L8_N3(DFT_UART_CLK__L8_N3));
   UART_test_1 U0_UART (.tx_clk(DFT_UART_TX_CLK__L1_N0), 
	.rx_clk(DFT_UART_RX_CLK__L1_N0), 
	.rst(FE_OFN22_DFT_UART_RST__Exclude_0_NET), 
	.tx_in_v(UART_TX_V_SYNC), 
	.tx_in_p({ UART_TX_SYNC[7],
		UART_TX_SYNC[6],
		UART_TX_SYNC[5],
		UART_TX_SYNC[4],
		UART_TX_SYNC[3],
		UART_TX_SYNC[2],
		UART_TX_SYNC[1],
		UART_TX_SYNC[0] }), 
	.prescale({ UART_Config[7],
		FE_OCPN26_UART_Config_6_,
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.rx_in_s(UART_RX_IN), 
	.par_en(UART_Config[0]), 
	.par_typ(UART_Config[1]), 
	.tx_out_s(SO[1]), 
	.busy(UART_TX_Busy), 
	.rx_out_p({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.rx_out_v(UART_RX_V_OUT), 
	.parity_error(parity_error), 
	.stop_error(framing_error), 
	.test_si2(n11), 
	.test_si1(n13), 
	.test_so1(n12), 
	.test_se(n22), 
	.FE_OFN23_DFT_UART_RST__Exclude_0_NET(FE_OFN23_DFT_UART_RST__Exclude_0_NET));
   SYS_CTRL_alu_data8_fun_width4_frame_data8_addr_bits4_test_1 U0_SYS_CTRL (.clk(DFT_REF_CLK__L2_N1), 
	.rst(FE_OFN0_DFT_REF_RST), 
	.alu_out({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.out_vld(ALU_OUT_VLD), 
	.rddata({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.rddata_vld(RF_RdData_VLD), 
	.wr_done(RF_wr_done), 
	.rx_p_data({ UART_RX_SYNC[7],
		UART_RX_SYNC[6],
		UART_RX_SYNC[5],
		UART_RX_SYNC[4],
		UART_RX_SYNC[3],
		UART_RX_SYNC[2],
		UART_RX_SYNC[1],
		UART_RX_SYNC[0] }), 
	.rx_d_vld(UART_RX_V_SYNC), 
	.fifo_full(FIFO_FULL), 
	.alu_fun({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.alu_en(ALU_EN), 
	.clk_en(CLKG_EN), 
	.address({ RF_Address[3],
		RF_Address[2],
		RF_Address[1],
		RF_Address[0] }), 
	.wr_data({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.wr_en(RF_WrEn), 
	.rd_en(RF_RdEn), 
	.tx_p_data({ UART_TX_IN[7],
		UART_TX_IN[6],
		UART_TX_IN[5],
		UART_TX_IN[4],
		UART_TX_IN[3],
		UART_TX_IN[2],
		UART_TX_IN[1],
		UART_TX_IN[0] }), 
	.tx_d_vld(UART_TX_VLD), 
	.test_so(n13), 
	.test_se(n37));
   Register_File_8_x_16_test_1 U0_RegFile (.WrEn(RF_WrEn), 
	.RdEn(RF_RdEn), 
	.CLK(DFT_REF_CLK__L2_N1), 
	.RST(FE_OFN0_DFT_REF_RST), 
	.address({ RF_Address[3],
		RF_Address[2],
		RF_Address[1],
		RF_Address[0] }), 
	.WrData({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RdData_VLD(RF_RdData_VLD), 
	.wr_done(RF_wr_done), 
	.REG0({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.REG1({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.REG2({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2],
		UART_Config[1],
		UART_Config[0] }), 
	.REG3({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.test_si2(SI[1]), 
	.test_si1(SYNC_UART_RST__Exclude_0_NET), 
	.test_so1(SO[2]), 
	.test_se(n23), 
	.FE_OCPN26_UART_Config_6_(FE_OCPN26_UART_Config_6_));
   ALU_16_bit_test_1 U0_ALU (.A({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.B({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.clk(ALU_CLK), 
	.rst(FE_OFN0_DFT_REF_RST), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.ALU_OUT_VLD(ALU_OUT_VLD), 
	.test_si(SI[2]), 
	.test_se(n38));
   CLK_GATE U0_CLK_GATE (.clk(DFT_REF_CLK__L2_N0), 
	.clk_en(CLKG_EN), 
	.test_en(test_mode), 
	.gated_clk(ALU_CLK));
   BUFX2M U12 (.Y(UART_TX_O), 
	.A(SO[1]));
   BUFX4M U14 (.Y(SO[0]), 
	.A(SYNC_REF_RST));
endmodule

