vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13

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

vcom -work xil_defaultlib -93 \
"../../../bd/kyberBD/sim/kyberBD.vhd" \

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

vlog -work xil_defaultlib \
"glbl.v"

