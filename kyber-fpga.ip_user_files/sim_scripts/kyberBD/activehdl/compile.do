vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_crossbar_v2_1_20
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_21
vlib activehdl/axi_protocol_converter_v2_1_19

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 activehdl/axi_crossbar_v2_1_20
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_21 activehdl/axi_gpio_v2_0_21
vmap axi_protocol_converter_v2_1_19 activehdl/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/kyberBD/ip/kyberBD_processing_system7_0_0/sim/kyberBD_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/kyberBD/ip/kyberBD_proc_sys_reset_0_0/sim/kyberBD_proc_sys_reset_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/kyberBD/ip/kyberBD_xbar_0/sim/kyberBD_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_21 -93 \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/kyberBD/ip/kyberBD_axi_gpio_0_0/sim/kyberBD_axi_gpio_0_0.vhd" \
"../../../bd/kyberBD/ipshared/23a6/hdl/timer2_v1_0.vhd" \
"../../../bd/kyberBD/ip/kyberBD_timer2_0_0/sim/kyberBD_timer2_0_0.vhd" \
"../../../bd/kyberBD/ipshared/4bb8/hdl/montgomery_reduction_v1_0.vhd" \
"../../../bd/kyberBD/ip/kyberBD_montgomery_reduction_0_0/sim/kyberBD_montgomery_reduction_0_0.vhd" \
"../../../bd/kyberBD/ip/kyberBD_axi_gpio_1_0/sim/kyberBD_axi_gpio_1_0.vhd" \
"../../../bd/kyberBD/ipshared/6b92/hdl/bram_port_selector_v1_0.vhd" \
"../../../bd/kyberBD/ip/kyberBD_bram_port_selector_0_0/sim/kyberBD_bram_port_selector_0_0.vhd" \
"../../../bd/kyberBD/ipshared/9b76/hdl/double_signal_multiplexer_v1_0.vhd" \
"../../../bd/kyberBD/ip/kyberBD_double_signal_multip_0_0/sim/kyberBD_double_signal_multip_0_0.vhd" \
"../../../bd/kyberBD/ipshared/43e4/hdl/poly_tomont_v1_0.vhd" \
"../../../bd/kyberBD/ip/kyberBD_poly_tomont_0_0/sim/kyberBD_poly_tomont_0_0.vhd" \
"../../../bd/kyberBD/ip/kyberBD_double_signal_multip_1_0/sim/kyberBD_double_signal_multip_1_0.vhd" \
"../../../bd/kyberBD/ip/kyberBD_bram_port_selector_1_0/sim/kyberBD_bram_port_selector_1_0.vhd" \
"../../../bd/kyberBD/ip/kyberBD_montgomery_reduction_1_0/sim/kyberBD_montgomery_reduction_1_0.vhd" \
"../../../bd/kyberBD/ipshared/4599/hdl/bram_v1_0_S_AXI.vhd" \
"../../../bd/kyberBD/ipshared/4599/src/true_single_bram.vhd" \
"../../../bd/kyberBD/ipshared/4599/hdl/dual_bram_v1_0.vhd" \
"../../../bd/kyberBD/ip/kyberBD_dual_bram_0_0/sim/kyberBD_dual_bram_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/ec67/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ipshared/8c62/hdl" "+incdir+../../../../kyber-fpga.srcs/sources_1/bd/kyberBD/ip/kyberBD_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/kyberBD/ip/kyberBD_auto_pc_0/sim/kyberBD_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/kyberBD/sim/kyberBD.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

