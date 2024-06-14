// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:i2c_decoder:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_i2c_decoder_0_1 (
  i_clk,
  i_res_n,
  i_i2c_scl,
  i_i2c_sda,
  fifo_ready,
  i2c_db,
  i2c_db_scl,
  i2c_db_sda,
  i2c_db_start,
  i2c_db_stop,
  o_wen,
  o_wdata
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
input wire i_res_n;
input wire i_i2c_scl;
input wire i_i2c_sda;
input wire fifo_ready;
output wire i2c_db;
output wire i2c_db_scl;
output wire i2c_db_sda;
output wire i2c_db_start;
output wire i2c_db_stop;
output wire o_wen;
output wire [31 : 0] o_wdata;

  i2c_decoder inst (
    .i_clk(i_clk),
    .i_res_n(i_res_n),
    .i_i2c_scl(i_i2c_scl),
    .i_i2c_sda(i_i2c_sda),
    .fifo_ready(fifo_ready),
    .i2c_db(i2c_db),
    .i2c_db_scl(i2c_db_scl),
    .i2c_db_sda(i2c_db_sda),
    .i2c_db_start(i2c_db_start),
    .i2c_db_stop(i2c_db_stop),
    .o_wen(o_wen),
    .o_wdata(o_wdata)
  );
endmodule
