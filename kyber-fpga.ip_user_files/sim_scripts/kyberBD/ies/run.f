-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kyberBD/ip/kyberBD_processing_system7_0_0/sim/kyberBD_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kyberBD/ip/kyberBD_proc_sys_reset_0_0/sim/kyberBD_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_19 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_18 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_20 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kyberBD/ip/kyberBD_xbar_0/sim/kyberBD_xbar_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_21 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kyberBD/ip/kyberBD_axi_gpio_0_0/sim/kyberBD_axi_gpio_0_0.vhd" \
  "../../../bd/kyberBD/ipshared/23a6/hdl/timer2_v1_0.vhd" \
  "../../../bd/kyberBD/ip/kyberBD_timer2_0_0/sim/kyberBD_timer2_0_0.vhd" \
  "../../../bd/kyberBD/ipshared/4bb8/hdl/montgomery_reduction_v1_0.vhd" \
  "../../../bd/kyberBD/ip/kyberBD_montgomery_reduction_0_0/sim/kyberBD_montgomery_reduction_0_0.vhd" \
  "../../../bd/kyberBD/ip/kyberBD_axi_gpio_1_0/sim/kyberBD_axi_gpio_1_0.vhd" \
  "../../../bd/kyberBD/ipshared/5447/hdl/fqmul_v1_0.vhd" \
  "../../../bd/kyberBD/ip/kyberBD_fqmul_0_0/sim/kyberBD_fqmul_0_0.vhd" \
  "../../../bd/kyberBD/ip/kyberBD_axi_gpio_2_0/sim/kyberBD_axi_gpio_2_0.vhd" \
  "../../../bd/kyberBD/ipshared/96f5/hdl/bram_mm_v1_0_S00_AXI.vhd" \
  "../../../bd/kyberBD/ipshared/96f5/src/true_dual_bram.vhd" \
  "../../../bd/kyberBD/ipshared/96f5/hdl/bram_mm_v1_0.vhd" \
  "../../../bd/kyberBD/ip/kyberBD_bram_mm_0_0/sim/kyberBD_bram_mm_0_0.vhd" \
  "../../../bd/kyberBD/ipshared/6b92/hdl/bram_port_selector_v1_0.vhd" \
  "../../../bd/kyberBD/ip/kyberBD_bram_port_selector_0_0/sim/kyberBD_bram_port_selector_0_0.vhd" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_19 \
  "../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kyberBD/ip/kyberBD_auto_pc_0/sim/kyberBD_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kyberBD/sim/kyberBD.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

