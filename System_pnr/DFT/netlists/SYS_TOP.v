/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep 30 21:11:52 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0, n1, n2;
  assign N0 = SEL;

  MX2X2M U1 ( .A(n2), .B(IN_1), .S0(N0), .Y(OUT) );
  INVXLM U2 ( .A(IN_0), .Y(n1) );
  INVXLM U3 ( .A(n1), .Y(n2) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( clk, rst, sync_rst, test_si, test_se );
  input clk, rst, test_si, test_se;
  output sync_rst;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(clk), .RN(rst), .Q(sync_rst) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(\sync_reg[0] ) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( clk, rst, sync_rst, test_si, test_se );
  input clk, rst, test_si, test_se;
  output sync_rst;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(\sync_reg[0] ) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(clk), .RN(rst), .Q(sync_rst) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 ( clk, rst, unsync_bus, 
        bus_enable, sync_bus, enable_pulse, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input clk, rst, bus_enable, test_si, test_se;
  output enable_pulse, test_so;
  wire   pulse_flop, n1, n4, n6, n8, n10, n12, n14, n16, n18, n23;
  wire   [1:0] sync_reg;
  assign test_so = sync_reg[1];

  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[6]) );
  SDFFRQX2M pulse_flop_reg ( .D(sync_reg[1]), .SI(enable_pulse), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(pulse_flop) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(pulse_flop), .SE(test_se), .CK(clk), .RN(rst), .Q(sync_bus[0]) );
  SDFFRQX2M enable_pulse_reg ( .D(n23), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(enable_pulse) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(sync_reg[0]) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(sync_reg[0]), .SI(sync_reg[0]), .SE(test_se), .CK(clk), .RN(rst), .Q(sync_reg[1]) );
  INVX2M U4 ( .A(n1), .Y(n23) );
  NAND2BX2M U5 ( .AN(pulse_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U6 ( .A0(unsync_bus[0]), .A1(n23), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U7 ( .A0(unsync_bus[1]), .A1(n23), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U8 ( .A0(unsync_bus[2]), .A1(n23), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U9 ( .A0(unsync_bus[3]), .A1(n23), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U10 ( .A0(unsync_bus[4]), .A1(n23), .B0(sync_bus[4]), .B1(n1), .Y(
        n12) );
  AO22X1M U11 ( .A0(unsync_bus[5]), .A1(n23), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U12 ( .A0(unsync_bus[6]), .A1(n23), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U25 ( .A0(unsync_bus[7]), .A1(n23), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH3_test_1 ( w_clk, w_rst, wclken, 
        wr_data, wr_addr, rd_addr, rd_data, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] wr_data;
  input [2:0] wr_addr;
  input [2:0] rd_addr;
  output [7:0] rd_data;
  input w_clk, w_rst, wclken, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] ,
         \mem[3][2] , \mem[3][1] , \mem[3][0] , \mem[4][7] , \mem[4][6] ,
         \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] ,
         \mem[4][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] ,
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n184, n185,
         n186, n187, n188;
  assign N10 = rd_addr[0];
  assign N11 = rd_addr[1];
  assign N12 = rd_addr[2];
  assign test_so1 = \mem[2][0] ;
  assign test_so2 = \mem[7][7] ;

  SDFFRQX2M \mem_reg[1][7]  ( .D(n140), .SI(\mem[1][6] ), .SE(n188), .CK(w_clk), .RN(n165), .Q(\mem[1][7] ) );
  SDFFRQX2M \mem_reg[1][6]  ( .D(n139), .SI(\mem[1][5] ), .SE(n187), .CK(w_clk), .RN(n165), .Q(\mem[1][6] ) );
  SDFFRQX2M \mem_reg[1][5]  ( .D(n138), .SI(\mem[1][4] ), .SE(n186), .CK(w_clk), .RN(n165), .Q(\mem[1][5] ) );
  SDFFRQX2M \mem_reg[1][4]  ( .D(n137), .SI(\mem[1][3] ), .SE(n185), .CK(w_clk), .RN(n165), .Q(\mem[1][4] ) );
  SDFFRQX2M \mem_reg[1][3]  ( .D(n136), .SI(\mem[1][2] ), .SE(n188), .CK(w_clk), .RN(n166), .Q(\mem[1][3] ) );
  SDFFRQX2M \mem_reg[1][2]  ( .D(n135), .SI(\mem[1][1] ), .SE(n187), .CK(w_clk), .RN(n166), .Q(\mem[1][2] ) );
  SDFFRQX2M \mem_reg[1][1]  ( .D(n134), .SI(\mem[1][0] ), .SE(n186), .CK(w_clk), .RN(n166), .Q(\mem[1][1] ) );
  SDFFRQX2M \mem_reg[1][0]  ( .D(n133), .SI(\mem[0][7] ), .SE(n185), .CK(w_clk), .RN(n166), .Q(\mem[1][0] ) );
  SDFFRQX2M \mem_reg[5][7]  ( .D(n108), .SI(\mem[5][6] ), .SE(n188), .CK(w_clk), .RN(n168), .Q(\mem[5][7] ) );
  SDFFRQX2M \mem_reg[5][6]  ( .D(n107), .SI(\mem[5][5] ), .SE(n187), .CK(w_clk), .RN(n168), .Q(\mem[5][6] ) );
  SDFFRQX2M \mem_reg[5][5]  ( .D(n106), .SI(\mem[5][4] ), .SE(n186), .CK(w_clk), .RN(n168), .Q(\mem[5][5] ) );
  SDFFRQX2M \mem_reg[5][4]  ( .D(n105), .SI(\mem[5][3] ), .SE(n185), .CK(w_clk), .RN(n168), .Q(\mem[5][4] ) );
  SDFFRQX2M \mem_reg[5][3]  ( .D(n104), .SI(\mem[5][2] ), .SE(n188), .CK(w_clk), .RN(n168), .Q(\mem[5][3] ) );
  SDFFRQX2M \mem_reg[5][2]  ( .D(n103), .SI(\mem[5][1] ), .SE(n187), .CK(w_clk), .RN(n168), .Q(\mem[5][2] ) );
  SDFFRQX2M \mem_reg[5][1]  ( .D(n102), .SI(\mem[5][0] ), .SE(n186), .CK(w_clk), .RN(n168), .Q(\mem[5][1] ) );
  SDFFRQX2M \mem_reg[5][0]  ( .D(n101), .SI(\mem[4][7] ), .SE(n185), .CK(w_clk), .RN(n168), .Q(\mem[5][0] ) );
  SDFFRQX2M \mem_reg[3][7]  ( .D(n124), .SI(\mem[3][6] ), .SE(n188), .CK(w_clk), .RN(n167), .Q(\mem[3][7] ) );
  SDFFRQX2M \mem_reg[3][6]  ( .D(n123), .SI(\mem[3][5] ), .SE(n187), .CK(w_clk), .RN(n167), .Q(\mem[3][6] ) );
  SDFFRQX2M \mem_reg[3][5]  ( .D(n122), .SI(\mem[3][4] ), .SE(n186), .CK(w_clk), .RN(n167), .Q(\mem[3][5] ) );
  SDFFRQX2M \mem_reg[3][4]  ( .D(n121), .SI(\mem[3][3] ), .SE(n185), .CK(w_clk), .RN(n167), .Q(\mem[3][4] ) );
  SDFFRQX2M \mem_reg[3][3]  ( .D(n120), .SI(\mem[3][2] ), .SE(n188), .CK(w_clk), .RN(n167), .Q(\mem[3][3] ) );
  SDFFRQX2M \mem_reg[3][2]  ( .D(n119), .SI(\mem[3][1] ), .SE(n187), .CK(w_clk), .RN(n167), .Q(\mem[3][2] ) );
  SDFFRQX2M \mem_reg[3][1]  ( .D(n118), .SI(\mem[3][0] ), .SE(n186), .CK(w_clk), .RN(n167), .Q(\mem[3][1] ) );
  SDFFRQX2M \mem_reg[3][0]  ( .D(n117), .SI(\mem[2][7] ), .SE(n185), .CK(w_clk), .RN(n167), .Q(\mem[3][0] ) );
  SDFFRQX2M \mem_reg[7][7]  ( .D(n92), .SI(\mem[7][6] ), .SE(n188), .CK(w_clk), 
        .RN(n169), .Q(\mem[7][7] ) );
  SDFFRQX2M \mem_reg[7][6]  ( .D(n91), .SI(\mem[7][5] ), .SE(n187), .CK(w_clk), 
        .RN(n169), .Q(\mem[7][6] ) );
  SDFFRQX2M \mem_reg[7][5]  ( .D(n90), .SI(\mem[7][4] ), .SE(n186), .CK(w_clk), 
        .RN(n169), .Q(\mem[7][5] ) );
  SDFFRQX2M \mem_reg[7][4]  ( .D(n89), .SI(\mem[7][3] ), .SE(n185), .CK(w_clk), 
        .RN(n169), .Q(\mem[7][4] ) );
  SDFFRQX2M \mem_reg[7][3]  ( .D(n88), .SI(\mem[7][2] ), .SE(n188), .CK(w_clk), 
        .RN(n170), .Q(\mem[7][3] ) );
  SDFFRQX2M \mem_reg[7][2]  ( .D(n87), .SI(\mem[7][1] ), .SE(n187), .CK(w_clk), 
        .RN(n170), .Q(\mem[7][2] ) );
  SDFFRQX2M \mem_reg[7][1]  ( .D(n86), .SI(\mem[7][0] ), .SE(n186), .CK(w_clk), 
        .RN(n170), .Q(\mem[7][1] ) );
  SDFFRQX2M \mem_reg[7][0]  ( .D(n85), .SI(\mem[6][7] ), .SE(n185), .CK(w_clk), 
        .RN(n170), .Q(\mem[7][0] ) );
  SDFFRQX2M \mem_reg[2][7]  ( .D(n132), .SI(\mem[2][6] ), .SE(n188), .CK(w_clk), .RN(n166), .Q(\mem[2][7] ) );
  SDFFRQX2M \mem_reg[2][6]  ( .D(n131), .SI(\mem[2][5] ), .SE(n187), .CK(w_clk), .RN(n166), .Q(\mem[2][6] ) );
  SDFFRQX2M \mem_reg[2][5]  ( .D(n130), .SI(\mem[2][4] ), .SE(n186), .CK(w_clk), .RN(n166), .Q(\mem[2][5] ) );
  SDFFRQX2M \mem_reg[2][4]  ( .D(n129), .SI(\mem[2][3] ), .SE(n185), .CK(w_clk), .RN(n166), .Q(\mem[2][4] ) );
  SDFFRQX2M \mem_reg[2][3]  ( .D(n128), .SI(\mem[2][2] ), .SE(n188), .CK(w_clk), .RN(n166), .Q(\mem[2][3] ) );
  SDFFRQX2M \mem_reg[2][2]  ( .D(n127), .SI(\mem[2][1] ), .SE(n187), .CK(w_clk), .RN(n166), .Q(\mem[2][2] ) );
  SDFFRQX2M \mem_reg[2][1]  ( .D(n126), .SI(test_si2), .SE(n186), .CK(w_clk), 
        .RN(n166), .Q(\mem[2][1] ) );
  SDFFRQX2M \mem_reg[2][0]  ( .D(n125), .SI(\mem[1][7] ), .SE(n185), .CK(w_clk), .RN(n166), .Q(\mem[2][0] ) );
  SDFFRQX2M \mem_reg[6][7]  ( .D(n100), .SI(\mem[6][6] ), .SE(n188), .CK(w_clk), .RN(n169), .Q(\mem[6][7] ) );
  SDFFRQX2M \mem_reg[6][6]  ( .D(n99), .SI(\mem[6][5] ), .SE(n187), .CK(w_clk), 
        .RN(n169), .Q(\mem[6][6] ) );
  SDFFRQX2M \mem_reg[6][5]  ( .D(n98), .SI(\mem[6][4] ), .SE(n186), .CK(w_clk), 
        .RN(n169), .Q(\mem[6][5] ) );
  SDFFRQX2M \mem_reg[6][4]  ( .D(n97), .SI(\mem[6][3] ), .SE(n185), .CK(w_clk), 
        .RN(n169), .Q(\mem[6][4] ) );
  SDFFRQX2M \mem_reg[6][3]  ( .D(n96), .SI(\mem[6][2] ), .SE(n188), .CK(w_clk), 
        .RN(n169), .Q(\mem[6][3] ) );
  SDFFRQX2M \mem_reg[6][2]  ( .D(n95), .SI(\mem[6][1] ), .SE(n187), .CK(w_clk), 
        .RN(n169), .Q(\mem[6][2] ) );
  SDFFRQX2M \mem_reg[6][1]  ( .D(n94), .SI(\mem[6][0] ), .SE(n186), .CK(w_clk), 
        .RN(n169), .Q(\mem[6][1] ) );
  SDFFRQX2M \mem_reg[6][0]  ( .D(n93), .SI(\mem[5][7] ), .SE(n185), .CK(w_clk), 
        .RN(n169), .Q(\mem[6][0] ) );
  SDFFRQX2M \mem_reg[0][7]  ( .D(n148), .SI(\mem[0][6] ), .SE(n188), .CK(w_clk), .RN(n165), .Q(\mem[0][7] ) );
  SDFFRQX2M \mem_reg[0][6]  ( .D(n147), .SI(\mem[0][5] ), .SE(n187), .CK(w_clk), .RN(n165), .Q(\mem[0][6] ) );
  SDFFRQX2M \mem_reg[0][5]  ( .D(n146), .SI(\mem[0][4] ), .SE(n186), .CK(w_clk), .RN(n165), .Q(\mem[0][5] ) );
  SDFFRQX2M \mem_reg[0][4]  ( .D(n145), .SI(\mem[0][3] ), .SE(n185), .CK(w_clk), .RN(n165), .Q(\mem[0][4] ) );
  SDFFRQX2M \mem_reg[0][3]  ( .D(n144), .SI(\mem[0][2] ), .SE(n188), .CK(w_clk), .RN(n165), .Q(\mem[0][3] ) );
  SDFFRQX2M \mem_reg[0][2]  ( .D(n143), .SI(\mem[0][1] ), .SE(n187), .CK(w_clk), .RN(n165), .Q(\mem[0][2] ) );
  SDFFRQX2M \mem_reg[0][1]  ( .D(n142), .SI(\mem[0][0] ), .SE(n186), .CK(w_clk), .RN(n165), .Q(\mem[0][1] ) );
  SDFFRQX2M \mem_reg[0][0]  ( .D(n141), .SI(test_si1), .SE(n185), .CK(w_clk), 
        .RN(n165), .Q(\mem[0][0] ) );
  SDFFRQX2M \mem_reg[4][7]  ( .D(n116), .SI(\mem[4][6] ), .SE(n188), .CK(w_clk), .RN(n167), .Q(\mem[4][7] ) );
  SDFFRQX2M \mem_reg[4][6]  ( .D(n115), .SI(\mem[4][5] ), .SE(n187), .CK(w_clk), .RN(n167), .Q(\mem[4][6] ) );
  SDFFRQX2M \mem_reg[4][5]  ( .D(n114), .SI(\mem[4][4] ), .SE(n186), .CK(w_clk), .RN(n167), .Q(\mem[4][5] ) );
  SDFFRQX2M \mem_reg[4][4]  ( .D(n113), .SI(\mem[4][3] ), .SE(n185), .CK(w_clk), .RN(n167), .Q(\mem[4][4] ) );
  SDFFRQX2M \mem_reg[4][3]  ( .D(n112), .SI(\mem[4][2] ), .SE(n188), .CK(w_clk), .RN(n168), .Q(\mem[4][3] ) );
  SDFFRQX2M \mem_reg[4][2]  ( .D(n111), .SI(\mem[4][1] ), .SE(n187), .CK(w_clk), .RN(n168), .Q(\mem[4][2] ) );
  SDFFRQX2M \mem_reg[4][1]  ( .D(n110), .SI(\mem[4][0] ), .SE(n186), .CK(w_clk), .RN(n168), .Q(\mem[4][1] ) );
  SDFFRQX2M \mem_reg[4][0]  ( .D(n109), .SI(\mem[3][7] ), .SE(n185), .CK(w_clk), .RN(n168), .Q(\mem[4][0] ) );
  BUFX2M U66 ( .A(n75), .Y(n162) );
  BUFX2M U67 ( .A(n82), .Y(n158) );
  BUFX2M U68 ( .A(n80), .Y(n159) );
  BUFX2M U69 ( .A(n77), .Y(n161) );
  BUFX2M U70 ( .A(n78), .Y(n160) );
  BUFX2M U71 ( .A(n164), .Y(n169) );
  BUFX2M U72 ( .A(n164), .Y(n168) );
  BUFX2M U73 ( .A(n163), .Y(n167) );
  BUFX2M U74 ( .A(n163), .Y(n166) );
  BUFX2M U75 ( .A(n163), .Y(n165) );
  BUFX2M U76 ( .A(n164), .Y(n170) );
  BUFX2M U77 ( .A(w_rst), .Y(n164) );
  BUFX2M U78 ( .A(w_rst), .Y(n163) );
  NAND3X2M U79 ( .A(n179), .B(n180), .C(n76), .Y(n79) );
  NAND3X2M U80 ( .A(n179), .B(n180), .C(n81), .Y(n84) );
  NOR2BX2M U81 ( .AN(wclken), .B(wr_addr[2]), .Y(n81) );
  OAI2BB2X1M U82 ( .B0(n178), .B1(n84), .A0N(\mem[0][0] ), .A1N(n84), .Y(n141)
         );
  OAI2BB2X1M U83 ( .B0(n177), .B1(n84), .A0N(\mem[0][1] ), .A1N(n84), .Y(n142)
         );
  OAI2BB2X1M U84 ( .B0(n176), .B1(n84), .A0N(\mem[0][2] ), .A1N(n84), .Y(n143)
         );
  OAI2BB2X1M U85 ( .B0(n175), .B1(n84), .A0N(\mem[0][3] ), .A1N(n84), .Y(n144)
         );
  OAI2BB2X1M U86 ( .B0(n174), .B1(n84), .A0N(\mem[0][4] ), .A1N(n84), .Y(n145)
         );
  OAI2BB2X1M U87 ( .B0(n173), .B1(n84), .A0N(\mem[0][5] ), .A1N(n84), .Y(n146)
         );
  OAI2BB2X1M U88 ( .B0(n172), .B1(n84), .A0N(\mem[0][6] ), .A1N(n84), .Y(n147)
         );
  OAI2BB2X1M U89 ( .B0(n171), .B1(n84), .A0N(\mem[0][7] ), .A1N(n84), .Y(n148)
         );
  OAI2BB2X1M U90 ( .B0(n178), .B1(n79), .A0N(\mem[4][0] ), .A1N(n79), .Y(n109)
         );
  OAI2BB2X1M U91 ( .B0(n177), .B1(n79), .A0N(\mem[4][1] ), .A1N(n79), .Y(n110)
         );
  OAI2BB2X1M U92 ( .B0(n176), .B1(n79), .A0N(\mem[4][2] ), .A1N(n79), .Y(n111)
         );
  OAI2BB2X1M U93 ( .B0(n175), .B1(n79), .A0N(\mem[4][3] ), .A1N(n79), .Y(n112)
         );
  OAI2BB2X1M U94 ( .B0(n174), .B1(n79), .A0N(\mem[4][4] ), .A1N(n79), .Y(n113)
         );
  OAI2BB2X1M U95 ( .B0(n173), .B1(n79), .A0N(\mem[4][5] ), .A1N(n79), .Y(n114)
         );
  OAI2BB2X1M U96 ( .B0(n172), .B1(n79), .A0N(\mem[4][6] ), .A1N(n79), .Y(n115)
         );
  OAI2BB2X1M U97 ( .B0(n171), .B1(n79), .A0N(\mem[4][7] ), .A1N(n79), .Y(n116)
         );
  INVX2M U98 ( .A(wr_data[0]), .Y(n178) );
  INVX2M U99 ( .A(wr_data[1]), .Y(n177) );
  INVX2M U100 ( .A(wr_data[2]), .Y(n176) );
  INVX2M U101 ( .A(wr_data[3]), .Y(n175) );
  INVX2M U102 ( .A(wr_data[4]), .Y(n174) );
  INVX2M U103 ( .A(wr_data[5]), .Y(n173) );
  INVX2M U104 ( .A(wr_data[6]), .Y(n172) );
  INVX2M U105 ( .A(wr_data[7]), .Y(n171) );
  BUFX2M U106 ( .A(n83), .Y(n157) );
  NAND3X2M U107 ( .A(wr_addr[0]), .B(n180), .C(n81), .Y(n83) );
  OAI2BB2X1M U108 ( .B0(n178), .B1(n161), .A0N(\mem[6][0] ), .A1N(n161), .Y(
        n93) );
  OAI2BB2X1M U109 ( .B0(n177), .B1(n161), .A0N(\mem[6][1] ), .A1N(n161), .Y(
        n94) );
  OAI2BB2X1M U110 ( .B0(n176), .B1(n161), .A0N(\mem[6][2] ), .A1N(n161), .Y(
        n95) );
  OAI2BB2X1M U111 ( .B0(n175), .B1(n161), .A0N(\mem[6][3] ), .A1N(n161), .Y(
        n96) );
  OAI2BB2X1M U112 ( .B0(n174), .B1(n161), .A0N(\mem[6][4] ), .A1N(n161), .Y(
        n97) );
  OAI2BB2X1M U113 ( .B0(n173), .B1(n161), .A0N(\mem[6][5] ), .A1N(n161), .Y(
        n98) );
  OAI2BB2X1M U114 ( .B0(n172), .B1(n161), .A0N(\mem[6][6] ), .A1N(n161), .Y(
        n99) );
  OAI2BB2X1M U115 ( .B0(n171), .B1(n161), .A0N(\mem[6][7] ), .A1N(n161), .Y(
        n100) );
  OAI2BB2X1M U116 ( .B0(n178), .B1(n160), .A0N(\mem[5][0] ), .A1N(n160), .Y(
        n101) );
  OAI2BB2X1M U117 ( .B0(n177), .B1(n160), .A0N(\mem[5][1] ), .A1N(n160), .Y(
        n102) );
  OAI2BB2X1M U118 ( .B0(n176), .B1(n160), .A0N(\mem[5][2] ), .A1N(n160), .Y(
        n103) );
  OAI2BB2X1M U119 ( .B0(n175), .B1(n160), .A0N(\mem[5][3] ), .A1N(n160), .Y(
        n104) );
  OAI2BB2X1M U120 ( .B0(n174), .B1(n160), .A0N(\mem[5][4] ), .A1N(n160), .Y(
        n105) );
  OAI2BB2X1M U121 ( .B0(n173), .B1(n160), .A0N(\mem[5][5] ), .A1N(n160), .Y(
        n106) );
  OAI2BB2X1M U122 ( .B0(n172), .B1(n160), .A0N(\mem[5][6] ), .A1N(n160), .Y(
        n107) );
  OAI2BB2X1M U123 ( .B0(n171), .B1(n160), .A0N(\mem[5][7] ), .A1N(n160), .Y(
        n108) );
  OAI2BB2X1M U124 ( .B0(n178), .B1(n159), .A0N(\mem[3][0] ), .A1N(n159), .Y(
        n117) );
  OAI2BB2X1M U125 ( .B0(n177), .B1(n159), .A0N(\mem[3][1] ), .A1N(n159), .Y(
        n118) );
  OAI2BB2X1M U126 ( .B0(n176), .B1(n159), .A0N(\mem[3][2] ), .A1N(n159), .Y(
        n119) );
  OAI2BB2X1M U127 ( .B0(n175), .B1(n159), .A0N(\mem[3][3] ), .A1N(n159), .Y(
        n120) );
  OAI2BB2X1M U128 ( .B0(n174), .B1(n159), .A0N(\mem[3][4] ), .A1N(n159), .Y(
        n121) );
  OAI2BB2X1M U129 ( .B0(n173), .B1(n159), .A0N(\mem[3][5] ), .A1N(n159), .Y(
        n122) );
  OAI2BB2X1M U130 ( .B0(n172), .B1(n159), .A0N(\mem[3][6] ), .A1N(n159), .Y(
        n123) );
  OAI2BB2X1M U131 ( .B0(n171), .B1(n159), .A0N(\mem[3][7] ), .A1N(n159), .Y(
        n124) );
  OAI2BB2X1M U132 ( .B0(n178), .B1(n158), .A0N(\mem[2][0] ), .A1N(n158), .Y(
        n125) );
  OAI2BB2X1M U133 ( .B0(n177), .B1(n158), .A0N(\mem[2][1] ), .A1N(n158), .Y(
        n126) );
  OAI2BB2X1M U134 ( .B0(n176), .B1(n158), .A0N(\mem[2][2] ), .A1N(n158), .Y(
        n127) );
  OAI2BB2X1M U135 ( .B0(n175), .B1(n158), .A0N(\mem[2][3] ), .A1N(n158), .Y(
        n128) );
  OAI2BB2X1M U136 ( .B0(n174), .B1(n158), .A0N(\mem[2][4] ), .A1N(n158), .Y(
        n129) );
  OAI2BB2X1M U137 ( .B0(n173), .B1(n158), .A0N(\mem[2][5] ), .A1N(n158), .Y(
        n130) );
  OAI2BB2X1M U138 ( .B0(n172), .B1(n158), .A0N(\mem[2][6] ), .A1N(n158), .Y(
        n131) );
  OAI2BB2X1M U139 ( .B0(n171), .B1(n158), .A0N(\mem[2][7] ), .A1N(n158), .Y(
        n132) );
  OAI2BB2X1M U140 ( .B0(n178), .B1(n157), .A0N(\mem[1][0] ), .A1N(n157), .Y(
        n133) );
  OAI2BB2X1M U141 ( .B0(n177), .B1(n157), .A0N(\mem[1][1] ), .A1N(n157), .Y(
        n134) );
  OAI2BB2X1M U142 ( .B0(n176), .B1(n157), .A0N(\mem[1][2] ), .A1N(n157), .Y(
        n135) );
  OAI2BB2X1M U143 ( .B0(n175), .B1(n157), .A0N(\mem[1][3] ), .A1N(n157), .Y(
        n136) );
  OAI2BB2X1M U144 ( .B0(n174), .B1(n157), .A0N(\mem[1][4] ), .A1N(n157), .Y(
        n137) );
  OAI2BB2X1M U145 ( .B0(n173), .B1(n157), .A0N(\mem[1][5] ), .A1N(n157), .Y(
        n138) );
  OAI2BB2X1M U146 ( .B0(n172), .B1(n157), .A0N(\mem[1][6] ), .A1N(n157), .Y(
        n139) );
  OAI2BB2X1M U147 ( .B0(n171), .B1(n157), .A0N(\mem[1][7] ), .A1N(n157), .Y(
        n140) );
  OAI2BB2X1M U148 ( .B0(n162), .B1(n178), .A0N(\mem[7][0] ), .A1N(n162), .Y(
        n85) );
  OAI2BB2X1M U149 ( .B0(n162), .B1(n177), .A0N(\mem[7][1] ), .A1N(n162), .Y(
        n86) );
  OAI2BB2X1M U150 ( .B0(n162), .B1(n176), .A0N(\mem[7][2] ), .A1N(n162), .Y(
        n87) );
  OAI2BB2X1M U151 ( .B0(n162), .B1(n175), .A0N(\mem[7][3] ), .A1N(n162), .Y(
        n88) );
  OAI2BB2X1M U152 ( .B0(n162), .B1(n174), .A0N(\mem[7][4] ), .A1N(n162), .Y(
        n89) );
  OAI2BB2X1M U153 ( .B0(n162), .B1(n173), .A0N(\mem[7][5] ), .A1N(n162), .Y(
        n90) );
  OAI2BB2X1M U154 ( .B0(n162), .B1(n172), .A0N(\mem[7][6] ), .A1N(n162), .Y(
        n91) );
  OAI2BB2X1M U155 ( .B0(n162), .B1(n171), .A0N(\mem[7][7] ), .A1N(n162), .Y(
        n92) );
  AND2X2M U156 ( .A(wr_addr[2]), .B(wclken), .Y(n76) );
  NAND3X2M U157 ( .A(n76), .B(n180), .C(wr_addr[0]), .Y(n78) );
  NAND3X2M U158 ( .A(wr_addr[1]), .B(wr_addr[0]), .C(n81), .Y(n80) );
  NAND3X2M U159 ( .A(wr_addr[1]), .B(n179), .C(n81), .Y(n82) );
  NAND3X2M U160 ( .A(wr_addr[0]), .B(n76), .C(wr_addr[1]), .Y(n75) );
  NAND3X2M U161 ( .A(n76), .B(n179), .C(wr_addr[1]), .Y(n77) );
  INVX2M U162 ( .A(wr_addr[0]), .Y(n179) );
  INVX2M U163 ( .A(wr_addr[1]), .Y(n180) );
  MX2X2M U164 ( .A(n66), .B(n65), .S0(N12), .Y(rd_data[0]) );
  MX4X1M U165 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(n156), .S1(N11), .Y(n66) );
  MX4X1M U166 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(n155), .S1(N11), .Y(n65) );
  MX2X2M U167 ( .A(n68), .B(n67), .S0(N12), .Y(rd_data[1]) );
  MX4X1M U168 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n156), .S1(N11), .Y(n68) );
  MX4X1M U169 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n155), .S1(N11), .Y(n67) );
  MX2X2M U170 ( .A(n70), .B(n69), .S0(N12), .Y(rd_data[2]) );
  MX4X1M U171 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n156), .S1(N11), .Y(n70) );
  MX4X1M U172 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n155), .S1(N11), .Y(n69) );
  MX2X2M U173 ( .A(n72), .B(n71), .S0(N12), .Y(rd_data[3]) );
  MX4X1M U174 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n156), .S1(N11), .Y(n72) );
  MX4X1M U175 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n155), .S1(N11), .Y(n71) );
  MX2X2M U176 ( .A(n74), .B(n73), .S0(N12), .Y(rd_data[4]) );
  MX4X1M U177 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n156), .S1(N11), .Y(n74) );
  MX4X1M U178 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n155), .S1(N11), .Y(n73) );
  MX2X2M U179 ( .A(n150), .B(n149), .S0(N12), .Y(rd_data[5]) );
  MX4X1M U180 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n156), .S1(N11), .Y(n150) );
  MX4X1M U181 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n155), .S1(N11), .Y(n149) );
  MX2X2M U182 ( .A(n152), .B(n151), .S0(N12), .Y(rd_data[6]) );
  MX4X1M U183 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n156), .S1(N11), .Y(n152) );
  MX4X1M U184 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n155), .S1(N11), .Y(n151) );
  MX2X2M U185 ( .A(n154), .B(n153), .S0(N12), .Y(rd_data[7]) );
  MX4X1M U186 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n156), .S1(N11), .Y(n154) );
  MX4X1M U187 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n155), .S1(N11), .Y(n153) );
  BUFX2M U188 ( .A(N10), .Y(n155) );
  BUFX2M U189 ( .A(N10), .Y(n156) );
  INVXLM U190 ( .A(test_se), .Y(n184) );
  INVXLM U191 ( .A(n184), .Y(n185) );
  INVXLM U192 ( .A(n184), .Y(n186) );
  INVXLM U193 ( .A(n184), .Y(n187) );
  INVXLM U194 ( .A(n184), .Y(n188) );
endmodule


module FIFO_DF_SYNC_WIDTH3_test_1 ( clk, rst, data_in, data_out, test_si, 
        test_se );
  input [3:0] data_in;
  output [3:0] data_out;
  input clk, rst, test_si, test_se;
  wire   \sync_reg[0][3] , \sync_reg[0][2] , \sync_reg[0][1] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[1][3]  ( .D(\sync_reg[0][3] ), .SI(data_out[2]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(data_out[3]) );
  SDFFRQX2M \sync_reg_reg[1][2]  ( .D(\sync_reg[0][2] ), .SI(data_out[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(data_out[2]) );
  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[0][1] ), .SI(data_out[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(data_out[1]) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][3] ), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(data_out[0]) );
  SDFFRQX2M \sync_reg_reg[0][3]  ( .D(data_in[3]), .SI(\sync_reg[0][2] ), .SE(
        test_se), .CK(clk), .RN(rst), .Q(\sync_reg[0][3] ) );
  SDFFRQX2M \sync_reg_reg[0][2]  ( .D(data_in[2]), .SI(\sync_reg[0][1] ), .SE(
        test_se), .CK(clk), .RN(rst), .Q(\sync_reg[0][2] ) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(data_in[1]), .SI(\sync_reg[0][0] ), .SE(
        test_se), .CK(clk), .RN(rst), .Q(\sync_reg[0][1] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(data_in[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\sync_reg[0][0] ) );
endmodule


module FIFO_DF_SYNC_WIDTH3_test_0 ( clk, rst, data_in, data_out, test_si, 
        test_se );
  input [3:0] data_in;
  output [3:0] data_out;
  input clk, rst, test_si, test_se;
  wire   \sync_reg[0][3] , \sync_reg[0][2] , \sync_reg[0][1] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[0][1] ), .SI(data_out[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(data_out[1]) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][3] ), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(data_out[0]) );
  SDFFRQX2M \sync_reg_reg[1][3]  ( .D(\sync_reg[0][3] ), .SI(data_out[2]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(data_out[3]) );
  SDFFRQX2M \sync_reg_reg[1][2]  ( .D(\sync_reg[0][2] ), .SI(data_out[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(data_out[2]) );
  SDFFRQX2M \sync_reg_reg[0][3]  ( .D(data_in[3]), .SI(\sync_reg[0][2] ), .SE(
        test_se), .CK(clk), .RN(rst), .Q(\sync_reg[0][3] ) );
  SDFFRQX2M \sync_reg_reg[0][2]  ( .D(data_in[2]), .SI(\sync_reg[0][1] ), .SE(
        test_se), .CK(clk), .RN(rst), .Q(\sync_reg[0][2] ) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(data_in[1]), .SI(\sync_reg[0][0] ), .SE(
        test_se), .CK(clk), .RN(rst), .Q(\sync_reg[0][1] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(data_in[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\sync_reg[0][0] ) );
endmodule


module FIFO_WR_WIDTH3_test_1 ( w_clk, w_rst, w_inc, rd_ptr, wr_ptr, wr_addr, 
        wclken, full, test_si, test_se );
  input [3:0] rd_ptr;
  output [3:0] wr_ptr;
  output [2:0] wr_addr;
  input w_clk, w_rst, w_inc, test_si, test_se;
  output wclken, full;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  SDFFRQX2M \wr_bin_reg[3]  ( .D(n15), .SI(wr_addr[2]), .SE(test_se), .CK(
        w_clk), .RN(w_rst), .Q(wr_ptr[3]) );
  SDFFRQX2M \wr_bin_reg[2]  ( .D(n16), .SI(wr_addr[1]), .SE(test_se), .CK(
        w_clk), .RN(w_rst), .Q(wr_addr[2]) );
  SDFFRQX2M \wr_bin_reg[1]  ( .D(n17), .SI(wr_addr[0]), .SE(test_se), .CK(
        w_clk), .RN(w_rst), .Q(wr_addr[1]) );
  SDFFRX1M \wr_bin_reg[0]  ( .D(n18), .SI(test_si), .SE(test_se), .CK(w_clk), 
        .RN(w_rst), .Q(wr_addr[0]), .QN(n5) );
  INVX2M U8 ( .A(n6), .Y(wclken) );
  NAND2X2M U9 ( .A(w_inc), .B(n10), .Y(n6) );
  INVX2M U10 ( .A(n10), .Y(full) );
  XNOR2X2M U11 ( .A(wr_ptr[1]), .B(rd_ptr[1]), .Y(n11) );
  XNOR2X2M U12 ( .A(n5), .B(wr_addr[1]), .Y(wr_ptr[0]) );
  NOR2X2M U13 ( .A(n6), .B(n5), .Y(n9) );
  XNOR2X2M U14 ( .A(wr_addr[2]), .B(n8), .Y(n16) );
  XNOR2X2M U15 ( .A(wr_ptr[3]), .B(n7), .Y(n15) );
  NAND2BX2M U16 ( .AN(n8), .B(wr_addr[2]), .Y(n7) );
  NAND4X2M U17 ( .A(n11), .B(n12), .C(n13), .D(n14), .Y(n10) );
  CLKXOR2X2M U18 ( .A(wr_ptr[3]), .B(rd_ptr[3]), .Y(n14) );
  XNOR2X2M U19 ( .A(wr_ptr[0]), .B(rd_ptr[0]), .Y(n12) );
  CLKXOR2X2M U20 ( .A(rd_ptr[2]), .B(wr_ptr[2]), .Y(n13) );
  NAND2X2M U21 ( .A(n9), .B(wr_addr[1]), .Y(n8) );
  CLKXOR2X2M U22 ( .A(wr_ptr[3]), .B(wr_addr[2]), .Y(wr_ptr[2]) );
  CLKXOR2X2M U23 ( .A(wr_addr[1]), .B(wr_addr[2]), .Y(wr_ptr[1]) );
  CLKXOR2X2M U24 ( .A(wr_addr[1]), .B(n9), .Y(n17) );
  CLKXOR2X2M U25 ( .A(n5), .B(n6), .Y(n18) );
endmodule


module FIFO_RD_WIDTH3_test_1 ( r_clk, r_rst, r_inc, wr_ptr, rd_ptr, rd_addr, 
        empty, test_si, test_se );
  input [3:0] wr_ptr;
  output [3:0] rd_ptr;
  output [2:0] rd_addr;
  input r_clk, r_rst, r_inc, test_si, test_se;
  output empty;
  wire   \rd_bin[3] , N2, N3, N4, n9, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [3:0] rd_bin_next;

  SDFFRQX2M \rd_bin_reg[3]  ( .D(rd_bin_next[3]), .SI(rd_addr[2]), .SE(test_se), .CK(r_clk), .RN(r_rst), .Q(\rd_bin[3] ) );
  SDFFRQX2M \rd_ptr_reg[1]  ( .D(N3), .SI(rd_ptr[0]), .SE(test_se), .CK(r_clk), 
        .RN(r_rst), .Q(rd_ptr[1]) );
  SDFFRQX2M \rd_ptr_reg[3]  ( .D(rd_bin_next[3]), .SI(rd_ptr[2]), .SE(test_se), 
        .CK(r_clk), .RN(r_rst), .Q(rd_ptr[3]) );
  SDFFRQX2M \rd_ptr_reg[2]  ( .D(N2), .SI(rd_ptr[1]), .SE(test_se), .CK(r_clk), 
        .RN(r_rst), .Q(rd_ptr[2]) );
  SDFFRQX2M \rd_ptr_reg[0]  ( .D(N4), .SI(\rd_bin[3] ), .SE(test_se), .CK(
        r_clk), .RN(r_rst), .Q(rd_ptr[0]) );
  SDFFRQX2M \rd_bin_reg[0]  ( .D(rd_bin_next[0]), .SI(test_si), .SE(test_se), 
        .CK(r_clk), .RN(r_rst), .Q(rd_addr[0]) );
  SDFFRQX2M \rd_bin_reg[2]  ( .D(rd_bin_next[2]), .SI(rd_addr[1]), .SE(test_se), .CK(r_clk), .RN(r_rst), .Q(rd_addr[2]) );
  SDFFRQX2M \rd_bin_reg[1]  ( .D(rd_bin_next[1]), .SI(rd_addr[0]), .SE(test_se), .CK(r_clk), .RN(r_rst), .Q(rd_addr[1]) );
  INVX2M U11 ( .A(n9), .Y(empty) );
  CLKXOR2X2M U12 ( .A(rd_bin_next[2]), .B(rd_bin_next[1]), .Y(N3) );
  CLKXOR2X2M U13 ( .A(rd_bin_next[1]), .B(rd_bin_next[0]), .Y(N4) );
  CLKXOR2X2M U14 ( .A(rd_bin_next[3]), .B(rd_bin_next[2]), .Y(N2) );
  XNOR2X2M U15 ( .A(n12), .B(rd_addr[2]), .Y(rd_bin_next[2]) );
  NAND2X2M U16 ( .A(rd_addr[1]), .B(n11), .Y(n12) );
  XNOR2X2M U17 ( .A(n13), .B(\rd_bin[3] ), .Y(rd_bin_next[3]) );
  NAND3X2M U18 ( .A(rd_addr[1]), .B(n11), .C(rd_addr[2]), .Y(n13) );
  NOR2BX2M U19 ( .AN(rd_addr[0]), .B(n10), .Y(n11) );
  XNOR2X2M U20 ( .A(n10), .B(rd_addr[0]), .Y(rd_bin_next[0]) );
  XNOR2X2M U21 ( .A(wr_ptr[2]), .B(rd_ptr[2]), .Y(n17) );
  NAND4X2M U22 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n9) );
  XNOR2X2M U23 ( .A(wr_ptr[1]), .B(rd_ptr[1]), .Y(n14) );
  XNOR2X2M U24 ( .A(wr_ptr[0]), .B(rd_ptr[0]), .Y(n15) );
  XNOR2X2M U25 ( .A(wr_ptr[3]), .B(rd_ptr[3]), .Y(n16) );
  NAND2X2M U26 ( .A(r_inc), .B(n9), .Y(n10) );
  CLKXOR2X2M U27 ( .A(rd_addr[1]), .B(n11), .Y(rd_bin_next[1]) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3_test_1 ( w_clk, w_rst, w_inc, r_clk, 
        r_rst, r_inc, wr_data, rd_data, full, empty, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] wr_data;
  output [7:0] rd_data;
  input w_clk, w_rst, w_inc, r_clk, r_rst, r_inc, test_si2, test_si1, test_se;
  output full, empty, test_so2, test_so1;
  wire   wclken, n1, n2, n3;
  wire   [2:0] rd_addr;
  wire   [2:0] wr_addr;
  wire   [3:0] wr_ptr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] rd_ptr;
  wire   [3:0] rq2_rptr;
  assign test_so2 = rq2_wptr[3];

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(w_rst), .Y(n2) );
  FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH3_test_1 u_FIFO_MEM_CNTRL ( .w_clk(
        w_clk), .w_rst(n1), .wclken(wclken), .wr_data(wr_data), .wr_addr(
        wr_addr), .rd_addr(rd_addr), .rd_data(rd_data), .test_si2(test_si2), 
        .test_si1(test_si1), .test_so2(n3), .test_so1(test_so1), .test_se(
        test_se) );
  FIFO_DF_SYNC_WIDTH3_test_1 u_wr_DF_SYNC ( .clk(r_clk), .rst(r_rst), 
        .data_in(wr_ptr), .data_out(rq2_wptr), .test_si(rq2_rptr[3]), 
        .test_se(test_se) );
  FIFO_DF_SYNC_WIDTH3_test_0 u_rd_DF_SYNC ( .clk(w_clk), .rst(n1), .data_in(
        rd_ptr), .data_out(rq2_rptr), .test_si(wr_ptr[3]), .test_se(test_se)
         );
  FIFO_WR_WIDTH3_test_1 u_FIFO_WR ( .w_clk(w_clk), .w_rst(n1), .w_inc(w_inc), 
        .rd_ptr(rq2_rptr), .wr_ptr(wr_ptr), .wr_addr(wr_addr), .wclken(wclken), 
        .full(full), .test_si(rd_ptr[3]), .test_se(test_se) );
  FIFO_RD_WIDTH3_test_1 u_FIFO_RD ( .r_clk(r_clk), .r_rst(r_rst), .r_inc(r_inc), .wr_ptr(rq2_wptr), .rd_ptr(rd_ptr), .rd_addr(rd_addr), .empty(empty), 
        .test_si(n3), .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( clk, rst, in_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, in_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   pls_flop, rcv_flop;
  assign test_so = rcv_flop;

  SDFFRQX2M rcv_flop_reg ( .D(in_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(rcv_flop) );
  SDFFRQX2M pls_flop_reg ( .D(rcv_flop), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(pls_flop) );
  NOR2BX2M U5 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module CLK_DIV_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_DIV_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N0, N5, div_clk_reg, flag, N16, N17, N18, N19, N20, N21, N22, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N38, N39, N40, N41, N42,
         N43, N44, N45, N55, N56, N57, N58, N59, N60, N61, N62, n29, n30, n31,
         n32, n33, \sub_25/carry[7] , \sub_25/carry[6] , \sub_25/carry[5] ,
         \sub_25/carry[4] , \sub_25/carry[3] , \sub_25/carry[2] ,
         \sub_25/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n24, n25, n26, n27, n28, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64;
  wire   [7:0] full_count;
  wire   [7:0] counter;
  assign test_so = flag;

  SDFFRQX2M div_clk_reg_reg ( .D(n33), .SI(counter[7]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk_reg) );
  SDFFRQX2M flag_reg ( .D(n32), .SI(n64), .SE(test_se), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(flag) );
  SDFFRQX2M \counter_reg[7]  ( .D(N62), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N55), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N61), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N60), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N59), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N58), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N57), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N56), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  NOR2BX1M U5 ( .AN(N39), .B(n61), .Y(N56) );
  NOR2BXLM U6 ( .AN(N40), .B(n61), .Y(N57) );
  NOR2BXLM U7 ( .AN(N41), .B(n61), .Y(N58) );
  NOR2BXLM U8 ( .AN(N42), .B(n61), .Y(N59) );
  NOR2BXLM U9 ( .AN(N43), .B(n61), .Y(N60) );
  NOR2BX1M U10 ( .AN(N44), .B(n61), .Y(N61) );
  OR2X2M U16 ( .A(n34), .B(full_count[6]), .Y(n35) );
  OAI32XLM U20 ( .A0(n29), .A1(div_clk_reg), .A2(n30), .B0(n61), .B1(n64), .Y(
        n33) );
  OAI32XLM U21 ( .A0(n29), .A1(flag), .A2(n30), .B0(n63), .B1(n61), .Y(n32) );
  XNOR2XLM U22 ( .A(i_div_ratio[0]), .B(n8), .Y(full_count[0]) );
  OAI2BB1XLM U23 ( .A0N(n34), .A1N(full_count[6]), .B0(n35), .Y(N31) );
  OAI2BB1XLM U24 ( .A0N(n28), .A1N(full_count[5]), .B0(n34), .Y(N30) );
  NAND3BXLM U25 ( .AN(N33), .B(n56), .C(n55), .Y(n59) );
  ADDFXLM U26 ( .A(i_div_ratio[5]), .B(n13), .CI(\sub_25/carry[5] ), .CO(
        \sub_25/carry[6] ), .S(full_count[5]) );
  ADDFXLM U27 ( .A(i_div_ratio[6]), .B(n24), .CI(\sub_25/carry[6] ), .CO(
        \sub_25/carry[7] ), .S(full_count[6]) );
  NOR2BXLM U28 ( .AN(N45), .B(n61), .Y(N62) );
  NOR2BXLM U29 ( .AN(N38), .B(n61), .Y(N55) );
  AO22XLM U30 ( .A0(flag), .A1(N22), .B0(N34), .B1(n63), .Y(n31) );
  XOR2X2M U31 ( .A(N32), .B(counter[7]), .Y(n58) );
  OR2X1M U32 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n3) );
  AOI221XLM U33 ( .A0(n31), .A1(i_div_ratio[0]), .B0(n62), .B1(N22), .C0(n29), 
        .Y(n30) );
  INVX2M U34 ( .A(n30), .Y(n61) );
  OR2X2M U35 ( .A(full_count[1]), .B(full_count[0]), .Y(n25) );
  NOR2X2M U36 ( .A(n2), .B(n29), .Y(N0) );
  INVX2M U37 ( .A(i_rst_n), .Y(n2) );
  INVX2M U38 ( .A(i_div_ratio[0]), .Y(n62) );
  INVX2M U39 ( .A(div_clk_reg), .Y(n64) );
  ADDFX2M U40 ( .A(i_div_ratio[1]), .B(n9), .CI(\sub_25/carry[1] ), .CO(
        \sub_25/carry[2] ), .S(full_count[1]) );
  INVX2M U41 ( .A(i_div_ratio[2]), .Y(n9) );
  INVX2M U42 ( .A(i_div_ratio[6]), .Y(n13) );
  ADDFX2M U43 ( .A(i_div_ratio[4]), .B(n12), .CI(\sub_25/carry[4] ), .CO(
        \sub_25/carry[5] ), .S(full_count[4]) );
  INVX2M U44 ( .A(i_div_ratio[5]), .Y(n12) );
  INVX2M U45 ( .A(i_div_ratio[7]), .Y(n24) );
  ADDFX2M U46 ( .A(i_div_ratio[2]), .B(n10), .CI(\sub_25/carry[2] ), .CO(
        \sub_25/carry[3] ), .S(full_count[2]) );
  INVX2M U47 ( .A(i_div_ratio[3]), .Y(n10) );
  ADDFX2M U48 ( .A(i_div_ratio[3]), .B(n11), .CI(\sub_25/carry[3] ), .CO(
        \sub_25/carry[4] ), .S(full_count[3]) );
  INVX2M U49 ( .A(i_div_ratio[4]), .Y(n11) );
  INVX2M U50 ( .A(i_div_ratio[1]), .Y(n8) );
  NAND2X2M U51 ( .A(i_clk_en), .B(N5), .Y(n29) );
  AOI21BX2M U52 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n3), .Y(n1)
         );
  INVX2M U53 ( .A(counter[0]), .Y(n48) );
  INVX2M U54 ( .A(flag), .Y(n63) );
  MX2X2M U55 ( .A(i_ref_clk), .B(div_clk_reg), .S0(N0), .Y(o_div_clk) );
  XNOR2X1M U56 ( .A(i_div_ratio[7]), .B(\sub_25/carry[7] ), .Y(full_count[7])
         );
  OR2X1M U57 ( .A(n8), .B(i_div_ratio[0]), .Y(\sub_25/carry[1] ) );
  OR2X1M U58 ( .A(n3), .B(i_div_ratio[3]), .Y(n4) );
  OAI2BB1X1M U59 ( .A0N(n3), .A1N(i_div_ratio[3]), .B0(n4), .Y(N16) );
  OR2X1M U60 ( .A(n4), .B(i_div_ratio[4]), .Y(n5) );
  OAI2BB1X1M U61 ( .A0N(n4), .A1N(i_div_ratio[4]), .B0(n5), .Y(N17) );
  OR2X1M U62 ( .A(n5), .B(i_div_ratio[5]), .Y(n6) );
  OAI2BB1X1M U63 ( .A0N(n5), .A1N(i_div_ratio[5]), .B0(n6), .Y(N18) );
  XNOR2X1M U64 ( .A(i_div_ratio[6]), .B(n6), .Y(N19) );
  NOR3X1M U65 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n6), .Y(N21) );
  OAI21X1M U66 ( .A0(i_div_ratio[6]), .A1(n6), .B0(i_div_ratio[7]), .Y(n7) );
  NAND2BX1M U67 ( .AN(N21), .B(n7), .Y(N20) );
  CLKINVX1M U68 ( .A(full_count[0]), .Y(N25) );
  OAI2BB1X1M U69 ( .A0N(full_count[0]), .A1N(full_count[1]), .B0(n25), .Y(N26)
         );
  OR2X1M U70 ( .A(n25), .B(full_count[2]), .Y(n26) );
  OAI2BB1X1M U71 ( .A0N(n25), .A1N(full_count[2]), .B0(n26), .Y(N27) );
  OR2X1M U72 ( .A(n26), .B(full_count[3]), .Y(n27) );
  OAI2BB1X1M U73 ( .A0N(n26), .A1N(full_count[3]), .B0(n27), .Y(N28) );
  OR2X1M U74 ( .A(n27), .B(full_count[4]), .Y(n28) );
  OAI2BB1X1M U75 ( .A0N(n27), .A1N(full_count[4]), .B0(n28), .Y(N29) );
  OR2X1M U76 ( .A(n28), .B(full_count[5]), .Y(n34) );
  NOR2X1M U77 ( .A(n35), .B(full_count[7]), .Y(N33) );
  AO21XLM U78 ( .A0(n35), .A1(full_count[7]), .B0(N33), .Y(N32) );
  OR4X1M U79 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n36) );
  OR4X1M U80 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n36), .Y(N5) );
  XNOR2X1M U81 ( .A(N16), .B(counter[2]), .Y(n47) );
  NOR2X1M U82 ( .A(n48), .B(n8), .Y(n37) );
  OAI22X1M U83 ( .A0(counter[1]), .A1(n37), .B0(n37), .B1(n1), .Y(n46) );
  CLKNAND2X2M U84 ( .A(n8), .B(n48), .Y(n38) );
  AOI22X1M U85 ( .A0(n38), .A1(n1), .B0(n38), .B1(counter[1]), .Y(n39) );
  NOR3X1M U86 ( .A(n39), .B(N21), .C(counter[7]), .Y(n45) );
  CLKXOR2X2M U87 ( .A(N17), .B(counter[3]), .Y(n43) );
  CLKXOR2X2M U88 ( .A(N18), .B(counter[4]), .Y(n42) );
  CLKXOR2X2M U89 ( .A(N19), .B(counter[5]), .Y(n41) );
  CLKXOR2X2M U90 ( .A(N20), .B(counter[6]), .Y(n40) );
  NOR4X1M U91 ( .A(n43), .B(n42), .C(n41), .D(n40), .Y(n44) );
  AND4X1M U92 ( .A(n47), .B(n46), .C(n45), .D(n44), .Y(N22) );
  XNOR2X1M U93 ( .A(N31), .B(counter[6]), .Y(n52) );
  XNOR2X1M U94 ( .A(N30), .B(counter[5]), .Y(n51) );
  XNOR2X1M U95 ( .A(N29), .B(counter[4]), .Y(n50) );
  XNOR2X1M U96 ( .A(N28), .B(counter[3]), .Y(n49) );
  NAND4X1M U97 ( .A(n52), .B(n51), .C(n50), .D(n49), .Y(n60) );
  NOR2BX1M U98 ( .AN(N25), .B(counter[0]), .Y(n53) );
  OAI2B2X1M U99 ( .A1N(counter[1]), .A0(n53), .B0(N26), .B1(n53), .Y(n56) );
  NOR2BX1M U100 ( .AN(counter[0]), .B(N25), .Y(n54) );
  OAI2B2X1M U101 ( .A1N(N26), .A0(n54), .B0(counter[1]), .B1(n54), .Y(n55) );
  CLKXOR2X2M U102 ( .A(N27), .B(counter[2]), .Y(n57) );
  NOR4X1M U103 ( .A(n60), .B(n59), .C(n58), .D(n57), .Y(N34) );
  CLK_DIV_0_DW01_inc_0 add_56 ( .A(counter), .SUM({N45, N44, N43, N42, N41, 
        N40, N39, N38}) );
endmodule


module CLKDIV_MUX ( in, out );
  input [5:0] in;
  output [7:0] out;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND4BX2M U11 ( .AN(in[4]), .B(in[3]), .C(n15), .D(n14), .Y(n6) );
  NOR3X4M U12 ( .A(n6), .B(in[1]), .C(in[0]), .Y(out[2]) );
  NAND4BX2M U13 ( .AN(in[3]), .B(in[4]), .C(n15), .D(n14), .Y(n7) );
  NOR3X4M U14 ( .A(n7), .B(in[1]), .C(in[0]), .Y(out[1]) );
  INVX2M U15 ( .A(in[5]), .Y(n14) );
  OAI211X2M U16 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(out[0]) );
  NAND3X1M U17 ( .A(n17), .B(n16), .C(in[2]), .Y(n5) );
  CLKINVX2M U18 ( .A(in[2]), .Y(n15) );
  CLKINVX2M U19 ( .A(in[1]), .Y(n16) );
  NAND2XLM U20 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U21 ( .A(in[5]), .B(in[4]), .C(in[3]), .D(n15), .Y(n8) );
  NOR4X1M U22 ( .A(n5), .B(in[3]), .C(in[5]), .D(in[4]), .Y(out[3]) );
  INVX2M U23 ( .A(in[0]), .Y(n17) );
  INVX2M U3 ( .A(1'b1), .Y(out[4]) );
  INVX2M U5 ( .A(1'b1), .Y(out[5]) );
  INVX2M U7 ( .A(1'b1), .Y(out[6]) );
  INVX2M U9 ( .A(1'b1), .Y(out[7]) );
endmodule


module CLK_DIV_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_DIV_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N0, N5, div_clk_reg, N16, N17, N18, N19, N20, N21, N22, N25, N26, N27,
         N28, N29, N30, N31, N33, N34, N38, N39, N40, N41, N42, N43, N44, N45,
         N55, N56, N57, N58, N59, N60, N61, N62, \sub_25/carry[7] ,
         \sub_25/carry[6] , \sub_25/carry[5] , \sub_25/carry[4] ,
         \sub_25/carry[3] , \sub_25/carry[2] , \sub_25/carry[1] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n24, n25, n26, n27, n28,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n70, n71, n72, n73, n74, n75, n76,
         n90;
  wire   [7:0] full_count;
  wire   [7:0] counter;

  SDFFRQX2M div_clk_reg_reg ( .D(n72), .SI(counter[7]), .SE(test_se), .CK(
        i_ref_clk), .RN(n8), .Q(div_clk_reg) );
  SDFFRQX2M \counter_reg[7]  ( .D(N62), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(n8), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N57), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(n8), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N55), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(n8), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N61), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(n8), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N60), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(n8), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N59), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(n8), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N58), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(n8), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N56), .SI(n55), .SE(test_se), .CK(i_ref_clk), 
        .RN(n8), .Q(counter[1]) );
  INVX3M U5 ( .A(n75), .Y(n68) );
  ADDFHX1M U6 ( .A(i_div_ratio[2]), .B(n34), .CI(\sub_25/carry[2] ), .CO(
        \sub_25/carry[3] ), .S(full_count[2]) );
  AO22XLM U7 ( .A0(test_so), .A1(N22), .B0(N34), .B1(n90), .Y(n74) );
  AOI21XLM U8 ( .A0(n42), .A1(full_count[7]), .B0(N33), .Y(n7) );
  NAND2X2M U9 ( .A(n74), .B(i_div_ratio[0]), .Y(n1) );
  NOR2BXLM U10 ( .AN(N39), .B(n68), .Y(N56) );
  NOR2BXLM U16 ( .AN(N40), .B(n68), .Y(N57) );
  NOR2BXLM U20 ( .AN(N41), .B(n68), .Y(N58) );
  NOR2BXLM U21 ( .AN(N38), .B(n68), .Y(N55) );
  NOR2BXLM U22 ( .AN(N45), .B(n68), .Y(N62) );
  NOR2BXLM U23 ( .AN(N44), .B(n68), .Y(N61) );
  NOR2BXLM U24 ( .AN(N43), .B(n68), .Y(N60) );
  NOR2BXLM U25 ( .AN(N42), .B(n68), .Y(N59) );
  NOR2X2M U26 ( .A(n42), .B(full_count[7]), .Y(N33) );
  ADDFHX1M U27 ( .A(i_div_ratio[6]), .B(n25), .CI(\sub_25/carry[6] ), .CO(
        \sub_25/carry[7] ), .S(full_count[6]) );
  CLKNAND2X2M U28 ( .A(n4), .B(n5), .Y(full_count[7]) );
  OAI2BB1XLM U29 ( .A0N(n10), .A1N(i_div_ratio[3]), .B0(n11), .Y(N16) );
  NAND2X2M U30 ( .A(n71), .B(N22), .Y(n2) );
  INVX2M U31 ( .A(n76), .Y(n3) );
  AND3X4M U32 ( .A(n1), .B(n2), .C(n3), .Y(n75) );
  INVXLM U33 ( .A(i_div_ratio[0]), .Y(n71) );
  ADDFXLM U34 ( .A(i_div_ratio[5]), .B(n26), .CI(\sub_25/carry[5] ), .CO(
        \sub_25/carry[6] ), .S(full_count[5]) );
  ADDFHX2M U35 ( .A(i_div_ratio[3]), .B(n28), .CI(\sub_25/carry[3] ), .CO(
        \sub_25/carry[4] ), .S(full_count[3]) );
  OR2X2M U36 ( .A(i_div_ratio[7]), .B(\sub_25/carry[7] ), .Y(n5) );
  CLKNAND2X2M U37 ( .A(i_div_ratio[7]), .B(\sub_25/carry[7] ), .Y(n4) );
  OR2X2M U38 ( .A(full_count[1]), .B(full_count[0]), .Y(n37) );
  INVX2M U39 ( .A(n9), .Y(n8) );
  OR2X2M U40 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n10) );
  ADDFX2M U41 ( .A(i_div_ratio[1]), .B(n36), .CI(\sub_25/carry[1] ), .CO(
        \sub_25/carry[2] ), .S(full_count[1]) );
  INVX2M U42 ( .A(i_div_ratio[2]), .Y(n36) );
  OR2X2M U43 ( .A(n35), .B(i_div_ratio[0]), .Y(\sub_25/carry[1] ) );
  INVX2M U44 ( .A(i_div_ratio[3]), .Y(n34) );
  AOI21BX2M U45 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n10), .Y(n6)
         );
  NOR2X2M U46 ( .A(n9), .B(n76), .Y(N0) );
  INVX2M U47 ( .A(i_rst_n), .Y(n9) );
  INVX2M U48 ( .A(div_clk_reg), .Y(n70) );
  ADDFX2M U49 ( .A(i_div_ratio[4]), .B(n27), .CI(\sub_25/carry[4] ), .CO(
        \sub_25/carry[5] ), .S(full_count[4]) );
  INVX2M U50 ( .A(i_div_ratio[5]), .Y(n27) );
  INVX2M U51 ( .A(i_div_ratio[6]), .Y(n26) );
  XNOR2X2M U52 ( .A(n7), .B(counter[7]), .Y(n65) );
  INVX2M U53 ( .A(i_div_ratio[4]), .Y(n28) );
  INVX2M U54 ( .A(i_div_ratio[7]), .Y(n25) );
  NAND2X2M U55 ( .A(i_clk_en), .B(N5), .Y(n76) );
  INVX2M U56 ( .A(counter[0]), .Y(n55) );
  MX2X2M U58 ( .A(i_ref_clk), .B(div_clk_reg), .S0(N0), .Y(o_div_clk) );
  OAI32X1M U59 ( .A0(n76), .A1(div_clk_reg), .A2(n75), .B0(n68), .B1(n70), .Y(
        n72) );
  OAI32X1M U60 ( .A0(n76), .A1(test_so), .A2(n75), .B0(n90), .B1(n68), .Y(n73)
         );
  INVX2M U61 ( .A(i_div_ratio[1]), .Y(n35) );
  XNOR2X1M U62 ( .A(i_div_ratio[0]), .B(n35), .Y(full_count[0]) );
  OR2X1M U63 ( .A(n10), .B(i_div_ratio[3]), .Y(n11) );
  OR2X1M U64 ( .A(n11), .B(i_div_ratio[4]), .Y(n12) );
  OAI2BB1X1M U65 ( .A0N(n11), .A1N(i_div_ratio[4]), .B0(n12), .Y(N17) );
  OR2X1M U66 ( .A(n12), .B(i_div_ratio[5]), .Y(n13) );
  OAI2BB1X1M U67 ( .A0N(n12), .A1N(i_div_ratio[5]), .B0(n13), .Y(N18) );
  XNOR2X1M U68 ( .A(i_div_ratio[6]), .B(n13), .Y(N19) );
  NOR3X1M U69 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n13), .Y(N21) );
  OAI21X1M U70 ( .A0(i_div_ratio[6]), .A1(n13), .B0(i_div_ratio[7]), .Y(n24)
         );
  NAND2BX1M U71 ( .AN(N21), .B(n24), .Y(N20) );
  CLKINVX1M U72 ( .A(full_count[0]), .Y(N25) );
  OAI2BB1X1M U73 ( .A0N(full_count[0]), .A1N(full_count[1]), .B0(n37), .Y(N26)
         );
  OR2X1M U74 ( .A(n37), .B(full_count[2]), .Y(n38) );
  OAI2BB1X1M U75 ( .A0N(n37), .A1N(full_count[2]), .B0(n38), .Y(N27) );
  OR2X1M U76 ( .A(n38), .B(full_count[3]), .Y(n39) );
  OAI2BB1X1M U77 ( .A0N(n38), .A1N(full_count[3]), .B0(n39), .Y(N28) );
  OR2X1M U78 ( .A(n39), .B(full_count[4]), .Y(n40) );
  OAI2BB1X1M U79 ( .A0N(n39), .A1N(full_count[4]), .B0(n40), .Y(N29) );
  OR2X1M U80 ( .A(n40), .B(full_count[5]), .Y(n41) );
  OAI2BB1X1M U81 ( .A0N(n40), .A1N(full_count[5]), .B0(n41), .Y(N30) );
  OR2X1M U82 ( .A(n41), .B(full_count[6]), .Y(n42) );
  OAI2BB1X1M U83 ( .A0N(n41), .A1N(full_count[6]), .B0(n42), .Y(N31) );
  OR4X1M U84 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n43) );
  OR4X1M U85 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n43), .Y(N5) );
  XNOR2X1M U86 ( .A(N16), .B(counter[2]), .Y(n54) );
  NOR2X1M U87 ( .A(n55), .B(n35), .Y(n44) );
  OAI22X1M U88 ( .A0(counter[1]), .A1(n44), .B0(n44), .B1(n6), .Y(n53) );
  CLKNAND2X2M U89 ( .A(n35), .B(n55), .Y(n45) );
  AOI22X1M U90 ( .A0(n45), .A1(n6), .B0(n45), .B1(counter[1]), .Y(n46) );
  NOR3X1M U91 ( .A(n46), .B(N21), .C(counter[7]), .Y(n52) );
  CLKXOR2X2M U92 ( .A(N17), .B(counter[3]), .Y(n50) );
  CLKXOR2X2M U93 ( .A(N18), .B(counter[4]), .Y(n49) );
  CLKXOR2X2M U94 ( .A(N19), .B(counter[5]), .Y(n48) );
  CLKXOR2X2M U95 ( .A(N20), .B(counter[6]), .Y(n47) );
  NOR4X1M U96 ( .A(n50), .B(n49), .C(n48), .D(n47), .Y(n51) );
  AND4X1M U97 ( .A(n54), .B(n53), .C(n52), .D(n51), .Y(N22) );
  XNOR2X1M U98 ( .A(N31), .B(counter[6]), .Y(n59) );
  XNOR2X1M U99 ( .A(N30), .B(counter[5]), .Y(n58) );
  XNOR2X1M U100 ( .A(N29), .B(counter[4]), .Y(n57) );
  XNOR2X1M U101 ( .A(N28), .B(counter[3]), .Y(n56) );
  NAND4X1M U102 ( .A(n59), .B(n58), .C(n57), .D(n56), .Y(n67) );
  NOR2BX1M U103 ( .AN(N25), .B(counter[0]), .Y(n60) );
  OAI2B2X1M U104 ( .A1N(counter[1]), .A0(n60), .B0(N26), .B1(n60), .Y(n63) );
  NOR2BX1M U105 ( .AN(counter[0]), .B(N25), .Y(n61) );
  OAI2B2X1M U106 ( .A1N(N26), .A0(n61), .B0(counter[1]), .B1(n61), .Y(n62) );
  NAND3BX1M U107 ( .AN(N33), .B(n63), .C(n62), .Y(n66) );
  CLKXOR2X2M U108 ( .A(N27), .B(counter[2]), .Y(n64) );
  NOR4X1M U109 ( .A(n67), .B(n65), .C(n66), .D(n64), .Y(N34) );
  CLK_DIV_1_DW01_inc_0 add_56 ( .A(counter), .SUM({N45, N44, N43, N42, N41, 
        N40, N39, N38}) );
  SDFFRQX1M flag_reg ( .D(n73), .SI(n70), .SE(test_se), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(test_so) );
  INVX2M U3 ( .A(test_so), .Y(n90) );
endmodule


module mux_test_1 ( clk, rst, mux_sel, ser_data, par_bit, tx_out, test_si, 
        test_se );
  input [1:0] mux_sel;
  input clk, rst, ser_data, par_bit, test_si, test_se;
  output tx_out;
  wire   mux_out, n3, n4, n2;

  SDFFRQX2M tx_out_reg ( .D(mux_out), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(tx_out) );
  INVX2M U4 ( .A(mux_sel[0]), .Y(n2) );
  OAI21X2M U5 ( .A0(n3), .A1(n2), .B0(n4), .Y(mux_out) );
  NOR2BX2M U6 ( .AN(mux_sel[1]), .B(par_bit), .Y(n3) );
  NAND3X2M U7 ( .A(mux_sel[1]), .B(n2), .C(ser_data), .Y(n4) );
endmodule


module parity_calc_test_1 ( clk, rst, p_data, data_valid, par_typ, par_en, 
        busy, par_bit, test_si, test_se );
  input [7:0] p_data;
  input clk, rst, data_valid, par_typ, par_en, busy, test_si, test_se;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n7, n9, n11, n13, n15, n17, n19, n21, n23, n25,
         n2;
  wire   [7:0] data_reg;

  SDFFRQX2M par_bit_reg ( .D(n9), .SI(data_reg[7]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(par_bit) );
  SDFFRQX2M \data_reg_reg[5]  ( .D(n21), .SI(data_reg[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(data_reg[5]) );
  SDFFRQX2M \data_reg_reg[1]  ( .D(n13), .SI(data_reg[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(data_reg[1]) );
  SDFFRQX2M \data_reg_reg[4]  ( .D(n19), .SI(data_reg[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(data_reg[4]) );
  SDFFRQX2M \data_reg_reg[0]  ( .D(n11), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(data_reg[0]) );
  SDFFRQX2M \data_reg_reg[2]  ( .D(n15), .SI(data_reg[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(data_reg[2]) );
  SDFFRQX2M \data_reg_reg[3]  ( .D(n17), .SI(data_reg[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(data_reg[3]) );
  SDFFRQX2M \data_reg_reg[6]  ( .D(n23), .SI(data_reg[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(data_reg[6]) );
  SDFFRQX2M \data_reg_reg[7]  ( .D(n25), .SI(data_reg[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(data_reg[7]) );
  NOR2BX2M U2 ( .AN(data_valid), .B(busy), .Y(n7) );
  XNOR2X2M U3 ( .A(data_reg[2]), .B(data_reg[3]), .Y(n5) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n9) );
  INVX2M U5 ( .A(par_en), .Y(n2) );
  XOR3XLM U6 ( .A(n3), .B(par_typ), .C(n4), .Y(n1) );
  XOR3XLM U7 ( .A(data_reg[1]), .B(data_reg[0]), .C(n5), .Y(n4) );
  XOR3XLM U8 ( .A(data_reg[5]), .B(data_reg[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U9 ( .A(data_reg[7]), .B(data_reg[6]), .Y(n6) );
  AO2B2X2M U10 ( .B0(p_data[0]), .B1(n7), .A0(data_reg[0]), .A1N(n7), .Y(n11)
         );
  AO2B2X2M U11 ( .B0(p_data[1]), .B1(n7), .A0(data_reg[1]), .A1N(n7), .Y(n13)
         );
  AO2B2X2M U12 ( .B0(p_data[2]), .B1(n7), .A0(data_reg[2]), .A1N(n7), .Y(n15)
         );
  AO2B2X2M U13 ( .B0(p_data[3]), .B1(n7), .A0(data_reg[3]), .A1N(n7), .Y(n17)
         );
  AO2B2X2M U14 ( .B0(p_data[4]), .B1(n7), .A0(data_reg[4]), .A1N(n7), .Y(n19)
         );
  AO2B2X2M U15 ( .B0(p_data[5]), .B1(n7), .A0(data_reg[5]), .A1N(n7), .Y(n21)
         );
  AO2B2X2M U16 ( .B0(p_data[6]), .B1(n7), .A0(data_reg[6]), .A1N(n7), .Y(n23)
         );
  AO2B2X2M U17 ( .B0(p_data[7]), .B1(n7), .A0(data_reg[7]), .A1N(n7), .Y(n25)
         );
endmodule


module serializer_test_1 ( clk, rst, p_data, ser_en, busy, data_valid, 
        ser_done, ser_data, test_si, test_so, test_se );
  input [7:0] p_data;
  input clk, rst, ser_en, busy, data_valid, test_si, test_se;
  output ser_done, ser_data, test_so;
  wire   N23, N24, N25, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n12, n13, n14, n35, n38,
         n39;
  wire   [7:1] data_reg;
  wire   [2:0] count;
  assign test_so = data_reg[7];

  SDFFRQX2M \data_reg_reg[6]  ( .D(n29), .SI(data_reg[5]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(data_reg[6]) );
  SDFFRQX2M \data_reg_reg[5]  ( .D(n30), .SI(data_reg[4]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(data_reg[5]) );
  SDFFRQX2M \data_reg_reg[4]  ( .D(n31), .SI(data_reg[3]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(data_reg[4]) );
  SDFFRQX2M \data_reg_reg[3]  ( .D(n32), .SI(data_reg[2]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(data_reg[3]) );
  SDFFRQX2M \data_reg_reg[2]  ( .D(n33), .SI(data_reg[1]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(data_reg[2]) );
  SDFFRQX2M \data_reg_reg[1]  ( .D(n34), .SI(ser_data), .SE(n39), .CK(clk), 
        .RN(rst), .Q(data_reg[1]) );
  SDFFRQX2M \data_reg_reg[7]  ( .D(n28), .SI(data_reg[6]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(data_reg[7]) );
  SDFFRQX2M \data_reg_reg[0]  ( .D(n27), .SI(n35), .SE(n39), .CK(clk), .RN(rst), .Q(ser_data) );
  SDFFRQX2M \count_reg[1]  ( .D(N24), .SI(count[0]), .SE(n39), .CK(clk), .RN(
        rst), .Q(count[1]) );
  SDFFRQX2M \count_reg[2]  ( .D(N25), .SI(n14), .SE(n39), .CK(clk), .RN(rst), 
        .Q(count[2]) );
  SDFFRQX2M \count_reg[0]  ( .D(N23), .SI(test_si), .SE(n39), .CK(clk), .RN(
        rst), .Q(count[0]) );
  NOR2X2M U14 ( .A(n13), .B(n12), .Y(n17) );
  NOR2X2M U15 ( .A(n12), .B(n17), .Y(n15) );
  AND3X2M U16 ( .A(count[0]), .B(count[2]), .C(count[1]), .Y(ser_done) );
  OAI2BB2X1M U17 ( .B0(n25), .B1(n13), .A0N(count[2]), .A1N(N23), .Y(N25) );
  AOI32X1M U18 ( .A0(count[0]), .A1(n35), .A2(count[1]), .B0(count[2]), .B1(
        n14), .Y(n25) );
  INVX2M U19 ( .A(count[2]), .Y(n35) );
  INVX2M U20 ( .A(ser_en), .Y(n13) );
  NOR2X2M U21 ( .A(n13), .B(count[0]), .Y(N23) );
  BUFX2M U22 ( .A(n18), .Y(n12) );
  NOR2BX2M U23 ( .AN(data_valid), .B(busy), .Y(n18) );
  NOR2X2M U24 ( .A(n26), .B(n13), .Y(N24) );
  CLKXOR2X2M U25 ( .A(count[0]), .B(n14), .Y(n26) );
  OAI2BB1X2M U26 ( .A0N(ser_data), .A1N(n15), .B0(n16), .Y(n27) );
  AOI22X1M U27 ( .A0(data_reg[1]), .A1(n17), .B0(p_data[0]), .B1(n12), .Y(n16)
         );
  OAI2BB1X2M U28 ( .A0N(data_reg[1]), .A1N(n15), .B0(n24), .Y(n34) );
  AOI22X1M U29 ( .A0(data_reg[2]), .A1(n17), .B0(p_data[1]), .B1(n12), .Y(n24)
         );
  OAI2BB1X2M U30 ( .A0N(n15), .A1N(data_reg[2]), .B0(n23), .Y(n33) );
  AOI22X1M U31 ( .A0(data_reg[3]), .A1(n17), .B0(p_data[2]), .B1(n12), .Y(n23)
         );
  OAI2BB1X2M U32 ( .A0N(n15), .A1N(data_reg[3]), .B0(n22), .Y(n32) );
  AOI22X1M U33 ( .A0(data_reg[4]), .A1(n17), .B0(p_data[3]), .B1(n12), .Y(n22)
         );
  OAI2BB1X2M U34 ( .A0N(n15), .A1N(data_reg[4]), .B0(n21), .Y(n31) );
  AOI22X1M U35 ( .A0(data_reg[5]), .A1(n17), .B0(p_data[4]), .B1(n12), .Y(n21)
         );
  OAI2BB1X2M U36 ( .A0N(n15), .A1N(data_reg[5]), .B0(n20), .Y(n30) );
  AOI22X1M U37 ( .A0(data_reg[6]), .A1(n17), .B0(p_data[5]), .B1(n12), .Y(n20)
         );
  OAI2BB1X2M U38 ( .A0N(n15), .A1N(data_reg[6]), .B0(n19), .Y(n29) );
  AOI22X1M U39 ( .A0(data_reg[7]), .A1(n17), .B0(p_data[6]), .B1(n12), .Y(n19)
         );
  AO22X1M U40 ( .A0(n15), .A1(data_reg[7]), .B0(p_data[7]), .B1(n12), .Y(n28)
         );
  INVX2M U41 ( .A(count[1]), .Y(n14) );
  INVXLM U42 ( .A(test_se), .Y(n38) );
  INVXLM U43 ( .A(n38), .Y(n39) );
endmodule


module TX_FSM_test_1 ( clk, rst, data_valid, par_en, ser_done, mux_sel, ser_en, 
        busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input clk, rst, data_valid, par_en, ser_done, test_si, test_se;
  output ser_en, busy, test_so;
  wire   busy_c, n11, n13, n14, n15, n16, n17, n18, n19, n6, n7, n8, n9, n10,
         n12, n20;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = n10;

  SDFFRQX2M \current_state_reg[1]  ( .D(n8), .SI(n20), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M busy_reg ( .D(busy_c), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(busy) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n9), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRX1M \current_state_reg[0]  ( .D(next_state[0]), .SI(busy), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(n20), .QN(n11) );
  OAI211X2M U8 ( .A0(n19), .A1(n10), .B0(n7), .C0(n15), .Y(busy_c) );
  INVX2M U9 ( .A(n13), .Y(n7) );
  NAND2X2M U10 ( .A(ser_done), .B(n12), .Y(n14) );
  INVX2M U11 ( .A(n16), .Y(n8) );
  AOI32X1M U12 ( .A0(mux_sel[1]), .A1(n11), .A2(n14), .B0(n9), .B1(n13), .Y(
        n16) );
  NOR2X2M U13 ( .A(n11), .B(current_state[2]), .Y(n13) );
  OAI211X2M U14 ( .A0(n11), .A1(n9), .B0(n19), .C0(n10), .Y(mux_sel[0]) );
  OAI31X1M U15 ( .A0(n17), .A1(n15), .A2(n12), .B0(n18), .Y(next_state[0]) );
  NAND2X2M U16 ( .A(ser_done), .B(n11), .Y(n17) );
  NAND3X2M U17 ( .A(n6), .B(n10), .C(data_valid), .Y(n18) );
  INVX2M U18 ( .A(n19), .Y(n6) );
  NAND2X2M U19 ( .A(n11), .B(n9), .Y(n19) );
  NAND2X2M U20 ( .A(current_state[1]), .B(n10), .Y(n15) );
  INVX2M U21 ( .A(n15), .Y(mux_sel[1]) );
  NOR4X1M U22 ( .A(ser_done), .B(current_state[2]), .C(n13), .D(n9), .Y(ser_en) );
  INVX2M U23 ( .A(current_state[2]), .Y(n10) );
  AOI21X2M U24 ( .A0(n11), .A1(n14), .B0(n15), .Y(next_state[2]) );
  INVX2M U25 ( .A(current_state[1]), .Y(n9) );
  INVX2M U26 ( .A(par_en), .Y(n12) );
endmodule


module UART_TX_test_1 ( clk, rst, data_valid, par_en, par_typ, p_data, tx_out, 
        busy, test_si2, test_si1, test_so1, test_se );
  input [7:0] p_data;
  input clk, rst, data_valid, par_en, par_typ, test_si2, test_si1, test_se;
  output tx_out, busy, test_so1;
  wire   par_bit, ser_data, ser_en, ser_done, n1, n2, n4;
  wire   [1:0] mux_sel;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
  mux_test_1 u_mux ( .clk(clk), .rst(n1), .mux_sel(mux_sel), .ser_data(
        ser_data), .par_bit(par_bit), .tx_out(tx_out), .test_si(test_si2), 
        .test_se(test_se) );
  parity_calc_test_1 u_parity_calc ( .clk(clk), .rst(n1), .p_data(p_data), 
        .data_valid(data_valid), .par_typ(par_typ), .par_en(par_en), .busy(
        busy), .par_bit(par_bit), .test_si(n4), .test_se(test_se) );
  serializer_test_1 u_serializer ( .clk(clk), .rst(n1), .p_data(p_data), 
        .ser_en(ser_en), .busy(busy), .data_valid(data_valid), .ser_done(
        ser_done), .ser_data(ser_data), .test_si(par_bit), .test_so(test_so1), 
        .test_se(test_se) );
  TX_FSM_test_1 u_TX_FSM ( .clk(clk), .rst(n1), .data_valid(data_valid), 
        .par_en(par_en), .ser_done(ser_done), .mux_sel(mux_sel), .ser_en(
        ser_en), .busy(busy), .test_si(test_si1), .test_so(n4), .test_se(
        test_se) );
endmodule


module RX_FSM_test_1 ( clk, rst, rx_in, par_en, par_err, strt_glitch, stp_err, 
        prescale, edge_cnt, bit_cnt, par_chk_en, strt_chk_en, stp_chk_en, 
        deser_en, enable, dat_samp_en, data_valid, test_si, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input [3:0] bit_cnt;
  input clk, rst, rx_in, par_en, par_err, strt_glitch, stp_err, test_si,
         test_se;
  output par_chk_en, strt_chk_en, stp_chk_en, deser_en, enable, dat_samp_en,
         data_valid;
  wire   data_valid_c, N107, N108, N109, N110, N111, N112, N113, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, \r112/EQ , \r112/B[0] , \r112/B[1] , \r112/B[2] ,
         \r112/B[3] , \r112/B[4] , \r112/B[5] , \r112/B[9] , \r113/carry[4] ,
         \r113/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign N107 = prescale[1];

  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n35), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n36), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M data_valid_reg ( .D(data_valid_c), .SI(current_state[2]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(data_valid) );
  CLKINVX2M U7 ( .A(prescale[2]), .Y(N108) );
  OR2X1M U8 ( .A(N107), .B(prescale[0]), .Y(n1) );
  OAI2BB1XLM U9 ( .A0N(prescale[0]), .A1N(N107), .B0(n1), .Y(\r112/B[1] ) );
  OAI2BB1XLM U10 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(\r112/B[3] ) );
  XOR2XLM U11 ( .A(prescale[3]), .B(prescale[2]), .Y(N109) );
  OAI31X1M U12 ( .A0(current_state[0]), .A1(rx_in), .A2(current_state[2]), 
        .B0(n28), .Y(enable) );
  NOR3X2M U13 ( .A(current_state[1]), .B(current_state[2]), .C(n35), .Y(n64)
         );
  NOR2X2M U14 ( .A(n36), .B(current_state[2]), .Y(n55) );
  NOR2X2M U15 ( .A(n27), .B(n56), .Y(stp_chk_en) );
  NOR2X2M U16 ( .A(n27), .B(n61), .Y(deser_en) );
  INVX2M U17 ( .A(n61), .Y(n34) );
  INVX2M U18 ( .A(\r112/EQ ), .Y(n33) );
  NAND2BX2M U19 ( .AN(n71), .B(n33), .Y(n56) );
  OAI211X2M U20 ( .A0(n58), .A1(n61), .B0(n62), .C0(n63), .Y(next_state[1]) );
  NAND3X2M U21 ( .A(n64), .B(n29), .C(n65), .Y(n62) );
  INVX2M U22 ( .A(n65), .Y(n32) );
  INVX2M U23 ( .A(n66), .Y(n31) );
  INVX2M U24 ( .A(N113), .Y(n27) );
  NAND2BX2M U25 ( .AN(n57), .B(n60), .Y(n63) );
  INVX2M U26 ( .A(N110), .Y(n26) );
  NAND2X2M U27 ( .A(n55), .B(n35), .Y(n61) );
  INVX2M U28 ( .A(dat_samp_en), .Y(n28) );
  NOR4X1M U29 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(\r112/EQ ) );
  NOR3BX2M U30 ( .AN(n70), .B(bit_cnt[0]), .C(bit_cnt[3]), .Y(n65) );
  NOR3X2M U31 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(n33), .Y(n70) );
  AO21XLM U32 ( .A0(n58), .A1(n34), .B0(n59), .Y(next_state[2]) );
  OAI31X1M U33 ( .A0(n57), .A1(par_err), .A2(n60), .B0(n56), .Y(n59) );
  NAND3BX2M U34 ( .AN(bit_cnt[0]), .B(n70), .C(bit_cnt[3]), .Y(n66) );
  OAI211X2M U35 ( .A0(n67), .A1(n68), .B0(n63), .C0(n69), .Y(next_state[0]) );
  OR2X2M U36 ( .A(rx_in), .B(current_state[1]), .Y(n67) );
  OAI2BB1X2M U37 ( .A0N(n33), .A1N(current_state[2]), .B0(n35), .Y(n68) );
  AOI32X1M U38 ( .A0(n34), .A1(n31), .A2(par_en), .B0(n64), .B1(n32), .Y(n69)
         );
  NAND4X2M U39 ( .A(n56), .B(n61), .C(n72), .D(n73), .Y(dat_samp_en) );
  AOI22X1M U40 ( .A0(n64), .A1(n29), .B0(n55), .B1(n30), .Y(n73) );
  OAI21X2M U41 ( .A0(n64), .A1(n55), .B0(n33), .Y(n72) );
  INVX2M U42 ( .A(par_err), .Y(n30) );
  NOR2X2M U43 ( .A(n66), .B(par_en), .Y(n58) );
  NAND3X2M U44 ( .A(bit_cnt[0]), .B(n70), .C(bit_cnt[3]), .Y(n60) );
  NOR3X2M U45 ( .A(n57), .B(\r112/EQ ), .C(n27), .Y(par_chk_en) );
  NOR4X1M U46 ( .A(n54), .B(n55), .C(\r112/EQ ), .D(current_state[2]), .Y(
        strt_chk_en) );
  NAND2X2M U47 ( .A(current_state[0]), .B(N113), .Y(n54) );
  INVX2M U48 ( .A(edge_cnt[5]), .Y(n24) );
  INVX2M U49 ( .A(edge_cnt[3]), .Y(n22) );
  INVX2M U50 ( .A(N109), .Y(n25) );
  INVX2M U51 ( .A(edge_cnt[2]), .Y(n21) );
  INVX2M U52 ( .A(edge_cnt[1]), .Y(n20) );
  NOR3X2M U53 ( .A(n33), .B(stp_err), .C(n71), .Y(data_valid_c) );
  INVX2M U54 ( .A(edge_cnt[4]), .Y(n23) );
  NAND3X2M U55 ( .A(n35), .B(n36), .C(current_state[2]), .Y(n71) );
  INVX2M U56 ( .A(current_state[0]), .Y(n35) );
  INVX2M U57 ( .A(current_state[1]), .Y(n36) );
  INVX2M U58 ( .A(strt_glitch), .Y(n29) );
  NAND2X2M U59 ( .A(n55), .B(current_state[0]), .Y(n57) );
  OAI2BB1XLM U60 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(\r112/B[2] ) );
  NAND4BXLM U61 ( .AN(\r112/B[9] ), .B(n9), .C(n8), .D(n7), .Y(n13) );
  AND2X1M U62 ( .A(\r113/carry[4] ), .B(prescale[5]), .Y(N112) );
  CLKXOR2X2M U63 ( .A(prescale[5]), .B(\r113/carry[4] ), .Y(N111) );
  AND2X1M U64 ( .A(\r113/carry[3] ), .B(prescale[4]), .Y(\r113/carry[4] ) );
  CLKXOR2X2M U65 ( .A(prescale[4]), .B(\r113/carry[3] ), .Y(N110) );
  AND2X1M U66 ( .A(prescale[2]), .B(prescale[3]), .Y(\r113/carry[3] ) );
  CLKINVX1M U67 ( .A(prescale[0]), .Y(\r112/B[0] ) );
  OR2X1M U68 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OR2X1M U69 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OR2X1M U70 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U71 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(\r112/B[4] ) );
  NOR2X1M U72 ( .A(n4), .B(prescale[5]), .Y(\r112/B[9] ) );
  AO21XLM U73 ( .A0(n4), .A1(prescale[5]), .B0(\r112/B[9] ), .Y(\r112/B[5] )
         );
  NOR2BX1M U74 ( .AN(\r112/B[0] ), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U75 ( .A1N(edge_cnt[1]), .A0(n5), .B0(\r112/B[1] ), .B1(n5), .Y(n9) );
  XNOR2X1M U76 ( .A(\r112/B[5] ), .B(edge_cnt[5]), .Y(n8) );
  NOR2BX1M U77 ( .AN(edge_cnt[0]), .B(\r112/B[0] ), .Y(n6) );
  OAI2B2X1M U78 ( .A1N(\r112/B[1] ), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n7) );
  CLKXOR2X2M U79 ( .A(\r112/B[4] ), .B(edge_cnt[4]), .Y(n12) );
  CLKXOR2X2M U80 ( .A(\r112/B[2] ), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U81 ( .A(\r112/B[3] ), .B(edge_cnt[3]), .Y(n10) );
  NOR2X1M U82 ( .A(N111), .B(n23), .Y(n18) );
  AOI2BB1X1M U83 ( .A0N(N108), .A1N(n20), .B0(edge_cnt[0]), .Y(n14) );
  AOI222X1M U84 ( .A0(N109), .A1(n21), .B0(n14), .B1(N107), .C0(N108), .C1(n20), .Y(n15) );
  AOI221XLM U85 ( .A0(edge_cnt[3]), .A1(n26), .B0(edge_cnt[2]), .B1(n25), .C0(
        n15), .Y(n16) );
  AOI221XLM U86 ( .A0(N111), .A1(n23), .B0(N110), .B1(n22), .C0(n16), .Y(n17)
         );
  OAI2BB2X1M U87 ( .B0(n18), .B1(n17), .A0N(n24), .A1N(N112), .Y(n19) );
  OAI21X1M U88 ( .A0(N112), .A1(n24), .B0(n19), .Y(N113) );
endmodule


module edge_bit_counter_test_1 ( clk, rst, enable, prescale, edge_cnt, bit_cnt, 
        test_si, test_se );
  input [5:0] prescale;
  output [5:0] edge_cnt;
  output [3:0] bit_cnt;
  input clk, rst, enable, test_si, test_se;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N20, N21, N22, N23, N24, N25,
         N37, N38, N39, N40, N41, N42, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, \add_31/carry[5] , \add_31/carry[4] , \add_31/carry[3] ,
         \add_31/carry[2] , n1, n2, n3, n4, n15, n16, n17, n18, n19, n20, n21,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n43, n44;

  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n28), .SI(n39), .SE(n44), .CK(clk), .RN(rst), 
        .Q(bit_cnt[3]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n29), .SI(n38), .SE(n44), .CK(clk), .RN(rst), 
        .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n30), .SI(n37), .SE(n44), .CK(clk), .RN(rst), 
        .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n31), .SI(test_si), .SE(n44), .CK(clk), .RN(
        rst), .Q(bit_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[5]  ( .D(N42), .SI(edge_cnt[4]), .SE(n44), .CK(clk), 
        .RN(rst), .Q(edge_cnt[5]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N37), .SI(n40), .SE(n44), .CK(clk), .RN(rst), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N41), .SI(edge_cnt[3]), .SE(n44), .CK(clk), 
        .RN(rst), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N40), .SI(edge_cnt[2]), .SE(n44), .CK(clk), 
        .RN(rst), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N39), .SI(edge_cnt[1]), .SE(n44), .CK(clk), 
        .RN(rst), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N38), .SI(N20), .SE(n44), .CK(clk), .RN(rst), .Q(edge_cnt[1]) );
  OR2X1M U7 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  OAI2BB1XLM U8 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N8) );
  OAI2BB1XLM U15 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N10) );
  INVX2M U16 ( .A(n27), .Y(n34) );
  NOR2X2M U17 ( .A(n35), .B(N14), .Y(n27) );
  INVX2M U18 ( .A(enable), .Y(n35) );
  AOI21X2M U19 ( .A0(n37), .A1(enable), .B0(n27), .Y(n26) );
  AND2X2M U20 ( .A(N21), .B(n27), .Y(N38) );
  AND2X2M U21 ( .A(N22), .B(n27), .Y(N39) );
  AND2X2M U22 ( .A(N23), .B(n27), .Y(N40) );
  AND2X2M U23 ( .A(N24), .B(n27), .Y(N41) );
  NOR3X2M U24 ( .A(n38), .B(n37), .C(n39), .Y(n23) );
  OAI32X1M U25 ( .A0(n35), .A1(bit_cnt[0]), .A2(n27), .B0(n37), .B1(n34), .Y(
        n31) );
  OAI32X1M U26 ( .A0(n24), .A1(bit_cnt[2]), .A2(n38), .B0(n25), .B1(n39), .Y(
        n29) );
  OA21X2M U27 ( .A0(n35), .A1(bit_cnt[1]), .B0(n26), .Y(n25) );
  OAI22X1M U28 ( .A0(n40), .A1(n34), .B0(n22), .B1(n35), .Y(n28) );
  AOI32X1M U29 ( .A0(n23), .A1(n40), .A2(N14), .B0(bit_cnt[3]), .B1(n36), .Y(
        n22) );
  INVX2M U30 ( .A(bit_cnt[3]), .Y(n40) );
  INVX2M U31 ( .A(n23), .Y(n36) );
  OAI22X1M U32 ( .A0(n26), .A1(n38), .B0(bit_cnt[1]), .B1(n24), .Y(n30) );
  NAND3X2M U33 ( .A(bit_cnt[0]), .B(n34), .C(enable), .Y(n24) );
  AND2X2M U34 ( .A(N25), .B(n27), .Y(N42) );
  AND2X2M U35 ( .A(N20), .B(n27), .Y(N37) );
  INVX2M U36 ( .A(bit_cnt[0]), .Y(n37) );
  INVX2M U37 ( .A(bit_cnt[1]), .Y(n38) );
  INVX2M U38 ( .A(bit_cnt[2]), .Y(n39) );
  ADDHX1M U39 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_31/carry[2] ), .S(
        N21) );
  ADDHX1M U40 ( .A(edge_cnt[2]), .B(\add_31/carry[2] ), .CO(\add_31/carry[3] ), 
        .S(N22) );
  ADDHX1M U41 ( .A(edge_cnt[3]), .B(\add_31/carry[3] ), .CO(\add_31/carry[4] ), 
        .S(N23) );
  ADDHX1M U42 ( .A(edge_cnt[4]), .B(\add_31/carry[4] ), .CO(\add_31/carry[5] ), 
        .S(N24) );
  OAI2BB1XLM U43 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N9) );
  CLKINVX1M U44 ( .A(prescale[0]), .Y(N7) );
  OR2X1M U45 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OR2X1M U46 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OR2X1M U47 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U48 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N11) );
  NOR2X1M U49 ( .A(n4), .B(prescale[5]), .Y(N13) );
  AO21XLM U50 ( .A0(n4), .A1(prescale[5]), .B0(N13), .Y(N12) );
  CLKINVX1M U51 ( .A(edge_cnt[0]), .Y(N20) );
  CLKXOR2X2M U52 ( .A(\add_31/carry[5] ), .B(edge_cnt[5]), .Y(N25) );
  NOR2BX1M U53 ( .AN(N7), .B(edge_cnt[0]), .Y(n15) );
  OAI2B2X1M U54 ( .A1N(edge_cnt[1]), .A0(n15), .B0(N8), .B1(n15), .Y(n19) );
  XNOR2X1M U55 ( .A(N12), .B(edge_cnt[5]), .Y(n18) );
  NOR2BX1M U56 ( .AN(edge_cnt[0]), .B(N7), .Y(n16) );
  OAI2B2X1M U57 ( .A1N(N8), .A0(n16), .B0(edge_cnt[1]), .B1(n16), .Y(n17) );
  NAND4BX1M U58 ( .AN(N13), .B(n19), .C(n18), .D(n17), .Y(n33) );
  CLKXOR2X2M U59 ( .A(N11), .B(edge_cnt[4]), .Y(n32) );
  CLKXOR2X2M U60 ( .A(N9), .B(edge_cnt[2]), .Y(n21) );
  CLKXOR2X2M U61 ( .A(N10), .B(edge_cnt[3]), .Y(n20) );
  NOR4X1M U62 ( .A(n33), .B(n32), .C(n21), .D(n20), .Y(N14) );
  INVXLM U63 ( .A(test_se), .Y(n43) );
  INVXLM U64 ( .A(n43), .Y(n44) );
endmodule


module data_sampling_test_1 ( clk, rst, rx_in, prescale, edge_cnt, dat_samp_en, 
        sampled_data, test_si, test_so, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input clk, rst, rx_in, dat_samp_en, test_si, test_se;
  output sampled_data, test_so;
  wire   N6, N7, N8, N9, N10, N11, N12, N15, N16, N17, N18, N19, N30, N31, N32,
         N33, N34, N35, n45, n46, n47, n48, \add_38/carry[4] ,
         \add_38/carry[3] , \add_38/carry[2] , \r100/carry[4] ,
         \r100/carry[3] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58;
  wire   [2:0] samples;
  assign test_so = samples[2];
  assign N30 = prescale[1];

  SDFFRQX2M \samples_reg[0]  ( .D(n46), .SI(n58), .SE(test_se), .CK(clk), .RN(
        rst), .Q(samples[0]) );
  SDFFRQX2M \samples_reg[1]  ( .D(n47), .SI(n43), .SE(test_se), .CK(clk), .RN(
        rst), .Q(samples[1]) );
  SDFFRQX2M \samples_reg[2]  ( .D(n48), .SI(n35), .SE(test_se), .CK(clk), .RN(
        rst), .Q(samples[2]) );
  SDFFSX1M sampled_reg_reg ( .D(n45), .SI(test_si), .SE(test_se), .CK(clk), 
        .SN(rst), .Q(n58), .QN(n13) );
  OAI31X1M U5 ( .A0(n13), .A1(n14), .A2(n15), .B0(n16), .Y(sampled_data) );
  XOR2XLM U7 ( .A(edge_cnt[0]), .B(N30), .Y(n55) );
  INVXLM U8 ( .A(N30), .Y(N6) );
  XOR2XLM U9 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n24) );
  OAI2BB1XLM U10 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N8) );
  XOR2XLM U11 ( .A(prescale[3]), .B(prescale[2]), .Y(N32) );
  XNOR2X2M U14 ( .A(edge_cnt[1]), .B(prescale[2]), .Y(n39) );
  OR2X2M U15 ( .A(prescale[2]), .B(N30), .Y(n2) );
  ADDHX1M U16 ( .A(prescale[4]), .B(\add_38/carry[3] ), .CO(\add_38/carry[4] ), 
        .S(N17) );
  ADDHX1M U17 ( .A(prescale[3]), .B(\add_38/carry[2] ), .CO(\add_38/carry[3] ), 
        .S(N16) );
  INVX2M U18 ( .A(prescale[2]), .Y(N31) );
  ADDHX1M U19 ( .A(prescale[5]), .B(\add_38/carry[4] ), .CO(N19), .S(N18) );
  ADDHX1M U20 ( .A(prescale[2]), .B(N30), .CO(\add_38/carry[2] ), .S(N15) );
  OAI2BB1XLM U21 ( .A0N(N30), .A1N(prescale[2]), .B0(n2), .Y(N7) );
  INVX2M U22 ( .A(dat_samp_en), .Y(n15) );
  AND2X1M U23 ( .A(\r100/carry[4] ), .B(prescale[5]), .Y(N35) );
  CLKXOR2X2M U24 ( .A(prescale[5]), .B(\r100/carry[4] ), .Y(N34) );
  AND2X1M U25 ( .A(\r100/carry[3] ), .B(prescale[4]), .Y(\r100/carry[4] ) );
  CLKXOR2X2M U26 ( .A(prescale[4]), .B(\r100/carry[3] ), .Y(N33) );
  AND2X1M U27 ( .A(prescale[2]), .B(prescale[3]), .Y(\r100/carry[3] ) );
  OR2X1M U28 ( .A(n2), .B(prescale[3]), .Y(n3) );
  XNOR2X1M U29 ( .A(prescale[4]), .B(n3), .Y(N9) );
  NOR3X1M U30 ( .A(prescale[4]), .B(prescale[5]), .C(n3), .Y(N11) );
  OAI21X1M U31 ( .A0(prescale[4]), .A1(n3), .B0(prescale[5]), .Y(n4) );
  NAND2BX1M U32 ( .AN(N11), .B(n4), .Y(N10) );
  NOR2BX1M U33 ( .AN(edge_cnt[0]), .B(N6), .Y(n5) );
  OAI2B2X1M U34 ( .A1N(N7), .A0(n5), .B0(edge_cnt[1]), .B1(n5), .Y(n8) );
  NOR2BX1M U35 ( .AN(N6), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U36 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N7), .B1(n6), .Y(n7) );
  NAND4BBX1M U37 ( .AN(N11), .BN(edge_cnt[5]), .C(n8), .D(n7), .Y(n12) );
  CLKXOR2X2M U38 ( .A(N10), .B(edge_cnt[4]), .Y(n11) );
  CLKXOR2X2M U39 ( .A(N8), .B(edge_cnt[2]), .Y(n10) );
  CLKXOR2X2M U40 ( .A(N9), .B(edge_cnt[3]), .Y(n9) );
  NOR4X1M U41 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N12) );
  CLKMX2X2M U42 ( .A(samples[2]), .B(rx_in), .S0(n17), .Y(n48) );
  NOR4X1M U43 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n17) );
  CLKXOR2X2M U44 ( .A(edge_cnt[1]), .B(N15), .Y(n21) );
  CLKXOR2X2M U45 ( .A(edge_cnt[0]), .B(N6), .Y(n20) );
  OR3X1M U46 ( .A(n22), .B(N12), .C(n15), .Y(n19) );
  NOR4BX1M U47 ( .AN(n23), .B(n24), .C(n25), .D(n26), .Y(n22) );
  NAND4X1M U48 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n18) );
  XNOR2X1M U49 ( .A(edge_cnt[2]), .B(N16), .Y(n30) );
  XNOR2X1M U50 ( .A(edge_cnt[3]), .B(N17), .Y(n29) );
  XNOR2X1M U51 ( .A(edge_cnt[4]), .B(N18), .Y(n28) );
  XNOR2X1M U52 ( .A(edge_cnt[5]), .B(N19), .Y(n27) );
  MXI2X1M U53 ( .A(n35), .B(n36), .S0(n37), .Y(n47) );
  NOR4X1M U54 ( .A(n38), .B(n25), .C(n26), .D(n24), .Y(n37) );
  CLKXOR2X2M U55 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n26) );
  NAND3BX1M U56 ( .AN(edge_cnt[5]), .B(n39), .C(n40), .Y(n25) );
  CLKXOR2X2M U57 ( .A(n41), .B(N30), .Y(n40) );
  CLKINVX1M U58 ( .A(edge_cnt[0]), .Y(n41) );
  NAND3X1M U59 ( .A(dat_samp_en), .B(n42), .C(n23), .Y(n38) );
  XNOR2X1M U60 ( .A(edge_cnt[4]), .B(prescale[5]), .Y(n23) );
  MXI2X1M U61 ( .A(n43), .B(n36), .S0(n44), .Y(n46) );
  NOR2X1M U62 ( .A(n15), .B(n42), .Y(n44) );
  CLKINVX1M U63 ( .A(N12), .Y(n42) );
  CLKINVX1M U64 ( .A(rx_in), .Y(n36) );
  OAI21X1M U65 ( .A0(n14), .A1(n13), .B0(n16), .Y(n45) );
  NAND3X1M U66 ( .A(n14), .B(dat_samp_en), .C(n49), .Y(n16) );
  AOI21X1M U67 ( .A0(n43), .A1(n35), .B0(n50), .Y(n49) );
  AOI21X1M U68 ( .A0(samples[1]), .A1(samples[0]), .B0(samples[2]), .Y(n50) );
  CLKINVX1M U69 ( .A(samples[1]), .Y(n35) );
  CLKINVX1M U70 ( .A(samples[0]), .Y(n43) );
  AND4X1M U71 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n14) );
  NOR3X1M U72 ( .A(n55), .B(n56), .C(n57), .Y(n54) );
  CLKXOR2X2M U73 ( .A(edge_cnt[4]), .B(N34), .Y(n57) );
  CLKXOR2X2M U74 ( .A(edge_cnt[1]), .B(N31), .Y(n56) );
  XNOR2X1M U75 ( .A(edge_cnt[2]), .B(N32), .Y(n53) );
  XNOR2X1M U76 ( .A(edge_cnt[3]), .B(N33), .Y(n52) );
  XNOR2X1M U77 ( .A(edge_cnt[5]), .B(N35), .Y(n51) );
endmodule


module deserializer_test_1 ( clk, rst, deser_en, sampled_bit, bit_cnt, p_data, 
        test_si, test_se );
  input [3:0] bit_cnt;
  output [7:0] p_data;
  input clk, rst, deser_en, sampled_bit, test_si, test_se;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n1, n2,
         n3, n4, n29, n30, n31, n64, n65, n66, n67, n68, n69, n70, n73, n74;

  SDFFRX1M \data_reg[7]  ( .D(n63), .SI(n64), .SE(n74), .CK(clk), .RN(n2), .Q(
        n31), .QN(n21) );
  SDFFRX1M \data_reg[6]  ( .D(n62), .SI(n65), .SE(n74), .CK(clk), .RN(n2), .Q(
        n64), .QN(n22) );
  SDFFRX1M \data_reg[5]  ( .D(n61), .SI(n66), .SE(n74), .CK(clk), .RN(n2), .Q(
        n65), .QN(n23) );
  SDFFRX1M \data_reg[4]  ( .D(n60), .SI(n67), .SE(n74), .CK(clk), .RN(n2), .Q(
        n66), .QN(n24) );
  SDFFRX1M \data_reg[3]  ( .D(n59), .SI(n68), .SE(n74), .CK(clk), .RN(n2), .Q(
        n67), .QN(n25) );
  SDFFRX1M \data_reg[2]  ( .D(n58), .SI(n69), .SE(n74), .CK(clk), .RN(n2), .Q(
        n68), .QN(n26) );
  SDFFRX1M \data_reg[1]  ( .D(n57), .SI(n70), .SE(n74), .CK(clk), .RN(n2), .Q(
        n69), .QN(n27) );
  SDFFRX1M \data_reg[0]  ( .D(n56), .SI(test_si), .SE(n74), .CK(clk), .RN(n2), 
        .Q(n70), .QN(n28) );
  SDFFRQX2M \p_data_reg[5]  ( .D(n53), .SI(p_data[4]), .SE(n74), .CK(clk), 
        .RN(n2), .Q(p_data[5]) );
  SDFFRQX2M \p_data_reg[1]  ( .D(n49), .SI(p_data[0]), .SE(n74), .CK(clk), 
        .RN(n2), .Q(p_data[1]) );
  SDFFRQX2M \p_data_reg[4]  ( .D(n52), .SI(p_data[3]), .SE(n74), .CK(clk), 
        .RN(n2), .Q(p_data[4]) );
  SDFFRQX2M \p_data_reg[0]  ( .D(n48), .SI(n31), .SE(n74), .CK(clk), .RN(n2), 
        .Q(p_data[0]) );
  SDFFRQX2M \p_data_reg[7]  ( .D(n55), .SI(p_data[6]), .SE(n74), .CK(clk), 
        .RN(n2), .Q(p_data[7]) );
  SDFFRQX2M \p_data_reg[3]  ( .D(n51), .SI(p_data[2]), .SE(n74), .CK(clk), 
        .RN(n2), .Q(p_data[3]) );
  SDFFRQX2M \p_data_reg[6]  ( .D(n54), .SI(p_data[5]), .SE(n74), .CK(clk), 
        .RN(n2), .Q(p_data[6]) );
  SDFFRQX2M \p_data_reg[2]  ( .D(n50), .SI(p_data[1]), .SE(n74), .CK(clk), 
        .RN(n2), .Q(p_data[2]) );
  INVX2M U19 ( .A(deser_en), .Y(n4) );
  INVX2M U20 ( .A(n3), .Y(n2) );
  INVX2M U21 ( .A(rst), .Y(n3) );
  NAND2X2M U22 ( .A(sampled_bit), .B(deser_en), .Y(n34) );
  NAND2X2M U23 ( .A(n46), .B(n4), .Y(n37) );
  BUFX2M U24 ( .A(n32), .Y(n1) );
  NAND4BX1M U25 ( .AN(n46), .B(deser_en), .C(n35), .D(n29), .Y(n32) );
  OAI2B2X1M U26 ( .A1N(n40), .A0(n34), .B0(n26), .B1(n40), .Y(n58) );
  OAI21X2M U27 ( .A0(n39), .A1(n29), .B0(n37), .Y(n40) );
  OAI2B2X1M U28 ( .A1N(n47), .A0(n34), .B0(n21), .B1(n47), .Y(n63) );
  NAND2X2M U29 ( .A(n37), .B(n1), .Y(n47) );
  OAI2B2X1M U30 ( .A1N(n38), .A0(n34), .B0(n27), .B1(n38), .Y(n57) );
  OAI21X2M U31 ( .A0(bit_cnt[0]), .A1(n39), .B0(n37), .Y(n38) );
  OAI2B2X1M U32 ( .A1N(n33), .A0(n34), .B0(n28), .B1(n33), .Y(n56) );
  OAI2BB1X2M U33 ( .A0N(n35), .A1N(n36), .B0(n37), .Y(n33) );
  OAI2B2X1M U34 ( .A1N(n45), .A0(n34), .B0(n22), .B1(n45), .Y(n62) );
  OAI31X1M U35 ( .A0(n42), .A1(n30), .A2(n29), .B0(n37), .Y(n45) );
  OAI2B2X1M U36 ( .A1N(n43), .A0(n34), .B0(n24), .B1(n43), .Y(n60) );
  OAI31X1M U37 ( .A0(n42), .A1(bit_cnt[1]), .A2(n29), .B0(n37), .Y(n43) );
  OAI2B2X1M U38 ( .A1N(n44), .A0(n34), .B0(n23), .B1(n44), .Y(n61) );
  OAI31X1M U39 ( .A0(n42), .A1(bit_cnt[0]), .A2(n30), .B0(n37), .Y(n44) );
  OAI2B2X1M U40 ( .A1N(n41), .A0(n34), .B0(n25), .B1(n41), .Y(n59) );
  OAI31X1M U41 ( .A0(n42), .A1(bit_cnt[1]), .A2(bit_cnt[0]), .B0(n37), .Y(n41)
         );
  NOR3X2M U42 ( .A(n46), .B(bit_cnt[3]), .C(n4), .Y(n36) );
  NAND3BX2M U43 ( .AN(bit_cnt[2]), .B(n36), .C(bit_cnt[1]), .Y(n39) );
  OAI2BB2X1M U44 ( .B0(n1), .B1(n28), .A0N(p_data[0]), .A1N(n1), .Y(n48) );
  OAI2BB2X1M U45 ( .B0(n1), .B1(n27), .A0N(p_data[1]), .A1N(n1), .Y(n49) );
  OAI2BB2X1M U46 ( .B0(n1), .B1(n26), .A0N(p_data[2]), .A1N(n1), .Y(n50) );
  OAI2BB2X1M U47 ( .B0(n1), .B1(n25), .A0N(p_data[3]), .A1N(n1), .Y(n51) );
  OAI2BB2X1M U48 ( .B0(n1), .B1(n24), .A0N(p_data[4]), .A1N(n1), .Y(n52) );
  OAI2BB2X1M U49 ( .B0(n1), .B1(n23), .A0N(p_data[5]), .A1N(n1), .Y(n53) );
  OAI2BB2X1M U50 ( .B0(n1), .B1(n22), .A0N(p_data[6]), .A1N(n1), .Y(n54) );
  OAI2BB2X1M U51 ( .B0(n1), .B1(n21), .A0N(p_data[7]), .A1N(n1), .Y(n55) );
  NAND2X2M U52 ( .A(bit_cnt[2]), .B(n36), .Y(n42) );
  NOR3BX2M U53 ( .AN(n35), .B(bit_cnt[0]), .C(bit_cnt[3]), .Y(n46) );
  NOR2X2M U54 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .Y(n35) );
  INVX2M U55 ( .A(bit_cnt[0]), .Y(n29) );
  INVX2M U56 ( .A(bit_cnt[1]), .Y(n30) );
  INVXLM U57 ( .A(test_se), .Y(n73) );
  INVXLM U58 ( .A(n73), .Y(n74) );
endmodule


module parity_check_test_1 ( clk, rst, par_typ, par_chk_en, sampled_bit, 
        p_data, par_err, parity_error, test_si, test_se );
  input [7:0] p_data;
  input clk, rst, par_typ, par_chk_en, sampled_bit, test_si, test_se;
  output par_err, parity_error;
  wire   N9, n3, n4, n5, n6, n7, n8;

  SDFFRQX2M par_err_reg ( .D(N9), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(par_err) );
  SDFFRQX2M parity_error_reg ( .D(N9), .SI(par_err), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(parity_error) );
  NOR2BX2M U5 ( .AN(par_chk_en), .B(n3), .Y(N9) );
  XOR3XLM U6 ( .A(n4), .B(n5), .C(n6), .Y(n3) );
  XOR3XLM U7 ( .A(p_data[5]), .B(p_data[4]), .C(n7), .Y(n5) );
  XNOR2X2M U8 ( .A(p_data[7]), .B(p_data[6]), .Y(n7) );
  XOR3XLM U9 ( .A(p_data[1]), .B(p_data[0]), .C(n8), .Y(n4) );
  XNOR2X2M U10 ( .A(p_data[3]), .B(p_data[2]), .Y(n8) );
  XNOR2X2M U11 ( .A(sampled_bit), .B(par_typ), .Y(n6) );
endmodule


module stop_check_test_1 ( clk, rst, stp_chk_en, sampled_bit, stp_err, 
        stop_error, test_si, test_se );
  input clk, rst, stp_chk_en, sampled_bit, test_si, test_se;
  output stp_err, stop_error;
  wire   N5;

  SDFFRQX2M stp_err_reg ( .D(N5), .SI(stop_error), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(stp_err) );
  SDFFRQX2M stop_error_reg ( .D(N5), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(stop_error) );
  NOR2BX2M U5 ( .AN(stp_chk_en), .B(sampled_bit), .Y(N5) );
endmodule


module strt_check_test_1 ( clk, rst, strt_chk_en, sampled_bit, strt_glitch, 
        test_si, test_se );
  input clk, rst, strt_chk_en, sampled_bit, test_si, test_se;
  output strt_glitch;
  wire   N4;

  SDFFRQX2M strt_glitch_reg ( .D(N4), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(strt_glitch) );
  AND2X2M U4 ( .A(strt_chk_en), .B(sampled_bit), .Y(N4) );
endmodule


module UART_RX_test_1 ( clk, rst, par_typ, par_en, prescale, rx_in, p_data, 
        data_valid, parity_error, stop_error, test_si, test_so, test_se );
  input [5:0] prescale;
  output [7:0] p_data;
  input clk, rst, par_typ, par_en, rx_in, test_si, test_se;
  output data_valid, parity_error, stop_error, test_so;
  wire   par_err, strt_glitch, stp_err, par_chk_en, strt_chk_en, stp_chk_en,
         deser_en, enable, dat_samp_en, sampled_bit, n1, n2, n3;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;
  assign test_so = strt_glitch;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
  RX_FSM_test_1 u_RX_FSM ( .clk(clk), .rst(n1), .rx_in(rx_in), .par_en(par_en), 
        .par_err(par_err), .strt_glitch(strt_glitch), .stp_err(stp_err), 
        .prescale(prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt), 
        .par_chk_en(par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(
        stp_chk_en), .deser_en(deser_en), .enable(enable), .dat_samp_en(
        dat_samp_en), .data_valid(data_valid), .test_si(test_si), .test_se(
        test_se) );
  edge_bit_counter_test_1 u_edge_bit_counter ( .clk(clk), .rst(n1), .enable(
        enable), .prescale(prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt), 
        .test_si(p_data[7]), .test_se(test_se) );
  data_sampling_test_1 u_data_sampling ( .clk(clk), .rst(n1), .rx_in(rx_in), 
        .prescale(prescale), .edge_cnt(edge_cnt), .dat_samp_en(dat_samp_en), 
        .sampled_data(sampled_bit), .test_si(data_valid), .test_so(n3), 
        .test_se(test_se) );
  deserializer_test_1 u_deserializer ( .clk(clk), .rst(n1), .deser_en(deser_en), .sampled_bit(sampled_bit), .bit_cnt(bit_cnt), .p_data(p_data), .test_si(n3), 
        .test_se(test_se) );
  parity_check_test_1 u_parity_check ( .clk(clk), .rst(n1), .par_typ(par_typ), 
        .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), .p_data(p_data), 
        .par_err(par_err), .parity_error(parity_error), .test_si(edge_cnt[5]), 
        .test_se(test_se) );
  stop_check_test_1 u_stop_check ( .clk(clk), .rst(n1), .stp_chk_en(stp_chk_en), .sampled_bit(sampled_bit), .stp_err(stp_err), .stop_error(stop_error), 
        .test_si(parity_error), .test_se(test_se) );
  strt_check_test_1 u_strt_check ( .clk(clk), .rst(n1), .strt_chk_en(
        strt_chk_en), .sampled_bit(sampled_bit), .strt_glitch(strt_glitch), 
        .test_si(stp_err), .test_se(test_se) );
endmodule


module UART_test_1 ( tx_clk, rx_clk, rst, tx_in_v, tx_in_p, prescale, rx_in_s, 
        par_en, par_typ, tx_out_s, busy, rx_out_p, rx_out_v, parity_error, 
        stop_error, test_si2, test_si1, test_so1, test_se );
  input [7:0] tx_in_p;
  input [5:0] prescale;
  output [7:0] rx_out_p;
  input tx_clk, rx_clk, rst, tx_in_v, rx_in_s, par_en, par_typ, test_si2,
         test_si1, test_se;
  output tx_out_s, busy, rx_out_v, parity_error, stop_error, test_so1;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
  UART_TX_test_1 u_tx ( .clk(tx_clk), .rst(n1), .data_valid(tx_in_v), .par_en(
        par_en), .par_typ(par_typ), .p_data(tx_in_p), .tx_out(tx_out_s), 
        .busy(busy), .test_si2(test_si2), .test_si1(n4), .test_so1(test_so1), 
        .test_se(test_se) );
  UART_RX_test_1 u_rx ( .clk(rx_clk), .rst(n1), .par_typ(par_typ), .par_en(
        par_en), .prescale(prescale), .rx_in(rx_in_s), .p_data(rx_out_p), 
        .data_valid(rx_out_v), .parity_error(parity_error), .stop_error(
        stop_error), .test_si(test_si1), .test_so(n4), .test_se(test_se) );
endmodule


module SYS_CTRL_alu_data8_fun_width4_frame_data8_addr_bits4_test_1 ( clk, rst, 
        alu_out, out_vld, rddata, rddata_vld, wr_done, rx_p_data, rx_d_vld, 
        fifo_full, alu_fun, alu_en, clk_en, address, wr_data, wr_en, rd_en, 
        tx_p_data, tx_d_vld, clk_div_en, test_so, test_se );
  input [15:0] alu_out;
  input [7:0] rddata;
  input [7:0] rx_p_data;
  output [3:0] alu_fun;
  output [3:0] address;
  output [7:0] wr_data;
  output [7:0] tx_p_data;
  input clk, rst, out_vld, rddata_vld, wr_done, rx_d_vld, fifo_full, test_se;
  output alu_en, clk_en, wr_en, rd_en, tx_d_vld, clk_div_en, test_so;
  wire   \addr_reg[0] , n28, n29, n30, n32, n33, n34, n35, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n31, n36, n37,
         n38, n39, n40, n41, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113;
  wire   [2:0] current_state;
  wire   [1:0] cmd_reg;
  assign test_so = current_state[2];

  SDFFRX1M \alu_fun_reg_reg[3]  ( .D(n92), .SI(n108), .SE(test_se), .CK(clk), 
        .RN(n17), .Q(n107), .QN(n32) );
  SDFFRX1M \alu_fun_reg_reg[2]  ( .D(n91), .SI(n109), .SE(test_se), .CK(clk), 
        .RN(n17), .Q(n108), .QN(n33) );
  SDFFRX1M \alu_fun_reg_reg[1]  ( .D(n90), .SI(n110), .SE(test_se), .CK(clk), 
        .RN(n17), .Q(n109), .QN(n34) );
  SDFFRX1M \alu_fun_reg_reg[0]  ( .D(n89), .SI(n111), .SE(test_se), .CK(clk), 
        .RN(n17), .Q(n110), .QN(n35) );
  SDFFRX1M \addr_reg_reg[3]  ( .D(n96), .SI(n112), .SE(test_se), .CK(clk), 
        .RN(n17), .Q(n111), .QN(n28) );
  SDFFRX1M \addr_reg_reg[2]  ( .D(n95), .SI(n113), .SE(test_se), .CK(clk), 
        .RN(n17), .Q(n112), .QN(n29) );
  SDFFRQX2M \addr_reg_reg[0]  ( .D(n93), .SI(wr_done), .SE(test_se), .CK(clk), 
        .RN(n17), .Q(\addr_reg[0] ) );
  SDFFRX1M \addr_reg_reg[1]  ( .D(n94), .SI(\addr_reg[0] ), .SE(test_se), .CK(
        clk), .RN(n17), .Q(n113), .QN(n30) );
  SDFFRQX2M \cmd_reg_reg[0]  ( .D(n101), .SI(n107), .SE(test_se), .CK(clk), 
        .RN(n17), .Q(cmd_reg[0]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n97), .SI(clk_en), .SE(test_se), .CK(
        clk), .RN(n17), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n99), .SI(n39), .SE(test_se), .CK(clk), 
        .RN(n17), .Q(current_state[2]) );
  SDFFRX1M \cmd_reg_reg[1]  ( .D(n100), .SI(n25), .SE(test_se), .CK(clk), .RN(
        n17), .Q(cmd_reg[1]), .QN(clk_en) );
  OAI22X4M U18 ( .A0(n104), .A1(n26), .B0(n86), .B1(n30), .Y(address[1]) );
  OAI22X2M U20 ( .A0(n103), .A1(n26), .B0(n86), .B1(n29), .Y(address[2]) );
  OAI21X2M U21 ( .A0(n105), .A1(n26), .B0(n87), .Y(address[0]) );
  OAI22X1M U22 ( .A0(n82), .A1(n33), .B0(n103), .B1(n84), .Y(alu_fun[2]) );
  OAI22X1M U23 ( .A0(n82), .A1(n34), .B0(n104), .B1(n84), .Y(alu_fun[1]) );
  OAI22X1M U24 ( .A0(n82), .A1(n35), .B0(n105), .B1(n84), .Y(alu_fun[0]) );
  INVX2M U25 ( .A(n65), .Y(n26) );
  INVX2M U26 ( .A(wr_en), .Y(n23) );
  INVX2M U27 ( .A(tx_d_vld), .Y(n20) );
  INVX2M U28 ( .A(n67), .Y(n36) );
  INVX2M U29 ( .A(n43), .Y(n24) );
  NOR2X2M U30 ( .A(n42), .B(clk_en), .Y(n65) );
  OAI221X1M U31 ( .A0(n78), .A1(n79), .B0(tx_d_vld), .B1(n57), .C0(n55), .Y(
        n68) );
  OAI21X2M U32 ( .A0(n82), .A1(n56), .B0(n58), .Y(tx_d_vld) );
  OAI32X1M U33 ( .A0(n105), .A1(n31), .A2(n80), .B0(n25), .B1(n81), .Y(n101)
         );
  OAI32X1M U34 ( .A0(n104), .A1(n31), .A2(n80), .B0(clk_en), .B1(n81), .Y(n100) );
  OAI21BX1M U35 ( .A0(n42), .A1(n59), .B0N(n60), .Y(rd_en) );
  OAI21X2M U36 ( .A0(n42), .A1(n43), .B0(n44), .Y(wr_en) );
  NOR2X2M U37 ( .A(n56), .B(n57), .Y(n46) );
  NOR2X2M U38 ( .A(n55), .B(n56), .Y(n47) );
  INVX2M U39 ( .A(n61), .Y(n22) );
  NOR2X2M U40 ( .A(n59), .B(n78), .Y(n60) );
  NOR2X2M U41 ( .A(n23), .B(n105), .Y(wr_data[0]) );
  NOR2X2M U42 ( .A(n23), .B(n104), .Y(wr_data[1]) );
  NOR2X2M U43 ( .A(n23), .B(n103), .Y(wr_data[2]) );
  NOR2X2M U44 ( .A(n23), .B(n102), .Y(wr_data[3]) );
  AND2X2M U45 ( .A(n57), .B(n55), .Y(n82) );
  NAND2X2M U46 ( .A(n25), .B(clk_en), .Y(n43) );
  NAND2X2M U47 ( .A(n37), .B(clk_en), .Y(n55) );
  INVX2M U48 ( .A(n78), .Y(n37) );
  INVX2M U49 ( .A(fifo_full), .Y(n21) );
  INVX2M U50 ( .A(n58), .Y(n19) );
  OAI22X1M U51 ( .A0(n105), .A1(n26), .B0(n65), .B1(n41), .Y(n93) );
  OAI22X1M U52 ( .A0(n39), .A1(n67), .B0(n36), .B1(n73), .Y(n98) );
  AOI22X1M U53 ( .A0(n69), .A1(n24), .B0(n74), .B1(n25), .Y(n73) );
  NAND2X2M U54 ( .A(n106), .B(n77), .Y(n67) );
  OR4X1M U55 ( .A(n69), .B(n64), .C(n74), .D(n72), .Y(n77) );
  INVX2M U56 ( .A(n81), .Y(n31) );
  NAND2X2M U57 ( .A(n82), .B(n84), .Y(alu_en) );
  INVX2M U58 ( .A(n18), .Y(n17) );
  INVX2M U59 ( .A(rst), .Y(n18) );
  AOI32X1M U60 ( .A0(rx_d_vld), .A1(n88), .A2(n69), .B0(\addr_reg[0] ), .B1(
        n60), .Y(n87) );
  OAI21X2M U61 ( .A0(cmd_reg[0]), .A1(n41), .B0(n43), .Y(n88) );
  NOR3X2M U62 ( .A(current_state[1]), .B(current_state[2]), .C(n40), .Y(n74)
         );
  NOR3X2M U63 ( .A(current_state[0]), .B(current_state[2]), .C(n39), .Y(n69)
         );
  AOI2B1X1M U64 ( .A1N(n44), .A0(cmd_reg[1]), .B0(n60), .Y(n86) );
  NAND2X2M U65 ( .A(rx_d_vld), .B(n74), .Y(n42) );
  INVX2M U67 ( .A(current_state[0]), .Y(n40) );
  NAND3X2M U68 ( .A(rx_d_vld), .B(n25), .C(n69), .Y(n44) );
  AOI32X1M U69 ( .A0(n62), .A1(current_state[0]), .A2(n63), .B0(rx_d_vld), 
        .B1(n64), .Y(n61) );
  OAI22X1M U70 ( .A0(n66), .A1(n36), .B0(n40), .B1(n67), .Y(n97) );
  AOI221XLM U71 ( .A0(current_state[0]), .A1(n68), .B0(n69), .B1(n24), .C0(n70), .Y(n66) );
  OAI221X1M U72 ( .A0(n20), .A1(n55), .B0(n71), .B1(n106), .C0(n38), .Y(n70)
         );
  INVX2M U73 ( .A(n72), .Y(n38) );
  OAI22X1M U74 ( .A0(n61), .A1(n105), .B0(n22), .B1(n35), .Y(n89) );
  OAI22X1M U75 ( .A0(n61), .A1(n104), .B0(n22), .B1(n34), .Y(n90) );
  OAI22X1M U76 ( .A0(n61), .A1(n103), .B0(n22), .B1(n33), .Y(n91) );
  OAI22X1M U77 ( .A0(n61), .A1(n102), .B0(n22), .B1(n32), .Y(n92) );
  AOI31X2M U78 ( .A0(n37), .A1(cmd_reg[1]), .A2(wr_done), .B0(tx_d_vld), .Y(
        n71) );
  AOI21X2M U79 ( .A0(rx_d_vld), .A1(n79), .B0(n62), .Y(n80) );
  NAND3X2M U80 ( .A(current_state[0]), .B(n39), .C(current_state[2]), .Y(n57)
         );
  NAND2X2M U81 ( .A(cmd_reg[0]), .B(cmd_reg[1]), .Y(n59) );
  NAND3X2M U82 ( .A(n40), .B(n39), .C(current_state[2]), .Y(n78) );
  OAI2BB1X2M U83 ( .A0N(rddata[0]), .A1N(n19), .B0(n54), .Y(tx_p_data[0]) );
  AOI22X1M U84 ( .A0(alu_out[8]), .A1(n46), .B0(alu_out[0]), .B1(n47), .Y(n54)
         );
  OAI2BB1X2M U85 ( .A0N(rddata[1]), .A1N(n19), .B0(n53), .Y(tx_p_data[1]) );
  AOI22X1M U86 ( .A0(alu_out[9]), .A1(n46), .B0(alu_out[1]), .B1(n47), .Y(n53)
         );
  OAI2BB1X2M U87 ( .A0N(rddata[2]), .A1N(n19), .B0(n52), .Y(tx_p_data[2]) );
  AOI22X1M U88 ( .A0(alu_out[10]), .A1(n46), .B0(alu_out[2]), .B1(n47), .Y(n52) );
  OAI2BB1X2M U89 ( .A0N(rddata[3]), .A1N(n19), .B0(n51), .Y(tx_p_data[3]) );
  AOI22X1M U90 ( .A0(alu_out[11]), .A1(n46), .B0(alu_out[3]), .B1(n47), .Y(n51) );
  OAI2BB1X2M U91 ( .A0N(rddata[4]), .A1N(n19), .B0(n50), .Y(tx_p_data[4]) );
  AOI22X1M U92 ( .A0(alu_out[12]), .A1(n46), .B0(alu_out[4]), .B1(n47), .Y(n50) );
  OAI2BB1X2M U93 ( .A0N(rddata[5]), .A1N(n19), .B0(n49), .Y(tx_p_data[5]) );
  AOI22X1M U94 ( .A0(alu_out[13]), .A1(n46), .B0(alu_out[5]), .B1(n47), .Y(n49) );
  OAI2BB1X2M U95 ( .A0N(rddata[6]), .A1N(n19), .B0(n48), .Y(tx_p_data[6]) );
  AOI22X1M U96 ( .A0(alu_out[14]), .A1(n46), .B0(alu_out[6]), .B1(n47), .Y(n48) );
  OAI2BB1X2M U97 ( .A0N(rddata[7]), .A1N(n19), .B0(n45), .Y(tx_p_data[7]) );
  AOI22X1M U98 ( .A0(alu_out[15]), .A1(n46), .B0(alu_out[7]), .B1(n47), .Y(n45) );
  NOR2BX2M U99 ( .AN(rx_p_data[5]), .B(n23), .Y(wr_data[5]) );
  NOR2BX2M U100 ( .AN(rx_p_data[6]), .B(n23), .Y(wr_data[6]) );
  NOR2BX2M U101 ( .AN(rx_p_data[7]), .B(n23), .Y(wr_data[7]) );
  NAND2X2M U102 ( .A(out_vld), .B(n21), .Y(n56) );
  NOR2X2M U103 ( .A(n25), .B(cmd_reg[1]), .Y(n63) );
  OAI22X1M U104 ( .A0(n102), .A1(n26), .B0(n86), .B1(n28), .Y(address[3]) );
  NOR2BX2M U105 ( .AN(rx_p_data[4]), .B(n23), .Y(wr_data[4]) );
  NAND3X2M U106 ( .A(n60), .B(n21), .C(rddata_vld), .Y(n58) );
  INVX2M U107 ( .A(cmd_reg[0]), .Y(n25) );
  AOI21X2M U108 ( .A0(n75), .A1(n76), .B0(n36), .Y(n99) );
  AOI31X2M U109 ( .A0(cmd_reg[1]), .A1(n25), .A2(n69), .B0(n64), .Y(n76) );
  AOI21X2M U110 ( .A0(cmd_reg[0]), .A1(n74), .B0(n68), .Y(n75) );
  INVX2M U111 ( .A(rx_p_data[1]), .Y(n104) );
  INVX2M U112 ( .A(rx_p_data[0]), .Y(n105) );
  OR2X2M U113 ( .A(wr_done), .B(tx_d_vld), .Y(n79) );
  INVX2M U114 ( .A(\addr_reg[0] ), .Y(n41) );
  NOR3X2M U115 ( .A(current_state[1]), .B(current_state[2]), .C(
        current_state[0]), .Y(n72) );
  NOR3X2M U116 ( .A(n40), .B(current_state[2]), .C(n39), .Y(n64) );
  OAI21X2M U117 ( .A0(cmd_reg[1]), .A1(n57), .B0(n83), .Y(n81) );
  AOI31X2M U118 ( .A0(n40), .A1(n39), .A2(cmd_reg[1]), .B0(n72), .Y(n83) );
  OAI22X1M U119 ( .A0(n104), .A1(n26), .B0(n65), .B1(n30), .Y(n94) );
  OAI22X1M U120 ( .A0(n103), .A1(n26), .B0(n65), .B1(n29), .Y(n95) );
  OAI22X1M U121 ( .A0(n102), .A1(n26), .B0(n65), .B1(n28), .Y(n96) );
  NOR2X2M U122 ( .A(n106), .B(current_state[2]), .Y(n62) );
  INVX2M U123 ( .A(rx_d_vld), .Y(n106) );
  INVX2M U124 ( .A(rx_p_data[3]), .Y(n102) );
  INVX2M U125 ( .A(rx_p_data[2]), .Y(n103) );
  NAND2X2M U126 ( .A(rx_d_vld), .B(n85), .Y(n84) );
  AO21XLM U127 ( .A0(n74), .A1(n63), .B0(n64), .Y(n85) );
  OAI22X1M U128 ( .A0(n82), .A1(n32), .B0(n102), .B1(n84), .Y(alu_fun[3]) );
  SDFFRX1M \current_state_reg[1]  ( .D(n98), .SI(n40), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(current_state[1]), .QN(n39) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module Register_File_8_x_16_test_1 ( WrEn, RdEn, CLK, RST, address, WrData, 
        RdData, RdData_VLD, wr_done, REG0, REG1, REG2, REG3, test_si2, 
        test_si1, test_so1, test_se );
  input [3:0] address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST, test_si2, test_si1, test_se;
  output RdData_VLD, wr_done, test_so1;
  wire   N10, N11, N12, \Reg_File[4][7] , \Reg_File[4][6] , \Reg_File[4][5] ,
         \Reg_File[4][4] , \Reg_File[4][3] , \Reg_File[4][2] ,
         \Reg_File[4][1] , \Reg_File[4][0] , \Reg_File[5][7] ,
         \Reg_File[5][6] , \Reg_File[5][5] , \Reg_File[5][4] ,
         \Reg_File[5][3] , \Reg_File[5][2] , \Reg_File[5][1] ,
         \Reg_File[5][0] , \Reg_File[6][7] , \Reg_File[6][6] ,
         \Reg_File[6][5] , \Reg_File[6][4] , \Reg_File[6][3] ,
         \Reg_File[6][2] , \Reg_File[6][1] , \Reg_File[6][0] ,
         \Reg_File[7][7] , \Reg_File[7][6] , \Reg_File[7][5] ,
         \Reg_File[7][4] , \Reg_File[7][3] , \Reg_File[7][2] ,
         \Reg_File[7][1] , \Reg_File[7][0] , N26, N27, N28, N29, N30, N31, N32,
         N33, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n209, n210, n211;
  assign N10 = address[0];
  assign N11 = address[1];
  assign N12 = address[2];
  assign test_so1 = \Reg_File[7][3] ;

  SDFFRQX2M \RdData_reg[7]  ( .D(n172), .SI(RdData[6]), .SE(n210), .CK(CLK), 
        .RN(n193), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n171), .SI(RdData[5]), .SE(n209), .CK(CLK), 
        .RN(n193), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n170), .SI(RdData[4]), .SE(n211), .CK(CLK), 
        .RN(n193), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n169), .SI(RdData[3]), .SE(n210), .CK(CLK), 
        .RN(n193), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n168), .SI(RdData[2]), .SE(n209), .CK(CLK), 
        .RN(n193), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n167), .SI(RdData[1]), .SE(n209), .CK(CLK), 
        .RN(n192), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n166), .SI(RdData[0]), .SE(n211), .CK(CLK), 
        .RN(n192), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n165), .SI(RdData_VLD), .SE(n210), .CK(CLK), 
        .RN(n192), .Q(RdData[0]) );
  SDFFRQX2M \Reg_File_reg[5][7]  ( .D(n124), .SI(\Reg_File[5][6] ), .SE(n209), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[5][7] ) );
  SDFFRQX2M \Reg_File_reg[5][6]  ( .D(n123), .SI(\Reg_File[5][5] ), .SE(n211), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[5][6] ) );
  SDFFRQX2M \Reg_File_reg[5][5]  ( .D(n122), .SI(\Reg_File[5][4] ), .SE(n210), 
        .CK(CLK), .RN(n190), .Q(\Reg_File[5][5] ) );
  SDFFRQX2M \Reg_File_reg[5][4]  ( .D(n121), .SI(\Reg_File[5][3] ), .SE(n209), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[5][4] ) );
  SDFFRQX2M \Reg_File_reg[5][3]  ( .D(n120), .SI(\Reg_File[5][2] ), .SE(n209), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[5][3] ) );
  SDFFRQX2M \Reg_File_reg[5][2]  ( .D(n119), .SI(\Reg_File[5][1] ), .SE(n211), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[5][2] ) );
  SDFFRQX2M \Reg_File_reg[5][1]  ( .D(n118), .SI(\Reg_File[5][0] ), .SE(n210), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[5][1] ) );
  SDFFRQX2M \Reg_File_reg[5][0]  ( .D(n117), .SI(\Reg_File[4][7] ), .SE(n209), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[5][0] ) );
  SDFFRQX2M \Reg_File_reg[7][7]  ( .D(n108), .SI(\Reg_File[7][6] ), .SE(n211), 
        .CK(CLK), .RN(n188), .Q(\Reg_File[7][7] ) );
  SDFFRQX2M \Reg_File_reg[7][6]  ( .D(n107), .SI(\Reg_File[7][5] ), .SE(n210), 
        .CK(CLK), .RN(n188), .Q(\Reg_File[7][6] ) );
  SDFFRQX2M \Reg_File_reg[7][5]  ( .D(n106), .SI(\Reg_File[7][4] ), .SE(n209), 
        .CK(CLK), .RN(n188), .Q(\Reg_File[7][5] ) );
  SDFFRQX2M \Reg_File_reg[7][4]  ( .D(n105), .SI(test_si2), .SE(n211), .CK(CLK), .RN(n188), .Q(\Reg_File[7][4] ) );
  SDFFRQX2M \Reg_File_reg[7][3]  ( .D(n104), .SI(\Reg_File[7][2] ), .SE(n210), 
        .CK(CLK), .RN(n188), .Q(\Reg_File[7][3] ) );
  SDFFRQX2M \Reg_File_reg[7][2]  ( .D(n103), .SI(\Reg_File[7][1] ), .SE(n209), 
        .CK(CLK), .RN(n188), .Q(\Reg_File[7][2] ) );
  SDFFRQX2M \Reg_File_reg[7][1]  ( .D(n102), .SI(\Reg_File[7][0] ), .SE(n211), 
        .CK(CLK), .RN(n188), .Q(\Reg_File[7][1] ) );
  SDFFRQX2M \Reg_File_reg[7][0]  ( .D(n101), .SI(\Reg_File[6][7] ), .SE(n210), 
        .CK(CLK), .RN(n188), .Q(\Reg_File[7][0] ) );
  SDFFRQX2M \Reg_File_reg[6][7]  ( .D(n116), .SI(\Reg_File[6][6] ), .SE(n209), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[6][7] ) );
  SDFFRQX2M \Reg_File_reg[6][6]  ( .D(n115), .SI(\Reg_File[6][5] ), .SE(n211), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[6][6] ) );
  SDFFRQX2M \Reg_File_reg[6][5]  ( .D(n114), .SI(\Reg_File[6][4] ), .SE(n210), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[6][5] ) );
  SDFFRQX2M \Reg_File_reg[6][4]  ( .D(n113), .SI(\Reg_File[6][3] ), .SE(n209), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[6][4] ) );
  SDFFRQX2M \Reg_File_reg[6][3]  ( .D(n112), .SI(\Reg_File[6][2] ), .SE(n211), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[6][3] ) );
  SDFFRQX2M \Reg_File_reg[6][2]  ( .D(n111), .SI(\Reg_File[6][1] ), .SE(n210), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[6][2] ) );
  SDFFRQX2M \Reg_File_reg[6][1]  ( .D(n110), .SI(\Reg_File[6][0] ), .SE(n209), 
        .CK(CLK), .RN(n189), .Q(\Reg_File[6][1] ) );
  SDFFRQX2M \Reg_File_reg[6][0]  ( .D(n109), .SI(\Reg_File[5][7] ), .SE(n211), 
        .CK(CLK), .RN(n188), .Q(\Reg_File[6][0] ) );
  SDFFRQX2M \Reg_File_reg[4][7]  ( .D(n132), .SI(\Reg_File[4][6] ), .SE(n210), 
        .CK(CLK), .RN(n190), .Q(\Reg_File[4][7] ) );
  SDFFRQX2M \Reg_File_reg[4][6]  ( .D(n131), .SI(\Reg_File[4][5] ), .SE(n209), 
        .CK(CLK), .RN(n190), .Q(\Reg_File[4][6] ) );
  SDFFRQX2M \Reg_File_reg[4][5]  ( .D(n130), .SI(\Reg_File[4][4] ), .SE(n211), 
        .CK(CLK), .RN(n190), .Q(\Reg_File[4][5] ) );
  SDFFRQX2M \Reg_File_reg[4][4]  ( .D(n129), .SI(\Reg_File[4][3] ), .SE(n210), 
        .CK(CLK), .RN(n190), .Q(\Reg_File[4][4] ) );
  SDFFRQX2M \Reg_File_reg[4][3]  ( .D(n128), .SI(\Reg_File[4][2] ), .SE(n209), 
        .CK(CLK), .RN(n190), .Q(\Reg_File[4][3] ) );
  SDFFRQX2M \Reg_File_reg[4][2]  ( .D(n127), .SI(\Reg_File[4][1] ), .SE(n211), 
        .CK(CLK), .RN(n190), .Q(\Reg_File[4][2] ) );
  SDFFRQX2M \Reg_File_reg[4][1]  ( .D(n126), .SI(\Reg_File[4][0] ), .SE(n210), 
        .CK(CLK), .RN(n190), .Q(\Reg_File[4][1] ) );
  SDFFRQX2M \Reg_File_reg[4][0]  ( .D(n125), .SI(REG3[7]), .SE(n209), .CK(CLK), 
        .RN(n190), .Q(\Reg_File[4][0] ) );
  SDFFRQX2M \Reg_File_reg[2][1]  ( .D(n142), .SI(REG2[0]), .SE(n211), .CK(CLK), 
        .RN(n191), .Q(REG2[1]) );
  SDFFRQX2M RdData_VLD_reg ( .D(n100), .SI(test_si1), .SE(n210), .CK(CLK), 
        .RN(n190), .Q(RdData_VLD) );
  SDFFRQX2M wr_done_reg ( .D(n173), .SI(\Reg_File[7][7] ), .SE(n209), .CK(CLK), 
        .RN(n188), .Q(wr_done) );
  SDFFRQX2M \Reg_File_reg[0][4]  ( .D(n161), .SI(REG0[3]), .SE(n211), .CK(CLK), 
        .RN(n192), .Q(REG0[4]) );
  SDFFRQX2M \Reg_File_reg[1][6]  ( .D(n155), .SI(REG1[5]), .SE(n210), .CK(CLK), 
        .RN(n192), .Q(REG1[6]) );
  SDFFRQX2M \Reg_File_reg[0][7]  ( .D(n164), .SI(REG0[6]), .SE(n209), .CK(CLK), 
        .RN(n192), .Q(REG0[7]) );
  SDFFRQX2M \Reg_File_reg[0][6]  ( .D(n163), .SI(REG0[5]), .SE(n211), .CK(CLK), 
        .RN(n192), .Q(REG0[6]) );
  SDFFRQX2M \Reg_File_reg[0][5]  ( .D(n162), .SI(REG0[4]), .SE(n210), .CK(CLK), 
        .RN(n192), .Q(REG0[5]) );
  SDFFRQX2M \Reg_File_reg[0][3]  ( .D(n160), .SI(REG0[2]), .SE(n209), .CK(CLK), 
        .RN(n192), .Q(REG0[3]) );
  SDFFRQX2M \Reg_File_reg[0][2]  ( .D(n159), .SI(REG0[1]), .SE(n211), .CK(CLK), 
        .RN(n192), .Q(REG0[2]) );
  SDFFRQX2M \Reg_File_reg[0][1]  ( .D(n158), .SI(REG0[0]), .SE(n210), .CK(CLK), 
        .RN(n192), .Q(REG0[1]) );
  SDFFRQX2M \Reg_File_reg[0][0]  ( .D(n157), .SI(RdData[7]), .SE(n211), .CK(
        CLK), .RN(n192), .Q(REG0[0]) );
  SDFFRQX2M \Reg_File_reg[1][1]  ( .D(n150), .SI(REG1[0]), .SE(n210), .CK(CLK), 
        .RN(n191), .Q(REG1[1]) );
  SDFFRQX2M \Reg_File_reg[1][4]  ( .D(n153), .SI(REG1[3]), .SE(n209), .CK(CLK), 
        .RN(n191), .Q(REG1[4]) );
  SDFFRQX2M \Reg_File_reg[1][5]  ( .D(n154), .SI(REG1[4]), .SE(n211), .CK(CLK), 
        .RN(n192), .Q(REG1[5]) );
  SDFFRQX2M \Reg_File_reg[1][7]  ( .D(n156), .SI(REG1[6]), .SE(n210), .CK(CLK), 
        .RN(n192), .Q(REG1[7]) );
  SDFFRQX2M \Reg_File_reg[1][3]  ( .D(n152), .SI(REG1[2]), .SE(n209), .CK(CLK), 
        .RN(n191), .Q(REG1[3]) );
  SDFFRQX2M \Reg_File_reg[1][2]  ( .D(n151), .SI(REG1[1]), .SE(n211), .CK(CLK), 
        .RN(n191), .Q(REG1[2]) );
  SDFFRQX2M \Reg_File_reg[1][0]  ( .D(n149), .SI(REG0[7]), .SE(n210), .CK(CLK), 
        .RN(n191), .Q(REG1[0]) );
  SDFFRQX2M \Reg_File_reg[3][7]  ( .D(n140), .SI(REG3[6]), .SE(n211), .CK(CLK), 
        .RN(n191), .Q(REG3[7]) );
  SDFFSQX2M \Reg_File_reg[3][5]  ( .D(n138), .SI(REG3[4]), .SE(n209), .CK(CLK), 
        .SN(n188), .Q(REG3[5]) );
  SDFFRQX2M \Reg_File_reg[3][4]  ( .D(n137), .SI(REG3[3]), .SE(n210), .CK(CLK), 
        .RN(n191), .Q(REG3[4]) );
  SDFFRQX2M \Reg_File_reg[3][6]  ( .D(n139), .SI(REG3[5]), .SE(n211), .CK(CLK), 
        .RN(n191), .Q(REG3[6]) );
  SDFFRQX2M \Reg_File_reg[3][0]  ( .D(n133), .SI(REG2[7]), .SE(n210), .CK(CLK), 
        .RN(n190), .Q(REG3[0]) );
  SDFFRQX2M \Reg_File_reg[3][2]  ( .D(n135), .SI(REG3[1]), .SE(n211), .CK(CLK), 
        .RN(n190), .Q(REG3[2]) );
  SDFFRQX2M \Reg_File_reg[3][3]  ( .D(n136), .SI(REG3[2]), .SE(n210), .CK(CLK), 
        .RN(n190), .Q(REG3[3]) );
  SDFFRQX2M \Reg_File_reg[3][1]  ( .D(n134), .SI(REG3[0]), .SE(n211), .CK(CLK), 
        .RN(n190), .Q(REG3[1]) );
  SDFFRQX2M \Reg_File_reg[2][3]  ( .D(n144), .SI(REG2[2]), .SE(n210), .CK(CLK), 
        .RN(n191), .Q(REG2[3]) );
  SDFFRQX2M \Reg_File_reg[2][2]  ( .D(n143), .SI(REG2[1]), .SE(n211), .CK(CLK), 
        .RN(n191), .Q(REG2[2]) );
  SDFFRQX2M \Reg_File_reg[2][5]  ( .D(n146), .SI(REG2[4]), .SE(n210), .CK(CLK), 
        .RN(n191), .Q(REG2[5]) );
  SDFFRQX2M \Reg_File_reg[2][4]  ( .D(n145), .SI(REG2[3]), .SE(n211), .CK(CLK), 
        .RN(n191), .Q(REG2[4]) );
  SDFFSQX1M \Reg_File_reg[2][0]  ( .D(n141), .SI(REG1[7]), .SE(n209), .CK(CLK), 
        .SN(RST), .Q(REG2[0]) );
  SDFFRQX2M \Reg_File_reg[2][6]  ( .D(n147), .SI(REG2[5]), .SE(n210), .CK(CLK), 
        .RN(n191), .Q(REG2[6]) );
  OAI2BB2XLM U78 ( .B0(n200), .B1(n181), .A0N(REG2[4]), .A1N(n181), .Y(n145)
         );
  MX4XLM U79 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n179), 
        .S1(N11), .Y(n85) );
  OAI2BB2XLM U80 ( .B0(n204), .B1(n182), .A0N(REG3[0]), .A1N(n182), .Y(n133)
         );
  OAI2BB2XLM U81 ( .B0(n203), .B1(n182), .A0N(REG3[1]), .A1N(n182), .Y(n134)
         );
  OAI2BB2XLM U82 ( .B0(n202), .B1(n182), .A0N(REG3[2]), .A1N(n182), .Y(n135)
         );
  OAI2BB2XLM U83 ( .B0(n201), .B1(n181), .A0N(REG2[3]), .A1N(n181), .Y(n144)
         );
  MX4XLM U84 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n179), 
        .S1(N11), .Y(n77) );
  MX4XLM U85 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n179), 
        .S1(N11), .Y(n79) );
  MX4XLM U86 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n179), 
        .S1(N11), .Y(n81) );
  MX4XLM U87 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n179), 
        .S1(N11), .Y(n83) );
  NOR2BX2M U88 ( .AN(n94), .B(N12), .Y(n96) );
  OAI2BB2XLM U89 ( .B0(n197), .B1(n181), .A0N(REG2[7]), .A1N(n181), .Y(n148)
         );
  OAI2BB2XLM U90 ( .B0(n199), .B1(n181), .A0N(REG2[5]), .A1N(n181), .Y(n146)
         );
  MX4XLM U91 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n179), 
        .S1(N11), .Y(n174) );
  MX4XLM U92 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n179), 
        .S1(N11), .Y(n178) );
  INVX2M U93 ( .A(n88), .Y(n195) );
  NAND3X2M U94 ( .A(n205), .B(n194), .C(n90), .Y(n93) );
  NAND3X2M U95 ( .A(n205), .B(n194), .C(n96), .Y(n99) );
  NAND2X2M U96 ( .A(RdEn), .B(n196), .Y(n88) );
  NOR2X2M U97 ( .A(n196), .B(RdEn), .Y(n87) );
  INVX2M U98 ( .A(WrEn), .Y(n196) );
  BUFX2M U99 ( .A(n186), .Y(n189) );
  BUFX2M U100 ( .A(n186), .Y(n190) );
  BUFX2M U101 ( .A(n187), .Y(n191) );
  BUFX2M U102 ( .A(n187), .Y(n192) );
  BUFX2M U103 ( .A(n186), .Y(n188) );
  BUFX2M U104 ( .A(n187), .Y(n193) );
  INVX2M U105 ( .A(N11), .Y(n194) );
  BUFX2M U106 ( .A(n95), .Y(n182) );
  NAND3X2M U107 ( .A(N11), .B(N10), .C(n96), .Y(n95) );
  BUFX2M U108 ( .A(n97), .Y(n181) );
  NAND3X2M U109 ( .A(N11), .B(n205), .C(n96), .Y(n97) );
  BUFX2M U110 ( .A(n98), .Y(n180) );
  NAND3X2M U111 ( .A(N10), .B(n194), .C(n96), .Y(n98) );
  BUFX4M U112 ( .A(N10), .Y(n179) );
  BUFX2M U113 ( .A(n92), .Y(n183) );
  NAND3X2M U114 ( .A(n90), .B(n194), .C(N10), .Y(n92) );
  BUFX2M U115 ( .A(n91), .Y(n184) );
  NAND3X2M U116 ( .A(n90), .B(n205), .C(N11), .Y(n91) );
  BUFX2M U117 ( .A(n89), .Y(n185) );
  NAND3X2M U118 ( .A(N10), .B(n90), .C(N11), .Y(n89) );
  INVX2M U119 ( .A(N10), .Y(n205) );
  INVX2M U120 ( .A(WrData[0]), .Y(n204) );
  INVX2M U121 ( .A(WrData[1]), .Y(n203) );
  INVX2M U122 ( .A(WrData[2]), .Y(n202) );
  INVX2M U123 ( .A(WrData[3]), .Y(n201) );
  AND2X2M U124 ( .A(N12), .B(n94), .Y(n90) );
  BUFX2M U125 ( .A(RST), .Y(n187) );
  BUFX2M U126 ( .A(RST), .Y(n186) );
  OAI2BB2X1M U127 ( .B0(n204), .B1(n99), .A0N(REG0[0]), .A1N(n99), .Y(n157) );
  OAI2BB2X1M U128 ( .B0(n203), .B1(n99), .A0N(REG0[1]), .A1N(n99), .Y(n158) );
  OAI2BB2X1M U129 ( .B0(n202), .B1(n99), .A0N(REG0[2]), .A1N(n99), .Y(n159) );
  OAI2BB2X1M U130 ( .B0(n201), .B1(n99), .A0N(REG0[3]), .A1N(n99), .Y(n160) );
  OAI2BB2X1M U131 ( .B0(n200), .B1(n99), .A0N(REG0[4]), .A1N(n99), .Y(n161) );
  OAI2BB2X1M U132 ( .B0(n199), .B1(n99), .A0N(REG0[5]), .A1N(n99), .Y(n162) );
  OAI2BB2X1M U133 ( .B0(n198), .B1(n99), .A0N(REG0[6]), .A1N(n99), .Y(n163) );
  OAI2BB2X1M U134 ( .B0(n197), .B1(n99), .A0N(REG0[7]), .A1N(n99), .Y(n164) );
  OAI2BB2X1M U135 ( .B0(n204), .B1(n93), .A0N(\Reg_File[4][0] ), .A1N(n93), 
        .Y(n125) );
  OAI2BB2X1M U136 ( .B0(n203), .B1(n93), .A0N(\Reg_File[4][1] ), .A1N(n93), 
        .Y(n126) );
  OAI2BB2X1M U137 ( .B0(n202), .B1(n93), .A0N(\Reg_File[4][2] ), .A1N(n93), 
        .Y(n127) );
  OAI2BB2X1M U138 ( .B0(n201), .B1(n93), .A0N(\Reg_File[4][3] ), .A1N(n93), 
        .Y(n128) );
  OAI2BB2X1M U139 ( .B0(n200), .B1(n93), .A0N(\Reg_File[4][4] ), .A1N(n93), 
        .Y(n129) );
  OAI2BB2X1M U140 ( .B0(n199), .B1(n93), .A0N(\Reg_File[4][5] ), .A1N(n93), 
        .Y(n130) );
  OAI2BB2X1M U141 ( .B0(n198), .B1(n93), .A0N(\Reg_File[4][6] ), .A1N(n93), 
        .Y(n131) );
  OAI2BB2X1M U142 ( .B0(n197), .B1(n93), .A0N(\Reg_File[4][7] ), .A1N(n93), 
        .Y(n132) );
  OAI2BB2X1M U143 ( .B0(n203), .B1(n181), .A0N(REG2[1]), .A1N(n181), .Y(n142)
         );
  OAI2BB2X1M U144 ( .B0(n202), .B1(n181), .A0N(REG2[2]), .A1N(n181), .Y(n143)
         );
  OAI2BB2X1M U145 ( .B0(n198), .B1(n181), .A0N(REG2[6]), .A1N(n181), .Y(n147)
         );
  OAI2BB2X1M U146 ( .B0(n204), .B1(n184), .A0N(\Reg_File[6][0] ), .A1N(n184), 
        .Y(n109) );
  OAI2BB2X1M U147 ( .B0(n203), .B1(n184), .A0N(\Reg_File[6][1] ), .A1N(n184), 
        .Y(n110) );
  OAI2BB2X1M U148 ( .B0(n202), .B1(n184), .A0N(\Reg_File[6][2] ), .A1N(n184), 
        .Y(n111) );
  OAI2BB2X1M U149 ( .B0(n201), .B1(n184), .A0N(\Reg_File[6][3] ), .A1N(n184), 
        .Y(n112) );
  OAI2BB2X1M U150 ( .B0(n200), .B1(n184), .A0N(\Reg_File[6][4] ), .A1N(n184), 
        .Y(n113) );
  OAI2BB2X1M U151 ( .B0(n199), .B1(n184), .A0N(\Reg_File[6][5] ), .A1N(n184), 
        .Y(n114) );
  OAI2BB2X1M U152 ( .B0(n198), .B1(n184), .A0N(\Reg_File[6][6] ), .A1N(n184), 
        .Y(n115) );
  OAI2BB2X1M U153 ( .B0(n197), .B1(n184), .A0N(\Reg_File[6][7] ), .A1N(n184), 
        .Y(n116) );
  OAI2BB2X1M U154 ( .B0(n204), .B1(n183), .A0N(\Reg_File[5][0] ), .A1N(n183), 
        .Y(n117) );
  OAI2BB2X1M U155 ( .B0(n203), .B1(n183), .A0N(\Reg_File[5][1] ), .A1N(n183), 
        .Y(n118) );
  OAI2BB2X1M U156 ( .B0(n202), .B1(n183), .A0N(\Reg_File[5][2] ), .A1N(n183), 
        .Y(n119) );
  OAI2BB2X1M U157 ( .B0(n201), .B1(n183), .A0N(\Reg_File[5][3] ), .A1N(n183), 
        .Y(n120) );
  OAI2BB2X1M U158 ( .B0(n200), .B1(n183), .A0N(\Reg_File[5][4] ), .A1N(n183), 
        .Y(n121) );
  OAI2BB2X1M U159 ( .B0(n199), .B1(n183), .A0N(\Reg_File[5][5] ), .A1N(n183), 
        .Y(n122) );
  OAI2BB2X1M U160 ( .B0(n198), .B1(n183), .A0N(\Reg_File[5][6] ), .A1N(n183), 
        .Y(n123) );
  OAI2BB2X1M U161 ( .B0(n197), .B1(n183), .A0N(\Reg_File[5][7] ), .A1N(n183), 
        .Y(n124) );
  OAI2BB2X1M U162 ( .B0(n201), .B1(n182), .A0N(REG3[3]), .A1N(n182), .Y(n136)
         );
  OAI2BB2X1M U163 ( .B0(n200), .B1(n182), .A0N(REG3[4]), .A1N(n182), .Y(n137)
         );
  OAI2BB2X1M U164 ( .B0(n198), .B1(n182), .A0N(REG3[6]), .A1N(n182), .Y(n139)
         );
  OAI2BB2X1M U165 ( .B0(n197), .B1(n182), .A0N(REG3[7]), .A1N(n182), .Y(n140)
         );
  OAI2BB2X1M U166 ( .B0(n204), .B1(n180), .A0N(REG1[0]), .A1N(n180), .Y(n149)
         );
  OAI2BB2X1M U167 ( .B0(n203), .B1(n180), .A0N(REG1[1]), .A1N(n180), .Y(n150)
         );
  OAI2BB2X1M U168 ( .B0(n202), .B1(n180), .A0N(REG1[2]), .A1N(n180), .Y(n151)
         );
  OAI2BB2X1M U169 ( .B0(n201), .B1(n180), .A0N(REG1[3]), .A1N(n180), .Y(n152)
         );
  OAI2BB2X1M U170 ( .B0(n200), .B1(n180), .A0N(REG1[4]), .A1N(n180), .Y(n153)
         );
  OAI2BB2X1M U171 ( .B0(n199), .B1(n180), .A0N(REG1[5]), .A1N(n180), .Y(n154)
         );
  OAI2BB2X1M U172 ( .B0(n198), .B1(n180), .A0N(REG1[6]), .A1N(n180), .Y(n155)
         );
  OAI2BB2X1M U173 ( .B0(n197), .B1(n180), .A0N(REG1[7]), .A1N(n180), .Y(n156)
         );
  OAI2BB2X1M U174 ( .B0(n185), .B1(n204), .A0N(\Reg_File[7][0] ), .A1N(n185), 
        .Y(n101) );
  OAI2BB2X1M U175 ( .B0(n185), .B1(n203), .A0N(\Reg_File[7][1] ), .A1N(n185), 
        .Y(n102) );
  OAI2BB2X1M U176 ( .B0(n185), .B1(n202), .A0N(\Reg_File[7][2] ), .A1N(n185), 
        .Y(n103) );
  OAI2BB2X1M U177 ( .B0(n185), .B1(n201), .A0N(\Reg_File[7][3] ), .A1N(n185), 
        .Y(n104) );
  OAI2BB2X1M U178 ( .B0(n185), .B1(n200), .A0N(\Reg_File[7][4] ), .A1N(n185), 
        .Y(n105) );
  OAI2BB2X1M U179 ( .B0(n185), .B1(n199), .A0N(\Reg_File[7][5] ), .A1N(n185), 
        .Y(n106) );
  OAI2BB2X1M U180 ( .B0(n185), .B1(n198), .A0N(\Reg_File[7][6] ), .A1N(n185), 
        .Y(n107) );
  OAI2BB2X1M U181 ( .B0(n185), .B1(n197), .A0N(\Reg_File[7][7] ), .A1N(n185), 
        .Y(n108) );
  OAI2BB2X1M U182 ( .B0(n204), .B1(n181), .A0N(REG2[0]), .A1N(n181), .Y(n141)
         );
  OAI2BB2X1M U183 ( .B0(n199), .B1(n182), .A0N(REG3[5]), .A1N(n182), .Y(n138)
         );
  AO22X1M U184 ( .A0(N29), .A1(n195), .B0(RdData[4]), .B1(n88), .Y(n169) );
  MX2X2M U185 ( .A(n85), .B(n84), .S0(N12), .Y(N29) );
  MX4X1M U186 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n179), .S1(N11), .Y(n84)
         );
  AO22X1M U187 ( .A0(N33), .A1(n195), .B0(RdData[0]), .B1(n88), .Y(n165) );
  MX2X2M U188 ( .A(n77), .B(n76), .S0(N12), .Y(N33) );
  MX4X1M U189 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(n179), .S1(N11), .Y(n76)
         );
  AO22X1M U190 ( .A0(N32), .A1(n195), .B0(RdData[1]), .B1(n88), .Y(n166) );
  MX2X2M U191 ( .A(n79), .B(n78), .S0(N12), .Y(N32) );
  MX4X1M U192 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n179), .S1(N11), .Y(n78)
         );
  AO22X1M U193 ( .A0(N31), .A1(n195), .B0(RdData[2]), .B1(n88), .Y(n167) );
  MX2X2M U194 ( .A(n81), .B(n80), .S0(N12), .Y(N31) );
  MX4X1M U195 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n179), .S1(N11), .Y(n80)
         );
  AO22X1M U196 ( .A0(N30), .A1(n195), .B0(RdData[3]), .B1(n88), .Y(n168) );
  MX2X2M U197 ( .A(n83), .B(n82), .S0(N12), .Y(N30) );
  MX4X1M U198 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n179), .S1(N11), .Y(n82)
         );
  AO22X1M U199 ( .A0(N28), .A1(n195), .B0(RdData[5]), .B1(n88), .Y(n170) );
  MX2X2M U200 ( .A(n174), .B(n86), .S0(N12), .Y(N28) );
  MX4X1M U201 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n179), .S1(N11), .Y(n86)
         );
  AO22X1M U202 ( .A0(N27), .A1(n195), .B0(RdData[6]), .B1(n88), .Y(n171) );
  MX2X2M U203 ( .A(n176), .B(n175), .S0(N12), .Y(N27) );
  MX4X1M U204 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n179), 
        .S1(N11), .Y(n176) );
  MX4X1M U205 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n179), .S1(N11), .Y(n175)
         );
  AO22X1M U206 ( .A0(N26), .A1(n195), .B0(RdData[7]), .B1(n88), .Y(n172) );
  MX2X2M U207 ( .A(n178), .B(n177), .S0(N12), .Y(N26) );
  MX4X1M U208 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n179), .S1(N11), .Y(n177)
         );
  INVX2M U209 ( .A(WrData[5]), .Y(n199) );
  INVX2M U210 ( .A(WrData[6]), .Y(n198) );
  INVX2M U211 ( .A(WrData[7]), .Y(n197) );
  NOR2BX2M U212 ( .AN(n87), .B(address[3]), .Y(n94) );
  INVX2M U213 ( .A(WrData[4]), .Y(n200) );
  OAI2BB1X2M U214 ( .A0N(RdData_VLD), .A1N(n87), .B0(n88), .Y(n100) );
  AO21XLM U215 ( .A0(wr_done), .A1(n195), .B0(n87), .Y(n173) );
  SDFFSX4M \Reg_File_reg[2][7]  ( .D(n148), .SI(REG2[6]), .SE(n209), .CK(CLK), 
        .SN(n188), .Q(REG2[7]) );
  DLY1X1M U216 ( .A(test_se), .Y(n209) );
  DLY1X1M U217 ( .A(test_se), .Y(n210) );
  DLY1X1M U218 ( .A(test_se), .Y(n211) );
endmodule


module ALU_16_bit_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_16_bit_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_16_bit_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_16_bit_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_16_bit_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n24) );
  INVX2M U38 ( .A(A[6]), .Y(n25) );
  INVX2M U39 ( .A(A[1]), .Y(n30) );
  INVX2M U40 ( .A(A[0]), .Y(n31) );
  INVX2M U41 ( .A(A[3]), .Y(n28) );
  INVX2M U42 ( .A(A[2]), .Y(n29) );
  INVX2M U43 ( .A(A[5]), .Y(n26) );
  INVX2M U44 ( .A(A[4]), .Y(n27) );
  INVX2M U45 ( .A(B[6]), .Y(n33) );
  INVX2M U46 ( .A(B[0]), .Y(n39) );
  INVX2M U47 ( .A(B[2]), .Y(n37) );
  INVX2M U48 ( .A(B[3]), .Y(n36) );
  INVX2M U49 ( .A(B[7]), .Y(n32) );
  INVX2M U50 ( .A(B[5]), .Y(n34) );
  INVX2M U51 ( .A(B[4]), .Y(n35) );
  INVX2M U52 ( .A(B[1]), .Y(n38) );
  NOR2X1M U54 ( .A(n24), .B(n32), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n24), .B(n33), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n24), .B(n34), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n24), .B(n35), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n24), .B(n36), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n24), .B(n37), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n24), .B(n38), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n24), .B(n39), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n32), .B(n25), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n33), .B(n25), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n34), .B(n25), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n35), .B(n25), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n36), .B(n25), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n37), .B(n25), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n38), .B(n25), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n39), .B(n25), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n32), .B(n26), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n33), .B(n26), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n34), .B(n26), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n35), .B(n26), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n36), .B(n26), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n37), .B(n26), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n38), .B(n26), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n39), .B(n26), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n32), .B(n27), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n33), .B(n27), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n34), .B(n27), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n35), .B(n27), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n36), .B(n27), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n37), .B(n27), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n38), .B(n27), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n39), .B(n27), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n32), .B(n28), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n33), .B(n28), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n34), .B(n28), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n35), .B(n28), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n36), .B(n28), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n37), .B(n28), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n38), .B(n28), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n39), .B(n28), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n32), .B(n29), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n33), .B(n29), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n34), .B(n29), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n35), .B(n29), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n36), .B(n29), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n37), .B(n29), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n38), .B(n29), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n39), .B(n29), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n32), .B(n30), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n33), .B(n30), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n34), .B(n30), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n35), .B(n30), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n36), .B(n30), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n37), .B(n30), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n38), .B(n30), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n39), .B(n30), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n32), .B(n31), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n33), .B(n31), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n34), .B(n31), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n35), .B(n31), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n36), .B(n31), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n37), .B(n31), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n38), .B(n31), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n39), .B(n31), .Y(PRODUCT[0]) );
  ALU_16_bit_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_16_bit_test_1 ( A, B, EN, ALU_FUN, clk, rst, ALU_OUT, ALU_OUT_VLD, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, clk, rst, test_si, test_se;
  output ALU_OUT_VLD;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157;
  wire   [15:0] ALU_OUT_Comb;

  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .SI(ALU_OUT_VLD), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[0]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[8]) );
  SDFFRQX2M ALU_OUT_VLD_reg ( .D(EN), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(ALU_OUT_VLD) );
  BUFX2M U7 ( .A(A[6]), .Y(n28) );
  OAI2BB1X2M U23 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U24 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U25 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U26 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U27 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U28 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U29 ( .A0N(N124), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U30 ( .A0N(n157), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U31 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U32 ( .AN(n123), .B(n154), .Y(n54) );
  AND2X2M U33 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U34 ( .AN(n52), .B(n152), .Y(n48) );
  AND2X2M U35 ( .A(n123), .B(n122), .Y(n67) );
  NAND2X2M U36 ( .A(EN), .B(n140), .Y(n49) );
  INVX2M U37 ( .A(n117), .Y(n154) );
  INVX2M U38 ( .A(EN), .Y(n152) );
  BUFX2M U39 ( .A(n58), .Y(n30) );
  NOR2X2M U40 ( .A(n124), .B(n154), .Y(n58) );
  INVX2M U41 ( .A(n108), .Y(n155) );
  INVX2M U42 ( .A(n124), .Y(n157) );
  NOR3BX2M U43 ( .AN(n122), .B(n156), .C(ALU_FUN[2]), .Y(n66) );
  INVX2M U44 ( .A(n4), .Y(n137) );
  NOR3X2M U45 ( .A(n154), .B(ALU_FUN[2]), .C(n156), .Y(n52) );
  OAI222X1M U46 ( .A0(n72), .A1(n137), .B0(n4), .B1(n73), .C0(n53), .C1(n143), 
        .Y(n71) );
  AOI221XLM U47 ( .A0(n28), .A1(n63), .B0(n64), .B1(n142), .C0(n30), .Y(n73)
         );
  AOI221XLM U48 ( .A0(n63), .A1(n142), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  NOR2X2M U49 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  NAND2X2M U50 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  INVX2M U51 ( .A(ALU_FUN[0]), .Y(n153) );
  AND3X2M U52 ( .A(n123), .B(n153), .C(n3), .Y(n63) );
  NAND3X2M U53 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U54 ( .A(ALU_FUN[1]), .Y(n156) );
  NAND3X2M U55 ( .A(n157), .B(n153), .C(n3), .Y(n53) );
  AOI31X2M U56 ( .A0(n92), .A1(n93), .A2(n94), .B0(n152), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U57 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n92) );
  AOI221XLM U58 ( .A0(n8), .A1(n155), .B0(n30), .B1(n146), .C0(n95), .Y(n94)
         );
  AOI222X1M U59 ( .A0(N111), .A1(n52), .B0(n7), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n93) );
  AOI31X2M U60 ( .A0(n86), .A1(n87), .A2(n88), .B0(n152), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U61 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n86) );
  AOI221XLM U62 ( .A0(n9), .A1(n155), .B0(n30), .B1(n145), .C0(n89), .Y(n88)
         );
  AOI222X1M U63 ( .A0(N112), .A1(n52), .B0(n8), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n87) );
  AOI31X2M U64 ( .A0(n80), .A1(n81), .A2(n82), .B0(n152), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U65 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n80) );
  AOI221XLM U66 ( .A0(n155), .A1(n27), .B0(n30), .B1(n144), .C0(n83), .Y(n82)
         );
  AOI222X1M U67 ( .A0(N113), .A1(n52), .B0(n9), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n81) );
  AOI31X2M U68 ( .A0(n74), .A1(n75), .A2(n76), .B0(n152), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U69 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n74) );
  AOI221XLM U70 ( .A0(n155), .A1(n28), .B0(n30), .B1(n143), .C0(n77), .Y(n76)
         );
  AOI222X1M U71 ( .A0(N114), .A1(n52), .B0(n27), .B1(n59), .C0(N130), .C1(n66), 
        .Y(n75) );
  AOI31X2M U72 ( .A0(n68), .A1(n69), .A2(n70), .B0(n152), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U73 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n68) );
  AOI221XLM U74 ( .A0(n155), .A1(n29), .B0(n30), .B1(n142), .C0(n71), .Y(n70)
         );
  AOI222X1M U75 ( .A0(N115), .A1(n52), .B0(n59), .B1(n28), .C0(N131), .C1(n66), 
        .Y(n69) );
  AOI31X2M U76 ( .A0(n55), .A1(n56), .A2(n57), .B0(n152), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U77 ( .A0(N132), .A1(n66), .B0(N116), .B1(n52), .Y(n56) );
  AOI22X1M U78 ( .A0(N107), .A1(n67), .B0(N98), .B1(n54), .Y(n55) );
  AOI221XLM U79 ( .A0(n30), .A1(n141), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI31X2M U80 ( .A0(n110), .A1(n111), .A2(n112), .B0(n152), .Y(
        ALU_OUT_Comb[0]) );
  AOI22X1M U81 ( .A0(N100), .A1(n67), .B0(N91), .B1(n54), .Y(n110) );
  AOI211X2M U82 ( .A0(n30), .A1(n148), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U83 ( .A0(N109), .A1(n52), .B0(n5), .B1(n59), .C0(N125), .C1(n66), 
        .Y(n111) );
  AOI31X2M U84 ( .A0(n98), .A1(n99), .A2(n100), .B0(n152), .Y(ALU_OUT_Comb[1])
         );
  AOI211X2M U85 ( .A0(n7), .A1(n155), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U86 ( .A0(N126), .A1(n66), .B0(n30), .B1(n147), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI222X1M U87 ( .A0(N92), .A1(n54), .B0(N110), .B1(n52), .C0(N101), .C1(n67), 
        .Y(n98) );
  NOR2X2M U88 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NOR2X2M U89 ( .A(n153), .B(n3), .Y(n122) );
  NAND3X2M U90 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  INVX2M U91 ( .A(n109), .Y(n140) );
  AOI211X2M U92 ( .A0(N108), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  AOI21X2M U93 ( .A0(n50), .A1(n51), .B0(n152), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U94 ( .A0(N99), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U95 ( .B0(N117), .B1(n52), .A0N(n141), .A1N(n53), .Y(n51) );
  AND2X2M U96 ( .A(ALU_FUN[2]), .B(n156), .Y(n116) );
  AND4X2M U97 ( .A(N159), .B(n116), .C(n3), .D(n153), .Y(n107) );
  INVX2M U98 ( .A(n6), .Y(n147) );
  INVX2M U99 ( .A(n5), .Y(n148) );
  INVX2M U100 ( .A(n28), .Y(n142) );
  INVX2M U101 ( .A(n29), .Y(n141) );
  INVX2M U102 ( .A(n8), .Y(n145) );
  INVX2M U103 ( .A(n7), .Y(n146) );
  INVX2M U104 ( .A(n27), .Y(n143) );
  INVX2M U105 ( .A(n9), .Y(n144) );
  OAI222X1M U106 ( .A0(n96), .A1(n135), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n147), .Y(n95) );
  AOI221XLM U107 ( .A0(n7), .A1(n63), .B0(n64), .B1(n146), .C0(n30), .Y(n97)
         );
  AOI221XLM U108 ( .A0(n63), .A1(n146), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U109 ( .A0(n90), .A1(n136), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n146), .Y(n89) );
  AOI221XLM U110 ( .A0(n8), .A1(n63), .B0(n64), .B1(n145), .C0(n30), .Y(n91)
         );
  AOI221XLM U111 ( .A0(n63), .A1(n145), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U112 ( .A0(n84), .A1(n151), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n145), .Y(n83) );
  INVX2M U113 ( .A(B[4]), .Y(n151) );
  AOI221XLM U114 ( .A0(n9), .A1(n63), .B0(n64), .B1(n144), .C0(n30), .Y(n85)
         );
  AOI221XLM U115 ( .A0(n63), .A1(n144), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U116 ( .A0(n78), .A1(n150), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n144), .Y(n77) );
  INVX2M U117 ( .A(B[5]), .Y(n150) );
  AOI221XLM U118 ( .A0(n27), .A1(n63), .B0(n64), .B1(n143), .C0(n30), .Y(n79)
         );
  AOI221XLM U119 ( .A0(n63), .A1(n143), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U120 ( .A0(n61), .A1(n149), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n142), .Y(n60) );
  INVX2M U121 ( .A(B[7]), .Y(n149) );
  AOI221XLM U122 ( .A0(n63), .A1(n29), .B0(n64), .B1(n141), .C0(n30), .Y(n62)
         );
  AOI221XLM U123 ( .A0(n63), .A1(n141), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U124 ( .A(n31), .Y(n138) );
  OAI2B2X1M U125 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n147), .Y(n114) );
  AOI221XLM U126 ( .A0(n63), .A1(n148), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U127 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n148), .Y(n102) );
  AOI221XLM U128 ( .A0(n63), .A1(n147), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U129 ( .A(n42), .Y(n139) );
  OAI21X2M U130 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U131 ( .A0(N157), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U132 ( .A0(n5), .A1(n63), .B0(n64), .B1(n148), .C0(n30), .Y(n119)
         );
  NOR3X2M U133 ( .A(n156), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U134 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U135 ( .A0(N158), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U136 ( .A0(n6), .A1(n63), .B0(n64), .B1(n147), .C0(n30), .Y(n104)
         );
  NOR3X2M U137 ( .A(n153), .B(ALU_FUN[2]), .C(n156), .Y(n106) );
  BUFX2M U138 ( .A(A[7]), .Y(n29) );
  BUFX2M U139 ( .A(A[1]), .Y(n6) );
  BUFX2M U140 ( .A(A[0]), .Y(n5) );
  BUFX2M U141 ( .A(A[3]), .Y(n8) );
  BUFX2M U142 ( .A(A[2]), .Y(n7) );
  BUFX2M U143 ( .A(A[5]), .Y(n27) );
  BUFX2M U144 ( .A(A[4]), .Y(n9) );
  BUFX2M U145 ( .A(ALU_FUN[3]), .Y(n3) );
  BUFX2M U146 ( .A(B[6]), .Y(n4) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n135) );
  INVX2M U149 ( .A(B[3]), .Y(n136) );
  NOR2X1M U150 ( .A(n141), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n136), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n135), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n135), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n147), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n138), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n136), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n142), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n141), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N159) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n147), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n147), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n139), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n137), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N158) );
  NOR2X1M U178 ( .A(N159), .B(N158), .Y(N157) );
  ALU_16_bit_DW_div_uns_0 div_60 ( .a({n29, n28, n27, n9, n8, n7, n6, n5}), 
        .b({B[7], n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, 
        N126, N125}) );
  ALU_16_bit_DW01_sub_0 sub_52 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), 
        .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_16_bit_DW01_add_0 add_48 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), 
        .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_16_bit_DW02_mult_0 mult_56 ( .A({n29, n28, n27, n9, n8, n7, n6, n5}), 
        .B({B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
endmodule


module CLK_GATE ( clk, clk_en, test_en, gated_clk );
  input clk, clk_en, test_en;
  output gated_clk;
  wire   _0_net_;

  TLATNCAX12M U0_TLATNCAX12M ( .E(_0_net_), .CK(clk), .ECK(gated_clk) );
  OR2X2M U1 ( .A(clk_en), .B(test_en), .Y(_0_net_) );
endmodule


module SYS_TOP ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST_N, UART_CLK, 
        REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error );
  input [2:0] SI;
  output [2:0] SO;
  input scan_clk, scan_rst, test_mode, SE, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   DFT_UART_CLK, UART_TX_CLK, DFT_UART_TX_CLK, UART_RX_CLK,
         DFT_UART_RX_CLK, DFT_REF_CLK, DFT_RST, SYNC_UART_RST, DFT_UART_RST,
         SYNC_REF_RST, DFT_REF_RST, UART_RX_V_OUT, UART_RX_V_SYNC, UART_TX_VLD,
         UART_TX_Busy_PULSE, FIFO_FULL, UART_TX_V_SYNC, UART_TX_Busy,
         RF_RdData_VLD, RF_wr_done, RF_WrEn, RF_RdEn, ALU_EN, ALU_OUT_VLD,
         CLKG_EN, ALU_CLK, n1, n2, n3, n4, n5, n7, n8, n9, n11, n12, n13, n16,
         n17, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_RX_SYNC;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] UART_TX_SYNC;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] UART_Config;
  wire   [7:0] DIV_RATIO_RX;
  wire   [7:0] RF_RdData;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_WrData;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  INVX2M U3 ( .A(n5), .Y(n4) );
  INVX2M U4 ( .A(UART_TX_V_SYNC), .Y(n1) );
  INVX2M U5 ( .A(DFT_REF_RST), .Y(n3) );
  INVX2M U6 ( .A(DFT_UART_RST), .Y(n5) );
  DLY1X1M U13 ( .A(SYNC_REF_RST), .Y(n20) );
  DLY1X1M U15 ( .A(n25), .Y(n22) );
  DLY1X1M U16 ( .A(n28), .Y(n23) );
  INVXLM U17 ( .A(n36), .Y(n24) );
  INVXLM U18 ( .A(n24), .Y(n25) );
  INVXLM U19 ( .A(n24), .Y(n26) );
  INVXLM U20 ( .A(n38), .Y(n27) );
  INVXLM U21 ( .A(n27), .Y(n28) );
  INVXLM U22 ( .A(n27), .Y(n29) );
  DLY1X1M U23 ( .A(n32), .Y(n30) );
  INVXLM U24 ( .A(n35), .Y(n31) );
  INVXLM U25 ( .A(n31), .Y(n32) );
  INVXLM U26 ( .A(n31), .Y(n33) );
  INVXLM U27 ( .A(SE), .Y(n34) );
  INVXLM U28 ( .A(n34), .Y(n35) );
  INVXLM U29 ( .A(n34), .Y(n36) );
  INVXLM U30 ( .A(n34), .Y(n37) );
  INVXLM U31 ( .A(n34), .Y(n38) );
  mux2X1_1 u_uart_clk_mux ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(DFT_UART_CLK) );
  mux2X1_4 u_uart_TX_clk_mux ( .IN_0(UART_TX_CLK), .IN_1(scan_clk), .SEL(
        test_mode), .OUT(DFT_UART_TX_CLK) );
  mux2X1_3 u_uart_RX_clk_mux ( .IN_0(UART_RX_CLK), .IN_1(scan_clk), .SEL(
        test_mode), .OUT(DFT_UART_RX_CLK) );
  mux2X1_2 u_ref_clk_mux ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(DFT_REF_CLK) );
  mux2X1_0 u_rst_mux ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        DFT_RST) );
  mux2X1_6 u_uart_rst_mux ( .IN_0(SYNC_UART_RST), .IN_1(scan_rst), .SEL(
        test_mode), .OUT(DFT_UART_RST) );
  mux2X1_5 u_ref_rst_mux ( .IN_0(n20), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        DFT_REF_RST) );
  RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC ( .clk(DFT_UART_CLK), .rst(DFT_RST), 
        .sync_rst(SYNC_UART_RST), .test_si(n16), .test_se(n33) );
  RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC ( .clk(DFT_REF_CLK), .rst(DFT_RST), 
        .sync_rst(SYNC_REF_RST), .test_si(n7), .test_se(n26) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_ref_sync ( .clk(DFT_REF_CLK), 
        .rst(n2), .unsync_bus(UART_RX_OUT), .bus_enable(UART_RX_V_OUT), 
        .sync_bus(UART_RX_SYNC), .enable_pulse(UART_RX_V_SYNC), .test_si(n9), 
        .test_so(n8), .test_se(n33) );
  ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3_test_1 U0_UART_FIFO ( .w_clk(DFT_REF_CLK), 
        .w_rst(n2), .w_inc(UART_TX_VLD), .r_clk(DFT_UART_TX_CLK), .r_rst(n4), 
        .r_inc(UART_TX_Busy_PULSE), .wr_data(UART_TX_IN), .rd_data(
        UART_TX_SYNC), .full(FIFO_FULL), .empty(UART_TX_V_SYNC), .test_si2(
        SI[0]), .test_si1(n12), .test_so2(n9), .test_so1(n11), .test_se(n30)
         );
  PULSE_GEN_test_1 U0_PULSE_GEN ( .clk(DFT_UART_TX_CLK), .rst(n4), .in_sig(
        UART_TX_Busy), .pulse_sig(UART_TX_Busy_PULSE), .test_si(n17), 
        .test_so(n16), .test_se(n29) );
  CLK_DIV_test_0 U0_ClkDiv ( .i_ref_clk(DFT_UART_CLK), .i_rst_n(n4), 
        .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK), 
        .test_si(ALU_OUT[15]), .test_so(n17), .test_se(n35) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .in(UART_Config[7:2]), .out({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  CLK_DIV_test_1 U1_ClkDiv ( .i_ref_clk(DFT_UART_CLK), .i_rst_n(n4), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        DIV_RATIO_RX[3:0]}), .o_div_clk(UART_RX_CLK), .test_si(n8), .test_so(
        n7), .test_se(n26) );
  UART_test_1 U0_UART ( .tx_clk(DFT_UART_TX_CLK), .rx_clk(DFT_UART_RX_CLK), 
        .rst(n4), .tx_in_v(n1), .tx_in_p(UART_TX_SYNC), .prescale(
        UART_Config[7:2]), .rx_in_s(UART_RX_IN), .par_en(UART_Config[0]), 
        .par_typ(UART_Config[1]), .tx_out_s(SO[1]), .busy(UART_TX_Busy), 
        .rx_out_p(UART_RX_OUT), .rx_out_v(UART_RX_V_OUT), .parity_error(
        parity_error), .stop_error(framing_error), .test_si2(n11), .test_si1(
        n13), .test_so1(n12), .test_se(n22) );
  SYS_CTRL_alu_data8_fun_width4_frame_data8_addr_bits4_test_1 U0_SYS_CTRL ( 
        .clk(DFT_REF_CLK), .rst(n2), .alu_out(ALU_OUT), .out_vld(ALU_OUT_VLD), 
        .rddata(RF_RdData), .rddata_vld(RF_RdData_VLD), .wr_done(RF_wr_done), 
        .rx_p_data(UART_RX_SYNC), .rx_d_vld(UART_RX_V_SYNC), .fifo_full(
        FIFO_FULL), .alu_fun(ALU_FUN), .alu_en(ALU_EN), .clk_en(CLKG_EN), 
        .address(RF_Address), .wr_data(RF_WrData), .wr_en(RF_WrEn), .rd_en(
        RF_RdEn), .tx_p_data(UART_TX_IN), .tx_d_vld(UART_TX_VLD), .test_so(n13), .test_se(n37) );
  Register_File_8_x_16_test_1 U0_RegFile ( .WrEn(RF_WrEn), .RdEn(RF_RdEn), 
        .CLK(DFT_REF_CLK), .RST(n2), .address(RF_Address), .WrData(RF_WrData), 
        .RdData(RF_RdData), .RdData_VLD(RF_RdData_VLD), .wr_done(RF_wr_done), 
        .REG0(Operand_A), .REG1(Operand_B), .REG2(UART_Config), .REG3(
        DIV_RATIO), .test_si2(SI[1]), .test_si1(SYNC_UART_RST), .test_so1(
        SO[2]), .test_se(n23) );
  ALU_16_bit_test_1 U0_ALU ( .A(Operand_A), .B(Operand_B), .EN(ALU_EN), 
        .ALU_FUN(ALU_FUN), .clk(ALU_CLK), .rst(n2), .ALU_OUT(ALU_OUT), 
        .ALU_OUT_VLD(ALU_OUT_VLD), .test_si(SI[2]), .test_se(n38) );
  CLK_GATE U0_CLK_GATE ( .clk(DFT_REF_CLK), .clk_en(CLKG_EN), .test_en(
        test_mode), .gated_clk(ALU_CLK) );
  INVX4M U2 ( .A(n3), .Y(n2) );
  BUFX2M U12 ( .A(SO[1]), .Y(UART_TX_O) );
  BUFX2M U14 ( .A(SYNC_REF_RST), .Y(SO[0]) );
endmodule

