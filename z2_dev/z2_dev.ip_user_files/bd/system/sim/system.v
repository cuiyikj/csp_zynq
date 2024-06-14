//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Jul 28 15:27:16 2023
//Host        : yi running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_1VEEYFQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_B27CTP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_G1LTFC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [15:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [7:0]auto_pc_to_m00_couplers_ARLEN;
  wire [0:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [15:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [7:0]auto_pc_to_m00_couplers_AWLEN;
  wire [0:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [31:0]m00_couplers_to_auto_pc_RDATA;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [31:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [3:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[15:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR[15:0]),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR[15:0]),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_127IRLO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_PO2DS7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_18J3KY6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_WJL41H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_1OSW4KK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_3WO5LR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_1VOHX62
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_AS4AQ9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_11XGXJ4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_PY44VV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_W9OWG9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_1OIYOK8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module microblaze_dac_local_memory_imp_4H3E64
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_1_Clk;
  wire [0:31]microblaze_1_dlmb_ABUS;
  wire microblaze_1_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_1_dlmb_BE;
  wire microblaze_1_dlmb_CE;
  wire [0:31]microblaze_1_dlmb_READDBUS;
  wire microblaze_1_dlmb_READSTROBE;
  wire microblaze_1_dlmb_READY;
  wire microblaze_1_dlmb_UE;
  wire microblaze_1_dlmb_WAIT;
  wire [0:31]microblaze_1_dlmb_WRITEDBUS;
  wire microblaze_1_dlmb_WRITESTROBE;
  wire [0:31]microblaze_1_dlmb_bus_ABUS;
  wire microblaze_1_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_1_dlmb_bus_BE;
  wire microblaze_1_dlmb_bus_CE;
  wire [0:31]microblaze_1_dlmb_bus_READDBUS;
  wire microblaze_1_dlmb_bus_READSTROBE;
  wire microblaze_1_dlmb_bus_READY;
  wire microblaze_1_dlmb_bus_UE;
  wire microblaze_1_dlmb_bus_WAIT;
  wire [0:31]microblaze_1_dlmb_bus_WRITEDBUS;
  wire microblaze_1_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_1_dlmb_cntlr_ADDR;
  wire microblaze_1_dlmb_cntlr_CLK;
  wire [0:31]microblaze_1_dlmb_cntlr_DIN;
  wire [31:0]microblaze_1_dlmb_cntlr_DOUT;
  wire microblaze_1_dlmb_cntlr_EN;
  wire microblaze_1_dlmb_cntlr_RST;
  wire [0:3]microblaze_1_dlmb_cntlr_WE;
  wire [0:31]microblaze_1_ilmb_ABUS;
  wire microblaze_1_ilmb_ADDRSTROBE;
  wire microblaze_1_ilmb_CE;
  wire [0:31]microblaze_1_ilmb_READDBUS;
  wire microblaze_1_ilmb_READSTROBE;
  wire microblaze_1_ilmb_READY;
  wire microblaze_1_ilmb_UE;
  wire microblaze_1_ilmb_WAIT;
  wire [0:31]microblaze_1_ilmb_bus_ABUS;
  wire microblaze_1_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_1_ilmb_bus_BE;
  wire microblaze_1_ilmb_bus_CE;
  wire [0:31]microblaze_1_ilmb_bus_READDBUS;
  wire microblaze_1_ilmb_bus_READSTROBE;
  wire microblaze_1_ilmb_bus_READY;
  wire microblaze_1_ilmb_bus_UE;
  wire microblaze_1_ilmb_bus_WAIT;
  wire [0:31]microblaze_1_ilmb_bus_WRITEDBUS;
  wire microblaze_1_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_1_ilmb_cntlr_ADDR;
  wire microblaze_1_ilmb_cntlr_CLK;
  wire [0:31]microblaze_1_ilmb_cntlr_DIN;
  wire [31:0]microblaze_1_ilmb_cntlr_DOUT;
  wire microblaze_1_ilmb_cntlr_EN;
  wire microblaze_1_ilmb_cntlr_RST;
  wire [0:3]microblaze_1_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_1_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_1_dlmb_READDBUS;
  assign DLMB_ready = microblaze_1_dlmb_READY;
  assign DLMB_ue = microblaze_1_dlmb_UE;
  assign DLMB_wait = microblaze_1_dlmb_WAIT;
  assign ILMB_ce = microblaze_1_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_1_ilmb_READDBUS;
  assign ILMB_ready = microblaze_1_ilmb_READY;
  assign ILMB_ue = microblaze_1_ilmb_UE;
  assign ILMB_wait = microblaze_1_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_1_Clk = LMB_Clk;
  assign microblaze_1_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_1_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_1_dlmb_BE = DLMB_be[0:3];
  assign microblaze_1_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_1_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_1_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_1_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_1_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_1_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > system microblaze_dac_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_dlmb_bram_if_cntlr_1 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_1_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_1_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_1_dlmb_cntlr_DOUT[31],microblaze_1_dlmb_cntlr_DOUT[30],microblaze_1_dlmb_cntlr_DOUT[29],microblaze_1_dlmb_cntlr_DOUT[28],microblaze_1_dlmb_cntlr_DOUT[27],microblaze_1_dlmb_cntlr_DOUT[26],microblaze_1_dlmb_cntlr_DOUT[25],microblaze_1_dlmb_cntlr_DOUT[24],microblaze_1_dlmb_cntlr_DOUT[23],microblaze_1_dlmb_cntlr_DOUT[22],microblaze_1_dlmb_cntlr_DOUT[21],microblaze_1_dlmb_cntlr_DOUT[20],microblaze_1_dlmb_cntlr_DOUT[19],microblaze_1_dlmb_cntlr_DOUT[18],microblaze_1_dlmb_cntlr_DOUT[17],microblaze_1_dlmb_cntlr_DOUT[16],microblaze_1_dlmb_cntlr_DOUT[15],microblaze_1_dlmb_cntlr_DOUT[14],microblaze_1_dlmb_cntlr_DOUT[13],microblaze_1_dlmb_cntlr_DOUT[12],microblaze_1_dlmb_cntlr_DOUT[11],microblaze_1_dlmb_cntlr_DOUT[10],microblaze_1_dlmb_cntlr_DOUT[9],microblaze_1_dlmb_cntlr_DOUT[8],microblaze_1_dlmb_cntlr_DOUT[7],microblaze_1_dlmb_cntlr_DOUT[6],microblaze_1_dlmb_cntlr_DOUT[5],microblaze_1_dlmb_cntlr_DOUT[4],microblaze_1_dlmb_cntlr_DOUT[3],microblaze_1_dlmb_cntlr_DOUT[2],microblaze_1_dlmb_cntlr_DOUT[1],microblaze_1_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_1_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_1_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_1_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_1_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_1_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_dlmb_bus_BE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadStrobe(microblaze_1_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_1_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_1_dlmb_bus_CE),
        .Sl_DBus(microblaze_1_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_dlmb_bus_READY),
        .Sl_UE(microblaze_1_dlmb_bus_UE),
        .Sl_Wait(microblaze_1_dlmb_bus_WAIT));
  system_dlmb_v10_1 dlmb_v10
       (.LMB_ABus(microblaze_1_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_dlmb_bus_BE),
        .LMB_CE(microblaze_1_dlmb_CE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadDBus(microblaze_1_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_1_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_1_dlmb_READY),
        .LMB_UE(microblaze_1_dlmb_UE),
        .LMB_Wait(microblaze_1_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_1_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_1_dlmb_ABUS),
        .M_AddrStrobe(microblaze_1_dlmb_ADDRSTROBE),
        .M_BE(microblaze_1_dlmb_BE),
        .M_DBus(microblaze_1_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_1_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_1_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_1_dlmb_bus_CE),
        .Sl_DBus(microblaze_1_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_dlmb_bus_READY),
        .Sl_UE(microblaze_1_dlmb_bus_UE),
        .Sl_Wait(microblaze_1_dlmb_bus_WAIT));
  system_ilmb_bram_if_cntlr_1 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_1_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_1_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_1_ilmb_cntlr_DOUT[31],microblaze_1_ilmb_cntlr_DOUT[30],microblaze_1_ilmb_cntlr_DOUT[29],microblaze_1_ilmb_cntlr_DOUT[28],microblaze_1_ilmb_cntlr_DOUT[27],microblaze_1_ilmb_cntlr_DOUT[26],microblaze_1_ilmb_cntlr_DOUT[25],microblaze_1_ilmb_cntlr_DOUT[24],microblaze_1_ilmb_cntlr_DOUT[23],microblaze_1_ilmb_cntlr_DOUT[22],microblaze_1_ilmb_cntlr_DOUT[21],microblaze_1_ilmb_cntlr_DOUT[20],microblaze_1_ilmb_cntlr_DOUT[19],microblaze_1_ilmb_cntlr_DOUT[18],microblaze_1_ilmb_cntlr_DOUT[17],microblaze_1_ilmb_cntlr_DOUT[16],microblaze_1_ilmb_cntlr_DOUT[15],microblaze_1_ilmb_cntlr_DOUT[14],microblaze_1_ilmb_cntlr_DOUT[13],microblaze_1_ilmb_cntlr_DOUT[12],microblaze_1_ilmb_cntlr_DOUT[11],microblaze_1_ilmb_cntlr_DOUT[10],microblaze_1_ilmb_cntlr_DOUT[9],microblaze_1_ilmb_cntlr_DOUT[8],microblaze_1_ilmb_cntlr_DOUT[7],microblaze_1_ilmb_cntlr_DOUT[6],microblaze_1_ilmb_cntlr_DOUT[5],microblaze_1_ilmb_cntlr_DOUT[4],microblaze_1_ilmb_cntlr_DOUT[3],microblaze_1_ilmb_cntlr_DOUT[2],microblaze_1_ilmb_cntlr_DOUT[1],microblaze_1_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_1_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_1_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_1_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_1_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_1_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_ilmb_bus_BE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadStrobe(microblaze_1_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_1_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_1_ilmb_bus_CE),
        .Sl_DBus(microblaze_1_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_ilmb_bus_READY),
        .Sl_UE(microblaze_1_ilmb_bus_UE),
        .Sl_Wait(microblaze_1_ilmb_bus_WAIT));
  system_ilmb_v10_1 ilmb_v10
       (.LMB_ABus(microblaze_1_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_ilmb_bus_BE),
        .LMB_CE(microblaze_1_ilmb_CE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadDBus(microblaze_1_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_1_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_1_ilmb_READY),
        .LMB_UE(microblaze_1_ilmb_UE),
        .LMB_Wait(microblaze_1_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_1_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_1_ilmb_ABUS),
        .M_AddrStrobe(microblaze_1_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_1_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_1_ilmb_bus_CE),
        .Sl_DBus(microblaze_1_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_ilmb_bus_READY),
        .Sl_UE(microblaze_1_ilmb_bus_UE),
        .Sl_Wait(microblaze_1_ilmb_bus_WAIT));
  system_lmb_bram_1 lmb_bram
       (.addra({microblaze_1_dlmb_cntlr_ADDR[0],microblaze_1_dlmb_cntlr_ADDR[1],microblaze_1_dlmb_cntlr_ADDR[2],microblaze_1_dlmb_cntlr_ADDR[3],microblaze_1_dlmb_cntlr_ADDR[4],microblaze_1_dlmb_cntlr_ADDR[5],microblaze_1_dlmb_cntlr_ADDR[6],microblaze_1_dlmb_cntlr_ADDR[7],microblaze_1_dlmb_cntlr_ADDR[8],microblaze_1_dlmb_cntlr_ADDR[9],microblaze_1_dlmb_cntlr_ADDR[10],microblaze_1_dlmb_cntlr_ADDR[11],microblaze_1_dlmb_cntlr_ADDR[12],microblaze_1_dlmb_cntlr_ADDR[13],microblaze_1_dlmb_cntlr_ADDR[14],microblaze_1_dlmb_cntlr_ADDR[15],microblaze_1_dlmb_cntlr_ADDR[16],microblaze_1_dlmb_cntlr_ADDR[17],microblaze_1_dlmb_cntlr_ADDR[18],microblaze_1_dlmb_cntlr_ADDR[19],microblaze_1_dlmb_cntlr_ADDR[20],microblaze_1_dlmb_cntlr_ADDR[21],microblaze_1_dlmb_cntlr_ADDR[22],microblaze_1_dlmb_cntlr_ADDR[23],microblaze_1_dlmb_cntlr_ADDR[24],microblaze_1_dlmb_cntlr_ADDR[25],microblaze_1_dlmb_cntlr_ADDR[26],microblaze_1_dlmb_cntlr_ADDR[27],microblaze_1_dlmb_cntlr_ADDR[28],microblaze_1_dlmb_cntlr_ADDR[29],microblaze_1_dlmb_cntlr_ADDR[30],microblaze_1_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_1_ilmb_cntlr_ADDR[0],microblaze_1_ilmb_cntlr_ADDR[1],microblaze_1_ilmb_cntlr_ADDR[2],microblaze_1_ilmb_cntlr_ADDR[3],microblaze_1_ilmb_cntlr_ADDR[4],microblaze_1_ilmb_cntlr_ADDR[5],microblaze_1_ilmb_cntlr_ADDR[6],microblaze_1_ilmb_cntlr_ADDR[7],microblaze_1_ilmb_cntlr_ADDR[8],microblaze_1_ilmb_cntlr_ADDR[9],microblaze_1_ilmb_cntlr_ADDR[10],microblaze_1_ilmb_cntlr_ADDR[11],microblaze_1_ilmb_cntlr_ADDR[12],microblaze_1_ilmb_cntlr_ADDR[13],microblaze_1_ilmb_cntlr_ADDR[14],microblaze_1_ilmb_cntlr_ADDR[15],microblaze_1_ilmb_cntlr_ADDR[16],microblaze_1_ilmb_cntlr_ADDR[17],microblaze_1_ilmb_cntlr_ADDR[18],microblaze_1_ilmb_cntlr_ADDR[19],microblaze_1_ilmb_cntlr_ADDR[20],microblaze_1_ilmb_cntlr_ADDR[21],microblaze_1_ilmb_cntlr_ADDR[22],microblaze_1_ilmb_cntlr_ADDR[23],microblaze_1_ilmb_cntlr_ADDR[24],microblaze_1_ilmb_cntlr_ADDR[25],microblaze_1_ilmb_cntlr_ADDR[26],microblaze_1_ilmb_cntlr_ADDR[27],microblaze_1_ilmb_cntlr_ADDR[28],microblaze_1_ilmb_cntlr_ADDR[29],microblaze_1_ilmb_cntlr_ADDR[30],microblaze_1_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_1_dlmb_cntlr_CLK),
        .clkb(microblaze_1_ilmb_cntlr_CLK),
        .dina({microblaze_1_dlmb_cntlr_DIN[0],microblaze_1_dlmb_cntlr_DIN[1],microblaze_1_dlmb_cntlr_DIN[2],microblaze_1_dlmb_cntlr_DIN[3],microblaze_1_dlmb_cntlr_DIN[4],microblaze_1_dlmb_cntlr_DIN[5],microblaze_1_dlmb_cntlr_DIN[6],microblaze_1_dlmb_cntlr_DIN[7],microblaze_1_dlmb_cntlr_DIN[8],microblaze_1_dlmb_cntlr_DIN[9],microblaze_1_dlmb_cntlr_DIN[10],microblaze_1_dlmb_cntlr_DIN[11],microblaze_1_dlmb_cntlr_DIN[12],microblaze_1_dlmb_cntlr_DIN[13],microblaze_1_dlmb_cntlr_DIN[14],microblaze_1_dlmb_cntlr_DIN[15],microblaze_1_dlmb_cntlr_DIN[16],microblaze_1_dlmb_cntlr_DIN[17],microblaze_1_dlmb_cntlr_DIN[18],microblaze_1_dlmb_cntlr_DIN[19],microblaze_1_dlmb_cntlr_DIN[20],microblaze_1_dlmb_cntlr_DIN[21],microblaze_1_dlmb_cntlr_DIN[22],microblaze_1_dlmb_cntlr_DIN[23],microblaze_1_dlmb_cntlr_DIN[24],microblaze_1_dlmb_cntlr_DIN[25],microblaze_1_dlmb_cntlr_DIN[26],microblaze_1_dlmb_cntlr_DIN[27],microblaze_1_dlmb_cntlr_DIN[28],microblaze_1_dlmb_cntlr_DIN[29],microblaze_1_dlmb_cntlr_DIN[30],microblaze_1_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_1_ilmb_cntlr_DIN[0],microblaze_1_ilmb_cntlr_DIN[1],microblaze_1_ilmb_cntlr_DIN[2],microblaze_1_ilmb_cntlr_DIN[3],microblaze_1_ilmb_cntlr_DIN[4],microblaze_1_ilmb_cntlr_DIN[5],microblaze_1_ilmb_cntlr_DIN[6],microblaze_1_ilmb_cntlr_DIN[7],microblaze_1_ilmb_cntlr_DIN[8],microblaze_1_ilmb_cntlr_DIN[9],microblaze_1_ilmb_cntlr_DIN[10],microblaze_1_ilmb_cntlr_DIN[11],microblaze_1_ilmb_cntlr_DIN[12],microblaze_1_ilmb_cntlr_DIN[13],microblaze_1_ilmb_cntlr_DIN[14],microblaze_1_ilmb_cntlr_DIN[15],microblaze_1_ilmb_cntlr_DIN[16],microblaze_1_ilmb_cntlr_DIN[17],microblaze_1_ilmb_cntlr_DIN[18],microblaze_1_ilmb_cntlr_DIN[19],microblaze_1_ilmb_cntlr_DIN[20],microblaze_1_ilmb_cntlr_DIN[21],microblaze_1_ilmb_cntlr_DIN[22],microblaze_1_ilmb_cntlr_DIN[23],microblaze_1_ilmb_cntlr_DIN[24],microblaze_1_ilmb_cntlr_DIN[25],microblaze_1_ilmb_cntlr_DIN[26],microblaze_1_ilmb_cntlr_DIN[27],microblaze_1_ilmb_cntlr_DIN[28],microblaze_1_ilmb_cntlr_DIN[29],microblaze_1_ilmb_cntlr_DIN[30],microblaze_1_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_1_dlmb_cntlr_DOUT),
        .doutb(microblaze_1_ilmb_cntlr_DOUT),
        .ena(microblaze_1_dlmb_cntlr_EN),
        .enb(microblaze_1_ilmb_cntlr_EN),
        .rsta(microblaze_1_dlmb_cntlr_RST),
        .rstb(microblaze_1_ilmb_cntlr_RST),
        .wea({microblaze_1_dlmb_cntlr_WE[0],microblaze_1_dlmb_cntlr_WE[1],microblaze_1_dlmb_cntlr_WE[2],microblaze_1_dlmb_cntlr_WE[3]}),
        .web({microblaze_1_ilmb_cntlr_WE[0],microblaze_1_ilmb_cntlr_WE[1],microblaze_1_ilmb_cntlr_WE[2],microblaze_1_ilmb_cntlr_WE[3]}));
endmodule

module s00_couplers_imp_1IROKLJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_3ZH609
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_4J360S
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_18GAHBS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s01_couplers_to_s01_couplers_ARADDR;
  wire [2:0]s01_couplers_to_s01_couplers_ARPROT;
  wire [0:0]s01_couplers_to_s01_couplers_ARREADY;
  wire [0:0]s01_couplers_to_s01_couplers_ARVALID;
  wire [31:0]s01_couplers_to_s01_couplers_AWADDR;
  wire [2:0]s01_couplers_to_s01_couplers_AWPROT;
  wire [0:0]s01_couplers_to_s01_couplers_AWREADY;
  wire [0:0]s01_couplers_to_s01_couplers_AWVALID;
  wire [0:0]s01_couplers_to_s01_couplers_BREADY;
  wire [1:0]s01_couplers_to_s01_couplers_BRESP;
  wire [0:0]s01_couplers_to_s01_couplers_BVALID;
  wire [31:0]s01_couplers_to_s01_couplers_RDATA;
  wire [0:0]s01_couplers_to_s01_couplers_RREADY;
  wire [1:0]s01_couplers_to_s01_couplers_RRESP;
  wire [0:0]s01_couplers_to_s01_couplers_RVALID;
  wire [31:0]s01_couplers_to_s01_couplers_WDATA;
  wire [0:0]s01_couplers_to_s01_couplers_WREADY;
  wire [3:0]s01_couplers_to_s01_couplers_WSTRB;
  wire [0:0]s01_couplers_to_s01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s01_couplers_to_s01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s01_couplers_to_s01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s01_couplers_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s01_couplers_to_s01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s01_couplers_to_s01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s01_couplers_to_s01_couplers_AWVALID;
  assign M_AXI_bready[0] = s01_couplers_to_s01_couplers_BREADY;
  assign M_AXI_rready[0] = s01_couplers_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s01_couplers_to_s01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s01_couplers_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s01_couplers_to_s01_couplers_WVALID;
  assign S_AXI_arready[0] = s01_couplers_to_s01_couplers_ARREADY;
  assign S_AXI_awready[0] = s01_couplers_to_s01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_couplers_BRESP;
  assign S_AXI_bvalid[0] = s01_couplers_to_s01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_couplers_RRESP;
  assign S_AXI_rvalid[0] = s01_couplers_to_s01_couplers_RVALID;
  assign S_AXI_wready[0] = s01_couplers_to_s01_couplers_WREADY;
  assign s01_couplers_to_s01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_couplers_ARREADY = M_AXI_arready[0];
  assign s01_couplers_to_s01_couplers_ARVALID = S_AXI_arvalid[0];
  assign s01_couplers_to_s01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_couplers_AWREADY = M_AXI_awready[0];
  assign s01_couplers_to_s01_couplers_AWVALID = S_AXI_awvalid[0];
  assign s01_couplers_to_s01_couplers_BREADY = S_AXI_bready[0];
  assign s01_couplers_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_couplers_to_s01_couplers_BVALID = M_AXI_bvalid[0];
  assign s01_couplers_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign s01_couplers_to_s01_couplers_RREADY = S_AXI_rready[0];
  assign s01_couplers_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_couplers_to_s01_couplers_RVALID = M_AXI_rvalid[0];
  assign s01_couplers_to_s01_couplers_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_couplers_WREADY = M_AXI_wready[0];
  assign s01_couplers_to_s01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=53,numReposBlks=30,numNonXlnxBlks=0,numHierBlks=23,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=20,da_board_cnt=8,da_bram_cntlr_cnt=1,da_clkrst_cnt=73,da_mb_cnt=4,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (CPU_1_LED_tri_i,
    CPU_1_LED_tri_o,
    CPU_1_LED_tri_t,
    CPU_1_PMOD_A_tri_i,
    CPU_1_PMOD_A_tri_o,
    CPU_1_PMOD_A_tri_t,
    DAC_DB_UART_rxd,
    DAC_DB_UART_txd,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    GPIO_DAC_tri_o,
    IIC_1_scl_i,
    IIC_1_scl_o,
    IIC_1_scl_t,
    IIC_1_sda_i,
    IIC_1_sda_o,
    IIC_1_sda_t,
    LED_DAC_tri_o,
    MAIN_DB_UART_rxd,
    MAIN_DB_UART_txd,
    MAIN_GPIO_INT_tri_i,
    MAIN_GPIO_tri_o,
    MAIN_LED_tri_o,
    MAIN_UART_1_rxd,
    MAIN_UART_1_txd,
    PMODB_tri_i,
    PMODB_tri_o,
    PMODB_tri_t,
    Vaux0_0_v_n,
    Vaux0_0_v_p,
    Vaux12_0_v_n,
    Vaux12_0_v_p,
    Vaux13_0_v_n,
    Vaux13_0_v_p,
    Vaux15_0_v_n,
    Vaux15_0_v_p,
    Vaux1_0_v_n,
    Vaux1_0_v_p,
    Vaux5_0_v_n,
    Vaux5_0_v_p,
    Vaux6_0_v_n,
    Vaux6_0_v_p,
    Vaux8_0_v_n,
    Vaux8_0_v_p,
    Vaux9_0_v_n,
    Vaux9_0_v_p,
    Vp_Vn_0_v_n,
    Vp_Vn_0_v_p,
    audio_clk_10MHz,
    bclk_0,
    codec_address_0,
    i_i2c_scl_0,
    i_i2c_sda_0,
    lrclk_0,
    sdata_i_0,
    sdata_o_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 CPU_1_LED " *) input [1:0]CPU_1_LED_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 CPU_1_LED " *) output [1:0]CPU_1_LED_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 CPU_1_LED " *) output [1:0]CPU_1_LED_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 CPU_1_PMOD_A " *) input [3:0]CPU_1_PMOD_A_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 CPU_1_PMOD_A " *) output [3:0]CPU_1_PMOD_A_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 CPU_1_PMOD_A " *) output [3:0]CPU_1_PMOD_A_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 DAC_DB_UART RxD" *) input DAC_DB_UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 DAC_DB_UART TxD" *) output DAC_DB_UART_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_DAC TRI_O" *) output [0:0]GPIO_DAC_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SCL_I" *) input IIC_1_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SCL_O" *) output IIC_1_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SCL_T" *) output IIC_1_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SDA_I" *) input IIC_1_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SDA_O" *) output IIC_1_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SDA_T" *) output IIC_1_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 LED_DAC TRI_O" *) output [0:0]LED_DAC_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 MAIN_DB_UART RxD" *) input MAIN_DB_UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 MAIN_DB_UART TxD" *) output MAIN_DB_UART_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 MAIN_GPIO_INT TRI_I" *) input [3:0]MAIN_GPIO_INT_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 MAIN_GPIO TRI_O" *) output [1:0]MAIN_GPIO_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 MAIN_LED TRI_O" *) output [0:0]MAIN_LED_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 MAIN_UART_1 RxD" *) input MAIN_UART_1_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 MAIN_UART_1 TxD" *) output MAIN_UART_1_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PMODB TRI_I" *) input [7:0]PMODB_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PMODB TRI_O" *) output [7:0]PMODB_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PMODB TRI_T" *) output [7:0]PMODB_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux0_0 V_N" *) input Vaux0_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux0_0 V_P" *) input Vaux0_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux12_0 V_N" *) input Vaux12_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux12_0 V_P" *) input Vaux12_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux13_0 V_N" *) input Vaux13_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux13_0 V_P" *) input Vaux13_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux15_0 V_N" *) input Vaux15_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux15_0 V_P" *) input Vaux15_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux1_0 V_N" *) input Vaux1_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux1_0 V_P" *) input Vaux1_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux5_0 V_N" *) input Vaux5_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux5_0 V_P" *) input Vaux5_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux6_0 V_N" *) input Vaux6_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux6_0 V_P" *) input Vaux6_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux8_0 V_N" *) input Vaux8_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux8_0 V_P" *) input Vaux8_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux9_0 V_N" *) input Vaux9_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vaux9_0 V_P" *) input Vaux9_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn_0 V_N" *) input Vp_Vn_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn_0 V_P" *) input Vp_Vn_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AUDIO_CLK_10MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AUDIO_CLK_10MHZ, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output audio_clk_10MHz;
  output bclk_0;
  output [1:0]codec_address_0;
  input i_i2c_scl_0;
  input i_i2c_sda_0;
  output lrclk_0;
  input sdata_i_0;
  output sdata_o_0;

  wire [31:0]S01_AXI_1_ARADDR;
  wire [2:0]S01_AXI_1_ARPROT;
  wire [0:0]S01_AXI_1_ARREADY;
  wire [0:0]S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [2:0]S01_AXI_1_AWPROT;
  wire [0:0]S01_AXI_1_AWREADY;
  wire [0:0]S01_AXI_1_AWVALID;
  wire [0:0]S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire [0:0]S01_AXI_1_BVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire [0:0]S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire [0:0]S01_AXI_1_RVALID;
  wire [31:0]S01_AXI_1_WDATA;
  wire [0:0]S01_AXI_1_WREADY;
  wire [3:0]S01_AXI_1_WSTRB;
  wire [0:0]S01_AXI_1_WVALID;
  wire Vaux0_0_1_V_N;
  wire Vaux0_0_1_V_P;
  wire Vaux12_0_1_V_N;
  wire Vaux12_0_1_V_P;
  wire Vaux13_0_1_V_N;
  wire Vaux13_0_1_V_P;
  wire Vaux15_0_1_V_N;
  wire Vaux15_0_1_V_P;
  wire Vaux1_0_1_V_N;
  wire Vaux1_0_1_V_P;
  wire Vaux5_0_1_V_N;
  wire Vaux5_0_1_V_P;
  wire Vaux6_0_1_V_N;
  wire Vaux6_0_1_V_P;
  wire Vaux8_0_1_V_N;
  wire Vaux8_0_1_V_P;
  wire Vaux9_0_1_V_N;
  wire Vaux9_0_1_V_P;
  wire Vp_Vn_0_1_V_N;
  wire Vp_Vn_0_1_V_P;
  wire audio_codec_ctrl_0_bclk;
  wire [1:0]audio_codec_ctrl_0_codec_address;
  wire audio_codec_ctrl_0_lrclk;
  wire audio_codec_ctrl_0_sdata_o;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  wire axi_fifo_mm_s_0_AXI_STR_TXD_TLAST;
  wire axi_fifo_mm_s_0_axi_str_rxd_tready;
  wire [3:0]axi_gpio_0_GPIO_TRI_I;
  wire [3:0]axi_gpio_0_GPIO_TRI_O;
  wire [3:0]axi_gpio_0_GPIO_TRI_T;
  wire [0:0]axi_gpio_1_GPIO_TRI_O;
  wire [7:0]axi_gpio_2_GPIO_TRI_I;
  wire [7:0]axi_gpio_2_GPIO_TRI_O;
  wire [7:0]axi_gpio_2_GPIO_TRI_T;
  wire [0:0]axi_gpio_3_GPIO_TRI_O;
  wire [0:0]axi_gpio_dac_GPIO2_TRI_O;
  wire [3:0]axi_gpio_i2c_led_GPIO_TRI_I;
  wire axi_gpio_i2c_led_ip2intc_irpt;
  wire [1:0]axi_gpio_main_led_GPIO2_TRI_O;
  wire [1:0]axi_gpio_main_pmod_a_GPIO2_TRI_I;
  wire [1:0]axi_gpio_main_pmod_a_GPIO2_TRI_O;
  wire [1:0]axi_gpio_main_pmod_a_GPIO2_TRI_T;
  wire axi_intc_0_interrupt_INTERRUPT;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M00_AXI1_ARADDR;
  wire axi_interconnect_1_M00_AXI1_ARREADY;
  wire axi_interconnect_1_M00_AXI1_ARVALID;
  wire [31:0]axi_interconnect_1_M00_AXI1_AWADDR;
  wire axi_interconnect_1_M00_AXI1_AWREADY;
  wire axi_interconnect_1_M00_AXI1_AWVALID;
  wire axi_interconnect_1_M00_AXI1_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI1_BRESP;
  wire axi_interconnect_1_M00_AXI1_BVALID;
  wire [31:0]axi_interconnect_1_M00_AXI1_RDATA;
  wire axi_interconnect_1_M00_AXI1_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI1_RRESP;
  wire axi_interconnect_1_M00_AXI1_RVALID;
  wire [31:0]axi_interconnect_1_M00_AXI1_WDATA;
  wire axi_interconnect_1_M00_AXI1_WREADY;
  wire [3:0]axi_interconnect_1_M00_AXI1_WSTRB;
  wire axi_interconnect_1_M00_AXI1_WVALID;
  wire [15:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_ARCACHE;
  wire [7:0]axi_interconnect_1_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_ARPROT;
  wire axi_interconnect_1_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_ARSIZE;
  wire axi_interconnect_1_M00_AXI_ARVALID;
  wire [15:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_AWCACHE;
  wire [7:0]axi_interconnect_1_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_AWPROT;
  wire axi_interconnect_1_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_AWSIZE;
  wire axi_interconnect_1_M00_AXI_AWVALID;
  wire axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire axi_interconnect_1_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_RDATA;
  wire axi_interconnect_1_M00_AXI_RLAST;
  wire axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire axi_interconnect_1_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_WDATA;
  wire axi_interconnect_1_M00_AXI_WLAST;
  wire axi_interconnect_1_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M00_AXI_WSTRB;
  wire axi_interconnect_1_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_ARADDR;
  wire axi_interconnect_1_M01_AXI_ARREADY;
  wire axi_interconnect_1_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_AWADDR;
  wire axi_interconnect_1_M01_AXI_AWREADY;
  wire axi_interconnect_1_M01_AXI_AWVALID;
  wire axi_interconnect_1_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_BRESP;
  wire axi_interconnect_1_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_RDATA;
  wire axi_interconnect_1_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_RRESP;
  wire axi_interconnect_1_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_WDATA;
  wire axi_interconnect_1_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M01_AXI_WSTRB;
  wire axi_interconnect_1_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_dac_M03_AXI_ARADDR;
  wire axi_interconnect_dac_M03_AXI_ARREADY;
  wire [0:0]axi_interconnect_dac_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_dac_M03_AXI_AWADDR;
  wire axi_interconnect_dac_M03_AXI_AWREADY;
  wire [0:0]axi_interconnect_dac_M03_AXI_AWVALID;
  wire [0:0]axi_interconnect_dac_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_dac_M03_AXI_BRESP;
  wire axi_interconnect_dac_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_dac_M03_AXI_RDATA;
  wire [0:0]axi_interconnect_dac_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_dac_M03_AXI_RRESP;
  wire axi_interconnect_dac_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_dac_M03_AXI_WDATA;
  wire axi_interconnect_dac_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_dac_M03_AXI_WSTRB;
  wire [0:0]axi_interconnect_dac_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_dac_M04_AXI_ARADDR;
  wire axi_interconnect_dac_M04_AXI_ARREADY;
  wire axi_interconnect_dac_M04_AXI_ARVALID;
  wire [31:0]axi_interconnect_dac_M04_AXI_AWADDR;
  wire axi_interconnect_dac_M04_AXI_AWREADY;
  wire axi_interconnect_dac_M04_AXI_AWVALID;
  wire axi_interconnect_dac_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_dac_M04_AXI_BRESP;
  wire axi_interconnect_dac_M04_AXI_BVALID;
  wire [31:0]axi_interconnect_dac_M04_AXI_RDATA;
  wire axi_interconnect_dac_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_dac_M04_AXI_RRESP;
  wire axi_interconnect_dac_M04_AXI_RVALID;
  wire [31:0]axi_interconnect_dac_M04_AXI_WDATA;
  wire axi_interconnect_dac_M04_AXI_WREADY;
  wire [3:0]axi_interconnect_dac_M04_AXI_WSTRB;
  wire axi_interconnect_dac_M04_AXI_WVALID;
  wire [31:0]axi_interconnect_dac_M05_AXI_ARADDR;
  wire axi_interconnect_dac_M05_AXI_ARREADY;
  wire axi_interconnect_dac_M05_AXI_ARVALID;
  wire [31:0]axi_interconnect_dac_M05_AXI_AWADDR;
  wire axi_interconnect_dac_M05_AXI_AWREADY;
  wire axi_interconnect_dac_M05_AXI_AWVALID;
  wire axi_interconnect_dac_M05_AXI_BREADY;
  wire [1:0]axi_interconnect_dac_M05_AXI_BRESP;
  wire axi_interconnect_dac_M05_AXI_BVALID;
  wire [31:0]axi_interconnect_dac_M05_AXI_RDATA;
  wire axi_interconnect_dac_M05_AXI_RREADY;
  wire [1:0]axi_interconnect_dac_M05_AXI_RRESP;
  wire axi_interconnect_dac_M05_AXI_RVALID;
  wire [31:0]axi_interconnect_dac_M05_AXI_WDATA;
  wire axi_interconnect_dac_M05_AXI_WREADY;
  wire [3:0]axi_interconnect_dac_M05_AXI_WSTRB;
  wire axi_interconnect_dac_M05_AXI_WVALID;
  wire [31:0]axi_interconnect_main_M01_AXI_ARADDR;
  wire axi_interconnect_main_M01_AXI_ARREADY;
  wire axi_interconnect_main_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_main_M01_AXI_AWADDR;
  wire axi_interconnect_main_M01_AXI_AWREADY;
  wire axi_interconnect_main_M01_AXI_AWVALID;
  wire axi_interconnect_main_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_main_M01_AXI_BRESP;
  wire axi_interconnect_main_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_main_M01_AXI_RDATA;
  wire axi_interconnect_main_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_main_M01_AXI_RRESP;
  wire axi_interconnect_main_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_main_M01_AXI_WDATA;
  wire axi_interconnect_main_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_main_M01_AXI_WSTRB;
  wire axi_interconnect_main_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_main_M02_AXI_ARADDR;
  wire axi_interconnect_main_M02_AXI_ARREADY;
  wire axi_interconnect_main_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_main_M02_AXI_AWADDR;
  wire axi_interconnect_main_M02_AXI_AWREADY;
  wire axi_interconnect_main_M02_AXI_AWVALID;
  wire axi_interconnect_main_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_main_M02_AXI_BRESP;
  wire axi_interconnect_main_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_main_M02_AXI_RDATA;
  wire axi_interconnect_main_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_main_M02_AXI_RRESP;
  wire axi_interconnect_main_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_main_M02_AXI_WDATA;
  wire axi_interconnect_main_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_main_M02_AXI_WSTRB;
  wire axi_interconnect_main_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_main_M03_AXI_ARADDR;
  wire [2:0]axi_interconnect_main_M03_AXI_ARPROT;
  wire [0:0]axi_interconnect_main_M03_AXI_ARREADY;
  wire [0:0]axi_interconnect_main_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_main_M03_AXI_AWADDR;
  wire [2:0]axi_interconnect_main_M03_AXI_AWPROT;
  wire [0:0]axi_interconnect_main_M03_AXI_AWREADY;
  wire [0:0]axi_interconnect_main_M03_AXI_AWVALID;
  wire [0:0]axi_interconnect_main_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_main_M03_AXI_BRESP;
  wire [0:0]axi_interconnect_main_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_main_M03_AXI_RDATA;
  wire [0:0]axi_interconnect_main_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_main_M03_AXI_RRESP;
  wire [0:0]axi_interconnect_main_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_main_M03_AXI_WDATA;
  wire [0:0]axi_interconnect_main_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_main_M03_AXI_WSTRB;
  wire [0:0]axi_interconnect_main_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_main_M04_AXI_ARADDR;
  wire axi_interconnect_main_M04_AXI_ARREADY;
  wire axi_interconnect_main_M04_AXI_ARVALID;
  wire [31:0]axi_interconnect_main_M04_AXI_AWADDR;
  wire axi_interconnect_main_M04_AXI_AWREADY;
  wire axi_interconnect_main_M04_AXI_AWVALID;
  wire axi_interconnect_main_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_main_M04_AXI_BRESP;
  wire axi_interconnect_main_M04_AXI_BVALID;
  wire [31:0]axi_interconnect_main_M04_AXI_RDATA;
  wire axi_interconnect_main_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_main_M04_AXI_RRESP;
  wire axi_interconnect_main_M04_AXI_RVALID;
  wire [31:0]axi_interconnect_main_M04_AXI_WDATA;
  wire axi_interconnect_main_M04_AXI_WREADY;
  wire [3:0]axi_interconnect_main_M04_AXI_WSTRB;
  wire axi_interconnect_main_M04_AXI_WVALID;
  wire [31:0]axi_interconnect_main_M05_AXI_ARADDR;
  wire axi_interconnect_main_M05_AXI_ARREADY;
  wire axi_interconnect_main_M05_AXI_ARVALID;
  wire [31:0]axi_interconnect_main_M05_AXI_AWADDR;
  wire axi_interconnect_main_M05_AXI_AWREADY;
  wire axi_interconnect_main_M05_AXI_AWVALID;
  wire axi_interconnect_main_M05_AXI_BREADY;
  wire [1:0]axi_interconnect_main_M05_AXI_BRESP;
  wire axi_interconnect_main_M05_AXI_BVALID;
  wire [31:0]axi_interconnect_main_M05_AXI_RDATA;
  wire axi_interconnect_main_M05_AXI_RREADY;
  wire [1:0]axi_interconnect_main_M05_AXI_RRESP;
  wire axi_interconnect_main_M05_AXI_RVALID;
  wire [31:0]axi_interconnect_main_M05_AXI_WDATA;
  wire axi_interconnect_main_M05_AXI_WREADY;
  wire [3:0]axi_interconnect_main_M05_AXI_WSTRB;
  wire axi_interconnect_main_M05_AXI_WVALID;
  wire [31:0]axi_interconnect_main_M06_AXI_ARADDR;
  wire axi_interconnect_main_M06_AXI_ARREADY;
  wire axi_interconnect_main_M06_AXI_ARVALID;
  wire [31:0]axi_interconnect_main_M06_AXI_AWADDR;
  wire axi_interconnect_main_M06_AXI_AWREADY;
  wire axi_interconnect_main_M06_AXI_AWVALID;
  wire axi_interconnect_main_M06_AXI_BREADY;
  wire [1:0]axi_interconnect_main_M06_AXI_BRESP;
  wire axi_interconnect_main_M06_AXI_BVALID;
  wire [31:0]axi_interconnect_main_M06_AXI_RDATA;
  wire axi_interconnect_main_M06_AXI_RREADY;
  wire [1:0]axi_interconnect_main_M06_AXI_RRESP;
  wire axi_interconnect_main_M06_AXI_RVALID;
  wire [31:0]axi_interconnect_main_M06_AXI_WDATA;
  wire axi_interconnect_main_M06_AXI_WREADY;
  wire [3:0]axi_interconnect_main_M06_AXI_WSTRB;
  wire axi_interconnect_main_M06_AXI_WVALID;
  wire [31:0]axi_interconnect_main_M07_AXI_ARADDR;
  wire axi_interconnect_main_M07_AXI_ARREADY;
  wire axi_interconnect_main_M07_AXI_ARVALID;
  wire [31:0]axi_interconnect_main_M07_AXI_AWADDR;
  wire axi_interconnect_main_M07_AXI_AWREADY;
  wire axi_interconnect_main_M07_AXI_AWVALID;
  wire axi_interconnect_main_M07_AXI_BREADY;
  wire [1:0]axi_interconnect_main_M07_AXI_BRESP;
  wire axi_interconnect_main_M07_AXI_BVALID;
  wire [31:0]axi_interconnect_main_M07_AXI_RDATA;
  wire axi_interconnect_main_M07_AXI_RREADY;
  wire [1:0]axi_interconnect_main_M07_AXI_RRESP;
  wire axi_interconnect_main_M07_AXI_RVALID;
  wire [31:0]axi_interconnect_main_M07_AXI_WDATA;
  wire axi_interconnect_main_M07_AXI_WREADY;
  wire [3:0]axi_interconnect_main_M07_AXI_WSTRB;
  wire axi_interconnect_main_M07_AXI_WVALID;
  wire axi_timer_dac_interrupt;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_2_UART_RxD;
  wire axi_uartlite_2_UART_TxD;
  wire [31:0]i2c_decoder_0_o_wdata;
  wire i2c_decoder_0_o_wen;
  wire i_i2c_scl_0_1;
  wire i_i2c_sda_0_1;
  wire mdm_1_debug_sys_rst;
  wire microblaze_0_Clk;
  wire [31:0]microblaze_1_M_AXI_DP_ARADDR;
  wire [2:0]microblaze_1_M_AXI_DP_ARPROT;
  wire microblaze_1_M_AXI_DP_ARREADY;
  wire microblaze_1_M_AXI_DP_ARVALID;
  wire [31:0]microblaze_1_M_AXI_DP_AWADDR;
  wire [2:0]microblaze_1_M_AXI_DP_AWPROT;
  wire microblaze_1_M_AXI_DP_AWREADY;
  wire microblaze_1_M_AXI_DP_AWVALID;
  wire microblaze_1_M_AXI_DP_BREADY;
  wire [1:0]microblaze_1_M_AXI_DP_BRESP;
  wire microblaze_1_M_AXI_DP_BVALID;
  wire [31:0]microblaze_1_M_AXI_DP_RDATA;
  wire microblaze_1_M_AXI_DP_RREADY;
  wire [1:0]microblaze_1_M_AXI_DP_RRESP;
  wire microblaze_1_M_AXI_DP_RVALID;
  wire [31:0]microblaze_1_M_AXI_DP_WDATA;
  wire microblaze_1_M_AXI_DP_WREADY;
  wire [3:0]microblaze_1_M_AXI_DP_WSTRB;
  wire microblaze_1_M_AXI_DP_WVALID;
  wire microblaze_1_debug_CAPTURE;
  wire microblaze_1_debug_CLK;
  wire microblaze_1_debug_DISABLE;
  wire [0:7]microblaze_1_debug_REG_EN;
  wire microblaze_1_debug_RST;
  wire microblaze_1_debug_SHIFT;
  wire microblaze_1_debug_TDI;
  wire microblaze_1_debug_TDO;
  wire microblaze_1_debug_UPDATE;
  wire [0:31]microblaze_1_dlmb_1_ABUS;
  wire microblaze_1_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_1_dlmb_1_BE;
  wire microblaze_1_dlmb_1_CE;
  wire [0:31]microblaze_1_dlmb_1_READDBUS;
  wire microblaze_1_dlmb_1_READSTROBE;
  wire microblaze_1_dlmb_1_READY;
  wire microblaze_1_dlmb_1_UE;
  wire microblaze_1_dlmb_1_WAIT;
  wire [0:31]microblaze_1_dlmb_1_WRITEDBUS;
  wire microblaze_1_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_1_ilmb_1_ABUS;
  wire microblaze_1_ilmb_1_ADDRSTROBE;
  wire microblaze_1_ilmb_1_CE;
  wire [0:31]microblaze_1_ilmb_1_READDBUS;
  wire microblaze_1_ilmb_1_READSTROBE;
  wire microblaze_1_ilmb_1_READY;
  wire microblaze_1_ilmb_1_UE;
  wire microblaze_1_ilmb_1_WAIT;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_IIC_1_SCL_I;
  wire processing_system7_0_IIC_1_SCL_O;
  wire processing_system7_0_IIC_1_SCL_T;
  wire processing_system7_0_IIC_1_SDA_I;
  wire processing_system7_0_IIC_1_SDA_O;
  wire processing_system7_0_IIC_1_SDA_T;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire processing_system7_0_UART_1_RxD;
  wire processing_system7_0_UART_1_TxD;
  wire [0:0]rst_ps7_0_50M_bus_struct_reset;
  wire rst_ps7_0_50M_mb_reset;
  wire [0:0]rst_ps7_0_50M_peripheral_aresetn;
  wire sdata_i_0_1;

  assign CPU_1_LED_tri_o[1:0] = axi_gpio_main_pmod_a_GPIO2_TRI_O;
  assign CPU_1_LED_tri_t[1:0] = axi_gpio_main_pmod_a_GPIO2_TRI_T;
  assign CPU_1_PMOD_A_tri_o[3:0] = axi_gpio_0_GPIO_TRI_O;
  assign CPU_1_PMOD_A_tri_t[3:0] = axi_gpio_0_GPIO_TRI_T;
  assign DAC_DB_UART_txd = axi_uartlite_2_UART_TxD;
  assign GPIO_DAC_tri_o[0] = axi_gpio_dac_GPIO2_TRI_O;
  assign IIC_1_scl_o = processing_system7_0_IIC_1_SCL_O;
  assign IIC_1_scl_t = processing_system7_0_IIC_1_SCL_T;
  assign IIC_1_sda_o = processing_system7_0_IIC_1_SDA_O;
  assign IIC_1_sda_t = processing_system7_0_IIC_1_SDA_T;
  assign LED_DAC_tri_o[0] = axi_gpio_3_GPIO_TRI_O;
  assign MAIN_DB_UART_txd = axi_uartlite_0_UART_TxD;
  assign MAIN_GPIO_tri_o[1:0] = axi_gpio_main_led_GPIO2_TRI_O;
  assign MAIN_LED_tri_o[0] = axi_gpio_1_GPIO_TRI_O;
  assign MAIN_UART_1_txd = processing_system7_0_UART_1_TxD;
  assign PMODB_tri_o[7:0] = axi_gpio_2_GPIO_TRI_O;
  assign PMODB_tri_t[7:0] = axi_gpio_2_GPIO_TRI_T;
  assign Vaux0_0_1_V_N = Vaux0_0_v_n;
  assign Vaux0_0_1_V_P = Vaux0_0_v_p;
  assign Vaux12_0_1_V_N = Vaux12_0_v_n;
  assign Vaux12_0_1_V_P = Vaux12_0_v_p;
  assign Vaux13_0_1_V_N = Vaux13_0_v_n;
  assign Vaux13_0_1_V_P = Vaux13_0_v_p;
  assign Vaux15_0_1_V_N = Vaux15_0_v_n;
  assign Vaux15_0_1_V_P = Vaux15_0_v_p;
  assign Vaux1_0_1_V_N = Vaux1_0_v_n;
  assign Vaux1_0_1_V_P = Vaux1_0_v_p;
  assign Vaux5_0_1_V_N = Vaux5_0_v_n;
  assign Vaux5_0_1_V_P = Vaux5_0_v_p;
  assign Vaux6_0_1_V_N = Vaux6_0_v_n;
  assign Vaux6_0_1_V_P = Vaux6_0_v_p;
  assign Vaux8_0_1_V_N = Vaux8_0_v_n;
  assign Vaux8_0_1_V_P = Vaux8_0_v_p;
  assign Vaux9_0_1_V_N = Vaux9_0_v_n;
  assign Vaux9_0_1_V_P = Vaux9_0_v_p;
  assign Vp_Vn_0_1_V_N = Vp_Vn_0_v_n;
  assign Vp_Vn_0_1_V_P = Vp_Vn_0_v_p;
  assign audio_clk_10MHz = processing_system7_0_FCLK_CLK1;
  assign axi_gpio_0_GPIO_TRI_I = CPU_1_PMOD_A_tri_i[3:0];
  assign axi_gpio_2_GPIO_TRI_I = PMODB_tri_i[7:0];
  assign axi_gpio_i2c_led_GPIO_TRI_I = MAIN_GPIO_INT_tri_i[3:0];
  assign axi_gpio_main_pmod_a_GPIO2_TRI_I = CPU_1_LED_tri_i[1:0];
  assign axi_uartlite_0_UART_RxD = MAIN_DB_UART_rxd;
  assign axi_uartlite_2_UART_RxD = DAC_DB_UART_rxd;
  assign bclk_0 = audio_codec_ctrl_0_bclk;
  assign codec_address_0[1:0] = audio_codec_ctrl_0_codec_address;
  assign i_i2c_scl_0_1 = i_i2c_scl_0;
  assign i_i2c_sda_0_1 = i_i2c_sda_0;
  assign lrclk_0 = audio_codec_ctrl_0_lrclk;
  assign processing_system7_0_IIC_1_SCL_I = IIC_1_scl_i;
  assign processing_system7_0_IIC_1_SDA_I = IIC_1_sda_i;
  assign processing_system7_0_UART_1_RxD = MAIN_UART_1_rxd;
  assign sdata_i_0_1 = sdata_i_0;
  assign sdata_o_0 = audio_codec_ctrl_0_sdata_o;
  system_audio_codec_ctrl_0_0 audio_codec_ctrl_0
       (.bclk(audio_codec_ctrl_0_bclk),
        .codec_address(audio_codec_ctrl_0_codec_address),
        .lrclk(audio_codec_ctrl_0_lrclk),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_main_M05_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_main_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_main_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_main_M05_AXI_AWADDR),
        .s_axi_awready(axi_interconnect_main_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_main_M05_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_main_M05_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_main_M05_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_main_M05_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_main_M05_AXI_RDATA),
        .s_axi_rready(axi_interconnect_main_M05_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_main_M05_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_main_M05_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_main_M05_AXI_WDATA),
        .s_axi_wready(axi_interconnect_main_M05_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_main_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_main_M05_AXI_WVALID),
        .sdata_i(sdata_i_0_1),
        .sdata_o(audio_codec_ctrl_0_sdata_o));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x40000000 32 > system blk_mem_gen_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_0_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .s_axi_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .s_axi_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .s_axi_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .s_axi_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .s_axi_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .s_axi_rready(axi_interconnect_1_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .s_axi_wready(axi_interconnect_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M00_AXI_WVALID));
  system_axi_fifo_mm_s_0_0 axi_fifo_mm_s_0
       (.axi_str_rxd_tdata(i2c_decoder_0_o_wdata),
        .axi_str_rxd_tlast(axi_fifo_mm_s_0_AXI_STR_TXD_TLAST),
        .axi_str_rxd_tready(axi_fifo_mm_s_0_axi_str_rxd_tready),
        .axi_str_rxd_tvalid(i2c_decoder_0_o_wen),
        .axi_str_txd_tlast(axi_fifo_mm_s_0_AXI_STR_TXD_TLAST),
        .axi_str_txd_tready(1'b1),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_main_M06_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_main_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_main_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_main_M06_AXI_AWADDR),
        .s_axi_awready(axi_interconnect_main_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_main_M06_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_main_M06_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_main_M06_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_main_M06_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_main_M06_AXI_RDATA),
        .s_axi_rready(axi_interconnect_main_M06_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_main_M06_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_main_M06_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_main_M06_AXI_WDATA),
        .s_axi_wready(axi_interconnect_main_M06_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_main_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_main_M06_AXI_WVALID));
  system_axi_gpio_3_0 axi_gpio_dac
       (.gpio2_io_o(axi_gpio_dac_GPIO2_TRI_O),
        .gpio_io_o(axi_gpio_3_GPIO_TRI_O),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_1_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_1_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .s_axi_rready(axi_interconnect_1_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .s_axi_wready(axi_interconnect_1_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M01_AXI_WVALID));
  system_axi_gpio_0_0 axi_gpio_main_int
       (.gpio_io_i(axi_gpio_i2c_led_GPIO_TRI_I),
        .ip2intc_irpt(axi_gpio_i2c_led_ip2intc_irpt),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_main_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_main_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_main_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_main_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_main_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_main_M04_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_main_M04_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_main_M04_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_main_M04_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_main_M04_AXI_RDATA),
        .s_axi_rready(axi_interconnect_main_M04_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_main_M04_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_main_M04_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_main_M04_AXI_WDATA),
        .s_axi_wready(axi_interconnect_main_M04_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_main_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_main_M04_AXI_WVALID));
  system_axi_gpio_1_0 axi_gpio_main_led
       (.gpio2_io_o(axi_gpio_main_led_GPIO2_TRI_O),
        .gpio_io_o(axi_gpio_1_GPIO_TRI_O),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  system_axi_gpio_0_1 axi_gpio_main_pmod_a
       (.gpio2_io_i(axi_gpio_main_pmod_a_GPIO2_TRI_I),
        .gpio2_io_o(axi_gpio_main_pmod_a_GPIO2_TRI_O),
        .gpio2_io_t(axi_gpio_main_pmod_a_GPIO2_TRI_T),
        .gpio_io_i(axi_gpio_0_GPIO_TRI_I),
        .gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .gpio_io_t(axi_gpio_0_GPIO_TRI_T),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_main_M07_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_main_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_main_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_main_M07_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_main_M07_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_main_M07_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_main_M07_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_main_M07_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_main_M07_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_main_M07_AXI_RDATA),
        .s_axi_rready(axi_interconnect_main_M07_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_main_M07_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_main_M07_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_main_M07_AXI_WDATA),
        .s_axi_wready(axi_interconnect_main_M07_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_main_M07_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_main_M07_AXI_WVALID));
  system_axi_gpio_2_0 axi_gpio_pmod
       (.gpio_io_i(axi_gpio_2_GPIO_TRI_I),
        .gpio_io_o(axi_gpio_2_GPIO_TRI_O),
        .gpio_io_t(axi_gpio_2_GPIO_TRI_T),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_dac_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_dac_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_dac_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_dac_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_dac_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_dac_M03_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_dac_M03_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_dac_M03_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_dac_M03_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_dac_M03_AXI_RDATA),
        .s_axi_rready(axi_interconnect_dac_M03_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_dac_M03_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_dac_M03_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_dac_M03_AXI_WDATA),
        .s_axi_wready(axi_interconnect_dac_M03_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_dac_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_dac_M03_AXI_WVALID));
  system_axi_intc_0_0 axi_intc_0
       (.intr(axi_timer_dac_interrupt),
        .irq(axi_intc_0_interrupt_INTERRUPT),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_dac_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_dac_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_dac_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_dac_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_dac_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_dac_M05_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_dac_M05_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_dac_M05_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_dac_M05_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_dac_M05_AXI_RDATA),
        .s_axi_rready(axi_interconnect_dac_M05_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_dac_M05_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_dac_M05_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_dac_M05_AXI_WDATA),
        .s_axi_wready(axi_interconnect_dac_M05_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_dac_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_dac_M05_AXI_WVALID));
  system_axi_interconnect_1_1 axi_interconnect_dac
       (.ACLK(microblaze_0_Clk),
        .ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI1_ARADDR),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI1_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI1_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI1_AWADDR),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI1_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI1_AWVALID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI1_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI1_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI1_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI1_RDATA),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI1_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI1_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI1_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI1_WDATA),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI1_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_M00_AXI1_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI1_WVALID),
        .M01_ACLK(microblaze_0_Clk),
        .M01_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_1_M01_AXI_WVALID),
        .M02_ACLK(microblaze_0_Clk),
        .M02_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M02_AXI_araddr(S01_AXI_1_ARADDR),
        .M02_AXI_arprot(S01_AXI_1_ARPROT),
        .M02_AXI_arready(S01_AXI_1_ARREADY),
        .M02_AXI_arvalid(S01_AXI_1_ARVALID),
        .M02_AXI_awaddr(S01_AXI_1_AWADDR),
        .M02_AXI_awprot(S01_AXI_1_AWPROT),
        .M02_AXI_awready(S01_AXI_1_AWREADY),
        .M02_AXI_awvalid(S01_AXI_1_AWVALID),
        .M02_AXI_bready(S01_AXI_1_BREADY),
        .M02_AXI_bresp(S01_AXI_1_BRESP),
        .M02_AXI_bvalid(S01_AXI_1_BVALID),
        .M02_AXI_rdata(S01_AXI_1_RDATA),
        .M02_AXI_rready(S01_AXI_1_RREADY),
        .M02_AXI_rresp(S01_AXI_1_RRESP),
        .M02_AXI_rvalid(S01_AXI_1_RVALID),
        .M02_AXI_wdata(S01_AXI_1_WDATA),
        .M02_AXI_wready(S01_AXI_1_WREADY),
        .M02_AXI_wstrb(S01_AXI_1_WSTRB),
        .M02_AXI_wvalid(S01_AXI_1_WVALID),
        .M03_ACLK(microblaze_0_Clk),
        .M03_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M03_AXI_araddr(axi_interconnect_dac_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_interconnect_dac_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_dac_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_dac_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_interconnect_dac_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_dac_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_dac_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_dac_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_dac_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_dac_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_dac_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_dac_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_dac_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_dac_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_dac_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_dac_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_dac_M03_AXI_WVALID),
        .M04_ACLK(microblaze_0_Clk),
        .M04_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M04_AXI_araddr(axi_interconnect_dac_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_interconnect_dac_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_interconnect_dac_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_dac_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_interconnect_dac_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_interconnect_dac_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_interconnect_dac_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_dac_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_dac_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_dac_M04_AXI_RDATA),
        .M04_AXI_rready(axi_interconnect_dac_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_dac_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_dac_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_dac_M04_AXI_WDATA),
        .M04_AXI_wready(axi_interconnect_dac_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_interconnect_dac_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_dac_M04_AXI_WVALID),
        .M05_ACLK(microblaze_0_Clk),
        .M05_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M05_AXI_araddr(axi_interconnect_dac_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_interconnect_dac_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_interconnect_dac_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_interconnect_dac_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_interconnect_dac_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_interconnect_dac_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_interconnect_dac_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_interconnect_dac_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_interconnect_dac_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_interconnect_dac_M05_AXI_RDATA),
        .M05_AXI_rready(axi_interconnect_dac_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_interconnect_dac_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_interconnect_dac_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_interconnect_dac_M05_AXI_WDATA),
        .M05_AXI_wready(axi_interconnect_dac_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_interconnect_dac_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_interconnect_dac_M05_AXI_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .S00_AXI_araddr(microblaze_1_M_AXI_DP_ARADDR),
        .S00_AXI_arprot(microblaze_1_M_AXI_DP_ARPROT),
        .S00_AXI_arready(microblaze_1_M_AXI_DP_ARREADY),
        .S00_AXI_arvalid(microblaze_1_M_AXI_DP_ARVALID),
        .S00_AXI_awaddr(microblaze_1_M_AXI_DP_AWADDR),
        .S00_AXI_awprot(microblaze_1_M_AXI_DP_AWPROT),
        .S00_AXI_awready(microblaze_1_M_AXI_DP_AWREADY),
        .S00_AXI_awvalid(microblaze_1_M_AXI_DP_AWVALID),
        .S00_AXI_bready(microblaze_1_M_AXI_DP_BREADY),
        .S00_AXI_bresp(microblaze_1_M_AXI_DP_BRESP),
        .S00_AXI_bvalid(microblaze_1_M_AXI_DP_BVALID),
        .S00_AXI_rdata(microblaze_1_M_AXI_DP_RDATA),
        .S00_AXI_rready(microblaze_1_M_AXI_DP_RREADY),
        .S00_AXI_rresp(microblaze_1_M_AXI_DP_RRESP),
        .S00_AXI_rvalid(microblaze_1_M_AXI_DP_RVALID),
        .S00_AXI_wdata(microblaze_1_M_AXI_DP_WDATA),
        .S00_AXI_wready(microblaze_1_M_AXI_DP_WREADY),
        .S00_AXI_wstrb(microblaze_1_M_AXI_DP_WSTRB),
        .S00_AXI_wvalid(microblaze_1_M_AXI_DP_WVALID));
  system_axi_interconnect_0_0 axi_interconnect_main
       (.ACLK(microblaze_0_Clk),
        .ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(microblaze_0_Clk),
        .M01_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_main_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_main_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_main_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_main_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_main_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_main_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_main_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_main_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_main_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_main_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_main_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_main_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_main_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_main_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_main_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_main_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_main_M01_AXI_WVALID),
        .M02_ACLK(microblaze_0_Clk),
        .M02_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M02_AXI_araddr(axi_interconnect_main_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_main_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_main_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_main_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_main_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_main_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_main_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_main_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_main_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_main_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_main_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_main_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_main_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_main_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_main_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_main_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_main_M02_AXI_WVALID),
        .M03_ACLK(microblaze_0_Clk),
        .M03_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M03_AXI_araddr(axi_interconnect_main_M03_AXI_ARADDR),
        .M03_AXI_arprot(axi_interconnect_main_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_interconnect_main_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_main_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_main_M03_AXI_AWADDR),
        .M03_AXI_awprot(axi_interconnect_main_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_interconnect_main_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_main_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_main_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_main_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_main_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_main_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_main_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_main_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_main_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_main_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_main_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_main_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_main_M03_AXI_WVALID),
        .M04_ACLK(microblaze_0_Clk),
        .M04_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M04_AXI_araddr(axi_interconnect_main_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_interconnect_main_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_interconnect_main_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_main_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_interconnect_main_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_interconnect_main_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_interconnect_main_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_main_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_main_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_main_M04_AXI_RDATA),
        .M04_AXI_rready(axi_interconnect_main_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_main_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_main_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_main_M04_AXI_WDATA),
        .M04_AXI_wready(axi_interconnect_main_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_interconnect_main_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_main_M04_AXI_WVALID),
        .M05_ACLK(microblaze_0_Clk),
        .M05_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M05_AXI_araddr(axi_interconnect_main_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_interconnect_main_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_interconnect_main_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_interconnect_main_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_interconnect_main_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_interconnect_main_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_interconnect_main_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_interconnect_main_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_interconnect_main_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_interconnect_main_M05_AXI_RDATA),
        .M05_AXI_rready(axi_interconnect_main_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_interconnect_main_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_interconnect_main_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_interconnect_main_M05_AXI_WDATA),
        .M05_AXI_wready(axi_interconnect_main_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_interconnect_main_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_interconnect_main_M05_AXI_WVALID),
        .M06_ACLK(microblaze_0_Clk),
        .M06_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M06_AXI_araddr(axi_interconnect_main_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_interconnect_main_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_interconnect_main_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_interconnect_main_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_interconnect_main_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_interconnect_main_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_interconnect_main_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_interconnect_main_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_interconnect_main_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_interconnect_main_M06_AXI_RDATA),
        .M06_AXI_rready(axi_interconnect_main_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_interconnect_main_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_interconnect_main_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_interconnect_main_M06_AXI_WDATA),
        .M06_AXI_wready(axi_interconnect_main_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_interconnect_main_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_interconnect_main_M06_AXI_WVALID),
        .M07_ACLK(microblaze_0_Clk),
        .M07_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M07_AXI_araddr(axi_interconnect_main_M07_AXI_ARADDR),
        .M07_AXI_arready(axi_interconnect_main_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_interconnect_main_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_interconnect_main_M07_AXI_AWADDR),
        .M07_AXI_awready(axi_interconnect_main_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_interconnect_main_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_interconnect_main_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_interconnect_main_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_interconnect_main_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_interconnect_main_M07_AXI_RDATA),
        .M07_AXI_rready(axi_interconnect_main_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_interconnect_main_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_interconnect_main_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_interconnect_main_M07_AXI_WDATA),
        .M07_AXI_wready(axi_interconnect_main_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_interconnect_main_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_interconnect_main_M07_AXI_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  system_axi_interconnect_1_0 axi_interconnect_share_mem
       (.ACLK(microblaze_0_Clk),
        .ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .S00_AXI_araddr(axi_interconnect_main_M03_AXI_ARADDR),
        .S00_AXI_arprot(axi_interconnect_main_M03_AXI_ARPROT),
        .S00_AXI_arready(axi_interconnect_main_M03_AXI_ARREADY),
        .S00_AXI_arvalid(axi_interconnect_main_M03_AXI_ARVALID),
        .S00_AXI_awaddr(axi_interconnect_main_M03_AXI_AWADDR),
        .S00_AXI_awprot(axi_interconnect_main_M03_AXI_AWPROT),
        .S00_AXI_awready(axi_interconnect_main_M03_AXI_AWREADY),
        .S00_AXI_awvalid(axi_interconnect_main_M03_AXI_AWVALID),
        .S00_AXI_bready(axi_interconnect_main_M03_AXI_BREADY),
        .S00_AXI_bresp(axi_interconnect_main_M03_AXI_BRESP),
        .S00_AXI_bvalid(axi_interconnect_main_M03_AXI_BVALID),
        .S00_AXI_rdata(axi_interconnect_main_M03_AXI_RDATA),
        .S00_AXI_rready(axi_interconnect_main_M03_AXI_RREADY),
        .S00_AXI_rresp(axi_interconnect_main_M03_AXI_RRESP),
        .S00_AXI_rvalid(axi_interconnect_main_M03_AXI_RVALID),
        .S00_AXI_wdata(axi_interconnect_main_M03_AXI_WDATA),
        .S00_AXI_wready(axi_interconnect_main_M03_AXI_WREADY),
        .S00_AXI_wstrb(axi_interconnect_main_M03_AXI_WSTRB),
        .S00_AXI_wvalid(axi_interconnect_main_M03_AXI_WVALID),
        .S01_ACLK(microblaze_0_Clk),
        .S01_ARESETN(rst_ps7_0_50M_peripheral_aresetn),
        .S01_AXI_araddr(S01_AXI_1_ARADDR),
        .S01_AXI_arprot(S01_AXI_1_ARPROT),
        .S01_AXI_arready(S01_AXI_1_ARREADY),
        .S01_AXI_arvalid(S01_AXI_1_ARVALID),
        .S01_AXI_awaddr(S01_AXI_1_AWADDR),
        .S01_AXI_awprot(S01_AXI_1_AWPROT),
        .S01_AXI_awready(S01_AXI_1_AWREADY),
        .S01_AXI_awvalid(S01_AXI_1_AWVALID),
        .S01_AXI_bready(S01_AXI_1_BREADY),
        .S01_AXI_bresp(S01_AXI_1_BRESP),
        .S01_AXI_bvalid(S01_AXI_1_BVALID),
        .S01_AXI_rdata(S01_AXI_1_RDATA),
        .S01_AXI_rready(S01_AXI_1_RREADY),
        .S01_AXI_rresp(S01_AXI_1_RRESP),
        .S01_AXI_rvalid(S01_AXI_1_RVALID),
        .S01_AXI_wdata(S01_AXI_1_WDATA),
        .S01_AXI_wready(S01_AXI_1_WREADY),
        .S01_AXI_wstrb(S01_AXI_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI_1_WVALID));
  system_axi_timer_0_0 axi_timer_dac
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_dac_interrupt),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_dac_M04_AXI_ARADDR[4:0]),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_dac_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_dac_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_dac_M04_AXI_AWADDR[4:0]),
        .s_axi_awready(axi_interconnect_dac_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_dac_M04_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_dac_M04_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_dac_M04_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_dac_M04_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_dac_M04_AXI_RDATA),
        .s_axi_rready(axi_interconnect_dac_M04_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_dac_M04_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_dac_M04_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_dac_M04_AXI_WDATA),
        .s_axi_wready(axi_interconnect_dac_M04_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_dac_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_dac_M04_AXI_WVALID));
  system_axi_uartlite_2_0 axi_uartlite_dac
       (.rx(axi_uartlite_2_UART_RxD),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_1_M00_AXI1_ARADDR[3:0]),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_1_M00_AXI1_ARREADY),
        .s_axi_arvalid(axi_interconnect_1_M00_AXI1_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M00_AXI1_AWADDR[3:0]),
        .s_axi_awready(axi_interconnect_1_M00_AXI1_AWREADY),
        .s_axi_awvalid(axi_interconnect_1_M00_AXI1_AWVALID),
        .s_axi_bready(axi_interconnect_1_M00_AXI1_BREADY),
        .s_axi_bresp(axi_interconnect_1_M00_AXI1_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M00_AXI1_BVALID),
        .s_axi_rdata(axi_interconnect_1_M00_AXI1_RDATA),
        .s_axi_rready(axi_interconnect_1_M00_AXI1_RREADY),
        .s_axi_rresp(axi_interconnect_1_M00_AXI1_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M00_AXI1_RVALID),
        .s_axi_wdata(axi_interconnect_1_M00_AXI1_WDATA),
        .s_axi_wready(axi_interconnect_1_M00_AXI1_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M00_AXI1_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M00_AXI1_WVALID),
        .tx(axi_uartlite_2_UART_TxD));
  system_axi_uartlite_0_0 axi_uartlite_main_db
       (.rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_main_M01_AXI_ARADDR[3:0]),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_main_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_main_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_main_M01_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_interconnect_main_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_main_M01_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_main_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_main_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_main_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_main_M01_AXI_RDATA),
        .s_axi_rready(axi_interconnect_main_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_main_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_main_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_main_M01_AXI_WDATA),
        .s_axi_wready(axi_interconnect_main_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_main_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_main_M01_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  system_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTB_WE));
  system_i2c_decoder_0_1 i2c_decoder_0
       (.fifo_ready(axi_fifo_mm_s_0_axi_str_rxd_tready),
        .i_clk(microblaze_0_Clk),
        .i_i2c_scl(i_i2c_scl_0_1),
        .i_i2c_sda(i_i2c_sda_0_1),
        .i_res_n(rst_ps7_0_50M_peripheral_aresetn),
        .o_wdata(i2c_decoder_0_o_wdata),
        .o_wen(i2c_decoder_0_o_wen));
  system_mdm_1_0 mdm_1
       (.Dbg_Capture_1(microblaze_1_debug_CAPTURE),
        .Dbg_Clk_1(microblaze_1_debug_CLK),
        .Dbg_Disable_1(microblaze_1_debug_DISABLE),
        .Dbg_Reg_En_1(microblaze_1_debug_REG_EN),
        .Dbg_Rst_1(microblaze_1_debug_RST),
        .Dbg_Shift_1(microblaze_1_debug_SHIFT),
        .Dbg_TDI_1(microblaze_1_debug_TDI),
        .Dbg_TDO_0(1'b0),
        .Dbg_TDO_1(microblaze_1_debug_TDO),
        .Dbg_TDO_2(1'b0),
        .Dbg_Update_1(microblaze_1_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
  (* BMM_INFO_PROCESSOR = "microblaze-le > system microblaze_dac_local_memory/dlmb_bram_if_cntlr system axi_bram_ctrl_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_microblaze_1_0 microblaze_dac
       (.Byte_Enable(microblaze_1_dlmb_1_BE),
        .Clk(microblaze_0_Clk),
        .DCE(microblaze_1_dlmb_1_CE),
        .DReady(microblaze_1_dlmb_1_READY),
        .DUE(microblaze_1_dlmb_1_UE),
        .DWait(microblaze_1_dlmb_1_WAIT),
        .D_AS(microblaze_1_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_1_dlmb_1_ABUS),
        .Data_Read(microblaze_1_dlmb_1_READDBUS),
        .Data_Write(microblaze_1_dlmb_1_WRITEDBUS),
        .Dbg_Capture(microblaze_1_debug_CAPTURE),
        .Dbg_Clk(microblaze_1_debug_CLK),
        .Dbg_Disable(microblaze_1_debug_DISABLE),
        .Dbg_Reg_En(microblaze_1_debug_REG_EN),
        .Dbg_Shift(microblaze_1_debug_SHIFT),
        .Dbg_TDI(microblaze_1_debug_TDI),
        .Dbg_TDO(microblaze_1_debug_TDO),
        .Dbg_Update(microblaze_1_debug_UPDATE),
        .Debug_Rst(microblaze_1_debug_RST),
        .ICE(microblaze_1_ilmb_1_CE),
        .IFetch(microblaze_1_ilmb_1_READSTROBE),
        .IReady(microblaze_1_ilmb_1_READY),
        .IUE(microblaze_1_ilmb_1_UE),
        .IWAIT(microblaze_1_ilmb_1_WAIT),
        .I_AS(microblaze_1_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_1_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_1_ilmb_1_ABUS),
        .Interrupt(axi_intc_0_interrupt_INTERRUPT),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DP_ARADDR(microblaze_1_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_1_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_1_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_1_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_1_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_1_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_1_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_1_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(microblaze_1_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(microblaze_1_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(microblaze_1_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(microblaze_1_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(microblaze_1_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(microblaze_1_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(microblaze_1_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(microblaze_1_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(microblaze_1_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(microblaze_1_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(microblaze_1_M_AXI_DP_WVALID),
        .Read_Strobe(microblaze_1_dlmb_1_READSTROBE),
        .Reset(rst_ps7_0_50M_mb_reset),
        .Write_Strobe(microblaze_1_dlmb_1_WRITESTROBE));
  microblaze_dac_local_memory_imp_4H3E64 microblaze_dac_local_memory
       (.DLMB_abus(microblaze_1_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_1_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_1_dlmb_1_BE),
        .DLMB_ce(microblaze_1_dlmb_1_CE),
        .DLMB_readdbus(microblaze_1_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_1_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_1_dlmb_1_READY),
        .DLMB_ue(microblaze_1_dlmb_1_UE),
        .DLMB_wait(microblaze_1_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_1_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_1_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_1_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_1_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_1_ilmb_1_CE),
        .ILMB_readdbus(microblaze_1_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_1_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_1_ilmb_1_READY),
        .ILMB_ue(microblaze_1_ilmb_1_UE),
        .ILMB_wait(microblaze_1_ilmb_1_WAIT),
        .LMB_Clk(microblaze_0_Clk),
        .SYS_Rst(rst_ps7_0_50M_bus_struct_reset));
  (* BMM_INFO_PROCESSOR = "arm > system axi_bram_ctrl_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(microblaze_0_Clk),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .I2C1_SCL_I(processing_system7_0_IIC_1_SCL_I),
        .I2C1_SCL_O(processing_system7_0_IIC_1_SCL_O),
        .I2C1_SCL_T(processing_system7_0_IIC_1_SCL_T),
        .I2C1_SDA_I(processing_system7_0_IIC_1_SDA_I),
        .I2C1_SDA_O(processing_system7_0_IIC_1_SDA_O),
        .I2C1_SDA_T(processing_system7_0_IIC_1_SDA_T),
        .IRQ_F2P({axi_gpio_i2c_led_ip2intc_irpt,axi_gpio_i2c_led_ip2intc_irpt}),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(microblaze_0_Clk),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .UART1_RX(processing_system7_0_UART_1_RxD),
        .UART1_TX(processing_system7_0_UART_1_TxD));
  system_rst_ps7_0_50M_0 rst_ps7_0_50M
       (.aux_reset_in(1'b1),
        .bus_struct_reset(rst_ps7_0_50M_bus_struct_reset),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_ps7_0_50M_mb_reset),
        .peripheral_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .slowest_sync_clk(microblaze_0_Clk));
  system_xadc_wiz_0_0 xadc_wiz_0
       (.s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_main_M02_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_main_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_main_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_main_M02_AXI_AWADDR[10:0]),
        .s_axi_awready(axi_interconnect_main_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_main_M02_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_main_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_main_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_main_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_main_M02_AXI_RDATA),
        .s_axi_rready(axi_interconnect_main_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_main_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_main_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_main_M02_AXI_WDATA),
        .s_axi_wready(axi_interconnect_main_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_main_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_main_M02_AXI_WVALID),
        .vauxn0(Vaux0_0_1_V_N),
        .vauxn1(Vaux1_0_1_V_N),
        .vauxn12(Vaux12_0_1_V_N),
        .vauxn13(Vaux13_0_1_V_N),
        .vauxn15(Vaux15_0_1_V_N),
        .vauxn5(Vaux5_0_1_V_N),
        .vauxn6(Vaux6_0_1_V_N),
        .vauxn8(Vaux8_0_1_V_N),
        .vauxn9(Vaux9_0_1_V_N),
        .vauxp0(Vaux0_0_1_V_P),
        .vauxp1(Vaux1_0_1_V_P),
        .vauxp12(Vaux12_0_1_V_P),
        .vauxp13(Vaux13_0_1_V_P),
        .vauxp15(Vaux15_0_1_V_P),
        .vauxp5(Vaux5_0_1_V_P),
        .vauxp6(Vaux6_0_1_V_P),
        .vauxp8(Vaux8_0_1_V_P),
        .vauxp9(Vaux9_0_1_V_P),
        .vn_in(Vp_Vn_0_1_V_N),
        .vp_in(Vp_Vn_0_1_V_P));
endmodule

module system_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_interconnect_main_ACLK_net;
  wire axi_interconnect_main_ARESETN_net;
  wire [31:0]axi_interconnect_main_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_main_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_main_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_main_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_main_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_main_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_main_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_main_to_s00_couplers_ARQOS;
  wire axi_interconnect_main_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_main_to_s00_couplers_ARSIZE;
  wire axi_interconnect_main_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_main_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_main_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_main_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_main_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_main_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_main_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_main_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_main_to_s00_couplers_AWQOS;
  wire axi_interconnect_main_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_main_to_s00_couplers_AWSIZE;
  wire axi_interconnect_main_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_main_to_s00_couplers_BID;
  wire axi_interconnect_main_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_main_to_s00_couplers_BRESP;
  wire axi_interconnect_main_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_main_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_main_to_s00_couplers_RID;
  wire axi_interconnect_main_to_s00_couplers_RLAST;
  wire axi_interconnect_main_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_main_to_s00_couplers_RRESP;
  wire axi_interconnect_main_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_main_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_main_to_s00_couplers_WID;
  wire axi_interconnect_main_to_s00_couplers_WLAST;
  wire axi_interconnect_main_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_main_to_s00_couplers_WSTRB;
  wire axi_interconnect_main_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_main_ARADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_main_ARREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_main_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_main_AWADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_main_AWREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_main_AWVALID;
  wire [0:0]m00_couplers_to_axi_interconnect_main_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_main_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_main_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_main_RDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_main_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_main_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_main_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_main_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_main_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_main_WSTRB;
  wire [0:0]m00_couplers_to_axi_interconnect_main_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_main_ARADDR;
  wire m01_couplers_to_axi_interconnect_main_ARREADY;
  wire m01_couplers_to_axi_interconnect_main_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_main_AWADDR;
  wire m01_couplers_to_axi_interconnect_main_AWREADY;
  wire m01_couplers_to_axi_interconnect_main_AWVALID;
  wire m01_couplers_to_axi_interconnect_main_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_main_BRESP;
  wire m01_couplers_to_axi_interconnect_main_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_main_RDATA;
  wire m01_couplers_to_axi_interconnect_main_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_main_RRESP;
  wire m01_couplers_to_axi_interconnect_main_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_main_WDATA;
  wire m01_couplers_to_axi_interconnect_main_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_main_WSTRB;
  wire m01_couplers_to_axi_interconnect_main_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_main_ARADDR;
  wire m02_couplers_to_axi_interconnect_main_ARREADY;
  wire m02_couplers_to_axi_interconnect_main_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_main_AWADDR;
  wire m02_couplers_to_axi_interconnect_main_AWREADY;
  wire m02_couplers_to_axi_interconnect_main_AWVALID;
  wire m02_couplers_to_axi_interconnect_main_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_main_BRESP;
  wire m02_couplers_to_axi_interconnect_main_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_main_RDATA;
  wire m02_couplers_to_axi_interconnect_main_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_main_RRESP;
  wire m02_couplers_to_axi_interconnect_main_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_main_WDATA;
  wire m02_couplers_to_axi_interconnect_main_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_main_WSTRB;
  wire m02_couplers_to_axi_interconnect_main_WVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_main_ARADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_main_ARPROT;
  wire [0:0]m03_couplers_to_axi_interconnect_main_ARREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_main_ARVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_main_AWADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_main_AWPROT;
  wire [0:0]m03_couplers_to_axi_interconnect_main_AWREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_main_AWVALID;
  wire [0:0]m03_couplers_to_axi_interconnect_main_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_main_BRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_main_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_main_RDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_main_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_main_RRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_main_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_main_WDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_main_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_main_WSTRB;
  wire [0:0]m03_couplers_to_axi_interconnect_main_WVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_main_ARADDR;
  wire m04_couplers_to_axi_interconnect_main_ARREADY;
  wire m04_couplers_to_axi_interconnect_main_ARVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_main_AWADDR;
  wire m04_couplers_to_axi_interconnect_main_AWREADY;
  wire m04_couplers_to_axi_interconnect_main_AWVALID;
  wire m04_couplers_to_axi_interconnect_main_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_main_BRESP;
  wire m04_couplers_to_axi_interconnect_main_BVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_main_RDATA;
  wire m04_couplers_to_axi_interconnect_main_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_main_RRESP;
  wire m04_couplers_to_axi_interconnect_main_RVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_main_WDATA;
  wire m04_couplers_to_axi_interconnect_main_WREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_main_WSTRB;
  wire m04_couplers_to_axi_interconnect_main_WVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_main_ARADDR;
  wire m05_couplers_to_axi_interconnect_main_ARREADY;
  wire m05_couplers_to_axi_interconnect_main_ARVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_main_AWADDR;
  wire m05_couplers_to_axi_interconnect_main_AWREADY;
  wire m05_couplers_to_axi_interconnect_main_AWVALID;
  wire m05_couplers_to_axi_interconnect_main_BREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_main_BRESP;
  wire m05_couplers_to_axi_interconnect_main_BVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_main_RDATA;
  wire m05_couplers_to_axi_interconnect_main_RREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_main_RRESP;
  wire m05_couplers_to_axi_interconnect_main_RVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_main_WDATA;
  wire m05_couplers_to_axi_interconnect_main_WREADY;
  wire [3:0]m05_couplers_to_axi_interconnect_main_WSTRB;
  wire m05_couplers_to_axi_interconnect_main_WVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_main_ARADDR;
  wire m06_couplers_to_axi_interconnect_main_ARREADY;
  wire m06_couplers_to_axi_interconnect_main_ARVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_main_AWADDR;
  wire m06_couplers_to_axi_interconnect_main_AWREADY;
  wire m06_couplers_to_axi_interconnect_main_AWVALID;
  wire m06_couplers_to_axi_interconnect_main_BREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_main_BRESP;
  wire m06_couplers_to_axi_interconnect_main_BVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_main_RDATA;
  wire m06_couplers_to_axi_interconnect_main_RREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_main_RRESP;
  wire m06_couplers_to_axi_interconnect_main_RVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_main_WDATA;
  wire m06_couplers_to_axi_interconnect_main_WREADY;
  wire [3:0]m06_couplers_to_axi_interconnect_main_WSTRB;
  wire m06_couplers_to_axi_interconnect_main_WVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_main_ARADDR;
  wire m07_couplers_to_axi_interconnect_main_ARREADY;
  wire m07_couplers_to_axi_interconnect_main_ARVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_main_AWADDR;
  wire m07_couplers_to_axi_interconnect_main_AWREADY;
  wire m07_couplers_to_axi_interconnect_main_AWVALID;
  wire m07_couplers_to_axi_interconnect_main_BREADY;
  wire [1:0]m07_couplers_to_axi_interconnect_main_BRESP;
  wire m07_couplers_to_axi_interconnect_main_BVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_main_RDATA;
  wire m07_couplers_to_axi_interconnect_main_RREADY;
  wire [1:0]m07_couplers_to_axi_interconnect_main_RRESP;
  wire m07_couplers_to_axi_interconnect_main_RVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_main_WDATA;
  wire m07_couplers_to_axi_interconnect_main_WREADY;
  wire [3:0]m07_couplers_to_axi_interconnect_main_WSTRB;
  wire m07_couplers_to_axi_interconnect_main_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [23:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [23:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_main_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_main_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_main_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_main_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_main_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_main_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_main_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_main_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_main_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_main_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_main_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_main_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_main_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_main_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_main_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_main_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_main_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_main_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_main_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_main_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_main_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_main_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_main_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_main_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_main_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_main_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_main_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_interconnect_main_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_interconnect_main_ARPROT;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_interconnect_main_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_interconnect_main_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_interconnect_main_AWPROT;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_interconnect_main_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_interconnect_main_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_interconnect_main_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_main_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_main_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_interconnect_main_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_interconnect_main_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_interconnect_main_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_interconnect_main_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_interconnect_main_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_interconnect_main_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_interconnect_main_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_main_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_interconnect_main_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_interconnect_main_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_interconnect_main_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_axi_interconnect_main_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_interconnect_main_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_axi_interconnect_main_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_interconnect_main_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_interconnect_main_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_interconnect_main_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_interconnect_main_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_interconnect_main_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_interconnect_main_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_interconnect_main_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_interconnect_main_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_interconnect_main_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_interconnect_main_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_interconnect_main_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_interconnect_main_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_interconnect_main_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_interconnect_main_WVALID;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_axi_interconnect_main_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_axi_interconnect_main_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_axi_interconnect_main_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_axi_interconnect_main_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_axi_interconnect_main_BREADY;
  assign M07_AXI_rready = m07_couplers_to_axi_interconnect_main_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_interconnect_main_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_interconnect_main_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_axi_interconnect_main_WVALID;
  assign S00_AXI_arready = axi_interconnect_main_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_main_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_main_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_main_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_main_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_main_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_main_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_main_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_main_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_main_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_main_to_s00_couplers_WREADY;
  assign axi_interconnect_main_ACLK_net = ACLK;
  assign axi_interconnect_main_ARESETN_net = ARESETN;
  assign axi_interconnect_main_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_main_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_main_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_main_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_main_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_main_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_main_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_main_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_main_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_main_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_main_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_main_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_main_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_main_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_main_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_main_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_main_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_main_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_main_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_main_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_main_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_main_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_main_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_main_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_main_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_main_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_main_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_main_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_main_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_main_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_main_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_main_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_main_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_main_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_main_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_interconnect_main_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_main_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_main_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_main_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_main_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_main_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_main_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_main_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_main_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_main_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_main_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_main_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_main_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_main_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_main_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_main_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_main_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_interconnect_main_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_interconnect_main_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_main_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_interconnect_main_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_main_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_main_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_interconnect_main_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_interconnect_main_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_interconnect_main_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_interconnect_main_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_main_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_interconnect_main_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_interconnect_main_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_main_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_interconnect_main_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_interconnect_main_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_interconnect_main_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_interconnect_main_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_interconnect_main_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_interconnect_main_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_interconnect_main_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_interconnect_main_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_interconnect_main_WREADY = M05_AXI_wready;
  assign m06_couplers_to_axi_interconnect_main_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_interconnect_main_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_interconnect_main_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_interconnect_main_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_interconnect_main_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_interconnect_main_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_interconnect_main_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_interconnect_main_WREADY = M06_AXI_wready;
  assign m07_couplers_to_axi_interconnect_main_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_axi_interconnect_main_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_axi_interconnect_main_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_interconnect_main_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_axi_interconnect_main_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_interconnect_main_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_interconnect_main_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_axi_interconnect_main_WREADY = M07_AXI_wready;
  m00_couplers_imp_B27CTP m00_couplers
       (.M_ACLK(axi_interconnect_main_ACLK_net),
        .M_ARESETN(axi_interconnect_main_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_main_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_main_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_main_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_main_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_main_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_main_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_main_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_main_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_main_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_main_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_main_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_main_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_main_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_main_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_main_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_main_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_main_WVALID),
        .S_ACLK(axi_interconnect_main_ACLK_net),
        .S_ARESETN(axi_interconnect_main_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_127IRLO m01_couplers
       (.M_ACLK(axi_interconnect_main_ACLK_net),
        .M_ARESETN(axi_interconnect_main_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_main_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_main_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_main_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_main_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_main_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_main_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_main_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_main_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_main_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_main_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_main_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_main_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_main_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_main_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_main_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_main_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_main_WVALID),
        .S_ACLK(axi_interconnect_main_ACLK_net),
        .S_ARESETN(axi_interconnect_main_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_18J3KY6 m02_couplers
       (.M_ACLK(axi_interconnect_main_ACLK_net),
        .M_ARESETN(axi_interconnect_main_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_main_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_main_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_main_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_main_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_main_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_main_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_main_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_main_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_main_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_main_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_main_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_main_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_main_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_main_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_main_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_main_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_main_WVALID),
        .S_ACLK(axi_interconnect_main_ACLK_net),
        .S_ARESETN(axi_interconnect_main_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_3WO5LR m03_couplers
       (.M_ACLK(axi_interconnect_main_ACLK_net),
        .M_ARESETN(axi_interconnect_main_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_main_ARADDR),
        .M_AXI_arprot(m03_couplers_to_axi_interconnect_main_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_main_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_main_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_main_AWADDR),
        .M_AXI_awprot(m03_couplers_to_axi_interconnect_main_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_main_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_main_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_main_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_main_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_main_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_main_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_main_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_main_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_main_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_main_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_main_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_main_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_main_WVALID),
        .S_ACLK(axi_interconnect_main_ACLK_net),
        .S_ARESETN(axi_interconnect_main_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1VOHX62 m04_couplers
       (.M_ACLK(axi_interconnect_main_ACLK_net),
        .M_ARESETN(axi_interconnect_main_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_main_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_main_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_main_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_main_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_main_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_main_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_main_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_main_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_main_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_main_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_main_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_main_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_main_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_main_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_main_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_interconnect_main_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_main_WVALID),
        .S_ACLK(axi_interconnect_main_ACLK_net),
        .S_ARESETN(axi_interconnect_main_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_PY44VV m05_couplers
       (.M_ACLK(axi_interconnect_main_ACLK_net),
        .M_ARESETN(axi_interconnect_main_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi_interconnect_main_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_interconnect_main_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_interconnect_main_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_interconnect_main_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_interconnect_main_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_interconnect_main_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_interconnect_main_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_interconnect_main_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_interconnect_main_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_interconnect_main_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_interconnect_main_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_interconnect_main_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_interconnect_main_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_interconnect_main_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_interconnect_main_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_interconnect_main_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_interconnect_main_WVALID),
        .S_ACLK(axi_interconnect_main_ACLK_net),
        .S_ARESETN(axi_interconnect_main_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_W9OWG9 m06_couplers
       (.M_ACLK(axi_interconnect_main_ACLK_net),
        .M_ARESETN(axi_interconnect_main_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_axi_interconnect_main_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_interconnect_main_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_interconnect_main_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_interconnect_main_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_interconnect_main_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_interconnect_main_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_interconnect_main_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_interconnect_main_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_interconnect_main_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_interconnect_main_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_interconnect_main_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_interconnect_main_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_interconnect_main_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_interconnect_main_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_interconnect_main_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_interconnect_main_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_interconnect_main_WVALID),
        .S_ACLK(axi_interconnect_main_ACLK_net),
        .S_ARESETN(axi_interconnect_main_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_1OIYOK8 m07_couplers
       (.M_ACLK(axi_interconnect_main_ACLK_net),
        .M_ARESETN(axi_interconnect_main_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_axi_interconnect_main_ARADDR),
        .M_AXI_arready(m07_couplers_to_axi_interconnect_main_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_interconnect_main_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_interconnect_main_AWADDR),
        .M_AXI_awready(m07_couplers_to_axi_interconnect_main_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi_interconnect_main_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_interconnect_main_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_interconnect_main_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_interconnect_main_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_interconnect_main_RDATA),
        .M_AXI_rready(m07_couplers_to_axi_interconnect_main_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_interconnect_main_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_interconnect_main_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_interconnect_main_WDATA),
        .M_AXI_wready(m07_couplers_to_axi_interconnect_main_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_interconnect_main_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_interconnect_main_WVALID),
        .S_ACLK(axi_interconnect_main_ACLK_net),
        .S_ARESETN(axi_interconnect_main_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  s00_couplers_imp_4J360S s00_couplers
       (.M_ACLK(axi_interconnect_main_ACLK_net),
        .M_ARESETN(axi_interconnect_main_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_main_ACLK_net),
        .S_ARESETN(axi_interconnect_main_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_main_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_main_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_main_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_main_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_main_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_main_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_main_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_main_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_main_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_main_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_main_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_main_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_main_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_main_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_main_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_main_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_main_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_main_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_main_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_main_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_main_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_main_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_main_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_main_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_main_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_main_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_main_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_main_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_main_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_main_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_main_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_main_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_main_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_main_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_main_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_main_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_main_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_main_to_s00_couplers_WVALID));
  system_xbar_6 xbar
       (.aclk(axi_interconnect_main_ACLK_net),
        .aresetn(axi_interconnect_main_ARESETN_net),
        .m_axi_araddr({xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[8:0]}),
        .m_axi_arready({xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[8:0]}),
        .m_axi_awready({xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module system_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [15:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [15:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [2:0]S01_AXI_arprot;
  output [0:0]S01_AXI_arready;
  input [0:0]S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [2:0]S01_AXI_awprot;
  output [0:0]S01_AXI_awready;
  input [0:0]S01_AXI_awvalid;
  input [0:0]S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  input [0:0]S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  output [0:0]S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wvalid;

  wire axi_interconnect_share_mem_ACLK_net;
  wire axi_interconnect_share_mem_ARESETN_net;
  wire [31:0]axi_interconnect_share_mem_to_s00_couplers_ARADDR;
  wire [2:0]axi_interconnect_share_mem_to_s00_couplers_ARPROT;
  wire [0:0]axi_interconnect_share_mem_to_s00_couplers_ARREADY;
  wire [0:0]axi_interconnect_share_mem_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_share_mem_to_s00_couplers_AWADDR;
  wire [2:0]axi_interconnect_share_mem_to_s00_couplers_AWPROT;
  wire [0:0]axi_interconnect_share_mem_to_s00_couplers_AWREADY;
  wire [0:0]axi_interconnect_share_mem_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_share_mem_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_share_mem_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_share_mem_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_share_mem_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_share_mem_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_share_mem_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_share_mem_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_share_mem_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_share_mem_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_share_mem_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_share_mem_to_s00_couplers_WVALID;
  wire [31:0]axi_interconnect_share_mem_to_s01_couplers_ARADDR;
  wire [2:0]axi_interconnect_share_mem_to_s01_couplers_ARPROT;
  wire [0:0]axi_interconnect_share_mem_to_s01_couplers_ARREADY;
  wire [0:0]axi_interconnect_share_mem_to_s01_couplers_ARVALID;
  wire [31:0]axi_interconnect_share_mem_to_s01_couplers_AWADDR;
  wire [2:0]axi_interconnect_share_mem_to_s01_couplers_AWPROT;
  wire [0:0]axi_interconnect_share_mem_to_s01_couplers_AWREADY;
  wire [0:0]axi_interconnect_share_mem_to_s01_couplers_AWVALID;
  wire [0:0]axi_interconnect_share_mem_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_share_mem_to_s01_couplers_BRESP;
  wire [0:0]axi_interconnect_share_mem_to_s01_couplers_BVALID;
  wire [31:0]axi_interconnect_share_mem_to_s01_couplers_RDATA;
  wire [0:0]axi_interconnect_share_mem_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_share_mem_to_s01_couplers_RRESP;
  wire [0:0]axi_interconnect_share_mem_to_s01_couplers_RVALID;
  wire [31:0]axi_interconnect_share_mem_to_s01_couplers_WDATA;
  wire [0:0]axi_interconnect_share_mem_to_s01_couplers_WREADY;
  wire [3:0]axi_interconnect_share_mem_to_s01_couplers_WSTRB;
  wire [0:0]axi_interconnect_share_mem_to_s01_couplers_WVALID;
  wire [15:0]m00_couplers_to_axi_interconnect_share_mem_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_share_mem_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_share_mem_ARCACHE;
  wire [7:0]m00_couplers_to_axi_interconnect_share_mem_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_share_mem_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_share_mem_ARPROT;
  wire m00_couplers_to_axi_interconnect_share_mem_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_share_mem_ARSIZE;
  wire m00_couplers_to_axi_interconnect_share_mem_ARVALID;
  wire [15:0]m00_couplers_to_axi_interconnect_share_mem_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_share_mem_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_share_mem_AWCACHE;
  wire [7:0]m00_couplers_to_axi_interconnect_share_mem_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_share_mem_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_share_mem_AWPROT;
  wire m00_couplers_to_axi_interconnect_share_mem_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_share_mem_AWSIZE;
  wire m00_couplers_to_axi_interconnect_share_mem_AWVALID;
  wire m00_couplers_to_axi_interconnect_share_mem_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_share_mem_BRESP;
  wire m00_couplers_to_axi_interconnect_share_mem_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_share_mem_RDATA;
  wire m00_couplers_to_axi_interconnect_share_mem_RLAST;
  wire m00_couplers_to_axi_interconnect_share_mem_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_share_mem_RRESP;
  wire m00_couplers_to_axi_interconnect_share_mem_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_share_mem_WDATA;
  wire m00_couplers_to_axi_interconnect_share_mem_WLAST;
  wire m00_couplers_to_axi_interconnect_share_mem_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_share_mem_WSTRB;
  wire m00_couplers_to_axi_interconnect_share_mem_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [0:0]s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [0:0]s01_couplers_to_xbar_AWVALID;
  wire [0:0]s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire [0:0]s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire [0:0]s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_AXI_araddr[15:0] = m00_couplers_to_axi_interconnect_share_mem_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_share_mem_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_share_mem_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_share_mem_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_share_mem_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_share_mem_ARPROT;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_share_mem_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_share_mem_ARVALID;
  assign M00_AXI_awaddr[15:0] = m00_couplers_to_axi_interconnect_share_mem_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_share_mem_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_share_mem_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_share_mem_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_share_mem_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_share_mem_AWPROT;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_share_mem_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_share_mem_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_share_mem_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_share_mem_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_share_mem_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_share_mem_WLAST;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_share_mem_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_share_mem_WVALID;
  assign S00_AXI_arready[0] = axi_interconnect_share_mem_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_share_mem_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_share_mem_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_share_mem_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_share_mem_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_interconnect_share_mem_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_share_mem_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_share_mem_to_s00_couplers_WREADY;
  assign S01_AXI_arready[0] = axi_interconnect_share_mem_to_s01_couplers_ARREADY;
  assign S01_AXI_awready[0] = axi_interconnect_share_mem_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_interconnect_share_mem_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid[0] = axi_interconnect_share_mem_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = axi_interconnect_share_mem_to_s01_couplers_RDATA;
  assign S01_AXI_rresp[1:0] = axi_interconnect_share_mem_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid[0] = axi_interconnect_share_mem_to_s01_couplers_RVALID;
  assign S01_AXI_wready[0] = axi_interconnect_share_mem_to_s01_couplers_WREADY;
  assign axi_interconnect_share_mem_ACLK_net = ACLK;
  assign axi_interconnect_share_mem_ARESETN_net = ARESETN;
  assign axi_interconnect_share_mem_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_share_mem_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_share_mem_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_share_mem_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_share_mem_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_share_mem_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_share_mem_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_share_mem_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_share_mem_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_share_mem_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_share_mem_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign axi_interconnect_share_mem_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_interconnect_share_mem_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_share_mem_to_s01_couplers_ARVALID = S01_AXI_arvalid[0];
  assign axi_interconnect_share_mem_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_interconnect_share_mem_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_share_mem_to_s01_couplers_AWVALID = S01_AXI_awvalid[0];
  assign axi_interconnect_share_mem_to_s01_couplers_BREADY = S01_AXI_bready[0];
  assign axi_interconnect_share_mem_to_s01_couplers_RREADY = S01_AXI_rready[0];
  assign axi_interconnect_share_mem_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign axi_interconnect_share_mem_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign axi_interconnect_share_mem_to_s01_couplers_WVALID = S01_AXI_wvalid[0];
  assign m00_couplers_to_axi_interconnect_share_mem_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_share_mem_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_share_mem_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_share_mem_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_share_mem_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_share_mem_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_share_mem_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_share_mem_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_share_mem_WREADY = M00_AXI_wready;
  m00_couplers_imp_G1LTFC m00_couplers
       (.M_ACLK(axi_interconnect_share_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_share_mem_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_share_mem_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_share_mem_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_share_mem_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_share_mem_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_share_mem_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_share_mem_ARPROT),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_share_mem_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_share_mem_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_share_mem_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_share_mem_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_share_mem_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_share_mem_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_share_mem_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_share_mem_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_share_mem_AWPROT),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_share_mem_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_share_mem_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_share_mem_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_share_mem_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_share_mem_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_share_mem_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_share_mem_RDATA),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_share_mem_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_share_mem_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_share_mem_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_share_mem_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_share_mem_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_share_mem_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_share_mem_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_share_mem_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_share_mem_WVALID),
        .S_ACLK(axi_interconnect_share_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_share_mem_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_3ZH609 s00_couplers
       (.M_ACLK(axi_interconnect_share_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_share_mem_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_share_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_share_mem_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_share_mem_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_interconnect_share_mem_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_share_mem_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_share_mem_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_share_mem_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_interconnect_share_mem_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_share_mem_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_share_mem_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_share_mem_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_share_mem_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_share_mem_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_share_mem_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_share_mem_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_share_mem_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_share_mem_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_share_mem_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_share_mem_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_share_mem_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_share_mem_to_s00_couplers_WVALID));
  s01_couplers_imp_18GAHBS s01_couplers
       (.M_ACLK(axi_interconnect_share_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_share_mem_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_share_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_share_mem_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_share_mem_to_s01_couplers_ARADDR),
        .S_AXI_arprot(axi_interconnect_share_mem_to_s01_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_share_mem_to_s01_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_share_mem_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_share_mem_to_s01_couplers_AWADDR),
        .S_AXI_awprot(axi_interconnect_share_mem_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_share_mem_to_s01_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_share_mem_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_share_mem_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_share_mem_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_share_mem_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_share_mem_to_s01_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_share_mem_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_share_mem_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_share_mem_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_share_mem_to_s01_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_share_mem_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_share_mem_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_share_mem_to_s01_couplers_WVALID));
  system_xbar_3 xbar
       (.aclk(axi_interconnect_share_mem_ACLK_net),
        .aresetn(axi_interconnect_share_mem_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module system_axi_interconnect_1_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire [31:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire axi_interconnect_dac_ACLK_net;
  wire axi_interconnect_dac_ARESETN_net;
  wire [31:0]m00_couplers_to_axi_interconnect_dac_ARADDR;
  wire m00_couplers_to_axi_interconnect_dac_ARREADY;
  wire m00_couplers_to_axi_interconnect_dac_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_dac_AWADDR;
  wire m00_couplers_to_axi_interconnect_dac_AWREADY;
  wire m00_couplers_to_axi_interconnect_dac_AWVALID;
  wire m00_couplers_to_axi_interconnect_dac_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_dac_BRESP;
  wire m00_couplers_to_axi_interconnect_dac_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_dac_RDATA;
  wire m00_couplers_to_axi_interconnect_dac_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_dac_RRESP;
  wire m00_couplers_to_axi_interconnect_dac_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_dac_WDATA;
  wire m00_couplers_to_axi_interconnect_dac_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_dac_WSTRB;
  wire m00_couplers_to_axi_interconnect_dac_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_dac_ARADDR;
  wire m01_couplers_to_axi_interconnect_dac_ARREADY;
  wire m01_couplers_to_axi_interconnect_dac_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_dac_AWADDR;
  wire m01_couplers_to_axi_interconnect_dac_AWREADY;
  wire m01_couplers_to_axi_interconnect_dac_AWVALID;
  wire m01_couplers_to_axi_interconnect_dac_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_dac_BRESP;
  wire m01_couplers_to_axi_interconnect_dac_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_dac_RDATA;
  wire m01_couplers_to_axi_interconnect_dac_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_dac_RRESP;
  wire m01_couplers_to_axi_interconnect_dac_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_dac_WDATA;
  wire m01_couplers_to_axi_interconnect_dac_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_dac_WSTRB;
  wire m01_couplers_to_axi_interconnect_dac_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_dac_ARADDR;
  wire [2:0]m02_couplers_to_axi_interconnect_dac_ARPROT;
  wire [0:0]m02_couplers_to_axi_interconnect_dac_ARREADY;
  wire [0:0]m02_couplers_to_axi_interconnect_dac_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_dac_AWADDR;
  wire [2:0]m02_couplers_to_axi_interconnect_dac_AWPROT;
  wire [0:0]m02_couplers_to_axi_interconnect_dac_AWREADY;
  wire [0:0]m02_couplers_to_axi_interconnect_dac_AWVALID;
  wire [0:0]m02_couplers_to_axi_interconnect_dac_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_dac_BRESP;
  wire [0:0]m02_couplers_to_axi_interconnect_dac_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_dac_RDATA;
  wire [0:0]m02_couplers_to_axi_interconnect_dac_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_dac_RRESP;
  wire [0:0]m02_couplers_to_axi_interconnect_dac_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_dac_WDATA;
  wire [0:0]m02_couplers_to_axi_interconnect_dac_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_dac_WSTRB;
  wire [0:0]m02_couplers_to_axi_interconnect_dac_WVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_dac_ARADDR;
  wire [0:0]m03_couplers_to_axi_interconnect_dac_ARREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_dac_ARVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_dac_AWADDR;
  wire [0:0]m03_couplers_to_axi_interconnect_dac_AWREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_dac_AWVALID;
  wire [0:0]m03_couplers_to_axi_interconnect_dac_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_dac_BRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_dac_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_dac_RDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_dac_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_dac_RRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_dac_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_dac_WDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_dac_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_dac_WSTRB;
  wire [0:0]m03_couplers_to_axi_interconnect_dac_WVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_dac_ARADDR;
  wire m04_couplers_to_axi_interconnect_dac_ARREADY;
  wire m04_couplers_to_axi_interconnect_dac_ARVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_dac_AWADDR;
  wire m04_couplers_to_axi_interconnect_dac_AWREADY;
  wire m04_couplers_to_axi_interconnect_dac_AWVALID;
  wire m04_couplers_to_axi_interconnect_dac_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_dac_BRESP;
  wire m04_couplers_to_axi_interconnect_dac_BVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_dac_RDATA;
  wire m04_couplers_to_axi_interconnect_dac_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_dac_RRESP;
  wire m04_couplers_to_axi_interconnect_dac_RVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_dac_WDATA;
  wire m04_couplers_to_axi_interconnect_dac_WREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_dac_WSTRB;
  wire m04_couplers_to_axi_interconnect_dac_WVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_dac_ARADDR;
  wire m05_couplers_to_axi_interconnect_dac_ARREADY;
  wire m05_couplers_to_axi_interconnect_dac_ARVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_dac_AWADDR;
  wire m05_couplers_to_axi_interconnect_dac_AWREADY;
  wire m05_couplers_to_axi_interconnect_dac_AWVALID;
  wire m05_couplers_to_axi_interconnect_dac_BREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_dac_BRESP;
  wire m05_couplers_to_axi_interconnect_dac_BVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_dac_RDATA;
  wire m05_couplers_to_axi_interconnect_dac_RREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_dac_RRESP;
  wire m05_couplers_to_axi_interconnect_dac_RVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_dac_WDATA;
  wire m05_couplers_to_axi_interconnect_dac_WREADY;
  wire [3:0]m05_couplers_to_axi_interconnect_dac_WSTRB;
  wire m05_couplers_to_axi_interconnect_dac_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s00_mmu_M_AXI_ARADDR;
  wire [2:0]s00_mmu_M_AXI_ARPROT;
  wire s00_mmu_M_AXI_ARREADY;
  wire s00_mmu_M_AXI_ARVALID;
  wire [31:0]s00_mmu_M_AXI_AWADDR;
  wire [2:0]s00_mmu_M_AXI_AWPROT;
  wire s00_mmu_M_AXI_AWREADY;
  wire s00_mmu_M_AXI_AWVALID;
  wire s00_mmu_M_AXI_BREADY;
  wire [1:0]s00_mmu_M_AXI_BRESP;
  wire s00_mmu_M_AXI_BVALID;
  wire [31:0]s00_mmu_M_AXI_RDATA;
  wire s00_mmu_M_AXI_RREADY;
  wire [1:0]s00_mmu_M_AXI_RRESP;
  wire s00_mmu_M_AXI_RVALID;
  wire [31:0]s00_mmu_M_AXI_WDATA;
  wire s00_mmu_M_AXI_WREADY;
  wire [3:0]s00_mmu_M_AXI_WSTRB;
  wire s00_mmu_M_AXI_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [17:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [17:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_dac_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_dac_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_dac_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_dac_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_dac_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_dac_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_dac_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_dac_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_dac_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_dac_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_dac_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_dac_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_dac_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_dac_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_dac_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_dac_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_dac_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_dac_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_dac_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_axi_interconnect_dac_ARPROT;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi_interconnect_dac_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_dac_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_axi_interconnect_dac_AWPROT;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi_interconnect_dac_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi_interconnect_dac_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi_interconnect_dac_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_dac_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_dac_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi_interconnect_dac_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_interconnect_dac_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_interconnect_dac_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_interconnect_dac_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_interconnect_dac_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_interconnect_dac_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_interconnect_dac_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_dac_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_dac_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_interconnect_dac_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_interconnect_dac_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_interconnect_dac_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_interconnect_dac_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_interconnect_dac_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_interconnect_dac_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_interconnect_dac_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_dac_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_interconnect_dac_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_interconnect_dac_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_interconnect_dac_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_axi_interconnect_dac_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_interconnect_dac_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_axi_interconnect_dac_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_interconnect_dac_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_interconnect_dac_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_interconnect_dac_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_interconnect_dac_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_interconnect_dac_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[31:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[31:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign axi_interconnect_dac_ACLK_net = ACLK;
  assign axi_interconnect_dac_ARESETN_net = ARESETN;
  assign m00_couplers_to_axi_interconnect_dac_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_dac_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_dac_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_dac_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_dac_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_dac_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_dac_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_dac_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_dac_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_dac_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_dac_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_dac_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_dac_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_dac_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_dac_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_dac_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_dac_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi_interconnect_dac_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi_interconnect_dac_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_dac_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi_interconnect_dac_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_dac_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_dac_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi_interconnect_dac_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_axi_interconnect_dac_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_interconnect_dac_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_interconnect_dac_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_dac_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_interconnect_dac_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_dac_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_dac_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_interconnect_dac_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_interconnect_dac_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_interconnect_dac_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_interconnect_dac_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_dac_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_interconnect_dac_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_interconnect_dac_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_dac_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_interconnect_dac_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_interconnect_dac_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_interconnect_dac_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_interconnect_dac_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_interconnect_dac_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_interconnect_dac_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_interconnect_dac_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_interconnect_dac_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_interconnect_dac_WREADY = M05_AXI_wready;
  m00_couplers_imp_1VEEYFQ m00_couplers
       (.M_ACLK(axi_interconnect_dac_ACLK_net),
        .M_ARESETN(axi_interconnect_dac_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_dac_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_dac_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_dac_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_dac_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_dac_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_dac_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_dac_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_dac_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_dac_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_dac_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_dac_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_dac_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_dac_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_dac_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_dac_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_dac_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_dac_WVALID),
        .S_ACLK(axi_interconnect_dac_ACLK_net),
        .S_ARESETN(axi_interconnect_dac_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_PO2DS7 m01_couplers
       (.M_ACLK(axi_interconnect_dac_ACLK_net),
        .M_ARESETN(axi_interconnect_dac_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_dac_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_dac_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_dac_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_dac_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_dac_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_dac_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_dac_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_dac_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_dac_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_dac_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_dac_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_dac_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_dac_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_dac_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_dac_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_dac_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_dac_WVALID),
        .S_ACLK(axi_interconnect_dac_ACLK_net),
        .S_ARESETN(axi_interconnect_dac_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_WJL41H m02_couplers
       (.M_ACLK(axi_interconnect_dac_ACLK_net),
        .M_ARESETN(axi_interconnect_dac_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_dac_ARADDR),
        .M_AXI_arprot(m02_couplers_to_axi_interconnect_dac_ARPROT),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_dac_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_dac_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_dac_AWADDR),
        .M_AXI_awprot(m02_couplers_to_axi_interconnect_dac_AWPROT),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_dac_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_dac_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_dac_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_dac_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_dac_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_dac_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_dac_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_dac_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_dac_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_dac_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_dac_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_dac_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_dac_WVALID),
        .S_ACLK(axi_interconnect_dac_ACLK_net),
        .S_ARESETN(axi_interconnect_dac_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1OSW4KK m03_couplers
       (.M_ACLK(axi_interconnect_dac_ACLK_net),
        .M_ARESETN(axi_interconnect_dac_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_dac_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_dac_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_dac_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_dac_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_dac_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_dac_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_dac_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_dac_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_dac_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_dac_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_dac_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_dac_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_dac_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_dac_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_dac_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_dac_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_dac_WVALID),
        .S_ACLK(axi_interconnect_dac_ACLK_net),
        .S_ARESETN(axi_interconnect_dac_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_AS4AQ9 m04_couplers
       (.M_ACLK(axi_interconnect_dac_ACLK_net),
        .M_ARESETN(axi_interconnect_dac_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_dac_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_dac_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_dac_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_dac_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_dac_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_dac_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_dac_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_dac_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_dac_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_dac_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_dac_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_dac_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_dac_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_dac_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_dac_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_interconnect_dac_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_dac_WVALID),
        .S_ACLK(axi_interconnect_dac_ACLK_net),
        .S_ARESETN(axi_interconnect_dac_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_11XGXJ4 m05_couplers
       (.M_ACLK(axi_interconnect_dac_ACLK_net),
        .M_ARESETN(axi_interconnect_dac_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi_interconnect_dac_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_interconnect_dac_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_interconnect_dac_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_interconnect_dac_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_interconnect_dac_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_interconnect_dac_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_interconnect_dac_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_interconnect_dac_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_interconnect_dac_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_interconnect_dac_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_interconnect_dac_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_interconnect_dac_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_interconnect_dac_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_interconnect_dac_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_interconnect_dac_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_interconnect_dac_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_interconnect_dac_WVALID),
        .S_ACLK(axi_interconnect_dac_ACLK_net),
        .S_ARESETN(axi_interconnect_dac_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  s00_couplers_imp_1IROKLJ s00_couplers
       (.M_ACLK(axi_interconnect_dac_ACLK_net),
        .M_ARESETN(axi_interconnect_dac_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_dac_ACLK_net),
        .S_ARESETN(axi_interconnect_dac_ARESETN_net),
        .S_AXI_araddr(s00_mmu_M_AXI_ARADDR),
        .S_AXI_arprot(s00_mmu_M_AXI_ARPROT),
        .S_AXI_arready(s00_mmu_M_AXI_ARREADY),
        .S_AXI_arvalid(s00_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s00_mmu_M_AXI_AWADDR),
        .S_AXI_awprot(s00_mmu_M_AXI_AWPROT),
        .S_AXI_awready(s00_mmu_M_AXI_AWREADY),
        .S_AXI_awvalid(s00_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s00_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s00_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s00_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s00_mmu_M_AXI_RDATA),
        .S_AXI_rready(s00_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s00_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s00_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s00_mmu_M_AXI_WDATA),
        .S_AXI_wready(s00_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s00_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s00_mmu_M_AXI_WVALID));
  system_s00_mmu_0 s00_mmu
       (.aclk(axi_interconnect_dac_ACLK_net),
        .aresetn(axi_interconnect_dac_ARESETN_net),
        .m_axi_araddr(s00_mmu_M_AXI_ARADDR),
        .m_axi_arprot(s00_mmu_M_AXI_ARPROT),
        .m_axi_arready(s00_mmu_M_AXI_ARREADY),
        .m_axi_arvalid(s00_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s00_mmu_M_AXI_AWADDR),
        .m_axi_awprot(s00_mmu_M_AXI_AWPROT),
        .m_axi_awready(s00_mmu_M_AXI_AWREADY),
        .m_axi_awvalid(s00_mmu_M_AXI_AWVALID),
        .m_axi_bready(s00_mmu_M_AXI_BREADY),
        .m_axi_bresp(s00_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s00_mmu_M_AXI_BVALID),
        .m_axi_rdata(s00_mmu_M_AXI_RDATA),
        .m_axi_rready(s00_mmu_M_AXI_RREADY),
        .m_axi_rresp(s00_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s00_mmu_M_AXI_RVALID),
        .m_axi_wdata(s00_mmu_M_AXI_WDATA),
        .m_axi_wready(s00_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s00_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s00_mmu_M_AXI_WVALID),
        .s_axi_araddr(S00_AXI_1_ARADDR),
        .s_axi_arprot(S00_AXI_1_ARPROT),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arvalid(S00_AXI_1_ARVALID),
        .s_axi_awaddr(S00_AXI_1_AWADDR),
        .s_axi_awprot(S00_AXI_1_AWPROT),
        .s_axi_awready(S00_AXI_1_AWREADY),
        .s_axi_awvalid(S00_AXI_1_AWVALID),
        .s_axi_bready(S00_AXI_1_BREADY),
        .s_axi_bresp(S00_AXI_1_BRESP),
        .s_axi_bvalid(S00_AXI_1_BVALID),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rready(S00_AXI_1_RREADY),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata(S00_AXI_1_WDATA),
        .s_axi_wready(S00_AXI_1_WREADY),
        .s_axi_wstrb(S00_AXI_1_WSTRB),
        .s_axi_wvalid(S00_AXI_1_WVALID));
  system_xbar_4 xbar
       (.aclk(axi_interconnect_dac_ACLK_net),
        .aresetn(axi_interconnect_dac_ARESETN_net),
        .m_axi_araddr({xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m02_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[5:0]}),
        .m_axi_arready({xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m02_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[5:0]}),
        .m_axi_awready({xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
