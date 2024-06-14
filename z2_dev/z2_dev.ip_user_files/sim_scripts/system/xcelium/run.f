-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_14 -sv \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_ps7_0_50M_0/sim/system_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mdm_v3_2_23 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/b8f4/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_mdm_1_0/sim/system_mdm_1_0.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_28 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_gpio_1_0/sim/system_axi_gpio_1_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xbar_6/sim/system_xbar_6.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_gpio_2_0/sim/system_axi_gpio_2_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_30 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/5d2b/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_uartlite_0_0/sim/system_axi_uartlite_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_6 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/3c31/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_blk_mem_gen_0_0/sim/system_blk_mem_gen_0_0.v" \
  "../../../bd/system/ip/system_xbar_3/sim/system_xbar_3.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_conv_funs_pkg.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_proc_common_pkg.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_ipif_pkg.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_family_support.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_family.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_soft_reset.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_pselect_f.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_address_decoder.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_slave_attachment.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_interrupt_control.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_axi_lite_ipif.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_xadc_core_drp.vhd" \
  "../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_axi_xadc.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_9 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/057e/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_microblaze_1_0/sim/system_microblaze_1_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_12 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_dlmb_v10_1/sim/system_dlmb_v10_1.vhd" \
  "../../../bd/system/ip/system_ilmb_v10_1/sim/system_ilmb_v10_1.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_21 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/a177/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_dlmb_bram_if_cntlr_1/sim/system_dlmb_bram_if_cntlr_1.vhd" \
  "../../../bd/system/ip/system_ilmb_bram_if_cntlr_1/sim/system_ilmb_bram_if_cntlr_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_lmb_bram_1/sim/system_lmb_bram_1.v" \
  "../../../bd/system/ip/system_xbar_4/sim/system_xbar_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_uartlite_2_0/sim/system_axi_uartlite_2_0.vhd" \
  "../../../bd/system/ip/system_axi_gpio_3_0/sim/system_axi_gpio_3_0.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_28 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/2389/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_timer_0_0/sim/system_axi_timer_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_17 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_intc_0_0/sim/system_axi_intc_0_0.vhd" \
  "../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_16 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_fifo_mm_s_v4_2_8 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/f751/hdl/axi_fifo_mm_s_v4_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_fifo_mm_s_0_0/sim/system_axi_fifo_mm_s_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ipshared/f3ac/src/glitch_filter.v" \
  "../../../bd/system/ipshared/f3ac/src/i2c_decoder.v" \
  "../../../bd/system/ip/system_i2c_decoder_0_1/sim/system_i2c_decoder_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ipshared/f35b/src/family_support.vhd" \
  "../../../bd/system/ipshared/f35b/src/common_types.vhd" \
  "../../../bd/system/ipshared/f35b/src/pselect_f.vhd" \
  "../../../bd/system/ipshared/f35b/src/address_decoder.vhd" \
  "../../../bd/system/ipshared/f35b/src/slave_attachment.vhd" \
  "../../../bd/system/ipshared/f35b/src/axi_lite_ipif.vhd" \
  "../../../bd/system/ipshared/f35b/src/user_logic.vhd" \
  "../../../bd/system/ipshared/f35b/src/iis_deser.vhd" \
  "../../../bd/system/ipshared/f35b/src/iis_ser.vhd" \
  "../../../bd/system/ipshared/f35b/src/i2s_ctrl.vhd" \
  "../../../bd/system/ip/system_audio_codec_ctrl_0_0/sim/system_audio_codec_ctrl_0_0.vhd" \
  "../../../bd/system/ip/system_axi_gpio_0_1/sim/system_axi_gpio_0_1.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
  "../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
-endlib
-makelib xcelium_lib/axi_mmu_v2_1_24 \
  "../../../../z2_dev.gen/sources_1/bd/system/ipshared/1b83/hdl/axi_mmu_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_s00_mmu_0/sim/system_s00_mmu_0.v" \
  "../../../bd/system/sim/system.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

