/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Sep 29 21:59:35 2025
/////////////////////////////////////////////////////////////


module RST_SYNC_NUM_STAGES2_0 ( clk, rst, sync_rst );
  input clk, rst;
  output sync_rst;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(clk), .RN(rst), .Q(
        sync_rst) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(rst), .Q(\sync_reg[0] )
         );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( clk, rst, sync_rst );
  input clk, rst;
  output sync_rst;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(clk), .RN(rst), .Q(
        sync_rst) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(rst), .Q(\sync_reg[0] )
         );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 ( clk, rst, unsync_bus, bus_enable, 
        sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input clk, rst, bus_enable;
  output enable_pulse;
  wire   pulse_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_reg;

  DFFRQX2M pulse_flop_reg ( .D(sync_reg[1]), .CK(clk), .RN(rst), .Q(pulse_flop) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(clk), .RN(rst), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(clk), .RN(rst), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(clk), .RN(rst), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(clk), .RN(rst), .Q(sync_bus[4]) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .CK(clk), .RN(rst), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(clk), .RN(rst), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(clk), .RN(rst), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(clk), .RN(rst), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(clk), .RN(rst), .Q(sync_bus[0]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(clk), .RN(rst), .Q(enable_pulse) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .CK(clk), .RN(rst), .Q(
        sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(pulse_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH3 ( w_clk, w_rst, wclken, wr_data, 
        wr_addr, rd_addr, rd_data );
  input [7:0] wr_data;
  input [2:0] wr_addr;
  input [2:0] rd_addr;
  output [7:0] rd_data;
  input w_clk, w_rst, wclken;
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
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115;
  assign N10 = rd_addr[0];
  assign N11 = rd_addr[1];
  assign N12 = rd_addr[2];

  DFFRQX2M \mem_reg[1][7]  ( .D(n76), .CK(w_clk), .RN(n101), .Q(\mem[1][7] )
         );
  DFFRQX2M \mem_reg[1][6]  ( .D(n75), .CK(w_clk), .RN(n101), .Q(\mem[1][6] )
         );
  DFFRQX2M \mem_reg[1][5]  ( .D(n74), .CK(w_clk), .RN(n101), .Q(\mem[1][5] )
         );
  DFFRQX2M \mem_reg[1][4]  ( .D(n73), .CK(w_clk), .RN(n101), .Q(\mem[1][4] )
         );
  DFFRQX2M \mem_reg[1][3]  ( .D(n72), .CK(w_clk), .RN(n101), .Q(\mem[1][3] )
         );
  DFFRQX2M \mem_reg[1][2]  ( .D(n71), .CK(w_clk), .RN(n102), .Q(\mem[1][2] )
         );
  DFFRQX2M \mem_reg[1][1]  ( .D(n70), .CK(w_clk), .RN(n102), .Q(\mem[1][1] )
         );
  DFFRQX2M \mem_reg[1][0]  ( .D(n69), .CK(w_clk), .RN(n102), .Q(\mem[1][0] )
         );
  DFFRQX2M \mem_reg[5][7]  ( .D(n44), .CK(w_clk), .RN(n104), .Q(\mem[5][7] )
         );
  DFFRQX2M \mem_reg[5][6]  ( .D(n43), .CK(w_clk), .RN(n104), .Q(\mem[5][6] )
         );
  DFFRQX2M \mem_reg[5][5]  ( .D(n42), .CK(w_clk), .RN(n104), .Q(\mem[5][5] )
         );
  DFFRQX2M \mem_reg[5][4]  ( .D(n41), .CK(w_clk), .RN(n104), .Q(\mem[5][4] )
         );
  DFFRQX2M \mem_reg[5][3]  ( .D(n40), .CK(w_clk), .RN(n104), .Q(\mem[5][3] )
         );
  DFFRQX2M \mem_reg[5][2]  ( .D(n39), .CK(w_clk), .RN(n104), .Q(\mem[5][2] )
         );
  DFFRQX2M \mem_reg[5][1]  ( .D(n38), .CK(w_clk), .RN(n104), .Q(\mem[5][1] )
         );
  DFFRQX2M \mem_reg[5][0]  ( .D(n37), .CK(w_clk), .RN(n104), .Q(\mem[5][0] )
         );
  DFFRQX2M \mem_reg[3][7]  ( .D(n60), .CK(w_clk), .RN(n102), .Q(\mem[3][7] )
         );
  DFFRQX2M \mem_reg[3][6]  ( .D(n59), .CK(w_clk), .RN(n102), .Q(\mem[3][6] )
         );
  DFFRQX2M \mem_reg[3][5]  ( .D(n58), .CK(w_clk), .RN(n103), .Q(\mem[3][5] )
         );
  DFFRQX2M \mem_reg[3][4]  ( .D(n57), .CK(w_clk), .RN(n103), .Q(\mem[3][4] )
         );
  DFFRQX2M \mem_reg[3][3]  ( .D(n56), .CK(w_clk), .RN(n103), .Q(\mem[3][3] )
         );
  DFFRQX2M \mem_reg[3][2]  ( .D(n55), .CK(w_clk), .RN(n103), .Q(\mem[3][2] )
         );
  DFFRQX2M \mem_reg[3][1]  ( .D(n54), .CK(w_clk), .RN(n103), .Q(\mem[3][1] )
         );
  DFFRQX2M \mem_reg[3][0]  ( .D(n53), .CK(w_clk), .RN(n103), .Q(\mem[3][0] )
         );
  DFFRQX2M \mem_reg[7][7]  ( .D(n28), .CK(w_clk), .RN(n105), .Q(\mem[7][7] )
         );
  DFFRQX2M \mem_reg[7][6]  ( .D(n27), .CK(w_clk), .RN(n105), .Q(\mem[7][6] )
         );
  DFFRQX2M \mem_reg[7][5]  ( .D(n26), .CK(w_clk), .RN(n105), .Q(\mem[7][5] )
         );
  DFFRQX2M \mem_reg[7][4]  ( .D(n25), .CK(w_clk), .RN(n105), .Q(\mem[7][4] )
         );
  DFFRQX2M \mem_reg[7][3]  ( .D(n24), .CK(w_clk), .RN(n105), .Q(\mem[7][3] )
         );
  DFFRQX2M \mem_reg[7][2]  ( .D(n23), .CK(w_clk), .RN(n105), .Q(\mem[7][2] )
         );
  DFFRQX2M \mem_reg[7][1]  ( .D(n22), .CK(w_clk), .RN(n105), .Q(\mem[7][1] )
         );
  DFFRQX2M \mem_reg[7][0]  ( .D(n21), .CK(w_clk), .RN(n105), .Q(\mem[7][0] )
         );
  DFFRQX2M \mem_reg[2][7]  ( .D(n68), .CK(w_clk), .RN(n102), .Q(\mem[2][7] )
         );
  DFFRQX2M \mem_reg[2][6]  ( .D(n67), .CK(w_clk), .RN(n102), .Q(\mem[2][6] )
         );
  DFFRQX2M \mem_reg[2][5]  ( .D(n66), .CK(w_clk), .RN(n102), .Q(\mem[2][5] )
         );
  DFFRQX2M \mem_reg[2][4]  ( .D(n65), .CK(w_clk), .RN(n102), .Q(\mem[2][4] )
         );
  DFFRQX2M \mem_reg[2][3]  ( .D(n64), .CK(w_clk), .RN(n102), .Q(\mem[2][3] )
         );
  DFFRQX2M \mem_reg[2][2]  ( .D(n63), .CK(w_clk), .RN(n102), .Q(\mem[2][2] )
         );
  DFFRQX2M \mem_reg[2][1]  ( .D(n62), .CK(w_clk), .RN(n102), .Q(\mem[2][1] )
         );
  DFFRQX2M \mem_reg[2][0]  ( .D(n61), .CK(w_clk), .RN(n102), .Q(\mem[2][0] )
         );
  DFFRQX2M \mem_reg[6][7]  ( .D(n36), .CK(w_clk), .RN(n104), .Q(\mem[6][7] )
         );
  DFFRQX2M \mem_reg[6][6]  ( .D(n35), .CK(w_clk), .RN(n104), .Q(\mem[6][6] )
         );
  DFFRQX2M \mem_reg[6][5]  ( .D(n34), .CK(w_clk), .RN(n104), .Q(\mem[6][5] )
         );
  DFFRQX2M \mem_reg[6][4]  ( .D(n33), .CK(w_clk), .RN(n104), .Q(\mem[6][4] )
         );
  DFFRQX2M \mem_reg[6][3]  ( .D(n32), .CK(w_clk), .RN(n105), .Q(\mem[6][3] )
         );
  DFFRQX2M \mem_reg[6][2]  ( .D(n31), .CK(w_clk), .RN(n105), .Q(\mem[6][2] )
         );
  DFFRQX2M \mem_reg[6][1]  ( .D(n30), .CK(w_clk), .RN(n105), .Q(\mem[6][1] )
         );
  DFFRQX2M \mem_reg[6][0]  ( .D(n29), .CK(w_clk), .RN(n105), .Q(\mem[6][0] )
         );
  DFFRQX2M \mem_reg[0][7]  ( .D(n84), .CK(w_clk), .RN(n101), .Q(\mem[0][7] )
         );
  DFFRQX2M \mem_reg[0][6]  ( .D(n83), .CK(w_clk), .RN(n101), .Q(\mem[0][6] )
         );
  DFFRQX2M \mem_reg[0][5]  ( .D(n82), .CK(w_clk), .RN(n101), .Q(\mem[0][5] )
         );
  DFFRQX2M \mem_reg[0][4]  ( .D(n81), .CK(w_clk), .RN(n101), .Q(\mem[0][4] )
         );
  DFFRQX2M \mem_reg[0][3]  ( .D(n80), .CK(w_clk), .RN(n101), .Q(\mem[0][3] )
         );
  DFFRQX2M \mem_reg[0][2]  ( .D(n79), .CK(w_clk), .RN(n101), .Q(\mem[0][2] )
         );
  DFFRQX2M \mem_reg[0][1]  ( .D(n78), .CK(w_clk), .RN(n101), .Q(\mem[0][1] )
         );
  DFFRQX2M \mem_reg[0][0]  ( .D(n77), .CK(w_clk), .RN(n101), .Q(\mem[0][0] )
         );
  DFFRQX2M \mem_reg[4][7]  ( .D(n52), .CK(w_clk), .RN(n103), .Q(\mem[4][7] )
         );
  DFFRQX2M \mem_reg[4][6]  ( .D(n51), .CK(w_clk), .RN(n103), .Q(\mem[4][6] )
         );
  DFFRQX2M \mem_reg[4][5]  ( .D(n50), .CK(w_clk), .RN(n103), .Q(\mem[4][5] )
         );
  DFFRQX2M \mem_reg[4][4]  ( .D(n49), .CK(w_clk), .RN(n103), .Q(\mem[4][4] )
         );
  DFFRQX2M \mem_reg[4][3]  ( .D(n48), .CK(w_clk), .RN(n103), .Q(\mem[4][3] )
         );
  DFFRQX2M \mem_reg[4][2]  ( .D(n47), .CK(w_clk), .RN(n103), .Q(\mem[4][2] )
         );
  DFFRQX2M \mem_reg[4][1]  ( .D(n46), .CK(w_clk), .RN(n103), .Q(\mem[4][1] )
         );
  DFFRQX2M \mem_reg[4][0]  ( .D(n45), .CK(w_clk), .RN(n104), .Q(\mem[4][0] )
         );
  BUFX2M U2 ( .A(n11), .Y(n98) );
  BUFX2M U3 ( .A(n18), .Y(n94) );
  BUFX2M U4 ( .A(n16), .Y(n95) );
  BUFX2M U5 ( .A(n13), .Y(n97) );
  BUFX2M U6 ( .A(n14), .Y(n96) );
  BUFX2M U7 ( .A(n19), .Y(n93) );
  BUFX2M U8 ( .A(n99), .Y(n103) );
  BUFX2M U9 ( .A(n99), .Y(n102) );
  BUFX2M U10 ( .A(n99), .Y(n101) );
  BUFX2M U11 ( .A(n100), .Y(n104) );
  BUFX2M U12 ( .A(n100), .Y(n105) );
  BUFX2M U13 ( .A(w_rst), .Y(n99) );
  BUFX2M U14 ( .A(w_rst), .Y(n100) );
  NAND3X2M U15 ( .A(n114), .B(n115), .C(n17), .Y(n20) );
  NAND3X2M U16 ( .A(n114), .B(n115), .C(n12), .Y(n15) );
  NOR2BX2M U17 ( .AN(wclken), .B(wr_addr[2]), .Y(n17) );
  OAI2BB2X1M U18 ( .B0(n113), .B1(n20), .A0N(\mem[0][0] ), .A1N(n20), .Y(n77)
         );
  OAI2BB2X1M U19 ( .B0(n112), .B1(n20), .A0N(\mem[0][1] ), .A1N(n20), .Y(n78)
         );
  OAI2BB2X1M U20 ( .B0(n111), .B1(n20), .A0N(\mem[0][2] ), .A1N(n20), .Y(n79)
         );
  OAI2BB2X1M U21 ( .B0(n110), .B1(n20), .A0N(\mem[0][3] ), .A1N(n20), .Y(n80)
         );
  OAI2BB2X1M U22 ( .B0(n109), .B1(n20), .A0N(\mem[0][4] ), .A1N(n20), .Y(n81)
         );
  OAI2BB2X1M U23 ( .B0(n108), .B1(n20), .A0N(\mem[0][5] ), .A1N(n20), .Y(n82)
         );
  OAI2BB2X1M U24 ( .B0(n107), .B1(n20), .A0N(\mem[0][6] ), .A1N(n20), .Y(n83)
         );
  OAI2BB2X1M U25 ( .B0(n106), .B1(n20), .A0N(\mem[0][7] ), .A1N(n20), .Y(n84)
         );
  OAI2BB2X1M U26 ( .B0(n113), .B1(n15), .A0N(\mem[4][0] ), .A1N(n15), .Y(n45)
         );
  OAI2BB2X1M U27 ( .B0(n112), .B1(n15), .A0N(\mem[4][1] ), .A1N(n15), .Y(n46)
         );
  OAI2BB2X1M U28 ( .B0(n111), .B1(n15), .A0N(\mem[4][2] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U29 ( .B0(n110), .B1(n15), .A0N(\mem[4][3] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U30 ( .B0(n109), .B1(n15), .A0N(\mem[4][4] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U31 ( .B0(n108), .B1(n15), .A0N(\mem[4][5] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U32 ( .B0(n107), .B1(n15), .A0N(\mem[4][6] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U33 ( .B0(n106), .B1(n15), .A0N(\mem[4][7] ), .A1N(n15), .Y(n52)
         );
  INVX2M U34 ( .A(wr_data[0]), .Y(n113) );
  INVX2M U35 ( .A(wr_data[1]), .Y(n112) );
  INVX2M U36 ( .A(wr_data[2]), .Y(n111) );
  INVX2M U37 ( .A(wr_data[3]), .Y(n110) );
  INVX2M U38 ( .A(wr_data[4]), .Y(n109) );
  INVX2M U39 ( .A(wr_data[5]), .Y(n108) );
  INVX2M U40 ( .A(wr_data[6]), .Y(n107) );
  INVX2M U41 ( .A(wr_data[7]), .Y(n106) );
  OAI2BB2X1M U42 ( .B0(n113), .B1(n97), .A0N(\mem[6][0] ), .A1N(n97), .Y(n29)
         );
  OAI2BB2X1M U43 ( .B0(n112), .B1(n97), .A0N(\mem[6][1] ), .A1N(n97), .Y(n30)
         );
  OAI2BB2X1M U44 ( .B0(n111), .B1(n97), .A0N(\mem[6][2] ), .A1N(n97), .Y(n31)
         );
  OAI2BB2X1M U45 ( .B0(n110), .B1(n97), .A0N(\mem[6][3] ), .A1N(n97), .Y(n32)
         );
  OAI2BB2X1M U46 ( .B0(n109), .B1(n97), .A0N(\mem[6][4] ), .A1N(n97), .Y(n33)
         );
  OAI2BB2X1M U47 ( .B0(n108), .B1(n97), .A0N(\mem[6][5] ), .A1N(n97), .Y(n34)
         );
  OAI2BB2X1M U48 ( .B0(n107), .B1(n97), .A0N(\mem[6][6] ), .A1N(n97), .Y(n35)
         );
  OAI2BB2X1M U49 ( .B0(n106), .B1(n97), .A0N(\mem[6][7] ), .A1N(n97), .Y(n36)
         );
  OAI2BB2X1M U50 ( .B0(n113), .B1(n96), .A0N(\mem[5][0] ), .A1N(n96), .Y(n37)
         );
  OAI2BB2X1M U51 ( .B0(n112), .B1(n96), .A0N(\mem[5][1] ), .A1N(n96), .Y(n38)
         );
  OAI2BB2X1M U52 ( .B0(n111), .B1(n96), .A0N(\mem[5][2] ), .A1N(n96), .Y(n39)
         );
  OAI2BB2X1M U53 ( .B0(n110), .B1(n96), .A0N(\mem[5][3] ), .A1N(n96), .Y(n40)
         );
  OAI2BB2X1M U54 ( .B0(n109), .B1(n96), .A0N(\mem[5][4] ), .A1N(n96), .Y(n41)
         );
  OAI2BB2X1M U55 ( .B0(n108), .B1(n96), .A0N(\mem[5][5] ), .A1N(n96), .Y(n42)
         );
  OAI2BB2X1M U56 ( .B0(n107), .B1(n96), .A0N(\mem[5][6] ), .A1N(n96), .Y(n43)
         );
  OAI2BB2X1M U57 ( .B0(n106), .B1(n96), .A0N(\mem[5][7] ), .A1N(n96), .Y(n44)
         );
  OAI2BB2X1M U58 ( .B0(n113), .B1(n95), .A0N(\mem[3][0] ), .A1N(n95), .Y(n53)
         );
  OAI2BB2X1M U59 ( .B0(n112), .B1(n95), .A0N(\mem[3][1] ), .A1N(n95), .Y(n54)
         );
  OAI2BB2X1M U60 ( .B0(n111), .B1(n95), .A0N(\mem[3][2] ), .A1N(n95), .Y(n55)
         );
  OAI2BB2X1M U61 ( .B0(n110), .B1(n95), .A0N(\mem[3][3] ), .A1N(n95), .Y(n56)
         );
  OAI2BB2X1M U62 ( .B0(n109), .B1(n95), .A0N(\mem[3][4] ), .A1N(n95), .Y(n57)
         );
  OAI2BB2X1M U63 ( .B0(n108), .B1(n95), .A0N(\mem[3][5] ), .A1N(n95), .Y(n58)
         );
  OAI2BB2X1M U64 ( .B0(n107), .B1(n95), .A0N(\mem[3][6] ), .A1N(n95), .Y(n59)
         );
  OAI2BB2X1M U65 ( .B0(n106), .B1(n95), .A0N(\mem[3][7] ), .A1N(n95), .Y(n60)
         );
  OAI2BB2X1M U66 ( .B0(n113), .B1(n94), .A0N(\mem[2][0] ), .A1N(n94), .Y(n61)
         );
  OAI2BB2X1M U67 ( .B0(n112), .B1(n94), .A0N(\mem[2][1] ), .A1N(n94), .Y(n62)
         );
  OAI2BB2X1M U68 ( .B0(n111), .B1(n94), .A0N(\mem[2][2] ), .A1N(n94), .Y(n63)
         );
  OAI2BB2X1M U69 ( .B0(n110), .B1(n94), .A0N(\mem[2][3] ), .A1N(n94), .Y(n64)
         );
  OAI2BB2X1M U70 ( .B0(n109), .B1(n94), .A0N(\mem[2][4] ), .A1N(n94), .Y(n65)
         );
  OAI2BB2X1M U71 ( .B0(n108), .B1(n94), .A0N(\mem[2][5] ), .A1N(n94), .Y(n66)
         );
  OAI2BB2X1M U72 ( .B0(n107), .B1(n94), .A0N(\mem[2][6] ), .A1N(n94), .Y(n67)
         );
  OAI2BB2X1M U73 ( .B0(n106), .B1(n94), .A0N(\mem[2][7] ), .A1N(n94), .Y(n68)
         );
  OAI2BB2X1M U74 ( .B0(n113), .B1(n93), .A0N(\mem[1][0] ), .A1N(n93), .Y(n69)
         );
  OAI2BB2X1M U75 ( .B0(n112), .B1(n93), .A0N(\mem[1][1] ), .A1N(n93), .Y(n70)
         );
  OAI2BB2X1M U76 ( .B0(n111), .B1(n93), .A0N(\mem[1][2] ), .A1N(n93), .Y(n71)
         );
  OAI2BB2X1M U77 ( .B0(n110), .B1(n93), .A0N(\mem[1][3] ), .A1N(n93), .Y(n72)
         );
  OAI2BB2X1M U78 ( .B0(n109), .B1(n93), .A0N(\mem[1][4] ), .A1N(n93), .Y(n73)
         );
  OAI2BB2X1M U79 ( .B0(n108), .B1(n93), .A0N(\mem[1][5] ), .A1N(n93), .Y(n74)
         );
  OAI2BB2X1M U80 ( .B0(n107), .B1(n93), .A0N(\mem[1][6] ), .A1N(n93), .Y(n75)
         );
  OAI2BB2X1M U81 ( .B0(n106), .B1(n93), .A0N(\mem[1][7] ), .A1N(n93), .Y(n76)
         );
  OAI2BB2X1M U82 ( .B0(n98), .B1(n113), .A0N(\mem[7][0] ), .A1N(n98), .Y(n21)
         );
  OAI2BB2X1M U83 ( .B0(n98), .B1(n112), .A0N(\mem[7][1] ), .A1N(n98), .Y(n22)
         );
  OAI2BB2X1M U84 ( .B0(n98), .B1(n111), .A0N(\mem[7][2] ), .A1N(n98), .Y(n23)
         );
  OAI2BB2X1M U85 ( .B0(n98), .B1(n110), .A0N(\mem[7][3] ), .A1N(n98), .Y(n24)
         );
  OAI2BB2X1M U86 ( .B0(n98), .B1(n109), .A0N(\mem[7][4] ), .A1N(n98), .Y(n25)
         );
  OAI2BB2X1M U87 ( .B0(n98), .B1(n108), .A0N(\mem[7][5] ), .A1N(n98), .Y(n26)
         );
  OAI2BB2X1M U88 ( .B0(n98), .B1(n107), .A0N(\mem[7][6] ), .A1N(n98), .Y(n27)
         );
  OAI2BB2X1M U89 ( .B0(n98), .B1(n106), .A0N(\mem[7][7] ), .A1N(n98), .Y(n28)
         );
  AND2X2M U90 ( .A(wr_addr[2]), .B(wclken), .Y(n12) );
  NAND3X2M U91 ( .A(n12), .B(n115), .C(wr_addr[0]), .Y(n14) );
  NAND3X2M U92 ( .A(n12), .B(n114), .C(wr_addr[1]), .Y(n13) );
  NAND3X2M U93 ( .A(wr_addr[1]), .B(wr_addr[0]), .C(n17), .Y(n16) );
  NAND3X2M U94 ( .A(wr_addr[0]), .B(n115), .C(n17), .Y(n19) );
  NAND3X2M U95 ( .A(wr_addr[1]), .B(n114), .C(n17), .Y(n18) );
  NAND3X2M U96 ( .A(wr_addr[0]), .B(n12), .C(wr_addr[1]), .Y(n11) );
  INVX2M U97 ( .A(wr_addr[0]), .Y(n114) );
  INVX2M U98 ( .A(wr_addr[1]), .Y(n115) );
  MX2X2M U99 ( .A(n90), .B(n89), .S0(N12), .Y(rd_data[7]) );
  MX4X1M U100 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n91), .S1(N11), .Y(n89) );
  MX4X1M U101 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n92), .S1(N11), .Y(n90) );
  MX2X2M U102 ( .A(n2), .B(n1), .S0(N12), .Y(rd_data[0]) );
  MX4X1M U103 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(n91), .S1(N11), .Y(n1) );
  MX4X1M U104 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(n92), .S1(N11), .Y(n2) );
  MX2X2M U105 ( .A(n4), .B(n3), .S0(N12), .Y(rd_data[1]) );
  MX4X1M U106 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n91), .S1(N11), .Y(n3) );
  MX4X1M U107 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n92), .S1(N11), .Y(n4) );
  MX2X2M U108 ( .A(n6), .B(n5), .S0(N12), .Y(rd_data[2]) );
  MX4X1M U109 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n91), .S1(N11), .Y(n5) );
  MX4X1M U110 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n92), .S1(N11), .Y(n6) );
  MX2X2M U111 ( .A(n8), .B(n7), .S0(N12), .Y(rd_data[3]) );
  MX4X1M U112 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n91), .S1(N11), .Y(n7) );
  MX4X1M U113 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n92), .S1(N11), .Y(n8) );
  MX2X2M U114 ( .A(n10), .B(n9), .S0(N12), .Y(rd_data[4]) );
  MX4X1M U115 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n91), .S1(N11), .Y(n9) );
  MX4X1M U116 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n92), .S1(N11), .Y(n10) );
  MX2X2M U117 ( .A(n86), .B(n85), .S0(N12), .Y(rd_data[5]) );
  MX4X1M U118 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n91), .S1(N11), .Y(n85) );
  MX4X1M U119 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n92), .S1(N11), .Y(n86) );
  MX2X2M U120 ( .A(n88), .B(n87), .S0(N12), .Y(rd_data[6]) );
  MX4X1M U121 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n91), .S1(N11), .Y(n87) );
  MX4X1M U122 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n92), .S1(N11), .Y(n88) );
  BUFX2M U123 ( .A(N10), .Y(n92) );
  BUFX2M U124 ( .A(N10), .Y(n91) );
endmodule


module FIFO_DF_SYNC_WIDTH3_0 ( clk, rst, data_in, data_out );
  input [3:0] data_in;
  output [3:0] data_out;
  input clk, rst;
  wire   \sync_reg[0][3] , \sync_reg[0][2] , \sync_reg[0][1] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[1][3]  ( .D(\sync_reg[0][3] ), .CK(clk), .RN(rst), 
        .Q(data_out[3]) );
  DFFRQX2M \sync_reg_reg[1][2]  ( .D(\sync_reg[0][2] ), .CK(clk), .RN(rst), 
        .Q(data_out[2]) );
  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[0][1] ), .CK(clk), .RN(rst), 
        .Q(data_out[1]) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(\sync_reg[0][0] ), .CK(clk), .RN(rst), 
        .Q(data_out[0]) );
  DFFRQX2M \sync_reg_reg[0][3]  ( .D(data_in[3]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][3] ) );
  DFFRQX2M \sync_reg_reg[0][2]  ( .D(data_in[2]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][2] ) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(data_in[1]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][1] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(data_in[0]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][0] ) );
endmodule


module FIFO_DF_SYNC_WIDTH3_1 ( clk, rst, data_in, data_out );
  input [3:0] data_in;
  output [3:0] data_out;
  input clk, rst;
  wire   \sync_reg[0][3] , \sync_reg[0][2] , \sync_reg[0][1] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[0][1] ), .CK(clk), .RN(rst), 
        .Q(data_out[1]) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(\sync_reg[0][0] ), .CK(clk), .RN(rst), 
        .Q(data_out[0]) );
  DFFRQX2M \sync_reg_reg[1][3]  ( .D(\sync_reg[0][3] ), .CK(clk), .RN(rst), 
        .Q(data_out[3]) );
  DFFRQX2M \sync_reg_reg[1][2]  ( .D(\sync_reg[0][2] ), .CK(clk), .RN(rst), 
        .Q(data_out[2]) );
  DFFRQX2M \sync_reg_reg[0][3]  ( .D(data_in[3]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][3] ) );
  DFFRQX2M \sync_reg_reg[0][2]  ( .D(data_in[2]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][2] ) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(data_in[1]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][1] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(data_in[0]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][0] ) );
endmodule


module FIFO_WR_WIDTH3 ( w_clk, w_rst, w_inc, rd_ptr, wr_ptr, wr_addr, wclken, 
        full );
  input [3:0] rd_ptr;
  output [3:0] wr_ptr;
  output [2:0] wr_addr;
  input w_clk, w_rst, w_inc;
  output wclken, full;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  DFFRQX2M \wr_bin_reg[3]  ( .D(n11), .CK(w_clk), .RN(w_rst), .Q(wr_ptr[3]) );
  DFFRQX2M \wr_bin_reg[2]  ( .D(n12), .CK(w_clk), .RN(w_rst), .Q(wr_addr[2])
         );
  DFFRQX2M \wr_bin_reg[1]  ( .D(n13), .CK(w_clk), .RN(w_rst), .Q(wr_addr[1])
         );
  DFFRX1M \wr_bin_reg[0]  ( .D(n14), .CK(w_clk), .RN(w_rst), .Q(wr_addr[0]), 
        .QN(n1) );
  INVX2M U3 ( .A(n2), .Y(wclken) );
  NAND2X2M U4 ( .A(w_inc), .B(n6), .Y(n2) );
  INVX2M U5 ( .A(n6), .Y(full) );
  XNOR2X2M U6 ( .A(wr_ptr[1]), .B(rd_ptr[1]), .Y(n7) );
  NAND4X2M U7 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n6) );
  CLKXOR2X2M U8 ( .A(wr_ptr[3]), .B(rd_ptr[3]), .Y(n10) );
  XNOR2X2M U9 ( .A(wr_ptr[0]), .B(rd_ptr[0]), .Y(n8) );
  CLKXOR2X2M U10 ( .A(rd_ptr[2]), .B(wr_ptr[2]), .Y(n9) );
  CLKXOR2X2M U11 ( .A(wr_ptr[3]), .B(wr_addr[2]), .Y(wr_ptr[2]) );
  CLKXOR2X2M U12 ( .A(wr_addr[1]), .B(wr_addr[2]), .Y(wr_ptr[1]) );
  XNOR2X2M U13 ( .A(n1), .B(wr_addr[1]), .Y(wr_ptr[0]) );
  NOR2X2M U14 ( .A(n2), .B(n1), .Y(n5) );
  XNOR2X2M U15 ( .A(wr_addr[2]), .B(n4), .Y(n12) );
  XNOR2X2M U16 ( .A(wr_ptr[3]), .B(n3), .Y(n11) );
  NAND2BX2M U17 ( .AN(n4), .B(wr_addr[2]), .Y(n3) );
  NAND2X2M U18 ( .A(n5), .B(wr_addr[1]), .Y(n4) );
  CLKXOR2X2M U19 ( .A(wr_addr[1]), .B(n5), .Y(n13) );
  CLKXOR2X2M U20 ( .A(n1), .B(n2), .Y(n14) );
endmodule


module FIFO_RD_WIDTH3 ( r_clk, r_rst, r_inc, wr_ptr, rd_ptr, rd_addr, empty );
  input [3:0] wr_ptr;
  output [3:0] rd_ptr;
  output [2:0] rd_addr;
  input r_clk, r_rst, r_inc;
  output empty;
  wire   \rd_bin[3] , N2, N3, N4, n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [3:0] rd_bin_next;

  DFFRQX2M \rd_bin_reg[3]  ( .D(rd_bin_next[3]), .CK(r_clk), .RN(r_rst), .Q(
        \rd_bin[3] ) );
  DFFRQX2M \rd_bin_reg[2]  ( .D(rd_bin_next[2]), .CK(r_clk), .RN(r_rst), .Q(
        rd_addr[2]) );
  DFFRQX2M \rd_ptr_reg[1]  ( .D(N3), .CK(r_clk), .RN(r_rst), .Q(rd_ptr[1]) );
  DFFRQX2M \rd_ptr_reg[3]  ( .D(rd_bin_next[3]), .CK(r_clk), .RN(r_rst), .Q(
        rd_ptr[3]) );
  DFFRQX2M \rd_ptr_reg[2]  ( .D(N2), .CK(r_clk), .RN(r_rst), .Q(rd_ptr[2]) );
  DFFRQX2M \rd_ptr_reg[0]  ( .D(N4), .CK(r_clk), .RN(r_rst), .Q(rd_ptr[0]) );
  DFFRQX2M \rd_bin_reg[0]  ( .D(rd_bin_next[0]), .CK(r_clk), .RN(r_rst), .Q(
        rd_addr[0]) );
  DFFRQX2M \rd_bin_reg[1]  ( .D(rd_bin_next[1]), .CK(r_clk), .RN(r_rst), .Q(
        rd_addr[1]) );
  INVX2M U3 ( .A(n1), .Y(empty) );
  CLKXOR2X2M U4 ( .A(rd_bin_next[2]), .B(rd_bin_next[1]), .Y(N3) );
  CLKXOR2X2M U5 ( .A(rd_bin_next[1]), .B(rd_bin_next[0]), .Y(N4) );
  CLKXOR2X2M U6 ( .A(rd_bin_next[3]), .B(rd_bin_next[2]), .Y(N2) );
  XNOR2X2M U7 ( .A(n4), .B(rd_addr[2]), .Y(rd_bin_next[2]) );
  NAND2X2M U8 ( .A(rd_addr[1]), .B(n3), .Y(n4) );
  XNOR2X2M U9 ( .A(n5), .B(\rd_bin[3] ), .Y(rd_bin_next[3]) );
  NAND3X2M U10 ( .A(rd_addr[1]), .B(n3), .C(rd_addr[2]), .Y(n5) );
  NOR2BX2M U11 ( .AN(rd_addr[0]), .B(n2), .Y(n3) );
  XNOR2X2M U12 ( .A(n2), .B(rd_addr[0]), .Y(rd_bin_next[0]) );
  XNOR2X2M U13 ( .A(wr_ptr[1]), .B(rd_ptr[1]), .Y(n6) );
  NAND4X2M U14 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n1) );
  XNOR2X2M U15 ( .A(wr_ptr[3]), .B(rd_ptr[3]), .Y(n8) );
  XNOR2X2M U16 ( .A(wr_ptr[2]), .B(rd_ptr[2]), .Y(n9) );
  XNOR2X2M U17 ( .A(wr_ptr[0]), .B(rd_ptr[0]), .Y(n7) );
  NAND2X2M U18 ( .A(r_inc), .B(n1), .Y(n2) );
  CLKXOR2X2M U19 ( .A(rd_addr[1]), .B(n3), .Y(rd_bin_next[1]) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3 ( w_clk, w_rst, w_inc, r_clk, r_rst, 
        r_inc, wr_data, rd_data, full, empty );
  input [7:0] wr_data;
  output [7:0] rd_data;
  input w_clk, w_rst, w_inc, r_clk, r_rst, r_inc;
  output full, empty;
  wire   wclken, n1, n2;
  wire   [2:0] rd_addr;
  wire   [2:0] wr_addr;
  wire   [3:0] wr_ptr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] rd_ptr;
  wire   [3:0] rq2_rptr;

  FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH3 u_FIFO_MEM_CNTRL ( .w_clk(w_clk), 
        .w_rst(n1), .wclken(wclken), .wr_data(wr_data), .wr_addr(wr_addr), 
        .rd_addr(rd_addr), .rd_data(rd_data) );
  FIFO_DF_SYNC_WIDTH3_0 u_wr_DF_SYNC ( .clk(r_clk), .rst(r_rst), .data_in(
        wr_ptr), .data_out(rq2_wptr) );
  FIFO_DF_SYNC_WIDTH3_1 u_rd_DF_SYNC ( .clk(w_clk), .rst(n1), .data_in(rd_ptr), 
        .data_out(rq2_rptr) );
  FIFO_WR_WIDTH3 u_FIFO_WR ( .w_clk(w_clk), .w_rst(n1), .w_inc(w_inc), 
        .rd_ptr(rq2_rptr), .wr_ptr(wr_ptr), .wr_addr(wr_addr), .wclken(wclken), 
        .full(full) );
  FIFO_RD_WIDTH3 u_FIFO_RD ( .r_clk(r_clk), .r_rst(r_rst), .r_inc(r_inc), 
        .wr_ptr(rq2_wptr), .rd_ptr(rd_ptr), .rd_addr(rd_addr), .empty(empty)
         );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(w_rst), .Y(n2) );
endmodule


module PULSE_GEN ( clk, rst, in_sig, pulse_sig );
  input clk, rst, in_sig;
  output pulse_sig;
  wire   pls_flop, rcv_flop;

  DFFRQX2M rcv_flop_reg ( .D(in_sig), .CK(clk), .RN(rst), .Q(rcv_flop) );
  DFFRQX2M pls_flop_reg ( .D(rcv_flop), .CK(clk), .RN(rst), .Q(pls_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
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


module CLK_DIV_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, N5, div_clk_reg, flag, N14, N16, N17, N18, N19, N20, N21, N22,
         N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N38, N39, N40, N41,
         N42, N43, N44, N45, N55, N56, N57, N58, N59, N60, N61, N62, n19, n20,
         n21, n22, n23, \sub_25/carry[7] , \sub_25/carry[6] ,
         \sub_25/carry[5] , \sub_25/carry[4] , \sub_25/carry[3] ,
         \sub_25/carry[2] , \sub_25/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;
  wire   [7:0] full_count;
  wire   [7:0] counter;

  CLK_DIV_0_DW01_inc_0 add_56 ( .A(counter), .SUM({N45, N44, N43, N42, N41, 
        N40, N39, N38}) );
  DFFRQX2M div_clk_reg_reg ( .D(n23), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        div_clk_reg) );
  DFFRQX2M \counter_reg[7]  ( .D(N62), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M flag_reg ( .D(n22), .CK(i_ref_clk), .RN(i_rst_n), .Q(flag) );
  DFFRQX2M \counter_reg[0]  ( .D(N55), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[6]  ( .D(N61), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[5]  ( .D(N60), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[4]  ( .D(N59), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[3]  ( .D(N58), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N57), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N56), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  AOI221XLM U3 ( .A0(n21), .A1(i_div_ratio[0]), .B0(n51), .B1(N22), .C0(n19), 
        .Y(n20) );
  MX2X2M U4 ( .A(i_ref_clk), .B(div_clk_reg), .S0(N0), .Y(o_div_clk) );
  INVX2M U5 ( .A(n20), .Y(n50) );
  NOR2BX2M U6 ( .AN(N39), .B(n50), .Y(N56) );
  NOR2BX2M U7 ( .AN(N40), .B(n50), .Y(N57) );
  NOR2BX2M U8 ( .AN(N41), .B(n50), .Y(N58) );
  NOR2BX2M U9 ( .AN(N42), .B(n50), .Y(N59) );
  NOR2BX2M U10 ( .AN(N43), .B(n50), .Y(N60) );
  NOR2BX2M U11 ( .AN(N44), .B(n50), .Y(N61) );
  OR2X2M U12 ( .A(full_count[1]), .B(full_count[0]), .Y(n14) );
  NOR2X2M U13 ( .A(n2), .B(n19), .Y(N0) );
  INVX2M U14 ( .A(i_rst_n), .Y(n2) );
  INVX2M U15 ( .A(i_div_ratio[0]), .Y(n51) );
  AO22X1M U16 ( .A0(flag), .A1(N22), .B0(N34), .B1(n52), .Y(n21) );
  OAI32X1M U17 ( .A0(n19), .A1(div_clk_reg), .A2(n20), .B0(n50), .B1(n53), .Y(
        n23) );
  INVX2M U18 ( .A(div_clk_reg), .Y(n53) );
  OAI32X1M U19 ( .A0(n19), .A1(flag), .A2(n20), .B0(n52), .B1(n50), .Y(n22) );
  NOR2BX2M U20 ( .AN(N45), .B(n50), .Y(N62) );
  NOR2BX2M U21 ( .AN(N38), .B(n50), .Y(N55) );
  INVX2M U22 ( .A(counter[0]), .Y(n37) );
  INVX2M U23 ( .A(flag), .Y(n52) );
  NAND2X2M U24 ( .A(i_clk_en), .B(N5), .Y(n19) );
  OR2X2M U25 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n3) );
  ADDFX2M U26 ( .A(i_div_ratio[1]), .B(n8), .CI(\sub_25/carry[1] ), .CO(
        \sub_25/carry[2] ), .S(full_count[1]) );
  INVX2M U27 ( .A(i_div_ratio[2]), .Y(n8) );
  ADDFX2M U28 ( .A(i_div_ratio[2]), .B(n9), .CI(\sub_25/carry[2] ), .CO(
        \sub_25/carry[3] ), .S(full_count[2]) );
  INVX2M U29 ( .A(i_div_ratio[3]), .Y(n9) );
  ADDFX2M U30 ( .A(i_div_ratio[3]), .B(n10), .CI(\sub_25/carry[3] ), .CO(
        \sub_25/carry[4] ), .S(full_count[3]) );
  INVX2M U31 ( .A(i_div_ratio[4]), .Y(n10) );
  ADDFX2M U32 ( .A(i_div_ratio[4]), .B(n11), .CI(\sub_25/carry[4] ), .CO(
        \sub_25/carry[5] ), .S(full_count[4]) );
  INVX2M U33 ( .A(i_div_ratio[5]), .Y(n11) );
  ADDFX2M U34 ( .A(i_div_ratio[5]), .B(n12), .CI(\sub_25/carry[5] ), .CO(
        \sub_25/carry[6] ), .S(full_count[5]) );
  INVX2M U35 ( .A(i_div_ratio[6]), .Y(n12) );
  ADDFX2M U36 ( .A(i_div_ratio[6]), .B(n13), .CI(\sub_25/carry[6] ), .CO(
        \sub_25/carry[7] ), .S(full_count[6]) );
  INVX2M U37 ( .A(i_div_ratio[7]), .Y(n13) );
  AOI21BX2M U38 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n3), .Y(n1)
         );
  XNOR2X1M U39 ( .A(i_div_ratio[7]), .B(\sub_25/carry[7] ), .Y(full_count[7])
         );
  OR2X1M U40 ( .A(N14), .B(i_div_ratio[0]), .Y(\sub_25/carry[1] ) );
  XNOR2X1M U41 ( .A(i_div_ratio[0]), .B(N14), .Y(full_count[0]) );
  CLKINVX1M U42 ( .A(i_div_ratio[1]), .Y(N14) );
  OR2X1M U43 ( .A(n3), .B(i_div_ratio[3]), .Y(n4) );
  OAI2BB1X1M U44 ( .A0N(n3), .A1N(i_div_ratio[3]), .B0(n4), .Y(N16) );
  OR2X1M U45 ( .A(n4), .B(i_div_ratio[4]), .Y(n5) );
  OAI2BB1X1M U46 ( .A0N(n4), .A1N(i_div_ratio[4]), .B0(n5), .Y(N17) );
  OR2X1M U47 ( .A(n5), .B(i_div_ratio[5]), .Y(n6) );
  OAI2BB1X1M U48 ( .A0N(n5), .A1N(i_div_ratio[5]), .B0(n6), .Y(N18) );
  XNOR2X1M U49 ( .A(i_div_ratio[6]), .B(n6), .Y(N19) );
  NOR3X1M U50 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n6), .Y(N21) );
  OAI21X1M U51 ( .A0(i_div_ratio[6]), .A1(n6), .B0(i_div_ratio[7]), .Y(n7) );
  NAND2BX1M U52 ( .AN(N21), .B(n7), .Y(N20) );
  CLKINVX1M U53 ( .A(full_count[0]), .Y(N25) );
  OAI2BB1X1M U54 ( .A0N(full_count[0]), .A1N(full_count[1]), .B0(n14), .Y(N26)
         );
  OR2X1M U55 ( .A(n14), .B(full_count[2]), .Y(n15) );
  OAI2BB1X1M U56 ( .A0N(n14), .A1N(full_count[2]), .B0(n15), .Y(N27) );
  OR2X1M U57 ( .A(n15), .B(full_count[3]), .Y(n16) );
  OAI2BB1X1M U58 ( .A0N(n15), .A1N(full_count[3]), .B0(n16), .Y(N28) );
  OR2X1M U59 ( .A(n16), .B(full_count[4]), .Y(n17) );
  OAI2BB1X1M U60 ( .A0N(n16), .A1N(full_count[4]), .B0(n17), .Y(N29) );
  OR2X1M U61 ( .A(n17), .B(full_count[5]), .Y(n18) );
  OAI2BB1X1M U62 ( .A0N(n17), .A1N(full_count[5]), .B0(n18), .Y(N30) );
  OR2X1M U63 ( .A(n18), .B(full_count[6]), .Y(n24) );
  OAI2BB1X1M U64 ( .A0N(n18), .A1N(full_count[6]), .B0(n24), .Y(N31) );
  NOR2X1M U65 ( .A(n24), .B(full_count[7]), .Y(N33) );
  AO21XLM U66 ( .A0(n24), .A1(full_count[7]), .B0(N33), .Y(N32) );
  OR4X1M U67 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n25) );
  OR4X1M U68 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n25), .Y(N5) );
  XNOR2X1M U69 ( .A(N16), .B(counter[2]), .Y(n36) );
  NOR2X1M U70 ( .A(n37), .B(N14), .Y(n26) );
  OAI22X1M U71 ( .A0(counter[1]), .A1(n26), .B0(n26), .B1(n1), .Y(n35) );
  CLKNAND2X2M U72 ( .A(N14), .B(n37), .Y(n27) );
  AOI22X1M U73 ( .A0(n27), .A1(n1), .B0(n27), .B1(counter[1]), .Y(n28) );
  NOR3X1M U74 ( .A(n28), .B(N21), .C(counter[7]), .Y(n34) );
  CLKXOR2X2M U75 ( .A(N17), .B(counter[3]), .Y(n32) );
  CLKXOR2X2M U76 ( .A(N18), .B(counter[4]), .Y(n31) );
  CLKXOR2X2M U77 ( .A(N19), .B(counter[5]), .Y(n30) );
  CLKXOR2X2M U78 ( .A(N20), .B(counter[6]), .Y(n29) );
  NOR4X1M U79 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(n33) );
  AND4X1M U80 ( .A(n36), .B(n35), .C(n34), .D(n33), .Y(N22) );
  XNOR2X1M U81 ( .A(N31), .B(counter[6]), .Y(n41) );
  XNOR2X1M U82 ( .A(N30), .B(counter[5]), .Y(n40) );
  XNOR2X1M U83 ( .A(N29), .B(counter[4]), .Y(n39) );
  XNOR2X1M U84 ( .A(N28), .B(counter[3]), .Y(n38) );
  NAND4X1M U85 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(n49) );
  NOR2BX1M U86 ( .AN(N25), .B(counter[0]), .Y(n42) );
  OAI2B2X1M U87 ( .A1N(counter[1]), .A0(n42), .B0(N26), .B1(n42), .Y(n45) );
  NOR2BX1M U88 ( .AN(counter[0]), .B(N25), .Y(n43) );
  OAI2B2X1M U89 ( .A1N(N26), .A0(n43), .B0(counter[1]), .B1(n43), .Y(n44) );
  NAND3BX1M U90 ( .AN(N33), .B(n45), .C(n44), .Y(n48) );
  CLKXOR2X2M U91 ( .A(N32), .B(counter[7]), .Y(n47) );
  CLKXOR2X2M U92 ( .A(N27), .B(counter[2]), .Y(n46) );
  NOR4X1M U93 ( .A(n49), .B(n48), .C(n47), .D(n46), .Y(N34) );
endmodule


module CLKDIV_MUX ( in, out );
  input [5:0] in;
  output [7:0] out;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(out[4]) );
  INVX2M U5 ( .A(1'b1), .Y(out[5]) );
  INVX2M U7 ( .A(1'b1), .Y(out[6]) );
  INVX2M U9 ( .A(1'b1), .Y(out[7]) );
  NOR3X2M U11 ( .A(n7), .B(in[1]), .C(in[0]), .Y(out[1]) );
  NOR3X2M U12 ( .A(n6), .B(in[1]), .C(in[0]), .Y(out[2]) );
  NAND4BX1M U13 ( .AN(in[4]), .B(in[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U14 ( .AN(in[3]), .B(in[4]), .C(n15), .D(n14), .Y(n7) );
  NOR4X1M U15 ( .A(n5), .B(in[3]), .C(in[5]), .D(in[4]), .Y(out[3]) );
  NAND3X2M U16 ( .A(n17), .B(n16), .C(in[2]), .Y(n5) );
  OAI211X2M U17 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(out[0]) );
  NAND2X2M U18 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U19 ( .A(in[5]), .B(in[4]), .C(in[3]), .D(n15), .Y(n8) );
  INVX2M U20 ( .A(in[2]), .Y(n15) );
  INVX2M U21 ( .A(in[1]), .Y(n16) );
  INVX2M U22 ( .A(in[0]), .Y(n17) );
  INVX2M U23 ( .A(in[5]), .Y(n14) );
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


module CLK_DIV_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, N5, div_clk_reg, flag, N14, N16, N17, N18, N19, N20, N21, N22,
         N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N38, N39, N40, N41,
         N42, N43, N44, N45, N55, N56, N57, N58, N59, N60, N61, N62,
         \sub_25/carry[7] , \sub_25/carry[6] , \sub_25/carry[5] ,
         \sub_25/carry[4] , \sub_25/carry[3] , \sub_25/carry[2] ,
         \sub_25/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59;
  wire   [7:0] full_count;
  wire   [7:0] counter;

  CLK_DIV_1_DW01_inc_0 add_56 ( .A(counter), .SUM({N45, N44, N43, N42, N41, 
        N40, N39, N38}) );
  DFFRQX2M div_clk_reg_reg ( .D(n55), .CK(i_ref_clk), .RN(n2), .Q(div_clk_reg)
         );
  DFFRQX2M \counter_reg[7]  ( .D(N62), .CK(i_ref_clk), .RN(n2), .Q(counter[7])
         );
  DFFRQX2M flag_reg ( .D(n56), .CK(i_ref_clk), .RN(n2), .Q(flag) );
  DFFRQX2M \counter_reg[0]  ( .D(N55), .CK(i_ref_clk), .RN(n2), .Q(counter[0])
         );
  DFFRQX2M \counter_reg[6]  ( .D(N61), .CK(i_ref_clk), .RN(n2), .Q(counter[6])
         );
  DFFRQX2M \counter_reg[5]  ( .D(N60), .CK(i_ref_clk), .RN(n2), .Q(counter[5])
         );
  DFFRQX2M \counter_reg[4]  ( .D(N59), .CK(i_ref_clk), .RN(n2), .Q(counter[4])
         );
  DFFRQX2M \counter_reg[3]  ( .D(N58), .CK(i_ref_clk), .RN(n2), .Q(counter[3])
         );
  DFFRQX2M \counter_reg[2]  ( .D(N57), .CK(i_ref_clk), .RN(n2), .Q(counter[2])
         );
  DFFRQX2M \counter_reg[1]  ( .D(N56), .CK(i_ref_clk), .RN(n2), .Q(counter[1])
         );
  AOI221XLM U3 ( .A0(n57), .A1(i_div_ratio[0]), .B0(n54), .B1(N22), .C0(n59), 
        .Y(n58) );
  OR2X2M U4 ( .A(full_count[1]), .B(full_count[0]), .Y(n15) );
  INVX2M U5 ( .A(n3), .Y(n2) );
  MX2X2M U6 ( .A(i_ref_clk), .B(div_clk_reg), .S0(N0), .Y(o_div_clk) );
  INVX2M U7 ( .A(n58), .Y(n51) );
  NOR2BX2M U8 ( .AN(N39), .B(n51), .Y(N56) );
  NOR2BX2M U9 ( .AN(N40), .B(n51), .Y(N57) );
  NOR2BX2M U10 ( .AN(N41), .B(n51), .Y(N58) );
  NOR2BX2M U11 ( .AN(N42), .B(n51), .Y(N59) );
  NOR2BX2M U12 ( .AN(N43), .B(n51), .Y(N60) );
  NOR2BX2M U13 ( .AN(N44), .B(n51), .Y(N61) );
  OR2X2M U14 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n4) );
  ADDFX2M U15 ( .A(i_div_ratio[1]), .B(n14), .CI(\sub_25/carry[1] ), .CO(
        \sub_25/carry[2] ), .S(full_count[1]) );
  INVX2M U16 ( .A(i_div_ratio[2]), .Y(n14) );
  ADDFX2M U17 ( .A(i_div_ratio[2]), .B(n13), .CI(\sub_25/carry[2] ), .CO(
        \sub_25/carry[3] ), .S(full_count[2]) );
  INVX2M U18 ( .A(i_div_ratio[3]), .Y(n13) );
  NOR2X2M U19 ( .A(n3), .B(n59), .Y(N0) );
  AOI21BX2M U20 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n4), .Y(n1)
         );
  INVX2M U21 ( .A(i_rst_n), .Y(n3) );
  INVX2M U22 ( .A(i_div_ratio[0]), .Y(n54) );
  AO22X1M U23 ( .A0(flag), .A1(N22), .B0(N34), .B1(n52), .Y(n57) );
  OAI32X1M U24 ( .A0(n59), .A1(div_clk_reg), .A2(n58), .B0(n51), .B1(n53), .Y(
        n55) );
  INVX2M U25 ( .A(div_clk_reg), .Y(n53) );
  OAI32X1M U26 ( .A0(n59), .A1(flag), .A2(n58), .B0(n52), .B1(n51), .Y(n56) );
  NOR2BX2M U27 ( .AN(N45), .B(n51), .Y(N62) );
  NOR2BX2M U28 ( .AN(N38), .B(n51), .Y(N55) );
  INVX2M U29 ( .A(counter[0]), .Y(n38) );
  INVX2M U30 ( .A(flag), .Y(n52) );
  NAND2X2M U31 ( .A(i_clk_en), .B(N5), .Y(n59) );
  ADDFX2M U32 ( .A(i_div_ratio[3]), .B(n12), .CI(\sub_25/carry[3] ), .CO(
        \sub_25/carry[4] ), .S(full_count[3]) );
  INVX2M U33 ( .A(i_div_ratio[4]), .Y(n12) );
  ADDFX2M U34 ( .A(i_div_ratio[4]), .B(n11), .CI(\sub_25/carry[4] ), .CO(
        \sub_25/carry[5] ), .S(full_count[4]) );
  INVX2M U35 ( .A(i_div_ratio[5]), .Y(n11) );
  ADDFX2M U36 ( .A(i_div_ratio[5]), .B(n10), .CI(\sub_25/carry[5] ), .CO(
        \sub_25/carry[6] ), .S(full_count[5]) );
  INVX2M U37 ( .A(i_div_ratio[6]), .Y(n10) );
  ADDFX2M U38 ( .A(i_div_ratio[6]), .B(n9), .CI(\sub_25/carry[6] ), .CO(
        \sub_25/carry[7] ), .S(full_count[6]) );
  INVX2M U39 ( .A(i_div_ratio[7]), .Y(n9) );
  XNOR2X1M U40 ( .A(i_div_ratio[7]), .B(\sub_25/carry[7] ), .Y(full_count[7])
         );
  OR2X1M U41 ( .A(N14), .B(i_div_ratio[0]), .Y(\sub_25/carry[1] ) );
  XNOR2X1M U42 ( .A(i_div_ratio[0]), .B(N14), .Y(full_count[0]) );
  CLKINVX1M U43 ( .A(i_div_ratio[1]), .Y(N14) );
  OR2X1M U44 ( .A(n4), .B(i_div_ratio[3]), .Y(n5) );
  OAI2BB1X1M U45 ( .A0N(n4), .A1N(i_div_ratio[3]), .B0(n5), .Y(N16) );
  OR2X1M U46 ( .A(n5), .B(i_div_ratio[4]), .Y(n6) );
  OAI2BB1X1M U47 ( .A0N(n5), .A1N(i_div_ratio[4]), .B0(n6), .Y(N17) );
  OR2X1M U48 ( .A(n6), .B(i_div_ratio[5]), .Y(n7) );
  OAI2BB1X1M U49 ( .A0N(n6), .A1N(i_div_ratio[5]), .B0(n7), .Y(N18) );
  XNOR2X1M U50 ( .A(i_div_ratio[6]), .B(n7), .Y(N19) );
  NOR3X1M U51 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n7), .Y(N21) );
  OAI21X1M U52 ( .A0(i_div_ratio[6]), .A1(n7), .B0(i_div_ratio[7]), .Y(n8) );
  NAND2BX1M U53 ( .AN(N21), .B(n8), .Y(N20) );
  CLKINVX1M U54 ( .A(full_count[0]), .Y(N25) );
  OAI2BB1X1M U55 ( .A0N(full_count[0]), .A1N(full_count[1]), .B0(n15), .Y(N26)
         );
  OR2X1M U56 ( .A(n15), .B(full_count[2]), .Y(n16) );
  OAI2BB1X1M U57 ( .A0N(n15), .A1N(full_count[2]), .B0(n16), .Y(N27) );
  OR2X1M U58 ( .A(n16), .B(full_count[3]), .Y(n17) );
  OAI2BB1X1M U59 ( .A0N(n16), .A1N(full_count[3]), .B0(n17), .Y(N28) );
  OR2X1M U60 ( .A(n17), .B(full_count[4]), .Y(n18) );
  OAI2BB1X1M U61 ( .A0N(n17), .A1N(full_count[4]), .B0(n18), .Y(N29) );
  OR2X1M U62 ( .A(n18), .B(full_count[5]), .Y(n24) );
  OAI2BB1X1M U63 ( .A0N(n18), .A1N(full_count[5]), .B0(n24), .Y(N30) );
  OR2X1M U64 ( .A(n24), .B(full_count[6]), .Y(n25) );
  OAI2BB1X1M U65 ( .A0N(n24), .A1N(full_count[6]), .B0(n25), .Y(N31) );
  NOR2X1M U66 ( .A(n25), .B(full_count[7]), .Y(N33) );
  AO21XLM U67 ( .A0(n25), .A1(full_count[7]), .B0(N33), .Y(N32) );
  OR4X1M U68 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n26) );
  OR4X1M U69 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n26), .Y(N5) );
  XNOR2X1M U70 ( .A(N16), .B(counter[2]), .Y(n37) );
  NOR2X1M U71 ( .A(n38), .B(N14), .Y(n27) );
  OAI22X1M U72 ( .A0(counter[1]), .A1(n27), .B0(n27), .B1(n1), .Y(n36) );
  CLKNAND2X2M U73 ( .A(N14), .B(n38), .Y(n28) );
  AOI22X1M U74 ( .A0(n28), .A1(n1), .B0(n28), .B1(counter[1]), .Y(n29) );
  NOR3X1M U75 ( .A(n29), .B(N21), .C(counter[7]), .Y(n35) );
  CLKXOR2X2M U76 ( .A(N17), .B(counter[3]), .Y(n33) );
  CLKXOR2X2M U77 ( .A(N18), .B(counter[4]), .Y(n32) );
  CLKXOR2X2M U78 ( .A(N19), .B(counter[5]), .Y(n31) );
  CLKXOR2X2M U79 ( .A(N20), .B(counter[6]), .Y(n30) );
  NOR4X1M U80 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(n34) );
  AND4X1M U81 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(N22) );
  XNOR2X1M U82 ( .A(N31), .B(counter[6]), .Y(n42) );
  XNOR2X1M U83 ( .A(N30), .B(counter[5]), .Y(n41) );
  XNOR2X1M U84 ( .A(N29), .B(counter[4]), .Y(n40) );
  XNOR2X1M U85 ( .A(N28), .B(counter[3]), .Y(n39) );
  NAND4X1M U86 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(n50) );
  NOR2BX1M U87 ( .AN(N25), .B(counter[0]), .Y(n43) );
  OAI2B2X1M U88 ( .A1N(counter[1]), .A0(n43), .B0(N26), .B1(n43), .Y(n46) );
  NOR2BX1M U89 ( .AN(counter[0]), .B(N25), .Y(n44) );
  OAI2B2X1M U90 ( .A1N(N26), .A0(n44), .B0(counter[1]), .B1(n44), .Y(n45) );
  NAND3BX1M U91 ( .AN(N33), .B(n46), .C(n45), .Y(n49) );
  CLKXOR2X2M U92 ( .A(N32), .B(counter[7]), .Y(n48) );
  CLKXOR2X2M U93 ( .A(N27), .B(counter[2]), .Y(n47) );
  NOR4X1M U94 ( .A(n50), .B(n49), .C(n48), .D(n47), .Y(N34) );
endmodule


module mux ( clk, rst, mux_sel, ser_data, par_bit, tx_out );
  input [1:0] mux_sel;
  input clk, rst, ser_data, par_bit;
  output tx_out;
  wire   mux_out, n2, n3, n1;

  DFFRQX2M tx_out_reg ( .D(mux_out), .CK(clk), .RN(rst), .Q(tx_out) );
  OAI21X2M U3 ( .A0(n2), .A1(n1), .B0(n3), .Y(mux_out) );
  NOR2BX2M U4 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
  NAND3X2M U5 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module parity_calc ( clk, rst, p_data, data_valid, par_typ, par_en, busy, 
        par_bit );
  input [7:0] p_data;
  input clk, rst, data_valid, par_typ, par_en, busy;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n2
;
  wire   [7:0] data_reg;

  DFFRQX2M \data_reg_reg[1]  ( .D(n10), .CK(clk), .RN(rst), .Q(data_reg[1]) );
  DFFRQX2M \data_reg_reg[0]  ( .D(n9), .CK(clk), .RN(rst), .Q(data_reg[0]) );
  DFFRQX2M \data_reg_reg[2]  ( .D(n11), .CK(clk), .RN(rst), .Q(data_reg[2]) );
  DFFRQX2M \data_reg_reg[3]  ( .D(n12), .CK(clk), .RN(rst), .Q(data_reg[3]) );
  DFFRQX2M par_bit_reg ( .D(n8), .CK(clk), .RN(rst), .Q(par_bit) );
  DFFRQX2M \data_reg_reg[5]  ( .D(n14), .CK(clk), .RN(rst), .Q(data_reg[5]) );
  DFFRQX2M \data_reg_reg[4]  ( .D(n13), .CK(clk), .RN(rst), .Q(data_reg[4]) );
  DFFRQX2M \data_reg_reg[6]  ( .D(n15), .CK(clk), .RN(rst), .Q(data_reg[6]) );
  DFFRQX2M \data_reg_reg[7]  ( .D(n16), .CK(clk), .RN(rst), .Q(data_reg[7]) );
  NOR2BX2M U2 ( .AN(data_valid), .B(busy), .Y(n7) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  INVX2M U4 ( .A(par_en), .Y(n2) );
  XOR3XLM U5 ( .A(n3), .B(par_typ), .C(n4), .Y(n1) );
  XOR3XLM U6 ( .A(data_reg[1]), .B(data_reg[0]), .C(n5), .Y(n4) );
  XOR3XLM U7 ( .A(data_reg[5]), .B(data_reg[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U8 ( .A(data_reg[7]), .B(data_reg[6]), .Y(n6) );
  AO2B2X2M U9 ( .B0(p_data[0]), .B1(n7), .A0(data_reg[0]), .A1N(n7), .Y(n9) );
  AO2B2X2M U10 ( .B0(p_data[1]), .B1(n7), .A0(data_reg[1]), .A1N(n7), .Y(n10)
         );
  AO2B2X2M U11 ( .B0(p_data[2]), .B1(n7), .A0(data_reg[2]), .A1N(n7), .Y(n11)
         );
  AO2B2X2M U12 ( .B0(p_data[3]), .B1(n7), .A0(data_reg[3]), .A1N(n7), .Y(n12)
         );
  AO2B2X2M U13 ( .B0(p_data[4]), .B1(n7), .A0(data_reg[4]), .A1N(n7), .Y(n13)
         );
  AO2B2X2M U14 ( .B0(p_data[5]), .B1(n7), .A0(data_reg[5]), .A1N(n7), .Y(n14)
         );
  AO2B2X2M U15 ( .B0(p_data[6]), .B1(n7), .A0(data_reg[6]), .A1N(n7), .Y(n15)
         );
  AO2B2X2M U16 ( .B0(p_data[7]), .B1(n7), .A0(data_reg[7]), .A1N(n7), .Y(n16)
         );
  XNOR2X2M U17 ( .A(data_reg[2]), .B(data_reg[3]), .Y(n5) );
endmodule


module serializer ( clk, rst, p_data, ser_en, busy, data_valid, ser_done, 
        ser_data );
  input [7:0] p_data;
  input clk, rst, ser_en, busy, data_valid;
  output ser_done, ser_data;
  wire   N23, N24, N25, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n1, n2, n3, n24;
  wire   [7:1] data_reg;
  wire   [2:0] count;

  DFFRQX2M \data_reg_reg[6]  ( .D(n18), .CK(clk), .RN(rst), .Q(data_reg[6]) );
  DFFRQX2M \data_reg_reg[5]  ( .D(n19), .CK(clk), .RN(rst), .Q(data_reg[5]) );
  DFFRQX2M \data_reg_reg[4]  ( .D(n20), .CK(clk), .RN(rst), .Q(data_reg[4]) );
  DFFRQX2M \data_reg_reg[3]  ( .D(n21), .CK(clk), .RN(rst), .Q(data_reg[3]) );
  DFFRQX2M \data_reg_reg[2]  ( .D(n22), .CK(clk), .RN(rst), .Q(data_reg[2]) );
  DFFRQX2M \data_reg_reg[1]  ( .D(n23), .CK(clk), .RN(rst), .Q(data_reg[1]) );
  DFFRQX2M \data_reg_reg[7]  ( .D(n17), .CK(clk), .RN(rst), .Q(data_reg[7]) );
  DFFRQX2M \data_reg_reg[0]  ( .D(n16), .CK(clk), .RN(rst), .Q(ser_data) );
  DFFRQX2M \count_reg[1]  ( .D(N24), .CK(clk), .RN(rst), .Q(count[1]) );
  DFFRQX2M \count_reg[2]  ( .D(N25), .CK(clk), .RN(rst), .Q(count[2]) );
  DFFRQX2M \count_reg[0]  ( .D(N23), .CK(clk), .RN(rst), .Q(count[0]) );
  NOR2X2M U3 ( .A(n2), .B(n1), .Y(n6) );
  NOR2X2M U4 ( .A(n1), .B(n6), .Y(n4) );
  AND3X2M U5 ( .A(count[0]), .B(count[2]), .C(count[1]), .Y(ser_done) );
  OAI2BB2X1M U6 ( .B0(n14), .B1(n2), .A0N(count[2]), .A1N(N23), .Y(N25) );
  AOI32X1M U7 ( .A0(count[0]), .A1(n24), .A2(count[1]), .B0(count[2]), .B1(n3), 
        .Y(n14) );
  INVX2M U8 ( .A(count[2]), .Y(n24) );
  INVX2M U9 ( .A(ser_en), .Y(n2) );
  NOR2X2M U10 ( .A(n2), .B(count[0]), .Y(N23) );
  BUFX2M U11 ( .A(n7), .Y(n1) );
  NOR2BX2M U12 ( .AN(data_valid), .B(busy), .Y(n7) );
  NOR2X2M U13 ( .A(n15), .B(n2), .Y(N24) );
  CLKXOR2X2M U14 ( .A(count[0]), .B(n3), .Y(n15) );
  OAI2BB1X2M U15 ( .A0N(ser_data), .A1N(n4), .B0(n5), .Y(n16) );
  AOI22X1M U16 ( .A0(data_reg[1]), .A1(n6), .B0(p_data[0]), .B1(n1), .Y(n5) );
  OAI2BB1X2M U17 ( .A0N(data_reg[1]), .A1N(n4), .B0(n13), .Y(n23) );
  AOI22X1M U18 ( .A0(data_reg[2]), .A1(n6), .B0(p_data[1]), .B1(n1), .Y(n13)
         );
  OAI2BB1X2M U19 ( .A0N(n4), .A1N(data_reg[2]), .B0(n12), .Y(n22) );
  AOI22X1M U20 ( .A0(data_reg[3]), .A1(n6), .B0(p_data[2]), .B1(n1), .Y(n12)
         );
  OAI2BB1X2M U21 ( .A0N(n4), .A1N(data_reg[3]), .B0(n11), .Y(n21) );
  AOI22X1M U22 ( .A0(data_reg[4]), .A1(n6), .B0(p_data[3]), .B1(n1), .Y(n11)
         );
  OAI2BB1X2M U23 ( .A0N(n4), .A1N(data_reg[4]), .B0(n10), .Y(n20) );
  AOI22X1M U24 ( .A0(data_reg[5]), .A1(n6), .B0(p_data[4]), .B1(n1), .Y(n10)
         );
  OAI2BB1X2M U25 ( .A0N(n4), .A1N(data_reg[5]), .B0(n9), .Y(n19) );
  AOI22X1M U26 ( .A0(data_reg[6]), .A1(n6), .B0(p_data[5]), .B1(n1), .Y(n9) );
  OAI2BB1X2M U27 ( .A0N(n4), .A1N(data_reg[6]), .B0(n8), .Y(n18) );
  AOI22X1M U28 ( .A0(data_reg[7]), .A1(n6), .B0(p_data[6]), .B1(n1), .Y(n8) );
  AO22X1M U29 ( .A0(n4), .A1(data_reg[7]), .B0(p_data[7]), .B1(n1), .Y(n17) );
  INVX2M U30 ( .A(count[1]), .Y(n3) );
endmodule


module TX_FSM ( clk, rst, data_valid, par_en, ser_done, mux_sel, ser_en, busy
 );
  output [1:0] mux_sel;
  input clk, rst, data_valid, par_en, ser_done;
  output ser_en, busy;
  wire   busy_c, n7, n9, n10, n11, n12, n13, n14, n15, n1, n2, n3, n4, n6, n8;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M busy_reg ( .D(busy_c), .CK(clk), .RN(rst), .Q(busy) );
  DFFRQX2M \current_state_reg[1]  ( .D(n3), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .QN(
        n7) );
  NAND2X2M U3 ( .A(ser_done), .B(n8), .Y(n10) );
  OAI211X2M U4 ( .A0(n15), .A1(n6), .B0(n2), .C0(n11), .Y(busy_c) );
  INVX2M U5 ( .A(n9), .Y(n2) );
  NOR2X2M U6 ( .A(n7), .B(current_state[2]), .Y(n9) );
  NAND2X2M U7 ( .A(n7), .B(n4), .Y(n15) );
  NOR4X1M U8 ( .A(ser_done), .B(current_state[2]), .C(n9), .D(n4), .Y(ser_en)
         );
  INVX2M U9 ( .A(current_state[1]), .Y(n4) );
  OAI211X2M U10 ( .A0(n7), .A1(n4), .B0(n15), .C0(n6), .Y(mux_sel[0]) );
  INVX2M U11 ( .A(n12), .Y(n3) );
  AOI32X1M U12 ( .A0(mux_sel[1]), .A1(n7), .A2(n10), .B0(n4), .B1(n9), .Y(n12)
         );
  INVX2M U13 ( .A(n11), .Y(mux_sel[1]) );
  OAI31X1M U14 ( .A0(n13), .A1(n11), .A2(n8), .B0(n14), .Y(next_state[0]) );
  NAND3X2M U15 ( .A(n1), .B(n6), .C(data_valid), .Y(n14) );
  NAND2X2M U16 ( .A(ser_done), .B(n7), .Y(n13) );
  INVX2M U17 ( .A(n15), .Y(n1) );
  NAND2X2M U18 ( .A(current_state[1]), .B(n6), .Y(n11) );
  INVX2M U19 ( .A(current_state[2]), .Y(n6) );
  AOI21X2M U20 ( .A0(n7), .A1(n10), .B0(n11), .Y(next_state[2]) );
  INVX2M U21 ( .A(par_en), .Y(n8) );
endmodule


module UART_TX ( clk, rst, data_valid, par_en, par_typ, p_data, tx_out, busy
 );
  input [7:0] p_data;
  input clk, rst, data_valid, par_en, par_typ;
  output tx_out, busy;
  wire   par_bit, ser_data, ser_en, ser_done, n1, n2;
  wire   [1:0] mux_sel;

  mux u_mux ( .clk(clk), .rst(n1), .mux_sel(mux_sel), .ser_data(ser_data), 
        .par_bit(par_bit), .tx_out(tx_out) );
  parity_calc u_parity_calc ( .clk(clk), .rst(n1), .p_data(p_data), 
        .data_valid(data_valid), .par_typ(par_typ), .par_en(par_en), .busy(
        busy), .par_bit(par_bit) );
  serializer u_serializer ( .clk(clk), .rst(n1), .p_data(p_data), .ser_en(
        ser_en), .busy(busy), .data_valid(data_valid), .ser_done(ser_done), 
        .ser_data(ser_data) );
  TX_FSM u_TX_FSM ( .clk(clk), .rst(n1), .data_valid(data_valid), .par_en(
        par_en), .ser_done(ser_done), .mux_sel(mux_sel), .ser_en(ser_en), 
        .busy(busy) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
endmodule


module RX_FSM ( clk, rst, rx_in, par_en, par_err, strt_glitch, stp_err, 
        prescale, edge_cnt, bit_cnt, par_chk_en, strt_chk_en, stp_chk_en, 
        deser_en, enable, dat_samp_en, data_valid );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input [3:0] bit_cnt;
  input clk, rst, rx_in, par_en, par_err, strt_glitch, stp_err;
  output par_chk_en, strt_chk_en, stp_chk_en, deser_en, enable, dat_samp_en,
         data_valid;
  wire   data_valid_c, N107, N108, N109, N110, N111, N112, N113, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, \r112/EQ , \r112/B[0] , \r112/B[1] , \r112/B[2] ,
         \r112/B[3] , \r112/B[4] , \r112/B[5] , \r112/B[9] , \r113/carry[4] ,
         \r113/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign N107 = prescale[1];

  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRQX2M data_valid_reg ( .D(data_valid_c), .CK(clk), .RN(rst), .Q(
        data_valid) );
  OAI31X1M U3 ( .A0(current_state[0]), .A1(rx_in), .A2(current_state[2]), .B0(
        n28), .Y(enable) );
  NOR3X2M U4 ( .A(current_state[1]), .B(current_state[2]), .C(n35), .Y(n60) );
  NOR2X2M U5 ( .A(n36), .B(current_state[2]), .Y(n51) );
  NOR2X2M U6 ( .A(n27), .B(n52), .Y(stp_chk_en) );
  NOR2X2M U7 ( .A(n27), .B(n57), .Y(deser_en) );
  INVX2M U8 ( .A(n57), .Y(n34) );
  INVX2M U9 ( .A(\r112/EQ ), .Y(n33) );
  NAND2BX2M U10 ( .AN(n67), .B(n33), .Y(n52) );
  OAI211X2M U11 ( .A0(n54), .A1(n57), .B0(n58), .C0(n59), .Y(next_state[1]) );
  NAND3X2M U12 ( .A(n60), .B(n29), .C(n61), .Y(n58) );
  INVX2M U13 ( .A(n61), .Y(n32) );
  INVX2M U14 ( .A(n62), .Y(n31) );
  INVX2M U15 ( .A(N113), .Y(n27) );
  NAND2X2M U16 ( .A(n51), .B(n35), .Y(n57) );
  NAND2BX2M U17 ( .AN(n53), .B(n56), .Y(n59) );
  INVX2M U18 ( .A(N109), .Y(n25) );
  INVX2M U19 ( .A(dat_samp_en), .Y(n28) );
  OAI211X2M U20 ( .A0(n63), .A1(n64), .B0(n59), .C0(n65), .Y(next_state[0]) );
  OAI2BB1X2M U21 ( .A0N(n33), .A1N(current_state[2]), .B0(n35), .Y(n64) );
  AOI32X1M U22 ( .A0(n34), .A1(n31), .A2(par_en), .B0(n60), .B1(n32), .Y(n65)
         );
  OR2X2M U23 ( .A(rx_in), .B(current_state[1]), .Y(n63) );
  NAND4X2M U24 ( .A(n52), .B(n57), .C(n68), .D(n69), .Y(dat_samp_en) );
  AOI22X1M U25 ( .A0(n60), .A1(n29), .B0(n51), .B1(n30), .Y(n69) );
  OAI21X2M U26 ( .A0(n60), .A1(n51), .B0(n33), .Y(n68) );
  INVX2M U27 ( .A(par_err), .Y(n30) );
  NOR3X2M U28 ( .A(n53), .B(\r112/EQ ), .C(n27), .Y(par_chk_en) );
  NOR3BX2M U29 ( .AN(n66), .B(bit_cnt[0]), .C(bit_cnt[3]), .Y(n61) );
  NOR3X2M U30 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(n33), .Y(n66) );
  NAND3BX2M U31 ( .AN(bit_cnt[0]), .B(n66), .C(bit_cnt[3]), .Y(n62) );
  NOR2X2M U32 ( .A(n62), .B(par_en), .Y(n54) );
  NAND3X2M U33 ( .A(bit_cnt[0]), .B(n66), .C(bit_cnt[3]), .Y(n56) );
  NOR4XLM U34 ( .A(n50), .B(n51), .C(\r112/EQ ), .D(current_state[2]), .Y(
        strt_chk_en) );
  NAND2X2M U35 ( .A(current_state[0]), .B(N113), .Y(n50) );
  AO21XLM U36 ( .A0(n54), .A1(n34), .B0(n55), .Y(next_state[2]) );
  OAI31X1M U37 ( .A0(n53), .A1(par_err), .A2(n56), .B0(n52), .Y(n55) );
  INVX2M U38 ( .A(edge_cnt[3]), .Y(n22) );
  INVX2M U39 ( .A(N110), .Y(n26) );
  INVX2M U40 ( .A(edge_cnt[2]), .Y(n21) );
  INVX2M U41 ( .A(prescale[2]), .Y(N108) );
  NOR3X2M U42 ( .A(n33), .B(stp_err), .C(n67), .Y(data_valid_c) );
  NAND3X2M U43 ( .A(n35), .B(n36), .C(current_state[2]), .Y(n67) );
  INVX2M U44 ( .A(current_state[0]), .Y(n35) );
  INVX2M U45 ( .A(current_state[1]), .Y(n36) );
  INVX2M U46 ( .A(edge_cnt[1]), .Y(n20) );
  INVX2M U47 ( .A(edge_cnt[4]), .Y(n23) );
  INVX2M U48 ( .A(strt_glitch), .Y(n29) );
  INVX2M U49 ( .A(edge_cnt[5]), .Y(n24) );
  NAND2X2M U50 ( .A(n51), .B(current_state[0]), .Y(n53) );
  OR2X2M U51 ( .A(N107), .B(prescale[0]), .Y(n1) );
  AND2X1M U52 ( .A(\r113/carry[4] ), .B(prescale[5]), .Y(N112) );
  CLKXOR2X2M U53 ( .A(prescale[5]), .B(\r113/carry[4] ), .Y(N111) );
  AND2X1M U54 ( .A(\r113/carry[3] ), .B(prescale[4]), .Y(\r113/carry[4] ) );
  CLKXOR2X2M U55 ( .A(prescale[4]), .B(\r113/carry[3] ), .Y(N110) );
  AND2X1M U56 ( .A(prescale[2]), .B(prescale[3]), .Y(\r113/carry[3] ) );
  CLKXOR2X2M U57 ( .A(prescale[3]), .B(prescale[2]), .Y(N109) );
  CLKINVX1M U58 ( .A(prescale[0]), .Y(\r112/B[0] ) );
  OAI2BB1X1M U59 ( .A0N(prescale[0]), .A1N(N107), .B0(n1), .Y(\r112/B[1] ) );
  OR2X1M U60 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U61 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(\r112/B[2] ) );
  OR2X1M U62 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U63 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(\r112/B[3] ) );
  OR2X1M U64 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U65 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(\r112/B[4] ) );
  NOR2X1M U66 ( .A(n4), .B(prescale[5]), .Y(\r112/B[9] ) );
  AO21XLM U67 ( .A0(n4), .A1(prescale[5]), .B0(\r112/B[9] ), .Y(\r112/B[5] )
         );
  NOR2BX1M U68 ( .AN(\r112/B[0] ), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U69 ( .A1N(edge_cnt[1]), .A0(n5), .B0(\r112/B[1] ), .B1(n5), .Y(n9) );
  XNOR2X1M U70 ( .A(\r112/B[5] ), .B(edge_cnt[5]), .Y(n8) );
  NOR2BX1M U71 ( .AN(edge_cnt[0]), .B(\r112/B[0] ), .Y(n6) );
  OAI2B2X1M U72 ( .A1N(\r112/B[1] ), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n7) );
  NAND4BX1M U73 ( .AN(\r112/B[9] ), .B(n9), .C(n8), .D(n7), .Y(n13) );
  CLKXOR2X2M U74 ( .A(\r112/B[4] ), .B(edge_cnt[4]), .Y(n12) );
  CLKXOR2X2M U75 ( .A(\r112/B[2] ), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U76 ( .A(\r112/B[3] ), .B(edge_cnt[3]), .Y(n10) );
  NOR4X1M U77 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(\r112/EQ ) );
  NOR2X1M U78 ( .A(N111), .B(n23), .Y(n18) );
  AOI2BB1X1M U79 ( .A0N(N108), .A1N(n20), .B0(edge_cnt[0]), .Y(n14) );
  AOI222X1M U80 ( .A0(N109), .A1(n21), .B0(n14), .B1(N107), .C0(N108), .C1(n20), .Y(n15) );
  AOI221XLM U81 ( .A0(edge_cnt[3]), .A1(n26), .B0(edge_cnt[2]), .B1(n25), .C0(
        n15), .Y(n16) );
  AOI221XLM U82 ( .A0(N111), .A1(n23), .B0(N110), .B1(n22), .C0(n16), .Y(n17)
         );
  OAI2BB2X1M U83 ( .B0(n18), .B1(n17), .A0N(n24), .A1N(N112), .Y(n19) );
  OAI21X1M U84 ( .A0(N112), .A1(n24), .B0(n19), .Y(N113) );
endmodule


module edge_bit_counter ( clk, rst, enable, prescale, edge_cnt, bit_cnt );
  input [5:0] prescale;
  output [5:0] edge_cnt;
  output [3:0] bit_cnt;
  input clk, rst, enable;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N20, N21, N22, N23, N24, N25,
         N37, N38, N39, N40, N41, N42, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, \add_31/carry[5] , \add_31/carry[4] , \add_31/carry[3] ,
         \add_31/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n22,
         n23, n24, n25, n26, n27, n28, n29, n30;

  DFFRQX2M \bit_cnt_reg[3]  ( .D(n18), .CK(clk), .RN(rst), .Q(bit_cnt[3]) );
  DFFRQX2M \bit_cnt_reg[2]  ( .D(n19), .CK(clk), .RN(rst), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(n20), .CK(clk), .RN(rst), .Q(bit_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n21), .CK(clk), .RN(rst), .Q(bit_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[5]  ( .D(N42), .CK(clk), .RN(rst), .Q(edge_cnt[5]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N41), .CK(clk), .RN(rst), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N40), .CK(clk), .RN(rst), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N39), .CK(clk), .RN(rst), .Q(edge_cnt[2]) );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N38), .CK(clk), .RN(rst), .Q(edge_cnt[1]) );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N37), .CK(clk), .RN(rst), .Q(edge_cnt[0]) );
  INVX2M U3 ( .A(n17), .Y(n24) );
  NOR2X2M U4 ( .A(n25), .B(N14), .Y(n17) );
  INVX2M U5 ( .A(enable), .Y(n25) );
  AOI21X2M U6 ( .A0(n27), .A1(enable), .B0(n17), .Y(n16) );
  AND2X2M U7 ( .A(N21), .B(n17), .Y(N38) );
  AND2X2M U8 ( .A(N22), .B(n17), .Y(N39) );
  AND2X2M U9 ( .A(N23), .B(n17), .Y(N40) );
  AND2X2M U10 ( .A(N24), .B(n17), .Y(N41) );
  NOR3X2M U11 ( .A(n28), .B(n27), .C(n29), .Y(n13) );
  OAI32X1M U12 ( .A0(n25), .A1(bit_cnt[0]), .A2(n17), .B0(n27), .B1(n24), .Y(
        n21) );
  OAI32X1M U13 ( .A0(n14), .A1(bit_cnt[2]), .A2(n28), .B0(n15), .B1(n29), .Y(
        n19) );
  OA21X2M U14 ( .A0(n25), .A1(bit_cnt[1]), .B0(n16), .Y(n15) );
  OAI22X1M U15 ( .A0(n30), .A1(n24), .B0(n12), .B1(n25), .Y(n18) );
  AOI32X1M U16 ( .A0(n13), .A1(n30), .A2(N14), .B0(bit_cnt[3]), .B1(n26), .Y(
        n12) );
  INVX2M U17 ( .A(bit_cnt[3]), .Y(n30) );
  INVX2M U18 ( .A(n13), .Y(n26) );
  OAI22X1M U19 ( .A0(n16), .A1(n28), .B0(bit_cnt[1]), .B1(n14), .Y(n20) );
  NAND3X2M U20 ( .A(bit_cnt[0]), .B(n24), .C(enable), .Y(n14) );
  AND2X2M U21 ( .A(N25), .B(n17), .Y(N42) );
  AND2X2M U22 ( .A(N20), .B(n17), .Y(N37) );
  INVX2M U23 ( .A(bit_cnt[0]), .Y(n27) );
  INVX2M U24 ( .A(bit_cnt[1]), .Y(n28) );
  INVX2M U25 ( .A(bit_cnt[2]), .Y(n29) );
  ADDHX1M U26 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_31/carry[2] ), .S(
        N21) );
  ADDHX1M U27 ( .A(edge_cnt[2]), .B(\add_31/carry[2] ), .CO(\add_31/carry[3] ), 
        .S(N22) );
  ADDHX1M U28 ( .A(edge_cnt[3]), .B(\add_31/carry[3] ), .CO(\add_31/carry[4] ), 
        .S(N23) );
  ADDHX1M U29 ( .A(edge_cnt[4]), .B(\add_31/carry[4] ), .CO(\add_31/carry[5] ), 
        .S(N24) );
  OR2X2M U30 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  CLKINVX1M U31 ( .A(prescale[0]), .Y(N7) );
  OAI2BB1X1M U32 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N8) );
  OR2X1M U33 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U34 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N9) );
  OR2X1M U35 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U36 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N10) );
  OR2X1M U37 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U38 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N11) );
  NOR2X1M U39 ( .A(n4), .B(prescale[5]), .Y(N13) );
  AO21XLM U40 ( .A0(n4), .A1(prescale[5]), .B0(N13), .Y(N12) );
  CLKINVX1M U41 ( .A(edge_cnt[0]), .Y(N20) );
  CLKXOR2X2M U42 ( .A(\add_31/carry[5] ), .B(edge_cnt[5]), .Y(N25) );
  NOR2BX1M U43 ( .AN(N7), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U44 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N8), .B1(n5), .Y(n9) );
  XNOR2X1M U45 ( .A(N12), .B(edge_cnt[5]), .Y(n8) );
  NOR2BX1M U46 ( .AN(edge_cnt[0]), .B(N7), .Y(n6) );
  OAI2B2X1M U47 ( .A1N(N8), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n7) );
  NAND4BX1M U48 ( .AN(N13), .B(n9), .C(n8), .D(n7), .Y(n23) );
  CLKXOR2X2M U49 ( .A(N11), .B(edge_cnt[4]), .Y(n22) );
  CLKXOR2X2M U50 ( .A(N9), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U51 ( .A(N10), .B(edge_cnt[3]), .Y(n10) );
  NOR4X1M U52 ( .A(n23), .B(n22), .C(n11), .D(n10), .Y(N14) );
endmodule


module data_sampling ( clk, rst, rx_in, prescale, edge_cnt, dat_samp_en, 
        sampled_data );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input clk, rst, rx_in, dat_samp_en;
  output sampled_data;
  wire   N6, N7, N8, N9, N10, N11, N12, N15, N16, N17, N18, N19, N30, N31, N32,
         N33, N34, N35, n41, n42, n43, n44, \add_38/carry[4] ,
         \add_38/carry[3] , \add_38/carry[2] , \r100/carry[4] ,
         \r100/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n45, n46, n47, n48, n49, n50, n51, n52, n53;
  wire   [2:0] samples;
  assign N30 = prescale[1];

  DFFRQX2M \samples_reg[0]  ( .D(n42), .CK(clk), .RN(rst), .Q(samples[0]) );
  DFFRQX2M \samples_reg[1]  ( .D(n43), .CK(clk), .RN(rst), .Q(samples[1]) );
  DFFRQX2M \samples_reg[2]  ( .D(n44), .CK(clk), .RN(rst), .Q(samples[2]) );
  DFFSX1M sampled_reg_reg ( .D(n41), .CK(clk), .SN(rst), .QN(n12) );
  OR2X2M U3 ( .A(prescale[2]), .B(N30), .Y(n1) );
  INVX2M U4 ( .A(prescale[2]), .Y(N31) );
  ADDHX1M U5 ( .A(prescale[4]), .B(\add_38/carry[3] ), .CO(\add_38/carry[4] ), 
        .S(N17) );
  ADDHX1M U6 ( .A(prescale[3]), .B(\add_38/carry[2] ), .CO(\add_38/carry[3] ), 
        .S(N16) );
  ADDHX1M U7 ( .A(prescale[2]), .B(N30), .CO(\add_38/carry[2] ), .S(N15) );
  ADDHX1M U8 ( .A(prescale[5]), .B(\add_38/carry[4] ), .CO(N19), .S(N18) );
  AND2X1M U9 ( .A(\r100/carry[4] ), .B(prescale[5]), .Y(N35) );
  CLKXOR2X2M U10 ( .A(prescale[5]), .B(\r100/carry[4] ), .Y(N34) );
  AND2X1M U11 ( .A(\r100/carry[3] ), .B(prescale[4]), .Y(\r100/carry[4] ) );
  CLKXOR2X2M U12 ( .A(prescale[4]), .B(\r100/carry[3] ), .Y(N33) );
  AND2X1M U13 ( .A(prescale[2]), .B(prescale[3]), .Y(\r100/carry[3] ) );
  CLKXOR2X2M U14 ( .A(prescale[3]), .B(prescale[2]), .Y(N32) );
  CLKINVX1M U15 ( .A(N30), .Y(N6) );
  OAI2BB1X1M U16 ( .A0N(N30), .A1N(prescale[2]), .B0(n1), .Y(N7) );
  OR2X1M U17 ( .A(n1), .B(prescale[3]), .Y(n2) );
  OAI2BB1X1M U18 ( .A0N(n1), .A1N(prescale[3]), .B0(n2), .Y(N8) );
  XNOR2X1M U19 ( .A(prescale[4]), .B(n2), .Y(N9) );
  NOR3X1M U20 ( .A(prescale[4]), .B(prescale[5]), .C(n2), .Y(N11) );
  OAI21X1M U21 ( .A0(prescale[4]), .A1(n2), .B0(prescale[5]), .Y(n3) );
  NAND2BX1M U22 ( .AN(N11), .B(n3), .Y(N10) );
  NOR2BX1M U23 ( .AN(edge_cnt[0]), .B(N6), .Y(n4) );
  OAI2B2X1M U24 ( .A1N(N7), .A0(n4), .B0(edge_cnt[1]), .B1(n4), .Y(n7) );
  NOR2BX1M U25 ( .AN(N6), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U26 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N7), .B1(n5), .Y(n6) );
  NAND4BBX1M U27 ( .AN(N11), .BN(edge_cnt[5]), .C(n7), .D(n6), .Y(n11) );
  CLKXOR2X2M U28 ( .A(N10), .B(edge_cnt[4]), .Y(n10) );
  CLKXOR2X2M U29 ( .A(N8), .B(edge_cnt[2]), .Y(n9) );
  CLKXOR2X2M U30 ( .A(N9), .B(edge_cnt[3]), .Y(n8) );
  NOR4X1M U31 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N12) );
  OAI31X1M U32 ( .A0(n12), .A1(n13), .A2(n14), .B0(n15), .Y(sampled_data) );
  CLKMX2X2M U33 ( .A(samples[2]), .B(rx_in), .S0(n16), .Y(n44) );
  NOR4X1M U34 ( .A(n17), .B(n18), .C(n19), .D(n20), .Y(n16) );
  CLKXOR2X2M U35 ( .A(edge_cnt[1]), .B(N15), .Y(n20) );
  CLKXOR2X2M U36 ( .A(edge_cnt[0]), .B(N6), .Y(n19) );
  OR3X1M U37 ( .A(n21), .B(N12), .C(n14), .Y(n18) );
  NOR4BX1M U38 ( .AN(n22), .B(n23), .C(n24), .D(n25), .Y(n21) );
  NAND4X1M U39 ( .A(n26), .B(n27), .C(n28), .D(n29), .Y(n17) );
  XNOR2X1M U40 ( .A(edge_cnt[2]), .B(N16), .Y(n29) );
  XNOR2X1M U41 ( .A(edge_cnt[3]), .B(N17), .Y(n28) );
  XNOR2X1M U42 ( .A(edge_cnt[4]), .B(N18), .Y(n27) );
  XNOR2X1M U43 ( .A(edge_cnt[5]), .B(N19), .Y(n26) );
  MXI2X1M U44 ( .A(n30), .B(n31), .S0(n32), .Y(n43) );
  NOR4X1M U45 ( .A(n33), .B(n24), .C(n25), .D(n23), .Y(n32) );
  CLKXOR2X2M U46 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n23) );
  CLKXOR2X2M U47 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n25) );
  NAND3BX1M U48 ( .AN(edge_cnt[5]), .B(n34), .C(n35), .Y(n24) );
  CLKXOR2X2M U49 ( .A(n36), .B(N30), .Y(n35) );
  CLKINVX1M U50 ( .A(edge_cnt[0]), .Y(n36) );
  CLKXOR2X2M U51 ( .A(n37), .B(prescale[2]), .Y(n34) );
  CLKINVX1M U52 ( .A(edge_cnt[1]), .Y(n37) );
  NAND3X1M U53 ( .A(dat_samp_en), .B(n38), .C(n22), .Y(n33) );
  XNOR2X1M U54 ( .A(edge_cnt[4]), .B(prescale[5]), .Y(n22) );
  MXI2X1M U55 ( .A(n39), .B(n31), .S0(n40), .Y(n42) );
  NOR2X1M U56 ( .A(n14), .B(n38), .Y(n40) );
  CLKINVX1M U57 ( .A(N12), .Y(n38) );
  CLKINVX1M U58 ( .A(dat_samp_en), .Y(n14) );
  CLKINVX1M U59 ( .A(rx_in), .Y(n31) );
  OAI21X1M U60 ( .A0(n13), .A1(n12), .B0(n15), .Y(n41) );
  NAND3X1M U61 ( .A(n13), .B(dat_samp_en), .C(n45), .Y(n15) );
  AOI21X1M U62 ( .A0(n39), .A1(n30), .B0(n46), .Y(n45) );
  AOI21X1M U63 ( .A0(samples[1]), .A1(samples[0]), .B0(samples[2]), .Y(n46) );
  CLKINVX1M U64 ( .A(samples[1]), .Y(n30) );
  CLKINVX1M U65 ( .A(samples[0]), .Y(n39) );
  AND4X1M U66 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n13) );
  NOR3X1M U67 ( .A(n51), .B(n52), .C(n53), .Y(n50) );
  CLKXOR2X2M U68 ( .A(edge_cnt[4]), .B(N34), .Y(n53) );
  CLKXOR2X2M U69 ( .A(edge_cnt[1]), .B(N31), .Y(n52) );
  CLKXOR2X2M U70 ( .A(edge_cnt[0]), .B(N30), .Y(n51) );
  XNOR2X1M U71 ( .A(edge_cnt[2]), .B(N32), .Y(n49) );
  XNOR2X1M U72 ( .A(edge_cnt[3]), .B(N33), .Y(n48) );
  XNOR2X1M U73 ( .A(edge_cnt[5]), .B(N35), .Y(n47) );
endmodule


module deserializer ( clk, rst, deser_en, sampled_bit, bit_cnt, p_data );
  input [3:0] bit_cnt;
  output [7:0] p_data;
  input clk, rst, deser_en, sampled_bit;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n1, n2, n3, n4
;

  DFFRX1M \data_reg[7]  ( .D(n47), .CK(clk), .RN(rst), .QN(n5) );
  DFFRX1M \data_reg[6]  ( .D(n46), .CK(clk), .RN(rst), .QN(n6) );
  DFFRX1M \data_reg[5]  ( .D(n45), .CK(clk), .RN(rst), .QN(n7) );
  DFFRX1M \data_reg[4]  ( .D(n44), .CK(clk), .RN(rst), .QN(n8) );
  DFFRX1M \data_reg[3]  ( .D(n43), .CK(clk), .RN(rst), .QN(n9) );
  DFFRX1M \data_reg[2]  ( .D(n42), .CK(clk), .RN(rst), .QN(n10) );
  DFFRX1M \data_reg[1]  ( .D(n41), .CK(clk), .RN(rst), .QN(n11) );
  DFFRX1M \data_reg[0]  ( .D(n40), .CK(clk), .RN(rst), .QN(n12) );
  DFFRQX2M \p_data_reg[5]  ( .D(n37), .CK(clk), .RN(rst), .Q(p_data[5]) );
  DFFRQX2M \p_data_reg[1]  ( .D(n33), .CK(clk), .RN(rst), .Q(p_data[1]) );
  DFFRQX2M \p_data_reg[4]  ( .D(n36), .CK(clk), .RN(rst), .Q(p_data[4]) );
  DFFRQX2M \p_data_reg[0]  ( .D(n32), .CK(clk), .RN(rst), .Q(p_data[0]) );
  DFFRQX2M \p_data_reg[7]  ( .D(n39), .CK(clk), .RN(rst), .Q(p_data[7]) );
  DFFRQX2M \p_data_reg[3]  ( .D(n35), .CK(clk), .RN(rst), .Q(p_data[3]) );
  DFFRQX2M \p_data_reg[6]  ( .D(n38), .CK(clk), .RN(rst), .Q(p_data[6]) );
  DFFRQX2M \p_data_reg[2]  ( .D(n34), .CK(clk), .RN(rst), .Q(p_data[2]) );
  INVX2M U3 ( .A(deser_en), .Y(n2) );
  NAND2X2M U4 ( .A(sampled_bit), .B(deser_en), .Y(n18) );
  NAND2X2M U5 ( .A(n30), .B(n2), .Y(n21) );
  BUFX2M U6 ( .A(n16), .Y(n1) );
  NAND4BX1M U7 ( .AN(n30), .B(deser_en), .C(n19), .D(n3), .Y(n16) );
  OAI2B2X1M U8 ( .A1N(n17), .A0(n18), .B0(n12), .B1(n17), .Y(n40) );
  OAI2BB1X2M U9 ( .A0N(n19), .A1N(n20), .B0(n21), .Y(n17) );
  OAI2B2X1M U10 ( .A1N(n22), .A0(n18), .B0(n11), .B1(n22), .Y(n41) );
  OAI21X2M U11 ( .A0(bit_cnt[0]), .A1(n23), .B0(n21), .Y(n22) );
  OAI2B2X1M U12 ( .A1N(n24), .A0(n18), .B0(n10), .B1(n24), .Y(n42) );
  OAI21X2M U13 ( .A0(n23), .A1(n3), .B0(n21), .Y(n24) );
  OAI2B2X1M U14 ( .A1N(n25), .A0(n18), .B0(n9), .B1(n25), .Y(n43) );
  OAI31X1M U15 ( .A0(n26), .A1(bit_cnt[1]), .A2(bit_cnt[0]), .B0(n21), .Y(n25)
         );
  OAI2B2X1M U16 ( .A1N(n27), .A0(n18), .B0(n8), .B1(n27), .Y(n44) );
  OAI31X1M U17 ( .A0(n26), .A1(bit_cnt[1]), .A2(n3), .B0(n21), .Y(n27) );
  OAI2B2X1M U18 ( .A1N(n28), .A0(n18), .B0(n7), .B1(n28), .Y(n45) );
  OAI31X1M U19 ( .A0(n26), .A1(bit_cnt[0]), .A2(n4), .B0(n21), .Y(n28) );
  OAI2B2X1M U20 ( .A1N(n29), .A0(n18), .B0(n6), .B1(n29), .Y(n46) );
  OAI31X1M U21 ( .A0(n26), .A1(n4), .A2(n3), .B0(n21), .Y(n29) );
  OAI2B2X1M U22 ( .A1N(n31), .A0(n18), .B0(n5), .B1(n31), .Y(n47) );
  NAND2X2M U23 ( .A(n21), .B(n1), .Y(n31) );
  NOR3X2M U24 ( .A(n30), .B(bit_cnt[3]), .C(n2), .Y(n20) );
  NAND3BX2M U25 ( .AN(bit_cnt[2]), .B(n20), .C(bit_cnt[1]), .Y(n23) );
  OAI2BB2X1M U26 ( .B0(n1), .B1(n12), .A0N(p_data[0]), .A1N(n1), .Y(n32) );
  OAI2BB2X1M U27 ( .B0(n1), .B1(n11), .A0N(p_data[1]), .A1N(n1), .Y(n33) );
  OAI2BB2X1M U28 ( .B0(n1), .B1(n10), .A0N(p_data[2]), .A1N(n1), .Y(n34) );
  OAI2BB2X1M U29 ( .B0(n1), .B1(n9), .A0N(p_data[3]), .A1N(n1), .Y(n35) );
  OAI2BB2X1M U30 ( .B0(n1), .B1(n8), .A0N(p_data[4]), .A1N(n1), .Y(n36) );
  OAI2BB2X1M U31 ( .B0(n1), .B1(n7), .A0N(p_data[5]), .A1N(n1), .Y(n37) );
  OAI2BB2X1M U32 ( .B0(n1), .B1(n6), .A0N(p_data[6]), .A1N(n1), .Y(n38) );
  OAI2BB2X1M U33 ( .B0(n1), .B1(n5), .A0N(p_data[7]), .A1N(n1), .Y(n39) );
  NAND2X2M U34 ( .A(bit_cnt[2]), .B(n20), .Y(n26) );
  NOR3BX2M U35 ( .AN(n19), .B(bit_cnt[0]), .C(bit_cnt[3]), .Y(n30) );
  NOR2X2M U36 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .Y(n19) );
  INVX2M U37 ( .A(bit_cnt[0]), .Y(n3) );
  INVX2M U38 ( .A(bit_cnt[1]), .Y(n4) );
endmodule


module parity_check ( clk, rst, par_typ, par_chk_en, sampled_bit, p_data, 
        par_err, parity_error );
  input [7:0] p_data;
  input clk, rst, par_typ, par_chk_en, sampled_bit;
  output par_err, parity_error;
  wire   N9, n1, n2, n3, n4, n5, n6;

  DFFRQX2M par_err_reg ( .D(N9), .CK(clk), .RN(rst), .Q(par_err) );
  DFFRQX2M parity_error_reg ( .D(N9), .CK(clk), .RN(rst), .Q(parity_error) );
  XNOR2XLM U3 ( .A(sampled_bit), .B(par_typ), .Y(n4) );
  NOR2BX2M U4 ( .AN(par_chk_en), .B(n1), .Y(N9) );
  XOR3XLM U5 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XOR3XLM U6 ( .A(p_data[5]), .B(p_data[4]), .C(n5), .Y(n3) );
  XNOR2X2M U7 ( .A(p_data[7]), .B(p_data[6]), .Y(n5) );
  XOR3XLM U8 ( .A(p_data[1]), .B(p_data[0]), .C(n6), .Y(n2) );
  XNOR2X2M U9 ( .A(p_data[3]), .B(p_data[2]), .Y(n6) );
endmodule


module stop_check ( clk, rst, stp_chk_en, sampled_bit, stp_err, stop_error );
  input clk, rst, stp_chk_en, sampled_bit;
  output stp_err, stop_error;
  wire   N5;

  DFFRQX2M stp_err_reg ( .D(N5), .CK(clk), .RN(rst), .Q(stp_err) );
  DFFRQX2M stop_error_reg ( .D(N5), .CK(clk), .RN(rst), .Q(stop_error) );
  NOR2BX2M U3 ( .AN(stp_chk_en), .B(sampled_bit), .Y(N5) );
endmodule


module strt_check ( clk, rst, strt_chk_en, sampled_bit, strt_glitch );
  input clk, rst, strt_chk_en, sampled_bit;
  output strt_glitch;
  wire   N4;

  DFFRQX2M strt_glitch_reg ( .D(N4), .CK(clk), .RN(rst), .Q(strt_glitch) );
  AND2X1M U3 ( .A(strt_chk_en), .B(sampled_bit), .Y(N4) );
endmodule


module UART_RX ( clk, rst, par_typ, par_en, prescale, rx_in, p_data, 
        data_valid, parity_error, stop_error );
  input [5:0] prescale;
  output [7:0] p_data;
  input clk, rst, par_typ, par_en, rx_in;
  output data_valid, parity_error, stop_error;
  wire   par_err, strt_glitch, stp_err, par_chk_en, strt_chk_en, stp_chk_en,
         deser_en, enable, dat_samp_en, sampled_bit, n1, n2;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  RX_FSM u_RX_FSM ( .clk(clk), .rst(n1), .rx_in(rx_in), .par_en(par_en), 
        .par_err(par_err), .strt_glitch(strt_glitch), .stp_err(stp_err), 
        .prescale(prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt), 
        .par_chk_en(par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(
        stp_chk_en), .deser_en(deser_en), .enable(enable), .dat_samp_en(
        dat_samp_en), .data_valid(data_valid) );
  edge_bit_counter u_edge_bit_counter ( .clk(clk), .rst(n1), .enable(enable), 
        .prescale(prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt) );
  data_sampling u_data_sampling ( .clk(clk), .rst(n1), .rx_in(rx_in), 
        .prescale(prescale), .edge_cnt(edge_cnt), .dat_samp_en(dat_samp_en), 
        .sampled_data(sampled_bit) );
  deserializer u_deserializer ( .clk(clk), .rst(n1), .deser_en(deser_en), 
        .sampled_bit(sampled_bit), .bit_cnt(bit_cnt), .p_data(p_data) );
  parity_check u_parity_check ( .clk(clk), .rst(n1), .par_typ(par_typ), 
        .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), .p_data(p_data), 
        .par_err(par_err), .parity_error(parity_error) );
  stop_check u_stop_check ( .clk(clk), .rst(n1), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .stp_err(stp_err), .stop_error(stop_error)
         );
  strt_check u_strt_check ( .clk(clk), .rst(n1), .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), .strt_glitch(strt_glitch) );
  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
endmodule


module UART ( tx_clk, rx_clk, rst, tx_in_v, tx_in_p, prescale, rx_in_s, par_en, 
        par_typ, tx_out_s, busy, rx_out_p, rx_out_v, parity_error, stop_error
 );
  input [7:0] tx_in_p;
  input [5:0] prescale;
  output [7:0] rx_out_p;
  input tx_clk, rx_clk, rst, tx_in_v, rx_in_s, par_en, par_typ;
  output tx_out_s, busy, rx_out_v, parity_error, stop_error;
  wire   n1, n2;

  UART_TX u_tx ( .clk(tx_clk), .rst(n1), .data_valid(tx_in_v), .par_en(par_en), 
        .par_typ(par_typ), .p_data(tx_in_p), .tx_out(tx_out_s), .busy(busy) );
  UART_RX u_rx ( .clk(rx_clk), .rst(n1), .par_typ(par_typ), .par_en(par_en), 
        .prescale(prescale), .rx_in(rx_in_s), .p_data(rx_out_p), .data_valid(
        rx_out_v), .parity_error(parity_error), .stop_error(stop_error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
endmodule


module SYS_CTRL_alu_data8_fun_width4_frame_data8_addr_bits4 ( clk, rst, 
        alu_out, out_vld, rddata, rddata_vld, wr_done, rx_p_data, rx_d_vld, 
        fifo_full, alu_fun, alu_en, clk_en, address, wr_data, wr_en, rd_en, 
        tx_p_data, tx_d_vld, clk_div_en );
  input [15:0] alu_out;
  input [7:0] rddata;
  input [7:0] rx_p_data;
  output [3:0] alu_fun;
  output [3:0] address;
  output [7:0] wr_data;
  output [7:0] tx_p_data;
  input clk, rst, out_vld, rddata_vld, wr_done, rx_d_vld, fifo_full;
  output alu_en, clk_en, wr_en, rd_en, tx_d_vld, clk_div_en;
  wire   \addr_reg[0] , n15, n16, n17, n19, n20, n21, n22, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n18, n23, n24, n25,
         n26, n27, n28, n89, n90;
  wire   [2:0] current_state;
  wire   [1:0] cmd_reg;

  DFFRX1M \addr_reg_reg[3]  ( .D(n83), .CK(clk), .RN(rst), .QN(n15) );
  DFFRQX2M \addr_reg_reg[0]  ( .D(n80), .CK(clk), .RN(rst), .Q(\addr_reg[0] )
         );
  DFFRX1M \alu_fun_reg_reg[3]  ( .D(n79), .CK(clk), .RN(rst), .QN(n19) );
  DFFRX1M \alu_fun_reg_reg[2]  ( .D(n78), .CK(clk), .RN(rst), .QN(n20) );
  DFFRX1M \alu_fun_reg_reg[1]  ( .D(n77), .CK(clk), .RN(rst), .QN(n21) );
  DFFRX1M \alu_fun_reg_reg[0]  ( .D(n76), .CK(clk), .RN(rst), .QN(n22) );
  DFFRX1M \addr_reg_reg[2]  ( .D(n82), .CK(clk), .RN(rst), .QN(n16) );
  DFFRX1M \addr_reg_reg[1]  ( .D(n81), .CK(clk), .RN(rst), .QN(n17) );
  DFFRQX2M \current_state_reg[1]  ( .D(n85), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \cmd_reg_reg[0]  ( .D(n88), .CK(clk), .RN(rst), .Q(cmd_reg[0]) );
  DFFRQX2M \current_state_reg[0]  ( .D(n84), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(n86), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRX1M \cmd_reg_reg[1]  ( .D(n87), .CK(clk), .RN(rst), .Q(cmd_reg[1]), .QN(
        clk_en) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  OAI22X4M U5 ( .A0(n28), .A1(n10), .B0(n73), .B1(n17), .Y(address[1]) );
  OAI22X2M U6 ( .A0(n27), .A1(n10), .B0(n73), .B1(n16), .Y(address[2]) );
  OAI22X1M U7 ( .A0(n69), .A1(n20), .B0(n27), .B1(n71), .Y(alu_fun[2]) );
  OAI22X1M U8 ( .A0(n69), .A1(n21), .B0(n28), .B1(n71), .Y(alu_fun[1]) );
  OAI22X1M U9 ( .A0(n69), .A1(n22), .B0(n89), .B1(n71), .Y(alu_fun[0]) );
  OAI21X2M U10 ( .A0(n89), .A1(n10), .B0(n74), .Y(address[0]) );
  INVX2M U11 ( .A(n52), .Y(n10) );
  INVX2M U12 ( .A(wr_en), .Y(n7) );
  INVX2M U13 ( .A(tx_d_vld), .Y(n4) );
  INVX2M U14 ( .A(n30), .Y(n8) );
  INVX2M U15 ( .A(n54), .Y(n13) );
  OAI21X2M U16 ( .A0(n69), .A1(n43), .B0(n45), .Y(tx_d_vld) );
  NOR2X2M U17 ( .A(n29), .B(clk_en), .Y(n52) );
  NOR2X2M U18 ( .A(n46), .B(n65), .Y(n47) );
  AND2X2M U19 ( .A(n44), .B(n42), .Y(n69) );
  NAND2X2M U20 ( .A(n9), .B(clk_en), .Y(n30) );
  NAND2X2M U21 ( .A(n14), .B(clk_en), .Y(n42) );
  INVX2M U22 ( .A(n65), .Y(n14) );
  INVX2M U23 ( .A(fifo_full), .Y(n5) );
  OAI221X1M U24 ( .A0(n65), .A1(n66), .B0(tx_d_vld), .B1(n44), .C0(n42), .Y(
        n55) );
  OAI32X1M U25 ( .A0(n89), .A1(n12), .A2(n67), .B0(n9), .B1(n68), .Y(n88) );
  OAI32X1M U26 ( .A0(n28), .A1(n12), .A2(n67), .B0(clk_en), .B1(n68), .Y(n87)
         );
  OAI21BX1M U27 ( .A0(n29), .A1(n46), .B0N(n47), .Y(rd_en) );
  OAI21X2M U28 ( .A0(n29), .A1(n30), .B0(n31), .Y(wr_en) );
  NOR2X2M U29 ( .A(n43), .B(n44), .Y(n33) );
  NOR2X2M U30 ( .A(n42), .B(n43), .Y(n34) );
  INVX2M U31 ( .A(n48), .Y(n6) );
  OAI22X1M U32 ( .A0(n89), .A1(n10), .B0(n52), .B1(n25), .Y(n80) );
  NOR2X2M U33 ( .A(n7), .B(n89), .Y(wr_data[0]) );
  NOR2X2M U34 ( .A(n7), .B(n28), .Y(wr_data[1]) );
  NOR2X2M U35 ( .A(n7), .B(n27), .Y(wr_data[2]) );
  NOR2X2M U36 ( .A(n7), .B(n26), .Y(wr_data[3]) );
  NAND2X2M U37 ( .A(n69), .B(n71), .Y(alu_en) );
  INVX2M U38 ( .A(n68), .Y(n12) );
  INVX2M U39 ( .A(n45), .Y(n3) );
  OAI22X1M U40 ( .A0(n23), .A1(n54), .B0(n13), .B1(n60), .Y(n85) );
  AOI22X1M U41 ( .A0(n56), .A1(n8), .B0(n61), .B1(n9), .Y(n60) );
  NAND2X2M U42 ( .A(n90), .B(n64), .Y(n54) );
  OR4X1M U43 ( .A(n56), .B(n51), .C(n61), .D(n59), .Y(n64) );
  AOI32X1M U44 ( .A0(rx_d_vld), .A1(n75), .A2(n56), .B0(\addr_reg[0] ), .B1(
        n47), .Y(n74) );
  OAI21X2M U45 ( .A0(cmd_reg[0]), .A1(n25), .B0(n30), .Y(n75) );
  NOR3X2M U46 ( .A(current_state[1]), .B(current_state[2]), .C(n24), .Y(n61)
         );
  NOR3X2M U47 ( .A(current_state[0]), .B(current_state[2]), .C(n23), .Y(n56)
         );
  NOR3X2M U48 ( .A(n24), .B(current_state[2]), .C(n23), .Y(n51) );
  AOI2B1X1M U49 ( .A1N(n31), .A0(cmd_reg[1]), .B0(n47), .Y(n73) );
  NAND2X2M U50 ( .A(rx_d_vld), .B(n72), .Y(n71) );
  AO21XLM U51 ( .A0(n61), .A1(n50), .B0(n51), .Y(n72) );
  NAND2X2M U52 ( .A(rx_d_vld), .B(n61), .Y(n29) );
  NAND3X2M U53 ( .A(current_state[0]), .B(n23), .C(current_state[2]), .Y(n44)
         );
  NAND2X2M U54 ( .A(cmd_reg[0]), .B(cmd_reg[1]), .Y(n46) );
  NAND3X2M U55 ( .A(n24), .B(n23), .C(current_state[2]), .Y(n65) );
  INVX2M U56 ( .A(current_state[1]), .Y(n23) );
  INVX2M U57 ( .A(current_state[0]), .Y(n24) );
  NAND2X2M U58 ( .A(out_vld), .B(n5), .Y(n43) );
  NOR2X2M U59 ( .A(n9), .B(cmd_reg[1]), .Y(n50) );
  INVX2M U60 ( .A(cmd_reg[0]), .Y(n9) );
  NAND3X2M U61 ( .A(rx_d_vld), .B(n9), .C(n56), .Y(n31) );
  OAI22X1M U62 ( .A0(n69), .A1(n19), .B0(n26), .B1(n71), .Y(alu_fun[3]) );
  AOI32X1M U63 ( .A0(n49), .A1(current_state[0]), .A2(n50), .B0(rx_d_vld), 
        .B1(n51), .Y(n48) );
  OAI21X2M U64 ( .A0(cmd_reg[1]), .A1(n44), .B0(n70), .Y(n68) );
  AOI31X2M U65 ( .A0(n24), .A1(n23), .A2(cmd_reg[1]), .B0(n59), .Y(n70) );
  OAI22X1M U66 ( .A0(n48), .A1(n89), .B0(n6), .B1(n22), .Y(n76) );
  OAI22X1M U67 ( .A0(n48), .A1(n28), .B0(n6), .B1(n21), .Y(n77) );
  OAI22X1M U68 ( .A0(n48), .A1(n27), .B0(n6), .B1(n20), .Y(n78) );
  OAI22X1M U69 ( .A0(n48), .A1(n26), .B0(n6), .B1(n19), .Y(n79) );
  OAI22X1M U70 ( .A0(n53), .A1(n13), .B0(n24), .B1(n54), .Y(n84) );
  AOI221XLM U71 ( .A0(current_state[0]), .A1(n55), .B0(n56), .B1(n8), .C0(n57), 
        .Y(n53) );
  OAI221X1M U72 ( .A0(n4), .A1(n42), .B0(n58), .B1(n90), .C0(n18), .Y(n57) );
  INVX2M U73 ( .A(n59), .Y(n18) );
  AOI31X2M U74 ( .A0(n14), .A1(cmd_reg[1]), .A2(wr_done), .B0(tx_d_vld), .Y(
        n58) );
  OAI22X1M U75 ( .A0(n28), .A1(n10), .B0(n52), .B1(n17), .Y(n81) );
  OAI22X1M U76 ( .A0(n27), .A1(n10), .B0(n52), .B1(n16), .Y(n82) );
  OAI22X1M U77 ( .A0(n26), .A1(n10), .B0(n52), .B1(n15), .Y(n83) );
  AOI21X2M U78 ( .A0(rx_d_vld), .A1(n66), .B0(n49), .Y(n67) );
  NOR2X2M U79 ( .A(n90), .B(current_state[2]), .Y(n49) );
  OAI2BB1X2M U80 ( .A0N(rddata[0]), .A1N(n3), .B0(n41), .Y(tx_p_data[0]) );
  AOI22X1M U81 ( .A0(alu_out[8]), .A1(n33), .B0(alu_out[0]), .B1(n34), .Y(n41)
         );
  OAI2BB1X2M U82 ( .A0N(rddata[1]), .A1N(n3), .B0(n40), .Y(tx_p_data[1]) );
  AOI22X1M U83 ( .A0(alu_out[9]), .A1(n33), .B0(alu_out[1]), .B1(n34), .Y(n40)
         );
  OAI2BB1X2M U84 ( .A0N(rddata[2]), .A1N(n3), .B0(n39), .Y(tx_p_data[2]) );
  AOI22X1M U85 ( .A0(alu_out[10]), .A1(n33), .B0(alu_out[2]), .B1(n34), .Y(n39) );
  OAI2BB1X2M U86 ( .A0N(rddata[3]), .A1N(n3), .B0(n38), .Y(tx_p_data[3]) );
  AOI22X1M U87 ( .A0(alu_out[11]), .A1(n33), .B0(alu_out[3]), .B1(n34), .Y(n38) );
  OAI2BB1X2M U88 ( .A0N(rddata[4]), .A1N(n3), .B0(n37), .Y(tx_p_data[4]) );
  AOI22X1M U89 ( .A0(alu_out[12]), .A1(n33), .B0(alu_out[4]), .B1(n34), .Y(n37) );
  OAI2BB1X2M U90 ( .A0N(rddata[5]), .A1N(n3), .B0(n36), .Y(tx_p_data[5]) );
  AOI22X1M U91 ( .A0(alu_out[13]), .A1(n33), .B0(alu_out[5]), .B1(n34), .Y(n36) );
  OAI2BB1X2M U92 ( .A0N(rddata[6]), .A1N(n3), .B0(n35), .Y(tx_p_data[6]) );
  AOI22X1M U93 ( .A0(alu_out[14]), .A1(n33), .B0(alu_out[6]), .B1(n34), .Y(n35) );
  OAI2BB1X2M U94 ( .A0N(rddata[7]), .A1N(n3), .B0(n32), .Y(tx_p_data[7]) );
  AOI22X1M U95 ( .A0(alu_out[15]), .A1(n33), .B0(alu_out[7]), .B1(n34), .Y(n32) );
  NOR2BX2M U96 ( .AN(rx_p_data[4]), .B(n7), .Y(wr_data[4]) );
  NOR2BX2M U97 ( .AN(rx_p_data[5]), .B(n7), .Y(wr_data[5]) );
  NOR2BX2M U98 ( .AN(rx_p_data[6]), .B(n7), .Y(wr_data[6]) );
  NOR2BX2M U99 ( .AN(rx_p_data[7]), .B(n7), .Y(wr_data[7]) );
  OAI22X1M U100 ( .A0(n26), .A1(n10), .B0(n73), .B1(n15), .Y(address[3]) );
  NAND3X2M U101 ( .A(n47), .B(n5), .C(rddata_vld), .Y(n45) );
  AOI21X2M U102 ( .A0(n62), .A1(n63), .B0(n13), .Y(n86) );
  AOI31X2M U103 ( .A0(cmd_reg[1]), .A1(n9), .A2(n56), .B0(n51), .Y(n63) );
  AOI21X2M U104 ( .A0(cmd_reg[0]), .A1(n61), .B0(n55), .Y(n62) );
  INVX2M U105 ( .A(rx_p_data[1]), .Y(n28) );
  INVX2M U106 ( .A(rx_p_data[0]), .Y(n89) );
  INVX2M U107 ( .A(rx_p_data[3]), .Y(n26) );
  INVX2M U108 ( .A(rx_p_data[2]), .Y(n27) );
  OR2X2M U109 ( .A(wr_done), .B(tx_d_vld), .Y(n66) );
  INVX2M U110 ( .A(\addr_reg[0] ), .Y(n25) );
  NOR3X2M U111 ( .A(current_state[1]), .B(current_state[2]), .C(
        current_state[0]), .Y(n59) );
  INVX2M U112 ( .A(rx_d_vld), .Y(n90) );
endmodule


module Register_File_8_x_16 ( WrEn, RdEn, CLK, RST, address, WrData, RdData, 
        RdData_VLD, wr_done, REG0, REG1, REG2, REG3 );
  input [3:0] address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST;
  output RdData_VLD, wr_done;
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
         N33, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129;
  assign N10 = address[0];
  assign N11 = address[1];
  assign N12 = address[2];

  DFFRQX2M \RdData_reg[7]  ( .D(n98), .CK(CLK), .RN(n117), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n97), .CK(CLK), .RN(n117), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n96), .CK(CLK), .RN(n117), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n95), .CK(CLK), .RN(n117), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n94), .CK(CLK), .RN(n117), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n93), .CK(CLK), .RN(n117), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n92), .CK(CLK), .RN(n117), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n91), .CK(CLK), .RN(n117), .Q(RdData[0]) );
  DFFRQX2M \Reg_File_reg[5][7]  ( .D(n50), .CK(CLK), .RN(n114), .Q(
        \Reg_File[5][7] ) );
  DFFRQX2M \Reg_File_reg[5][6]  ( .D(n49), .CK(CLK), .RN(n114), .Q(
        \Reg_File[5][6] ) );
  DFFRQX2M \Reg_File_reg[5][5]  ( .D(n48), .CK(CLK), .RN(n114), .Q(
        \Reg_File[5][5] ) );
  DFFRQX2M \Reg_File_reg[5][4]  ( .D(n47), .CK(CLK), .RN(n114), .Q(
        \Reg_File[5][4] ) );
  DFFRQX2M \Reg_File_reg[5][3]  ( .D(n46), .CK(CLK), .RN(n114), .Q(
        \Reg_File[5][3] ) );
  DFFRQX2M \Reg_File_reg[5][2]  ( .D(n45), .CK(CLK), .RN(n114), .Q(
        \Reg_File[5][2] ) );
  DFFRQX2M \Reg_File_reg[5][1]  ( .D(n44), .CK(CLK), .RN(n114), .Q(
        \Reg_File[5][1] ) );
  DFFRQX2M \Reg_File_reg[5][0]  ( .D(n43), .CK(CLK), .RN(n114), .Q(
        \Reg_File[5][0] ) );
  DFFRQX2M \Reg_File_reg[7][7]  ( .D(n34), .CK(CLK), .RN(n113), .Q(
        \Reg_File[7][7] ) );
  DFFRQX2M \Reg_File_reg[7][6]  ( .D(n33), .CK(CLK), .RN(n113), .Q(
        \Reg_File[7][6] ) );
  DFFRQX2M \Reg_File_reg[7][5]  ( .D(n32), .CK(CLK), .RN(n113), .Q(
        \Reg_File[7][5] ) );
  DFFRQX2M \Reg_File_reg[7][4]  ( .D(n31), .CK(CLK), .RN(n113), .Q(
        \Reg_File[7][4] ) );
  DFFRQX2M \Reg_File_reg[7][3]  ( .D(n30), .CK(CLK), .RN(n113), .Q(
        \Reg_File[7][3] ) );
  DFFRQX2M \Reg_File_reg[7][2]  ( .D(n29), .CK(CLK), .RN(n113), .Q(
        \Reg_File[7][2] ) );
  DFFRQX2M \Reg_File_reg[7][1]  ( .D(n28), .CK(CLK), .RN(n113), .Q(
        \Reg_File[7][1] ) );
  DFFRQX2M \Reg_File_reg[7][0]  ( .D(n27), .CK(CLK), .RN(n113), .Q(
        \Reg_File[7][0] ) );
  DFFRQX2M \Reg_File_reg[6][7]  ( .D(n42), .CK(CLK), .RN(n114), .Q(
        \Reg_File[6][7] ) );
  DFFRQX2M \Reg_File_reg[6][6]  ( .D(n41), .CK(CLK), .RN(n114), .Q(
        \Reg_File[6][6] ) );
  DFFRQX2M \Reg_File_reg[6][5]  ( .D(n40), .CK(CLK), .RN(n114), .Q(
        \Reg_File[6][5] ) );
  DFFRQX2M \Reg_File_reg[6][4]  ( .D(n39), .CK(CLK), .RN(n114), .Q(
        \Reg_File[6][4] ) );
  DFFRQX2M \Reg_File_reg[6][3]  ( .D(n38), .CK(CLK), .RN(n113), .Q(
        \Reg_File[6][3] ) );
  DFFRQX2M \Reg_File_reg[6][2]  ( .D(n37), .CK(CLK), .RN(n113), .Q(
        \Reg_File[6][2] ) );
  DFFRQX2M \Reg_File_reg[6][1]  ( .D(n36), .CK(CLK), .RN(n114), .Q(
        \Reg_File[6][1] ) );
  DFFRQX2M \Reg_File_reg[6][0]  ( .D(n35), .CK(CLK), .RN(n113), .Q(
        \Reg_File[6][0] ) );
  DFFRQX2M \Reg_File_reg[4][7]  ( .D(n58), .CK(CLK), .RN(n115), .Q(
        \Reg_File[4][7] ) );
  DFFRQX2M \Reg_File_reg[4][6]  ( .D(n57), .CK(CLK), .RN(n115), .Q(
        \Reg_File[4][6] ) );
  DFFRQX2M \Reg_File_reg[4][5]  ( .D(n56), .CK(CLK), .RN(n115), .Q(
        \Reg_File[4][5] ) );
  DFFRQX2M \Reg_File_reg[4][4]  ( .D(n55), .CK(CLK), .RN(n115), .Q(
        \Reg_File[4][4] ) );
  DFFRQX2M \Reg_File_reg[4][3]  ( .D(n54), .CK(CLK), .RN(n115), .Q(
        \Reg_File[4][3] ) );
  DFFRQX2M \Reg_File_reg[4][2]  ( .D(n53), .CK(CLK), .RN(n115), .Q(
        \Reg_File[4][2] ) );
  DFFRQX2M \Reg_File_reg[4][1]  ( .D(n52), .CK(CLK), .RN(n114), .Q(
        \Reg_File[4][1] ) );
  DFFRQX2M \Reg_File_reg[4][0]  ( .D(n51), .CK(CLK), .RN(n114), .Q(
        \Reg_File[4][0] ) );
  DFFRQX2M wr_done_reg ( .D(n99), .CK(CLK), .RN(n113), .Q(wr_done) );
  DFFRQX2M \Reg_File_reg[2][1]  ( .D(n68), .CK(CLK), .RN(n115), .Q(REG2[1]) );
  DFFRQX2M \Reg_File_reg[3][7]  ( .D(n66), .CK(CLK), .RN(n115), .Q(REG3[7]) );
  DFFRQX2M \Reg_File_reg[3][0]  ( .D(n59), .CK(CLK), .RN(n115), .Q(REG3[0]) );
  DFFSQX2M \Reg_File_reg[3][5]  ( .D(n64), .CK(CLK), .SN(n113), .Q(REG3[5]) );
  DFFRQX2M \Reg_File_reg[3][2]  ( .D(n61), .CK(CLK), .RN(n115), .Q(REG3[2]) );
  DFFRQX2M \Reg_File_reg[3][3]  ( .D(n62), .CK(CLK), .RN(n115), .Q(REG3[3]) );
  DFFRQX2M \Reg_File_reg[3][4]  ( .D(n63), .CK(CLK), .RN(n115), .Q(REG3[4]) );
  DFFSQX2M \Reg_File_reg[2][0]  ( .D(n67), .CK(CLK), .SN(n113), .Q(REG2[0]) );
  DFFRQX2M \Reg_File_reg[3][6]  ( .D(n65), .CK(CLK), .RN(n115), .Q(REG3[6]) );
  DFFRQX2M \Reg_File_reg[3][1]  ( .D(n60), .CK(CLK), .RN(n115), .Q(REG3[1]) );
  DFFRQX2M \Reg_File_reg[2][2]  ( .D(n69), .CK(CLK), .RN(n116), .Q(REG2[2]) );
  DFFRQX2M \Reg_File_reg[2][3]  ( .D(n70), .CK(CLK), .RN(n116), .Q(REG2[3]) );
  DFFRQX2M \Reg_File_reg[2][4]  ( .D(n71), .CK(CLK), .RN(n116), .Q(REG2[4]) );
  DFFSQX2M \Reg_File_reg[2][7]  ( .D(n74), .CK(CLK), .SN(n113), .Q(REG2[7]) );
  DFFRQX2M \Reg_File_reg[2][5]  ( .D(n72), .CK(CLK), .RN(n116), .Q(REG2[5]) );
  DFFRQX2M \Reg_File_reg[2][6]  ( .D(n73), .CK(CLK), .RN(n116), .Q(REG2[6]) );
  DFFRQX2M RdData_VLD_reg ( .D(n26), .CK(CLK), .RN(n115), .Q(RdData_VLD) );
  DFFRQX2M \Reg_File_reg[0][1]  ( .D(n84), .CK(CLK), .RN(n116), .Q(REG0[1]) );
  DFFRQX2M \Reg_File_reg[0][0]  ( .D(n83), .CK(CLK), .RN(n116), .Q(REG0[0]) );
  DFFRQX2M \Reg_File_reg[0][2]  ( .D(n85), .CK(CLK), .RN(n117), .Q(REG0[2]) );
  DFFRQX2M \Reg_File_reg[0][3]  ( .D(n86), .CK(CLK), .RN(n117), .Q(REG0[3]) );
  DFFRQX2M \Reg_File_reg[0][4]  ( .D(n87), .CK(CLK), .RN(n117), .Q(REG0[4]) );
  DFFRQX2M \Reg_File_reg[0][5]  ( .D(n88), .CK(CLK), .RN(n117), .Q(REG0[5]) );
  DFFRQX2M \Reg_File_reg[0][6]  ( .D(n89), .CK(CLK), .RN(n117), .Q(REG0[6]) );
  DFFRQX2M \Reg_File_reg[1][6]  ( .D(n81), .CK(CLK), .RN(n116), .Q(REG1[6]) );
  DFFRQX2M \Reg_File_reg[0][7]  ( .D(n90), .CK(CLK), .RN(n117), .Q(REG0[7]) );
  DFFRQX2M \Reg_File_reg[1][1]  ( .D(n76), .CK(CLK), .RN(n116), .Q(REG1[1]) );
  DFFRQX2M \Reg_File_reg[1][5]  ( .D(n80), .CK(CLK), .RN(n116), .Q(REG1[5]) );
  DFFRQX2M \Reg_File_reg[1][4]  ( .D(n79), .CK(CLK), .RN(n116), .Q(REG1[4]) );
  DFFRQX2M \Reg_File_reg[1][7]  ( .D(n82), .CK(CLK), .RN(n116), .Q(REG1[7]) );
  DFFRQX2M \Reg_File_reg[1][3]  ( .D(n78), .CK(CLK), .RN(n116), .Q(REG1[3]) );
  DFFRQX2M \Reg_File_reg[1][2]  ( .D(n77), .CK(CLK), .RN(n116), .Q(REG1[2]) );
  DFFRQX2M \Reg_File_reg[1][0]  ( .D(n75), .CK(CLK), .RN(n116), .Q(REG1[0]) );
  NOR2BX2M U3 ( .AN(n20), .B(N12), .Y(n22) );
  INVX2M U4 ( .A(n14), .Y(n119) );
  NAND3X2M U5 ( .A(n129), .B(n118), .C(n16), .Y(n19) );
  NAND3X2M U6 ( .A(n129), .B(n118), .C(n22), .Y(n25) );
  NAND2X2M U7 ( .A(RdEn), .B(n120), .Y(n14) );
  NOR2X2M U8 ( .A(n120), .B(RdEn), .Y(n13) );
  INVX2M U9 ( .A(WrEn), .Y(n120) );
  BUFX2M U10 ( .A(n111), .Y(n113) );
  BUFX2M U11 ( .A(n111), .Y(n114) );
  BUFX2M U12 ( .A(n111), .Y(n115) );
  BUFX2M U13 ( .A(n112), .Y(n116) );
  BUFX2M U14 ( .A(n112), .Y(n117) );
  INVX2M U15 ( .A(N11), .Y(n118) );
  INVX2M U16 ( .A(N10), .Y(n129) );
  BUFX4M U17 ( .A(N10), .Y(n104) );
  AND2X2M U18 ( .A(N12), .B(n20), .Y(n16) );
  BUFX2M U19 ( .A(n17), .Y(n109) );
  NAND3X2M U20 ( .A(n16), .B(n129), .C(N11), .Y(n17) );
  BUFX2M U21 ( .A(n21), .Y(n107) );
  NAND3X2M U22 ( .A(N11), .B(N10), .C(n22), .Y(n21) );
  BUFX2M U23 ( .A(n23), .Y(n106) );
  NAND3X2M U24 ( .A(N11), .B(n129), .C(n22), .Y(n23) );
  BUFX2M U25 ( .A(n18), .Y(n108) );
  NAND3X2M U26 ( .A(n16), .B(n118), .C(N10), .Y(n18) );
  BUFX2M U27 ( .A(n24), .Y(n105) );
  NAND3X2M U28 ( .A(N10), .B(n118), .C(n22), .Y(n24) );
  BUFX2M U29 ( .A(n15), .Y(n110) );
  NAND3X2M U30 ( .A(N10), .B(n16), .C(N11), .Y(n15) );
  INVX2M U31 ( .A(WrData[0]), .Y(n128) );
  INVX2M U32 ( .A(WrData[1]), .Y(n127) );
  INVX2M U33 ( .A(WrData[2]), .Y(n126) );
  INVX2M U34 ( .A(WrData[3]), .Y(n125) );
  BUFX2M U35 ( .A(RST), .Y(n111) );
  BUFX2M U36 ( .A(RST), .Y(n112) );
  OAI2BB2X1M U37 ( .B0(n128), .B1(n25), .A0N(REG0[0]), .A1N(n25), .Y(n83) );
  OAI2BB2X1M U38 ( .B0(n127), .B1(n25), .A0N(REG0[1]), .A1N(n25), .Y(n84) );
  OAI2BB2X1M U39 ( .B0(n126), .B1(n25), .A0N(REG0[2]), .A1N(n25), .Y(n85) );
  OAI2BB2X1M U40 ( .B0(n125), .B1(n25), .A0N(REG0[3]), .A1N(n25), .Y(n86) );
  OAI2BB2X1M U41 ( .B0(n124), .B1(n25), .A0N(REG0[4]), .A1N(n25), .Y(n87) );
  OAI2BB2X1M U42 ( .B0(n123), .B1(n25), .A0N(REG0[5]), .A1N(n25), .Y(n88) );
  OAI2BB2X1M U43 ( .B0(n122), .B1(n25), .A0N(REG0[6]), .A1N(n25), .Y(n89) );
  OAI2BB2X1M U44 ( .B0(n121), .B1(n25), .A0N(REG0[7]), .A1N(n25), .Y(n90) );
  OAI2BB2X1M U45 ( .B0(n128), .B1(n19), .A0N(\Reg_File[4][0] ), .A1N(n19), .Y(
        n51) );
  OAI2BB2X1M U46 ( .B0(n127), .B1(n19), .A0N(\Reg_File[4][1] ), .A1N(n19), .Y(
        n52) );
  OAI2BB2X1M U47 ( .B0(n126), .B1(n19), .A0N(\Reg_File[4][2] ), .A1N(n19), .Y(
        n53) );
  OAI2BB2X1M U48 ( .B0(n125), .B1(n19), .A0N(\Reg_File[4][3] ), .A1N(n19), .Y(
        n54) );
  OAI2BB2X1M U49 ( .B0(n124), .B1(n19), .A0N(\Reg_File[4][4] ), .A1N(n19), .Y(
        n55) );
  OAI2BB2X1M U50 ( .B0(n123), .B1(n19), .A0N(\Reg_File[4][5] ), .A1N(n19), .Y(
        n56) );
  OAI2BB2X1M U51 ( .B0(n122), .B1(n19), .A0N(\Reg_File[4][6] ), .A1N(n19), .Y(
        n57) );
  OAI2BB2X1M U52 ( .B0(n121), .B1(n19), .A0N(\Reg_File[4][7] ), .A1N(n19), .Y(
        n58) );
  OAI2BB2X1M U53 ( .B0(n128), .B1(n109), .A0N(\Reg_File[6][0] ), .A1N(n109), 
        .Y(n35) );
  OAI2BB2X1M U54 ( .B0(n127), .B1(n109), .A0N(\Reg_File[6][1] ), .A1N(n109), 
        .Y(n36) );
  OAI2BB2X1M U55 ( .B0(n126), .B1(n109), .A0N(\Reg_File[6][2] ), .A1N(n109), 
        .Y(n37) );
  OAI2BB2X1M U56 ( .B0(n125), .B1(n109), .A0N(\Reg_File[6][3] ), .A1N(n109), 
        .Y(n38) );
  OAI2BB2X1M U57 ( .B0(n124), .B1(n109), .A0N(\Reg_File[6][4] ), .A1N(n109), 
        .Y(n39) );
  OAI2BB2X1M U58 ( .B0(n123), .B1(n109), .A0N(\Reg_File[6][5] ), .A1N(n109), 
        .Y(n40) );
  OAI2BB2X1M U59 ( .B0(n122), .B1(n109), .A0N(\Reg_File[6][6] ), .A1N(n109), 
        .Y(n41) );
  OAI2BB2X1M U60 ( .B0(n121), .B1(n109), .A0N(\Reg_File[6][7] ), .A1N(n109), 
        .Y(n42) );
  OAI2BB2X1M U61 ( .B0(n128), .B1(n108), .A0N(\Reg_File[5][0] ), .A1N(n108), 
        .Y(n43) );
  OAI2BB2X1M U62 ( .B0(n127), .B1(n108), .A0N(\Reg_File[5][1] ), .A1N(n108), 
        .Y(n44) );
  OAI2BB2X1M U63 ( .B0(n126), .B1(n108), .A0N(\Reg_File[5][2] ), .A1N(n108), 
        .Y(n45) );
  OAI2BB2X1M U64 ( .B0(n125), .B1(n108), .A0N(\Reg_File[5][3] ), .A1N(n108), 
        .Y(n46) );
  OAI2BB2X1M U65 ( .B0(n124), .B1(n108), .A0N(\Reg_File[5][4] ), .A1N(n108), 
        .Y(n47) );
  OAI2BB2X1M U66 ( .B0(n123), .B1(n108), .A0N(\Reg_File[5][5] ), .A1N(n108), 
        .Y(n48) );
  OAI2BB2X1M U67 ( .B0(n122), .B1(n108), .A0N(\Reg_File[5][6] ), .A1N(n108), 
        .Y(n49) );
  OAI2BB2X1M U68 ( .B0(n121), .B1(n108), .A0N(\Reg_File[5][7] ), .A1N(n108), 
        .Y(n50) );
  OAI2BB2X1M U69 ( .B0(n128), .B1(n107), .A0N(REG3[0]), .A1N(n107), .Y(n59) );
  OAI2BB2X1M U70 ( .B0(n127), .B1(n107), .A0N(REG3[1]), .A1N(n107), .Y(n60) );
  OAI2BB2X1M U71 ( .B0(n126), .B1(n107), .A0N(REG3[2]), .A1N(n107), .Y(n61) );
  OAI2BB2X1M U72 ( .B0(n125), .B1(n107), .A0N(REG3[3]), .A1N(n107), .Y(n62) );
  OAI2BB2X1M U73 ( .B0(n124), .B1(n107), .A0N(REG3[4]), .A1N(n107), .Y(n63) );
  OAI2BB2X1M U74 ( .B0(n122), .B1(n107), .A0N(REG3[6]), .A1N(n107), .Y(n65) );
  OAI2BB2X1M U75 ( .B0(n121), .B1(n107), .A0N(REG3[7]), .A1N(n107), .Y(n66) );
  OAI2BB2X1M U76 ( .B0(n127), .B1(n106), .A0N(REG2[1]), .A1N(n106), .Y(n68) );
  OAI2BB2X1M U77 ( .B0(n126), .B1(n106), .A0N(REG2[2]), .A1N(n106), .Y(n69) );
  OAI2BB2X1M U78 ( .B0(n125), .B1(n106), .A0N(REG2[3]), .A1N(n106), .Y(n70) );
  OAI2BB2X1M U79 ( .B0(n124), .B1(n106), .A0N(REG2[4]), .A1N(n106), .Y(n71) );
  OAI2BB2X1M U80 ( .B0(n123), .B1(n106), .A0N(REG2[5]), .A1N(n106), .Y(n72) );
  OAI2BB2X1M U81 ( .B0(n122), .B1(n106), .A0N(REG2[6]), .A1N(n106), .Y(n73) );
  OAI2BB2X1M U82 ( .B0(n128), .B1(n105), .A0N(REG1[0]), .A1N(n105), .Y(n75) );
  OAI2BB2X1M U83 ( .B0(n127), .B1(n105), .A0N(REG1[1]), .A1N(n105), .Y(n76) );
  OAI2BB2X1M U84 ( .B0(n126), .B1(n105), .A0N(REG1[2]), .A1N(n105), .Y(n77) );
  OAI2BB2X1M U85 ( .B0(n125), .B1(n105), .A0N(REG1[3]), .A1N(n105), .Y(n78) );
  OAI2BB2X1M U86 ( .B0(n124), .B1(n105), .A0N(REG1[4]), .A1N(n105), .Y(n79) );
  OAI2BB2X1M U87 ( .B0(n123), .B1(n105), .A0N(REG1[5]), .A1N(n105), .Y(n80) );
  OAI2BB2X1M U88 ( .B0(n122), .B1(n105), .A0N(REG1[6]), .A1N(n105), .Y(n81) );
  OAI2BB2X1M U89 ( .B0(n121), .B1(n105), .A0N(REG1[7]), .A1N(n105), .Y(n82) );
  OAI2BB2X1M U90 ( .B0(n110), .B1(n128), .A0N(\Reg_File[7][0] ), .A1N(n110), 
        .Y(n27) );
  OAI2BB2X1M U91 ( .B0(n110), .B1(n127), .A0N(\Reg_File[7][1] ), .A1N(n110), 
        .Y(n28) );
  OAI2BB2X1M U92 ( .B0(n110), .B1(n126), .A0N(\Reg_File[7][2] ), .A1N(n110), 
        .Y(n29) );
  OAI2BB2X1M U93 ( .B0(n110), .B1(n125), .A0N(\Reg_File[7][3] ), .A1N(n110), 
        .Y(n30) );
  OAI2BB2X1M U94 ( .B0(n110), .B1(n124), .A0N(\Reg_File[7][4] ), .A1N(n110), 
        .Y(n31) );
  OAI2BB2X1M U95 ( .B0(n110), .B1(n123), .A0N(\Reg_File[7][5] ), .A1N(n110), 
        .Y(n32) );
  OAI2BB2X1M U96 ( .B0(n110), .B1(n122), .A0N(\Reg_File[7][6] ), .A1N(n110), 
        .Y(n33) );
  OAI2BB2X1M U97 ( .B0(n110), .B1(n121), .A0N(\Reg_File[7][7] ), .A1N(n110), 
        .Y(n34) );
  OAI2BB2X1M U98 ( .B0(n123), .B1(n107), .A0N(REG3[5]), .A1N(n107), .Y(n64) );
  OAI2BB2X1M U99 ( .B0(n128), .B1(n106), .A0N(REG2[0]), .A1N(n106), .Y(n67) );
  OAI2BB2X1M U100 ( .B0(n121), .B1(n106), .A0N(REG2[7]), .A1N(n106), .Y(n74)
         );
  AO22X1M U101 ( .A0(N33), .A1(n119), .B0(RdData[0]), .B1(n14), .Y(n91) );
  MX2X2M U102 ( .A(n2), .B(n1), .S0(N12), .Y(N33) );
  MX4X1M U103 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n104), 
        .S1(N11), .Y(n2) );
  MX4X1M U104 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(n104), .S1(N11), .Y(n1)
         );
  AO22X1M U105 ( .A0(N32), .A1(n119), .B0(RdData[1]), .B1(n14), .Y(n92) );
  MX2X2M U106 ( .A(n4), .B(n3), .S0(N12), .Y(N32) );
  MX4X1M U107 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n104), 
        .S1(N11), .Y(n4) );
  MX4X1M U108 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n104), .S1(N11), .Y(n3)
         );
  AO22X1M U109 ( .A0(N31), .A1(n119), .B0(RdData[2]), .B1(n14), .Y(n93) );
  MX2X2M U110 ( .A(n6), .B(n5), .S0(N12), .Y(N31) );
  MX4X1M U111 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n104), 
        .S1(N11), .Y(n6) );
  MX4X1M U112 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n104), .S1(N11), .Y(n5)
         );
  AO22X1M U113 ( .A0(N30), .A1(n119), .B0(RdData[3]), .B1(n14), .Y(n94) );
  MX2X2M U114 ( .A(n8), .B(n7), .S0(N12), .Y(N30) );
  MX4X1M U115 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n104), 
        .S1(N11), .Y(n8) );
  MX4X1M U116 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n104), .S1(N11), .Y(n7)
         );
  AO22X1M U117 ( .A0(N29), .A1(n119), .B0(RdData[4]), .B1(n14), .Y(n95) );
  MX2X2M U118 ( .A(n10), .B(n9), .S0(N12), .Y(N29) );
  MX4X1M U119 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n104), 
        .S1(N11), .Y(n10) );
  MX4X1M U120 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n104), .S1(N11), .Y(n9)
         );
  AO22X1M U121 ( .A0(N28), .A1(n119), .B0(RdData[5]), .B1(n14), .Y(n96) );
  MX2X2M U122 ( .A(n12), .B(n11), .S0(N12), .Y(N28) );
  MX4X1M U123 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n104), 
        .S1(N11), .Y(n12) );
  MX4X1M U124 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n104), .S1(N11), .Y(n11)
         );
  AO22X1M U125 ( .A0(N27), .A1(n119), .B0(RdData[6]), .B1(n14), .Y(n97) );
  MX2X2M U126 ( .A(n101), .B(n100), .S0(N12), .Y(N27) );
  MX4X1M U127 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n104), 
        .S1(N11), .Y(n101) );
  MX4X1M U128 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n104), .S1(N11), .Y(n100)
         );
  AO22X1M U129 ( .A0(N26), .A1(n119), .B0(RdData[7]), .B1(n14), .Y(n98) );
  MX2X2M U130 ( .A(n103), .B(n102), .S0(N12), .Y(N26) );
  MX4X1M U131 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n104), 
        .S1(N11), .Y(n103) );
  MX4X1M U132 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n104), .S1(N11), .Y(n102)
         );
  INVX2M U133 ( .A(WrData[4]), .Y(n124) );
  INVX2M U134 ( .A(WrData[5]), .Y(n123) );
  INVX2M U135 ( .A(WrData[6]), .Y(n122) );
  INVX2M U136 ( .A(WrData[7]), .Y(n121) );
  NOR2BX2M U137 ( .AN(n13), .B(address[3]), .Y(n20) );
  OAI2BB1X2M U138 ( .A0N(RdData_VLD), .A1N(n13), .B0(n14), .Y(n26) );
  AO21XLM U139 ( .A0(wr_done), .A1(n119), .B0(n13), .Y(n99) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
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
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n18), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n18), .Y(n5) );
  NAND2X2M U15 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n7) );
  NAND2X2M U17 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U18 ( .A(a[2]), .Y(n8) );
  NAND2X2M U19 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U20 ( .A(a[1]), .Y(n9) );
  NAND2X2M U21 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U22 ( .A(a[0]), .Y(n10) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  XNOR2X2M U26 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
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
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
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

  ALU_16_bit_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n14, n13, n15, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n6), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n7), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U32 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U35 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  INVX2M U36 ( .A(A[1]), .Y(n30) );
  INVX2M U37 ( .A(A[0]), .Y(n31) );
  INVX2M U38 ( .A(B[6]), .Y(n33) );
  XNOR2X2M U39 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U40 ( .A(A[3]), .Y(n28) );
  INVX2M U41 ( .A(A[2]), .Y(n29) );
  INVX2M U42 ( .A(A[4]), .Y(n27) );
  INVX2M U43 ( .A(A[7]), .Y(n24) );
  INVX2M U44 ( .A(A[6]), .Y(n25) );
  INVX2M U45 ( .A(A[5]), .Y(n26) );
  INVX2M U46 ( .A(B[3]), .Y(n36) );
  INVX2M U47 ( .A(B[7]), .Y(n32) );
  INVX2M U48 ( .A(B[4]), .Y(n35) );
  INVX2M U49 ( .A(B[5]), .Y(n34) );
  INVX2M U50 ( .A(B[0]), .Y(n39) );
  INVX2M U51 ( .A(B[2]), .Y(n37) );
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
endmodule


module ALU_16_bit ( A, B, EN, ALU_FUN, clk, rst, ALU_OUT, ALU_OUT_VLD );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, clk, rst;
  output ALU_OUT_VLD;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140;
  wire   [15:0] ALU_OUT_Comb;

  ALU_16_bit_DW_div_uns_0 div_60 ( .a({n12, n11, n10, n9, n8, n7, n6, n5}), 
        .b({B[7], n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, 
        N126, N125}) );
  ALU_16_bit_DW01_sub_0 sub_52 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), 
        .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_16_bit_DW01_add_0 add_48 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), 
        .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_16_bit_DW02_mult_0 mult_56 ( .A({n12, n11, n10, n9, n8, n7, n6, n5}), 
        .B({B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[0]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[8]) );
  DFFRQX2M ALU_OUT_VLD_reg ( .D(EN), .CK(clk), .RN(rst), .Q(ALU_OUT_VLD) );
  NOR3BX2M U3 ( .AN(n105), .B(n139), .C(ALU_FUN[2]), .Y(n49) );
  NOR3X2M U4 ( .A(n137), .B(ALU_FUN[2]), .C(n139), .Y(n35) );
  BUFX2M U7 ( .A(A[6]), .Y(n11) );
  OAI2BB1X2M U8 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U9 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U10 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U11 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U12 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U13 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U14 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U15 ( .A0N(n140), .A1N(n105), .B0(n101), .Y(n47) );
  OAI2BB1X2M U16 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  NOR2BX2M U17 ( .AN(n106), .B(n137), .Y(n37) );
  AND2X2M U18 ( .A(n99), .B(n105), .Y(n42) );
  NOR2BX2M U19 ( .AN(n35), .B(n135), .Y(n31) );
  AND2X2M U20 ( .A(n106), .B(n105), .Y(n50) );
  NAND2X2M U21 ( .A(EN), .B(n123), .Y(n32) );
  INVX2M U22 ( .A(n100), .Y(n137) );
  BUFX2M U23 ( .A(n41), .Y(n13) );
  NOR2X2M U24 ( .A(n107), .B(n137), .Y(n41) );
  INVX2M U25 ( .A(n91), .Y(n138) );
  INVX2M U26 ( .A(n107), .Y(n140) );
  INVX2M U27 ( .A(EN), .Y(n135) );
  AOI31X2M U28 ( .A0(n93), .A1(n94), .A2(n95), .B0(n135), .Y(ALU_OUT_Comb[0])
         );
  AOI22X1M U29 ( .A0(N100), .A1(n50), .B0(N91), .B1(n37), .Y(n93) );
  AOI211X2M U30 ( .A0(n13), .A1(n131), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X1M U31 ( .A0(N109), .A1(n35), .B0(n5), .B1(n42), .C0(N125), .C1(n49), 
        .Y(n94) );
  AOI31X2M U32 ( .A0(n81), .A1(n82), .A2(n83), .B0(n135), .Y(ALU_OUT_Comb[1])
         );
  AOI222X1M U33 ( .A0(N92), .A1(n37), .B0(N110), .B1(n35), .C0(N101), .C1(n50), 
        .Y(n81) );
  AOI211X2M U34 ( .A0(n7), .A1(n138), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U35 ( .A0(N126), .A1(n49), .B0(n13), .B1(n130), .C0(n6), .C1(n42), 
        .Y(n82) );
  AOI31X2M U36 ( .A0(n75), .A1(n76), .A2(n77), .B0(n135), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U37 ( .A0(N102), .A1(n50), .B0(N93), .B1(n37), .Y(n75) );
  AOI221XLM U38 ( .A0(n8), .A1(n138), .B0(n13), .B1(n129), .C0(n78), .Y(n77)
         );
  AOI222X1M U39 ( .A0(N111), .A1(n35), .B0(n7), .B1(n42), .C0(N127), .C1(n49), 
        .Y(n76) );
  AOI31X2M U40 ( .A0(n69), .A1(n70), .A2(n71), .B0(n135), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U41 ( .A0(N103), .A1(n50), .B0(N94), .B1(n37), .Y(n69) );
  AOI221XLM U42 ( .A0(n9), .A1(n138), .B0(n13), .B1(n128), .C0(n72), .Y(n71)
         );
  AOI222X1M U43 ( .A0(N112), .A1(n35), .B0(n8), .B1(n42), .C0(N128), .C1(n49), 
        .Y(n70) );
  AOI31X2M U44 ( .A0(n63), .A1(n64), .A2(n65), .B0(n135), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U45 ( .A0(N104), .A1(n50), .B0(N95), .B1(n37), .Y(n63) );
  AOI221XLM U46 ( .A0(n138), .A1(n10), .B0(n13), .B1(n127), .C0(n66), .Y(n65)
         );
  AOI222X1M U47 ( .A0(N113), .A1(n35), .B0(n9), .B1(n42), .C0(N129), .C1(n49), 
        .Y(n64) );
  AOI31X2M U48 ( .A0(n57), .A1(n58), .A2(n59), .B0(n135), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U49 ( .A0(N105), .A1(n50), .B0(N96), .B1(n37), .Y(n57) );
  AOI221XLM U50 ( .A0(n138), .A1(n11), .B0(n13), .B1(n126), .C0(n60), .Y(n59)
         );
  AOI222X1M U51 ( .A0(N114), .A1(n35), .B0(n10), .B1(n42), .C0(N130), .C1(n49), 
        .Y(n58) );
  AOI31X2M U52 ( .A0(n51), .A1(n52), .A2(n53), .B0(n135), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U53 ( .A0(N106), .A1(n50), .B0(N97), .B1(n37), .Y(n51) );
  AOI221XLM U54 ( .A0(n138), .A1(n12), .B0(n13), .B1(n125), .C0(n54), .Y(n53)
         );
  AOI222X1M U55 ( .A0(N115), .A1(n35), .B0(n42), .B1(n11), .C0(N131), .C1(n49), 
        .Y(n52) );
  AOI31X2M U56 ( .A0(n38), .A1(n39), .A2(n40), .B0(n135), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U57 ( .A0(N107), .A1(n50), .B0(N98), .B1(n37), .Y(n38) );
  AOI221XLM U58 ( .A0(n13), .A1(n124), .B0(n42), .B1(n12), .C0(n43), .Y(n40)
         );
  AOI22X1M U59 ( .A0(N132), .A1(n49), .B0(N116), .B1(n35), .Y(n39) );
  AOI21X2M U60 ( .A0(n33), .A1(n34), .B0(n135), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U61 ( .A0(N99), .A1(n37), .B0(n123), .Y(n33) );
  AOI2BB2XLM U62 ( .B0(N117), .B1(n35), .A0N(n124), .A1N(n36), .Y(n34) );
  OAI222X1M U63 ( .A0(n55), .A1(n120), .B0(n4), .B1(n56), .C0(n36), .C1(n126), 
        .Y(n54) );
  AOI221XLM U64 ( .A0(n11), .A1(n46), .B0(n47), .B1(n125), .C0(n13), .Y(n56)
         );
  AOI221XLM U65 ( .A0(n46), .A1(n125), .B0(n11), .B1(n48), .C0(n42), .Y(n55)
         );
  NOR2X2M U66 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  NAND2X2M U67 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U68 ( .A(n4), .Y(n120) );
  INVX2M U69 ( .A(ALU_FUN[0]), .Y(n136) );
  AND3X2M U70 ( .A(n106), .B(n136), .C(n3), .Y(n46) );
  NAND3X2M U71 ( .A(n3), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  INVX2M U72 ( .A(ALU_FUN[1]), .Y(n139) );
  NAND3X2M U73 ( .A(n140), .B(n136), .C(n3), .Y(n36) );
  NOR2X2M U74 ( .A(n3), .B(ALU_FUN[0]), .Y(n100) );
  NOR2X2M U75 ( .A(n136), .B(n3), .Y(n105) );
  NAND3X2M U76 ( .A(n106), .B(ALU_FUN[0]), .C(n3), .Y(n101) );
  INVX2M U77 ( .A(n92), .Y(n123) );
  AOI211X2M U78 ( .A0(N108), .A1(n50), .B0(n13), .C0(n47), .Y(n92) );
  AND2X2M U79 ( .A(ALU_FUN[2]), .B(n139), .Y(n99) );
  AND4X2M U80 ( .A(N159), .B(n99), .C(n3), .D(n136), .Y(n90) );
  INVX2M U81 ( .A(n6), .Y(n130) );
  INVX2M U82 ( .A(n5), .Y(n131) );
  INVX2M U83 ( .A(n11), .Y(n125) );
  INVX2M U84 ( .A(n12), .Y(n124) );
  INVX2M U85 ( .A(n8), .Y(n128) );
  INVX2M U86 ( .A(n7), .Y(n129) );
  INVX2M U87 ( .A(n10), .Y(n126) );
  INVX2M U88 ( .A(n9), .Y(n127) );
  BUFX2M U89 ( .A(A[7]), .Y(n12) );
  BUFX2M U90 ( .A(B[6]), .Y(n4) );
  BUFX2M U91 ( .A(A[5]), .Y(n10) );
  BUFX2M U92 ( .A(A[4]), .Y(n9) );
  BUFX2M U93 ( .A(A[3]), .Y(n8) );
  BUFX2M U94 ( .A(A[2]), .Y(n7) );
  BUFX2M U95 ( .A(A[1]), .Y(n6) );
  BUFX2M U96 ( .A(A[0]), .Y(n5) );
  INVX2M U97 ( .A(n25), .Y(n122) );
  OAI2B2X1M U98 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n130), .Y(n97) );
  AOI221XLM U99 ( .A0(n46), .A1(n131), .B0(n5), .B1(n48), .C0(n42), .Y(n98) );
  OAI2B2X1M U100 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n131), .Y(n85) );
  AOI221XLM U101 ( .A0(n46), .A1(n130), .B0(n6), .B1(n48), .C0(n42), .Y(n86)
         );
  OAI222X1M U102 ( .A0(n79), .A1(n118), .B0(B[2]), .B1(n80), .C0(n36), .C1(
        n130), .Y(n78) );
  AOI221XLM U103 ( .A0(n7), .A1(n46), .B0(n47), .B1(n129), .C0(n13), .Y(n80)
         );
  AOI221XLM U104 ( .A0(n46), .A1(n129), .B0(n7), .B1(n48), .C0(n42), .Y(n79)
         );
  OAI222X1M U105 ( .A0(n73), .A1(n119), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n129), .Y(n72) );
  AOI221XLM U106 ( .A0(n8), .A1(n46), .B0(n47), .B1(n128), .C0(n13), .Y(n74)
         );
  AOI221XLM U107 ( .A0(n46), .A1(n128), .B0(n8), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI222X1M U108 ( .A0(n67), .A1(n134), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n128), .Y(n66) );
  INVX2M U109 ( .A(B[4]), .Y(n134) );
  AOI221XLM U110 ( .A0(n9), .A1(n46), .B0(n47), .B1(n127), .C0(n13), .Y(n68)
         );
  AOI221XLM U111 ( .A0(n46), .A1(n127), .B0(n9), .B1(n48), .C0(n42), .Y(n67)
         );
  OAI222X1M U112 ( .A0(n61), .A1(n133), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n127), .Y(n60) );
  INVX2M U113 ( .A(B[5]), .Y(n133) );
  AOI221XLM U114 ( .A0(n10), .A1(n46), .B0(n47), .B1(n126), .C0(n13), .Y(n62)
         );
  AOI221XLM U115 ( .A0(n46), .A1(n126), .B0(n10), .B1(n48), .C0(n42), .Y(n61)
         );
  OAI222X1M U116 ( .A0(n44), .A1(n132), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n125), .Y(n43) );
  INVX2M U117 ( .A(B[7]), .Y(n132) );
  AOI221XLM U118 ( .A0(n46), .A1(n12), .B0(n47), .B1(n124), .C0(n13), .Y(n45)
         );
  AOI221XLM U119 ( .A0(n46), .A1(n124), .B0(n12), .B1(n48), .C0(n42), .Y(n44)
         );
  INVX2M U120 ( .A(n14), .Y(n121) );
  OAI21X2M U121 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  AOI221XLM U122 ( .A0(n5), .A1(n46), .B0(n47), .B1(n131), .C0(n13), .Y(n102)
         );
  AOI31X2M U123 ( .A0(N157), .A1(n3), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U124 ( .A(n139), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  OAI21X2M U125 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI221XLM U126 ( .A0(n6), .A1(n46), .B0(n47), .B1(n130), .C0(n13), .Y(n87)
         );
  AOI31X2M U127 ( .A0(N158), .A1(n3), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U128 ( .A(n136), .B(ALU_FUN[2]), .C(n139), .Y(n89) );
  BUFX2M U129 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U130 ( .A(B[0]), .Y(n117) );
  INVX2M U131 ( .A(B[2]), .Y(n118) );
  INVX2M U132 ( .A(B[3]), .Y(n119) );
  NOR2X1M U133 ( .A(n124), .B(B[7]), .Y(n113) );
  NAND2BX1M U134 ( .AN(B[4]), .B(n9), .Y(n29) );
  NAND2BX1M U135 ( .AN(n9), .B(B[4]), .Y(n18) );
  CLKNAND2X2M U136 ( .A(n29), .B(n18), .Y(n108) );
  NOR2X1M U137 ( .A(n119), .B(n8), .Y(n26) );
  NOR2X1M U138 ( .A(n118), .B(n7), .Y(n17) );
  NOR2X1M U139 ( .A(n117), .B(n5), .Y(n14) );
  CLKNAND2X2M U140 ( .A(n7), .B(n118), .Y(n28) );
  NAND2BX1M U141 ( .AN(n17), .B(n28), .Y(n23) );
  AOI21X1M U142 ( .A0(n14), .A1(n130), .B0(B[1]), .Y(n15) );
  AOI211X1M U143 ( .A0(n6), .A1(n121), .B0(n23), .C0(n15), .Y(n16) );
  CLKNAND2X2M U144 ( .A(n8), .B(n119), .Y(n27) );
  OAI31X1M U145 ( .A0(n26), .A1(n17), .A2(n16), .B0(n27), .Y(n19) );
  NAND2BX1M U146 ( .AN(n10), .B(B[5]), .Y(n111) );
  OAI211X1M U147 ( .A0(n108), .A1(n19), .B0(n18), .C0(n111), .Y(n20) );
  NAND2BX1M U148 ( .AN(B[5]), .B(n10), .Y(n30) );
  XNOR2X1M U149 ( .A(n11), .B(n4), .Y(n110) );
  AOI32X1M U150 ( .A0(n20), .A1(n30), .A2(n110), .B0(n4), .B1(n125), .Y(n21)
         );
  CLKNAND2X2M U151 ( .A(B[7]), .B(n124), .Y(n114) );
  OAI21X1M U152 ( .A0(n113), .A1(n21), .B0(n114), .Y(N159) );
  CLKNAND2X2M U153 ( .A(n5), .B(n117), .Y(n24) );
  OA21X1M U154 ( .A0(n24), .A1(n130), .B0(B[1]), .Y(n22) );
  AOI211X1M U155 ( .A0(n24), .A1(n130), .B0(n23), .C0(n22), .Y(n25) );
  AOI31X1M U156 ( .A0(n122), .A1(n28), .A2(n27), .B0(n26), .Y(n109) );
  OAI2B11X1M U157 ( .A1N(n109), .A0(n108), .B0(n30), .C0(n29), .Y(n112) );
  AOI32X1M U158 ( .A0(n112), .A1(n111), .A2(n110), .B0(n11), .B1(n120), .Y(
        n115) );
  AOI2B1X1M U159 ( .A1N(n115), .A0(n114), .B0(n113), .Y(n116) );
  CLKINVX1M U160 ( .A(n116), .Y(N158) );
  NOR2X1M U161 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module CLK_GATE ( clk, clk_en, gated_clk );
  input clk, clk_en;
  output gated_clk;
  wire   latch_out;

  TLATNX2M latch_out_reg ( .D(clk_en), .GN(clk), .Q(latch_out) );
  AND2X2M U2 ( .A(latch_out), .B(clk), .Y(gated_clk) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   SYNC_UART_RST, SYNC_REF_RST, UART_RX_V_OUT, UART_RX_V_SYNC,
         UART_TX_VLD, UART_TX_CLK, UART_TX_Busy_PULSE, FIFO_FULL,
         UART_TX_V_SYNC, UART_TX_Busy, UART_RX_CLK, RF_RdData_VLD, RF_wr_done,
         RF_WrEn, RF_RdEn, ALU_EN, ALU_OUT_VLD, CLKG_EN, ALU_CLK, n1, n2, n3;
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

  RST_SYNC_NUM_STAGES2_0 U0_RST_SYNC ( .clk(UART_CLK), .rst(RST_N), .sync_rst(
        SYNC_UART_RST) );
  RST_SYNC_NUM_STAGES2_1 U1_RST_SYNC ( .clk(REF_CLK), .rst(RST_N), .sync_rst(
        SYNC_REF_RST) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 U0_ref_sync ( .clk(REF_CLK), .rst(n2), 
        .unsync_bus(UART_RX_OUT), .bus_enable(UART_RX_V_OUT), .sync_bus(
        UART_RX_SYNC), .enable_pulse(UART_RX_V_SYNC) );
  ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3 U0_UART_FIFO ( .w_clk(REF_CLK), .w_rst(n2), .w_inc(UART_TX_VLD), .r_clk(UART_TX_CLK), .r_rst(SYNC_UART_RST), .r_inc(
        UART_TX_Busy_PULSE), .wr_data(UART_TX_IN), .rd_data(UART_TX_SYNC), 
        .full(FIFO_FULL), .empty(UART_TX_V_SYNC) );
  PULSE_GEN U0_PULSE_GEN ( .clk(UART_TX_CLK), .rst(SYNC_UART_RST), .in_sig(
        UART_TX_Busy), .pulse_sig(UART_TX_Busy_PULSE) );
  CLK_DIV_0 U0_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(SYNC_UART_RST), 
        .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .in(UART_Config[7:2]), .out({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  CLK_DIV_1 U1_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(SYNC_UART_RST), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        DIV_RATIO_RX[3:0]}), .o_div_clk(UART_RX_CLK) );
  UART U0_UART ( .tx_clk(UART_TX_CLK), .rx_clk(UART_RX_CLK), .rst(
        SYNC_UART_RST), .tx_in_v(n1), .tx_in_p(UART_TX_SYNC), .prescale(
        UART_Config[7:2]), .rx_in_s(UART_RX_IN), .par_en(UART_Config[0]), 
        .par_typ(UART_Config[1]), .tx_out_s(UART_TX_O), .busy(UART_TX_Busy), 
        .rx_out_p(UART_RX_OUT), .rx_out_v(UART_RX_V_OUT), .parity_error(
        parity_error), .stop_error(framing_error) );
  SYS_CTRL_alu_data8_fun_width4_frame_data8_addr_bits4 U0_SYS_CTRL ( .clk(
        REF_CLK), .rst(n2), .alu_out(ALU_OUT), .out_vld(ALU_OUT_VLD), .rddata(
        RF_RdData), .rddata_vld(RF_RdData_VLD), .wr_done(RF_wr_done), 
        .rx_p_data(UART_RX_SYNC), .rx_d_vld(UART_RX_V_SYNC), .fifo_full(
        FIFO_FULL), .alu_fun(ALU_FUN), .alu_en(ALU_EN), .clk_en(CLKG_EN), 
        .address(RF_Address), .wr_data(RF_WrData), .wr_en(RF_WrEn), .rd_en(
        RF_RdEn), .tx_p_data(UART_TX_IN), .tx_d_vld(UART_TX_VLD) );
  Register_File_8_x_16 U0_RegFile ( .WrEn(RF_WrEn), .RdEn(RF_RdEn), .CLK(
        REF_CLK), .RST(n2), .address(RF_Address), .WrData(RF_WrData), .RdData(
        RF_RdData), .RdData_VLD(RF_RdData_VLD), .wr_done(RF_wr_done), .REG0(
        Operand_A), .REG1(Operand_B), .REG2(UART_Config), .REG3(DIV_RATIO) );
  ALU_16_bit U0_ALU ( .A(Operand_A), .B(Operand_B), .EN(ALU_EN), .ALU_FUN(
        ALU_FUN), .clk(ALU_CLK), .rst(n2), .ALU_OUT(ALU_OUT), .ALU_OUT_VLD(
        ALU_OUT_VLD) );
  CLK_GATE U0_CLK_GATE ( .clk(REF_CLK), .clk_en(CLKG_EN), .gated_clk(ALU_CLK)
         );
  INVX2M U2 ( .A(UART_TX_V_SYNC), .Y(n1) );
  INVX4M U3 ( .A(n3), .Y(n2) );
  INVX2M U4 ( .A(SYNC_REF_RST), .Y(n3) );
endmodule

