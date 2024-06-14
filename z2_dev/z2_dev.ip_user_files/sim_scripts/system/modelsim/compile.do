vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_12
vlib modelsim_lib/msim/processing_system7_vip_v1_0_14
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_v3_2_23
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_28
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_26
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_25
vlib modelsim_lib/msim/axi_crossbar_v2_1_27
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_uartlite_v2_0_30
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_6
vlib modelsim_lib/msim/blk_mem_gen_v8_4_5
vlib modelsim_lib/msim/microblaze_v11_0_9
vlib modelsim_lib/msim/lmb_v10_v3_0_12
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_21
vlib modelsim_lib/msim/axi_timer_v2_0_28
vlib modelsim_lib/msim/axi_intc_v4_1_17
vlib modelsim_lib/msim/lib_fifo_v1_0_16
vlib modelsim_lib/msim/axi_fifo_mm_s_v4_2_8
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_26
vlib modelsim_lib/msim/axi_mmu_v2_1_24

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 modelsim_lib/msim/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 modelsim_lib/msim/processing_system7_vip_v1_0_14
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_23 modelsim_lib/msim/mdm_v3_2_23
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 modelsim_lib/msim/axi_gpio_v2_0_28
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 modelsim_lib/msim/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 modelsim_lib/msim/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 modelsim_lib/msim/axi_crossbar_v2_1_27
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_30 modelsim_lib/msim/axi_uartlite_v2_0_30
vmap axi_bram_ctrl_v4_1_6 modelsim_lib/msim/axi_bram_ctrl_v4_1_6
vmap blk_mem_gen_v8_4_5 modelsim_lib/msim/blk_mem_gen_v8_4_5
vmap microblaze_v11_0_9 modelsim_lib/msim/microblaze_v11_0_9
vmap lmb_v10_v3_0_12 modelsim_lib/msim/lmb_v10_v3_0_12
vmap lmb_bram_if_cntlr_v4_0_21 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_21
vmap axi_timer_v2_0_28 modelsim_lib/msim/axi_timer_v2_0_28
vmap axi_intc_v4_1_17 modelsim_lib/msim/axi_intc_v4_1_17
vmap lib_fifo_v1_0_16 modelsim_lib/msim/lib_fifo_v1_0_16
vmap axi_fifo_mm_s_v4_2_8 modelsim_lib/msim/axi_fifo_mm_s_v4_2_8
vmap axi_protocol_converter_v2_1_26 modelsim_lib/msim/axi_protocol_converter_v2_1_26
vmap axi_mmu_v2_1_24 modelsim_lib/msim/axi_mmu_v2_1_24

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_rst_ps7_0_50M_0/sim/system_rst_ps7_0_50M_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_23  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/b8f4/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_mdm_1_0/sim/system_mdm_1_0.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_gpio_1_0/sim/system_axi_gpio_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_6/sim/system_xbar_6.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_gpio_2_0/sim/system_axi_gpio_2_0.vhd" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_30  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/5d2b/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_uartlite_0_0/sim/system_axi_uartlite_0_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_6  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/3c31/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_blk_mem_gen_0_0/sim/system_blk_mem_gen_0_0.v" \
"../../../bd/system/ip/system_xbar_3/sim/system_xbar_3.v" \

vcom -work xil_defaultlib  -93 \
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

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.v" \

vcom -work microblaze_v11_0_9  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/057e/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_microblaze_1_0/sim/system_microblaze_1_0.vhd" \

vcom -work lmb_v10_v3_0_12  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_dlmb_v10_1/sim/system_dlmb_v10_1.vhd" \
"../../../bd/system/ip/system_ilmb_v10_1/sim/system_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_21  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/a177/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_dlmb_bram_if_cntlr_1/sim/system_dlmb_bram_if_cntlr_1.vhd" \
"../../../bd/system/ip/system_ilmb_bram_if_cntlr_1/sim/system_ilmb_bram_if_cntlr_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_lmb_bram_1/sim/system_lmb_bram_1.v" \
"../../../bd/system/ip/system_xbar_4/sim/system_xbar_4.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_uartlite_2_0/sim/system_axi_uartlite_2_0.vhd" \
"../../../bd/system/ip/system_axi_gpio_3_0/sim/system_axi_gpio_3_0.vhd" \

vcom -work axi_timer_v2_0_28  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/2389/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_timer_0_0/sim/system_axi_timer_0_0.vhd" \

vcom -work axi_intc_v4_1_17  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_intc_0_0/sim/system_axi_intc_0_0.vhd" \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vcom -work lib_fifo_v1_0_16  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_2_8  -93 \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/f751/hdl/axi_fifo_mm_s_v4_2_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_fifo_mm_s_0_0/sim/system_axi_fifo_mm_s_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ipshared/f3ac/src/glitch_filter.v" \
"../../../bd/system/ipshared/f3ac/src/i2c_decoder.v" \
"../../../bd/system/ip/system_i2c_decoder_0_1/sim/system_i2c_decoder_0_1.v" \

vcom -work xil_defaultlib  -93 \
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

vlog -work axi_protocol_converter_v2_1_26  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \

vlog -work axi_mmu_v2_1_24  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../z2_dev.gen/sources_1/bd/system/ipshared/1b83/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../z2_dev.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_s00_mmu_0/sim/system_s00_mmu_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

