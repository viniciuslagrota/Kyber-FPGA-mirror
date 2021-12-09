
################################################################
# This is a generated script based on design: kyberBD
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source kyberBD_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
   set_property BOARD_PART em.avnet.com:microzed_7010:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name kyberBD

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]


  # Create ports

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_micro_dma {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {22} \
 ] $axi_dma_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {0} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {0} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {16} \
   CONFIG.C_GPIO_WIDTH {3} \
   CONFIG.C_IS_DUAL {0} \
 ] $axi_gpio_1

  # Create instance: axi_gpio_2, and set properties
  set axi_gpio_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2 ]
  set_property -dict [ list \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_2

  # Create instance: axi_gpio_3, and set properties
  set axi_gpio_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_3 ]
  set_property -dict [ list \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_3

  # Create instance: axi_gpio_4, and set properties
  set axi_gpio_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_4 ]
  set_property -dict [ list \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_4

  # Create instance: axi_gpio_5, and set properties
  set axi_gpio_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_5 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_5

  # Create instance: axi_gpio_6, and set properties
  set axi_gpio_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_6 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_6

  # Create instance: axi_gpio_7, and set properties
  set axi_gpio_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_7 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_7

  # Create instance: axi_gpio_8, and set properties
  set axi_gpio_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_8 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_8

  # Create instance: axi_gpio_9, and set properties
  set axi_gpio_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_9 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_9

  # Create instance: axi_gpio_10, and set properties
  set axi_gpio_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_10 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_10

  # Create instance: axi_gpio_11, and set properties
  set axi_gpio_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_11 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_11

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {13} \
 ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
 ] $axi_interconnect_1

  # Create instance: barrett_reduce_0, and set properties
  set barrett_reduce_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:barrett_reduce:1.0 barrett_reduce_0 ]

  # Create instance: barrett_reduce_1, and set properties
  set barrett_reduce_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:barrett_reduce:1.0 barrett_reduce_1 ]

  # Create instance: barrett_reduce_2, and set properties
  set barrett_reduce_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:barrett_reduce:1.0 barrett_reduce_2 ]

  # Create instance: barrett_reduce_3, and set properties
  set barrett_reduce_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:barrett_reduce:1.0 barrett_reduce_3 ]

  # Create instance: bram_port_selector_0, and set properties
  set bram_port_selector_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:bram_port_selector:1.0 bram_port_selector_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {11} \
   CONFIG.NUMBER_OF_CHANNELS {6} \
 ] $bram_port_selector_0

  # Create instance: bram_port_selector_1, and set properties
  set bram_port_selector_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:bram_port_selector:1.0 bram_port_selector_1 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {11} \
   CONFIG.NUMBER_OF_CHANNELS {5} \
 ] $bram_port_selector_1

  # Create instance: bram_port_selector_2, and set properties
  set bram_port_selector_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:bram_port_selector:1.0 bram_port_selector_2 ]
  set_property -dict [ list \
   CONFIG.NUMBER_OF_CHANNELS {6} \
 ] $bram_port_selector_2

  # Create instance: bram_port_selector_3, and set properties
  set bram_port_selector_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:bram_port_selector:1.0 bram_port_selector_3 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {11} \
   CONFIG.NUMBER_OF_CHANNELS {5} \
 ] $bram_port_selector_3

  # Create instance: dual_bram_axis_0, and set properties
  set dual_bram_axis_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:dual_bram_axis:1.0 dual_bram_axis_0 ]

  # Create instance: fqmul_0, and set properties
  set fqmul_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:fqmul:1.0 fqmul_0 ]

  # Create instance: fqmul_1, and set properties
  set fqmul_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:fqmul:1.0 fqmul_1 ]

  # Create instance: fqmul_2, and set properties
  set fqmul_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:fqmul:1.0 fqmul_2 ]

  # Create instance: fqmul_3, and set properties
  set fqmul_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:fqmul:1.0 fqmul_3 ]

  # Create instance: fqmul_4, and set properties
  set fqmul_4 [ create_bd_cell -type ip -vlnv xilinx.com:user:fqmul:1.0 fqmul_4 ]

  # Create instance: fqmul_5, and set properties
  set fqmul_5 [ create_bd_cell -type ip -vlnv xilinx.com:user:fqmul:1.0 fqmul_5 ]

  # Create instance: keccak_f1600_bram_ip_0, and set properties
  set keccak_f1600_bram_ip_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:keccak_f1600_bram_ip:1.0 keccak_f1600_bram_ip_0 ]

  # Create instance: montgomery_reduction_0, and set properties
  set montgomery_reduction_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:montgomery_reduction:1.0 montgomery_reduction_0 ]

  # Create instance: montgomery_reduction_1, and set properties
  set montgomery_reduction_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:montgomery_reduction:1.0 montgomery_reduction_1 ]

  # Create instance: montgomery_reduction_2, and set properties
  set montgomery_reduction_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:montgomery_reduction:1.0 montgomery_reduction_2 ]

  # Create instance: montgomery_reduction_3, and set properties
  set montgomery_reduction_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:montgomery_reduction:1.0 montgomery_reduction_3 ]

  # Create instance: montgomery_reduction_4, and set properties
  set montgomery_reduction_4 [ create_bd_cell -type ip -vlnv xilinx.com:user:montgomery_reduction:1.0 montgomery_reduction_4 ]

  # Create instance: montgomery_reduction_5, and set properties
  set montgomery_reduction_5 [ create_bd_cell -type ip -vlnv xilinx.com:user:montgomery_reduction:1.0 montgomery_reduction_5 ]

  # Create instance: poly_tomont_0, and set properties
  set poly_tomont_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:poly_tomont:1.0 poly_tomont_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {11} \
 ] $poly_tomont_0

  # Create instance: polyvec_basemul_acc_0, and set properties
  set polyvec_basemul_acc_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:polyvec_basemul_acc_montgomery:1.0 polyvec_basemul_acc_0 ]

  # Create instance: polyvec_invntt_0, and set properties
  set polyvec_invntt_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:polyvec_invntt:1.0 polyvec_invntt_0 ]

  # Create instance: polyvec_ntt_0, and set properties
  set polyvec_ntt_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:polyvec_ntt:1.0 polyvec_ntt_0 ]

  # Create instance: polyvec_reduce_0, and set properties
  set polyvec_reduce_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:polyvec_reduce:1.0 polyvec_reduce_0 ]

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {25.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {667} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_DM_WIDTH {4} \
   CONFIG.PCW_DQS_WIDTH {4} \
   CONFIG.PCW_DQ_WIDTH {32} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_CLK1_PORT {0} \
   CONFIG.PCW_EN_CLK2_PORT {0} \
   CONFIG.PCW_EN_CLK3_PORT {0} \
   CONFIG.PCW_EN_DDR {1} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_ENET0 {0} \
   CONFIG.PCW_EN_EMIO_TTC0 {1} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_RST0_PORT {1} \
   CONFIG.PCW_EN_RST1_PORT {0} \
   CONFIG.PCW_EN_RST2_PORT {0} \
   CONFIG.PCW_EN_RST3_PORT {0} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_TTC0 {1} \
   CONFIG.PCW_EN_UART0 {1} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK1_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK2_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK3_BUF {FALSE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_I2C_RESET_ENABLE {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {disabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {disabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {disabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {disabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {disabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {in} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {out} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {disabled} \
   CONFIG.PCW_MIO_16_SLEW {slow} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {disabled} \
   CONFIG.PCW_MIO_17_SLEW {slow} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {disabled} \
   CONFIG.PCW_MIO_18_SLEW {slow} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {disabled} \
   CONFIG.PCW_MIO_19_SLEW {slow} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {disabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {disabled} \
   CONFIG.PCW_MIO_20_SLEW {slow} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {disabled} \
   CONFIG.PCW_MIO_21_SLEW {slow} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {disabled} \
   CONFIG.PCW_MIO_22_SLEW {slow} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {disabled} \
   CONFIG.PCW_MIO_23_SLEW {slow} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {disabled} \
   CONFIG.PCW_MIO_24_SLEW {slow} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {disabled} \
   CONFIG.PCW_MIO_25_SLEW {slow} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {disabled} \
   CONFIG.PCW_MIO_26_SLEW {slow} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {disabled} \
   CONFIG.PCW_MIO_27_SLEW {slow} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {disabled} \
   CONFIG.PCW_MIO_28_SLEW {slow} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {disabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {disabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {disabled} \
   CONFIG.PCW_MIO_31_SLEW {slow} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {disabled} \
   CONFIG.PCW_MIO_32_SLEW {slow} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {disabled} \
   CONFIG.PCW_MIO_33_SLEW {slow} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {disabled} \
   CONFIG.PCW_MIO_34_SLEW {slow} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {disabled} \
   CONFIG.PCW_MIO_35_SLEW {slow} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {disabled} \
   CONFIG.PCW_MIO_36_SLEW {slow} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {disabled} \
   CONFIG.PCW_MIO_37_SLEW {slow} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {disabled} \
   CONFIG.PCW_MIO_38_SLEW {slow} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {disabled} \
   CONFIG.PCW_MIO_39_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {disabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {disabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {disabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {disabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {disabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {disabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {in} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {disabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {inout} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {disabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {disabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {disabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {in} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {disabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {disabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {disabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {disabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {disabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_PRIMITIVE {54} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#USB Reset#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#UART 0#UART 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#GPIO#UART 1#UART 1#SD 0#GPIO#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#reset#qspi_fbclk#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#rx#tx#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#cd#gpio[47]#tx#rx#wp#gpio[51]#mdc#mdio} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.406} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.396} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.340} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.346} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.021} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.002} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.071} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.082} \
   CONFIG.PCW_PACKAGE_NAME {clg400} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {MIO 46} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_WP_IO {MIO 50} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {40} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {32} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_TTC0_TTC0_IO {EMIO} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.294} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.298} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.338} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.334} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {54.14} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {54.14} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {39.7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {39.7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {50.05} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {50.43} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {50.10} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {50.01} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {-0.073} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {-0.072} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.024} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.023} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {49.59} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {51.74} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {50.32} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {48.55} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.75} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {1} \
   CONFIG.PCW_USB0_RESET_IO {MIO 7} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_M_AXI_GP0 {1} \
   CONFIG.PCW_USE_M_AXI_GP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
 ] $processing_system7_0

  # Create instance: signal_multiplexer_0, and set properties
  set signal_multiplexer_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {16} \
   CONFIG.NUMBER_OF_CHANNELS {4} \
 ] $signal_multiplexer_0

  # Create instance: signal_multiplexer_1, and set properties
  set signal_multiplexer_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_1 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {16} \
   CONFIG.NUMBER_OF_CHANNELS {4} \
 ] $signal_multiplexer_1

  # Create instance: signal_multiplexer_2, and set properties
  set signal_multiplexer_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_2 ]

  # Create instance: signal_multiplexer_3, and set properties
  set signal_multiplexer_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_3 ]

  # Create instance: signal_multiplexer_4, and set properties
  set signal_multiplexer_4 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_4 ]
  set_property -dict [ list \
   CONFIG.NUMBER_OF_CHANNELS {3} \
 ] $signal_multiplexer_4

  # Create instance: signal_multiplexer_5, and set properties
  set signal_multiplexer_5 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_5 ]
  set_property -dict [ list \
   CONFIG.NUMBER_OF_CHANNELS {3} \
 ] $signal_multiplexer_5

  # Create instance: signal_multiplexer_6, and set properties
  set signal_multiplexer_6 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_6 ]
  set_property -dict [ list \
   CONFIG.NUMBER_OF_CHANNELS {2} \
 ] $signal_multiplexer_6

  # Create instance: signal_multiplexer_7, and set properties
  set signal_multiplexer_7 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_7 ]
  set_property -dict [ list \
   CONFIG.NUMBER_OF_CHANNELS {2} \
 ] $signal_multiplexer_7

  # Create instance: signal_multiplexer_8, and set properties
  set signal_multiplexer_8 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_8 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {16} \
   CONFIG.NUMBER_OF_CHANNELS {1} \
 ] $signal_multiplexer_8

  # Create instance: signal_multiplexer_9, and set properties
  set signal_multiplexer_9 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_9 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {16} \
   CONFIG.NUMBER_OF_CHANNELS {1} \
 ] $signal_multiplexer_9

  # Create instance: signal_multiplexer_12, and set properties
  set signal_multiplexer_12 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_12 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {16} \
   CONFIG.ENABLE_SECOND_DATA_CHANNEL {true} \
   CONFIG.NUMBER_OF_CHANNELS {1} \
 ] $signal_multiplexer_12

  # Create instance: signal_multiplexer_14, and set properties
  set signal_multiplexer_14 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_14 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {16} \
   CONFIG.ENABLE_SECOND_DATA_CHANNEL {true} \
   CONFIG.NUMBER_OF_CHANNELS {1} \
 ] $signal_multiplexer_14

  # Create instance: signal_multiplexer_16, and set properties
  set signal_multiplexer_16 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_16 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {16} \
   CONFIG.ENABLE_SECOND_DATA_CHANNEL {true} \
   CONFIG.NUMBER_OF_CHANNELS {2} \
 ] $signal_multiplexer_16

  # Create instance: signal_multiplexer_17, and set properties
  set signal_multiplexer_17 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_17 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {16} \
   CONFIG.ENABLE_SECOND_DATA_CHANNEL {true} \
   CONFIG.NUMBER_OF_CHANNELS {2} \
 ] $signal_multiplexer_17

  # Create instance: signal_multiplexer_18, and set properties
  set signal_multiplexer_18 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_18 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {16} \
   CONFIG.ENABLE_SECOND_DATA_CHANNEL {true} \
   CONFIG.NUMBER_OF_CHANNELS {2} \
 ] $signal_multiplexer_18

  # Create instance: signal_multiplexer_19, and set properties
  set signal_multiplexer_19 [ create_bd_cell -type ip -vlnv xilinx.com:user:signal_multiplexer:1.0 signal_multiplexer_19 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {16} \
   CONFIG.ENABLE_SECOND_DATA_CHANNEL {true} \
   CONFIG.NUMBER_OF_CHANNELS {2} \
 ] $signal_multiplexer_19

  # Create instance: timer2_0, and set properties
  set timer2_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:timer2:1.0 timer2_0 ]

  # Create instance: timer_0, and set properties
  set timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:timer:1.0 timer_0 ]

  # Create instance: timer_1, and set properties
  set timer_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:timer:1.0 timer_1 ]

  # Create instance: timer_2, and set properties
  set timer_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:timer:1.0 timer_2 ]

  # Create instance: timer_3, and set properties
  set timer_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:timer:1.0 timer_3 ]

  # Create instance: timer_4, and set properties
  set timer_4 [ create_bd_cell -type ip -vlnv xilinx.com:user:timer:1.0 timer_4 ]

  # Create instance: timer_5, and set properties
  set timer_5 [ create_bd_cell -type ip -vlnv xilinx.com:user:timer:1.0 timer_5 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_dma_0_M_AXIS_MM2S [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] [get_bd_intf_pins dual_bram_axis_0/S00_AXIS]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_interconnect_1/S01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_gpio_1/S_AXI] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_gpio_2/S_AXI] [get_bd_intf_pins axi_interconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_gpio_3/S_AXI] [get_bd_intf_pins axi_interconnect_0/M04_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins axi_gpio_4/S_AXI] [get_bd_intf_pins axi_interconnect_0/M05_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_gpio_5/S_AXI] [get_bd_intf_pins axi_interconnect_0/M06_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins axi_gpio_6/S_AXI] [get_bd_intf_pins axi_interconnect_0/M07_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M08_AXI [get_bd_intf_pins axi_gpio_7/S_AXI] [get_bd_intf_pins axi_interconnect_0/M08_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M09_AXI [get_bd_intf_pins axi_gpio_8/S_AXI] [get_bd_intf_pins axi_interconnect_0/M09_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M10_AXI [get_bd_intf_pins axi_gpio_9/S_AXI] [get_bd_intf_pins axi_interconnect_0/M10_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M11_AXI [get_bd_intf_pins axi_gpio_10/S_AXI] [get_bd_intf_pins axi_interconnect_0/M11_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M12_AXI [get_bd_intf_pins axi_gpio_11/S_AXI] [get_bd_intf_pins axi_interconnect_0/M12_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins axi_interconnect_1/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net bram_port_selector_0_BRAM_PORT_MASTER [get_bd_intf_pins bram_port_selector_0/BRAM_PORT_MASTER] [get_bd_intf_pins dual_bram_axis_0/BRAM0_PORT_A]
  connect_bd_intf_net -intf_net bram_port_selector_1_BRAM_PORT_MASTER [get_bd_intf_pins bram_port_selector_1/BRAM_PORT_MASTER] [get_bd_intf_pins dual_bram_axis_0/BRAM0_PORT_B]
  connect_bd_intf_net -intf_net bram_port_selector_2_BRAM_PORT_MASTER [get_bd_intf_pins bram_port_selector_2/BRAM_PORT_MASTER] [get_bd_intf_pins dual_bram_axis_0/BRAM1_PORT_A]
  connect_bd_intf_net -intf_net bram_port_selector_3_BRAM_PORT_MASTER [get_bd_intf_pins bram_port_selector_3/BRAM_PORT_MASTER] [get_bd_intf_pins dual_bram_axis_0/BRAM1_PORT_B]
  connect_bd_intf_net -intf_net dual_bram_axis_0_M00_AXIS [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM] [get_bd_intf_pins dual_bram_axis_0/M00_AXIS]
  connect_bd_intf_net -intf_net keccak_f1600_bram_ip_0_BRAM1_PORT_A [get_bd_intf_pins bram_port_selector_2/BRAM_PORT_5] [get_bd_intf_pins keccak_f1600_bram_ip_0/BRAM1_PORT_A]
  connect_bd_intf_net -intf_net keccak_f1600_bram_ip_0_PORT_BRAM [get_bd_intf_pins bram_port_selector_0/BRAM_PORT_5] [get_bd_intf_pins keccak_f1600_bram_ip_0/BRAM0_PORT_A]
  connect_bd_intf_net -intf_net poly_tomont_0_BRAM0_PORT_B [get_bd_intf_pins bram_port_selector_1/BRAM_PORT_3] [get_bd_intf_pins poly_tomont_0/BRAM0_PORT_B]
  connect_bd_intf_net -intf_net poly_tomont_0_BRAM1_PORT_B [get_bd_intf_pins bram_port_selector_3/BRAM_PORT_3] [get_bd_intf_pins poly_tomont_0/BRAM1_PORT_B]
  connect_bd_intf_net -intf_net poly_tomont_0_BRAM_PORT_A [get_bd_intf_pins bram_port_selector_0/BRAM_PORT_0] [get_bd_intf_pins poly_tomont_0/BRAM0_PORT_A]
  connect_bd_intf_net -intf_net poly_tomont_0_BRAM_PORT_B [get_bd_intf_pins bram_port_selector_2/BRAM_PORT_0] [get_bd_intf_pins poly_tomont_0/BRAM1_PORT_A]
  connect_bd_intf_net -intf_net polyvec_basemul_acc_0_BRAM0_PORT_A [get_bd_intf_pins bram_port_selector_0/BRAM_PORT_2] [get_bd_intf_pins polyvec_basemul_acc_0/BRAM0_PORT_A]
  connect_bd_intf_net -intf_net polyvec_basemul_acc_0_BRAM0_PORT_B [get_bd_intf_pins bram_port_selector_1/BRAM_PORT_0] [get_bd_intf_pins polyvec_basemul_acc_0/BRAM0_PORT_B]
  connect_bd_intf_net -intf_net polyvec_basemul_acc_0_BRAM1_PORT_A [get_bd_intf_pins bram_port_selector_2/BRAM_PORT_2] [get_bd_intf_pins polyvec_basemul_acc_0/BRAM1_PORT_A]
  connect_bd_intf_net -intf_net polyvec_basemul_acc_0_BRAM1_PORT_B [get_bd_intf_pins bram_port_selector_3/BRAM_PORT_0] [get_bd_intf_pins polyvec_basemul_acc_0/BRAM1_PORT_B]
  connect_bd_intf_net -intf_net polyvec_invntt_0_BRAM1_PORT_A [get_bd_intf_pins bram_port_selector_2/BRAM_PORT_4] [get_bd_intf_pins polyvec_invntt_0/BRAM1_PORT_A]
  connect_bd_intf_net -intf_net polyvec_invntt_0_BRAM1_PORT_B [get_bd_intf_pins bram_port_selector_3/BRAM_PORT_2] [get_bd_intf_pins polyvec_invntt_0/BRAM1_PORT_B]
  connect_bd_intf_net -intf_net polyvec_invntt_0_BRAM_PORT_A [get_bd_intf_pins bram_port_selector_0/BRAM_PORT_4] [get_bd_intf_pins polyvec_invntt_0/BRAM0_PORT_A]
  connect_bd_intf_net -intf_net polyvec_invntt_0_BRAM_PORT_B [get_bd_intf_pins bram_port_selector_1/BRAM_PORT_2] [get_bd_intf_pins polyvec_invntt_0/BRAM0_PORT_B]
  connect_bd_intf_net -intf_net polyvec_ntt_0_BRAM1_PORT_A [get_bd_intf_pins bram_port_selector_2/BRAM_PORT_3] [get_bd_intf_pins polyvec_ntt_0/BRAM1_PORT_A]
  connect_bd_intf_net -intf_net polyvec_ntt_0_BRAM1_PORT_B [get_bd_intf_pins bram_port_selector_3/BRAM_PORT_1] [get_bd_intf_pins polyvec_ntt_0/BRAM1_PORT_B]
  connect_bd_intf_net -intf_net polyvec_ntt_0_BRAM_PORT_A [get_bd_intf_pins bram_port_selector_0/BRAM_PORT_3] [get_bd_intf_pins polyvec_ntt_0/BRAM0_PORT_A]
  connect_bd_intf_net -intf_net polyvec_ntt_0_BRAM_PORT_B [get_bd_intf_pins bram_port_selector_1/BRAM_PORT_1] [get_bd_intf_pins polyvec_ntt_0/BRAM0_PORT_B]
  connect_bd_intf_net -intf_net polyvec_reduce_0_BRAM0_PORT_B [get_bd_intf_pins bram_port_selector_1/BRAM_PORT_4] [get_bd_intf_pins polyvec_reduce_0/BRAM0_PORT_B]
  connect_bd_intf_net -intf_net polyvec_reduce_0_BRAM1_PORT_B [get_bd_intf_pins bram_port_selector_3/BRAM_PORT_4] [get_bd_intf_pins polyvec_reduce_0/BRAM1_PORT_B]
  connect_bd_intf_net -intf_net polyvec_reduce_0_BRAM_PORT_A [get_bd_intf_pins bram_port_selector_0/BRAM_PORT_1] [get_bd_intf_pins polyvec_reduce_0/BRAM0_PORT_A]
  connect_bd_intf_net -intf_net polyvec_reduce_0_BRAM_PORT_B [get_bd_intf_pins bram_port_selector_2/BRAM_PORT_1] [get_bd_intf_pins polyvec_reduce_0/BRAM1_PORT_A]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins polyvec_basemul_acc_0/en_dsm] [get_bd_pins signal_multiplexer_0/en1] [get_bd_pins signal_multiplexer_1/en1] [get_bd_pins signal_multiplexer_12/en0] [get_bd_pins signal_multiplexer_14/en0] [get_bd_pins signal_multiplexer_16/en0] [get_bd_pins signal_multiplexer_17/en0] [get_bd_pins signal_multiplexer_18/en0] [get_bd_pins signal_multiplexer_19/en0] [get_bd_pins signal_multiplexer_2/en1] [get_bd_pins signal_multiplexer_3/en1] [get_bd_pins signal_multiplexer_4/en0] [get_bd_pins signal_multiplexer_5/en0] [get_bd_pins signal_multiplexer_6/en0] [get_bd_pins signal_multiplexer_7/en0]
  connect_bd_net -net axi_dma_0_mm2s_introut [get_bd_pins axi_dma_0/mm2s_introut] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net axi_dma_0_s2mm_introut [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins timer2_0/control]
  connect_bd_net -net axi_gpio_10_gpio_io_o [get_bd_pins axi_gpio_10/gpio_io_o] [get_bd_pins timer_4/reset]
  connect_bd_net -net axi_gpio_11_gpio_io_o [get_bd_pins axi_gpio_11/gpio_io_o] [get_bd_pins timer_5/reset]
  connect_bd_net -net axi_gpio_1_gpio_io_o [get_bd_pins axi_gpio_1/gpio_io_i] [get_bd_pins axi_gpio_1/gpio_io_o] [get_bd_pins polyvec_basemul_acc_0/kyber_k] [get_bd_pins polyvec_invntt_0/kyber_k] [get_bd_pins polyvec_ntt_0/kyber_k] [get_bd_pins polyvec_reduce_0/kyber_k]
  connect_bd_net -net axi_gpio_2_gpio2_io_o [get_bd_pins axi_gpio_2/gpio2_io_o] [get_bd_pins polyvec_reduce_0/start]
  connect_bd_net -net axi_gpio_2_gpio_io_o [get_bd_pins axi_gpio_2/gpio_io_o] [get_bd_pins poly_tomont_0/start]
  connect_bd_net -net axi_gpio_3_gpio2_io_o [get_bd_pins axi_gpio_3/gpio2_io_o] [get_bd_pins keccak_f1600_bram_ip_0/start]
  connect_bd_net -net axi_gpio_3_gpio_io_o [get_bd_pins axi_gpio_3/gpio_io_o] [get_bd_pins polyvec_basemul_acc_0/start]
  connect_bd_net -net axi_gpio_4_gpio2_io_o [get_bd_pins axi_gpio_4/gpio2_io_o] [get_bd_pins polyvec_invntt_0/start]
  connect_bd_net -net axi_gpio_4_gpio_io_o [get_bd_pins axi_gpio_4/gpio_io_o] [get_bd_pins polyvec_ntt_0/start]
  connect_bd_net -net axi_gpio_5_gpio2_io_o [get_bd_pins axi_gpio_5/gpio2_io_o] [get_bd_pins dual_bram_axis_0/gpio_length_tx]
  connect_bd_net -net axi_gpio_5_gpio_io_o [get_bd_pins axi_gpio_5/gpio_io_o] [get_bd_pins dual_bram_axis_0/gpio_enable_tx]
  connect_bd_net -net axi_gpio_6_gpio_io_o [get_bd_pins axi_gpio_6/gpio_io_o] [get_bd_pins timer_0/reset]
  connect_bd_net -net axi_gpio_7_gpio_io_o [get_bd_pins axi_gpio_7/gpio_io_o] [get_bd_pins timer_1/reset]
  connect_bd_net -net axi_gpio_8_gpio_io_o [get_bd_pins axi_gpio_8/gpio_io_o] [get_bd_pins timer_2/reset]
  connect_bd_net -net axi_gpio_9_gpio_io_o [get_bd_pins axi_gpio_9/gpio_io_o] [get_bd_pins timer_3/reset]
  connect_bd_net -net barrett_reduce_0_data_out [get_bd_pins barrett_reduce_0/data_out] [get_bd_pins polyvec_basemul_acc_0/data0_from_barrett] [get_bd_pins polyvec_invntt_0/data0_from_barrett] [get_bd_pins polyvec_ntt_0/data0_from_barrett] [get_bd_pins polyvec_reduce_0/di_lower_barrett0]
  connect_bd_net -net barrett_reduce_0_valid_out [get_bd_pins barrett_reduce_0/valid_out] [get_bd_pins polyvec_basemul_acc_0/valid0_from_barrett] [get_bd_pins polyvec_invntt_0/valid0_from_barrett] [get_bd_pins polyvec_ntt_0/valid0_from_barrett] [get_bd_pins polyvec_reduce_0/valid_in_lower_barrett0]
  connect_bd_net -net barrett_reduce_1_data_out [get_bd_pins barrett_reduce_1/data_out] [get_bd_pins polyvec_basemul_acc_0/data1_from_barrett] [get_bd_pins polyvec_invntt_0/data1_from_barrett] [get_bd_pins polyvec_ntt_0/data1_from_barrett] [get_bd_pins polyvec_reduce_0/di_upper_barrett0]
  connect_bd_net -net barrett_reduce_1_valid_out [get_bd_pins barrett_reduce_1/valid_out] [get_bd_pins polyvec_basemul_acc_0/valid1_from_barrett] [get_bd_pins polyvec_invntt_0/valid1_from_barrett] [get_bd_pins polyvec_ntt_0/valid1_from_barrett] [get_bd_pins polyvec_reduce_0/valid_in_upper_barrett0]
  connect_bd_net -net barrett_reduce_2_data_out [get_bd_pins barrett_reduce_2/data_out] [get_bd_pins polyvec_reduce_0/di_lower_barrett1]
  connect_bd_net -net barrett_reduce_2_valid_out [get_bd_pins barrett_reduce_2/valid_out] [get_bd_pins polyvec_reduce_0/valid_in_lower_barrett1]
  connect_bd_net -net barrett_reduce_3_data_out [get_bd_pins barrett_reduce_3/data_out] [get_bd_pins polyvec_reduce_0/di_upper_barrett1]
  connect_bd_net -net barrett_reduce_3_valid_out [get_bd_pins barrett_reduce_3/valid_out] [get_bd_pins polyvec_reduce_0/valid_in_upper_barrett1]
  connect_bd_net -net fqmul_0_data_out [get_bd_pins fqmul_0/data_out] [get_bd_pins polyvec_basemul_acc_0/coeff_from_fqmul0]
  connect_bd_net -net fqmul_0_data_out_mont [get_bd_pins fqmul_0/data_out_mont] [get_bd_pins signal_multiplexer_2/data1]
  connect_bd_net -net fqmul_0_valid_out [get_bd_pins fqmul_0/valid_out] [get_bd_pins polyvec_basemul_acc_0/valid_from_fqmul0]
  connect_bd_net -net fqmul_0_valid_out_mont [get_bd_pins fqmul_0/valid_out_mont] [get_bd_pins signal_multiplexer_2/valid1]
  connect_bd_net -net fqmul_1_data_out [get_bd_pins fqmul_1/data_out] [get_bd_pins polyvec_basemul_acc_0/coeff_from_fqmul1]
  connect_bd_net -net fqmul_1_data_out_mont [get_bd_pins fqmul_1/data_out_mont] [get_bd_pins signal_multiplexer_3/data1]
  connect_bd_net -net fqmul_1_valid_out [get_bd_pins fqmul_1/valid_out] [get_bd_pins polyvec_basemul_acc_0/valid_from_fqmul1]
  connect_bd_net -net fqmul_1_valid_out_mont [get_bd_pins fqmul_1/valid_out_mont] [get_bd_pins signal_multiplexer_3/valid1]
  connect_bd_net -net fqmul_2_data_out [get_bd_pins fqmul_2/data_out] [get_bd_pins polyvec_basemul_acc_0/coeff_from_fqmul2] [get_bd_pins polyvec_ntt_0/coeff_from_fqmul0]
  connect_bd_net -net fqmul_2_data_out_mont [get_bd_pins fqmul_2/data_out_mont] [get_bd_pins signal_multiplexer_4/data0] [get_bd_pins signal_multiplexer_4/data1]
  connect_bd_net -net fqmul_2_valid_out [get_bd_pins fqmul_2/valid_out] [get_bd_pins polyvec_basemul_acc_0/valid_from_fqmul2] [get_bd_pins polyvec_ntt_0/valid_from_fqmul0]
  connect_bd_net -net fqmul_2_valid_out_mont [get_bd_pins fqmul_2/valid_out_mont] [get_bd_pins signal_multiplexer_4/valid0] [get_bd_pins signal_multiplexer_4/valid1]
  connect_bd_net -net fqmul_3_data_out [get_bd_pins fqmul_3/data_out] [get_bd_pins polyvec_basemul_acc_0/coeff_from_fqmul3] [get_bd_pins polyvec_ntt_0/coeff_from_fqmul1]
  connect_bd_net -net fqmul_3_data_out_mont [get_bd_pins fqmul_3/data_out_mont] [get_bd_pins signal_multiplexer_5/data0] [get_bd_pins signal_multiplexer_5/data1]
  connect_bd_net -net fqmul_3_valid_out [get_bd_pins fqmul_3/valid_out] [get_bd_pins polyvec_basemul_acc_0/valid_from_fqmul3] [get_bd_pins polyvec_ntt_0/valid_from_fqmul1]
  connect_bd_net -net fqmul_3_valid_out_mont [get_bd_pins fqmul_3/valid_out_mont] [get_bd_pins signal_multiplexer_5/valid0] [get_bd_pins signal_multiplexer_5/valid1]
  connect_bd_net -net fqmul_4_data_out [get_bd_pins fqmul_4/data_out] [get_bd_pins polyvec_basemul_acc_0/coeff_from_fqmul4] [get_bd_pins polyvec_invntt_0/coeff_from_fqmul0]
  connect_bd_net -net fqmul_4_data_out_mont [get_bd_pins fqmul_4/data_out_mont] [get_bd_pins signal_multiplexer_6/data0] [get_bd_pins signal_multiplexer_6/data1]
  connect_bd_net -net fqmul_4_valid_out [get_bd_pins fqmul_4/valid_out] [get_bd_pins polyvec_basemul_acc_0/valid_from_fqmul4] [get_bd_pins polyvec_invntt_0/valid_from_fqmul0]
  connect_bd_net -net fqmul_4_valid_out_mont [get_bd_pins fqmul_4/valid_out_mont] [get_bd_pins signal_multiplexer_6/valid0] [get_bd_pins signal_multiplexer_6/valid1]
  connect_bd_net -net fqmul_5_data_out [get_bd_pins fqmul_5/data_out] [get_bd_pins polyvec_basemul_acc_0/coeff_from_fqmul5] [get_bd_pins polyvec_invntt_0/coeff_from_fqmul1]
  connect_bd_net -net fqmul_5_data_out_mont [get_bd_pins fqmul_5/data_out_mont] [get_bd_pins signal_multiplexer_7/data0] [get_bd_pins signal_multiplexer_7/data1]
  connect_bd_net -net fqmul_5_valid_out [get_bd_pins fqmul_5/valid_out] [get_bd_pins polyvec_basemul_acc_0/valid_from_fqmul5] [get_bd_pins polyvec_invntt_0/valid_from_fqmul1]
  connect_bd_net -net fqmul_5_valid_out_mont [get_bd_pins fqmul_5/valid_out_mont] [get_bd_pins signal_multiplexer_7/valid0] [get_bd_pins signal_multiplexer_7/valid1]
  connect_bd_net -net keccak_f1600_bram_ip_0_busy [get_bd_pins axi_gpio_3/gpio2_io_i] [get_bd_pins keccak_f1600_bram_ip_0/busy] [get_bd_pins timer_5/enable]
  connect_bd_net -net montgomery_reduction_0_data_out [get_bd_pins fqmul_0/data_in_mont] [get_bd_pins montgomery_reduction_0/data_out] [get_bd_pins poly_tomont_0/di_lower_mont0]
  connect_bd_net -net montgomery_reduction_0_valid_out [get_bd_pins fqmul_0/valid_in_mont] [get_bd_pins montgomery_reduction_0/valid_out] [get_bd_pins poly_tomont_0/valid_in_lower_mont0]
  connect_bd_net -net montgomery_reduction_1_data_out [get_bd_pins fqmul_1/data_in_mont] [get_bd_pins montgomery_reduction_1/data_out] [get_bd_pins poly_tomont_0/di_upper_mont0]
  connect_bd_net -net montgomery_reduction_1_valid_out [get_bd_pins fqmul_1/valid_in_mont] [get_bd_pins montgomery_reduction_1/valid_out] [get_bd_pins poly_tomont_0/valid_in_upper_mont0]
  connect_bd_net -net montgomery_reduction_2_data_out [get_bd_pins fqmul_2/data_in_mont] [get_bd_pins montgomery_reduction_2/data_out] [get_bd_pins poly_tomont_0/di_lower_mont1]
  connect_bd_net -net montgomery_reduction_2_valid_out [get_bd_pins fqmul_2/valid_in_mont] [get_bd_pins montgomery_reduction_2/valid_out] [get_bd_pins poly_tomont_0/valid_in_lower_mont1]
  connect_bd_net -net montgomery_reduction_3_data_out [get_bd_pins fqmul_3/data_in_mont] [get_bd_pins montgomery_reduction_3/data_out] [get_bd_pins poly_tomont_0/di_upper_mont1]
  connect_bd_net -net montgomery_reduction_3_valid_out [get_bd_pins fqmul_3/valid_in_mont] [get_bd_pins montgomery_reduction_3/valid_out] [get_bd_pins poly_tomont_0/valid_in_upper_mont1]
  connect_bd_net -net montgomery_reduction_4_data_out [get_bd_pins fqmul_4/data_in_mont] [get_bd_pins montgomery_reduction_4/data_out]
  connect_bd_net -net montgomery_reduction_4_valid_out [get_bd_pins fqmul_4/valid_in_mont] [get_bd_pins montgomery_reduction_4/valid_out]
  connect_bd_net -net montgomery_reduction_5_data_out [get_bd_pins fqmul_5/data_in_mont] [get_bd_pins montgomery_reduction_5/data_out]
  connect_bd_net -net montgomery_reduction_5_valid_out [get_bd_pins fqmul_5/valid_in_mont] [get_bd_pins montgomery_reduction_5/valid_out]
  connect_bd_net -net poly_tomont_0_busy [get_bd_pins axi_gpio_2/gpio_io_i] [get_bd_pins poly_tomont_0/busy] [get_bd_pins timer_0/enable]
  connect_bd_net -net poly_tomont_0_do_lower_mont [get_bd_pins poly_tomont_0/do_lower_mont0] [get_bd_pins signal_multiplexer_2/data0]
  connect_bd_net -net poly_tomont_0_do_lower_mont1 [get_bd_pins poly_tomont_0/do_lower_mont1] [get_bd_pins signal_multiplexer_4/data2]
  connect_bd_net -net poly_tomont_0_do_upper_mont [get_bd_pins poly_tomont_0/do_upper_mont0] [get_bd_pins signal_multiplexer_3/data0]
  connect_bd_net -net poly_tomont_0_do_upper_mont1 [get_bd_pins poly_tomont_0/do_upper_mont1] [get_bd_pins signal_multiplexer_5/data2]
  connect_bd_net -net poly_tomont_0_en_lower_mont [get_bd_pins poly_tomont_0/en_lower_mont0] [get_bd_pins signal_multiplexer_2/en0]
  connect_bd_net -net poly_tomont_0_en_lower_mont1 [get_bd_pins poly_tomont_0/en_lower_mont1] [get_bd_pins signal_multiplexer_4/en2]
  connect_bd_net -net poly_tomont_0_en_upper_mont [get_bd_pins poly_tomont_0/en_upper_mont0] [get_bd_pins signal_multiplexer_3/en0]
  connect_bd_net -net poly_tomont_0_en_upper_mont1 [get_bd_pins poly_tomont_0/en_upper_mont1] [get_bd_pins signal_multiplexer_5/en2]
  connect_bd_net -net poly_tomont_0_valid_out_lower_mont [get_bd_pins poly_tomont_0/valid_out_lower_mont0] [get_bd_pins signal_multiplexer_2/valid0]
  connect_bd_net -net poly_tomont_0_valid_out_lower_mont1 [get_bd_pins poly_tomont_0/valid_out_lower_mont1] [get_bd_pins signal_multiplexer_4/valid2]
  connect_bd_net -net poly_tomont_0_valid_out_upper_mont [get_bd_pins poly_tomont_0/valid_out_upper_mont0] [get_bd_pins signal_multiplexer_3/valid0]
  connect_bd_net -net poly_tomont_0_valid_out_upper_mont1 [get_bd_pins poly_tomont_0/valid_out_upper_mont1] [get_bd_pins signal_multiplexer_5/valid2]
  connect_bd_net -net polyvec_basemul_acc_0_busy [get_bd_pins axi_gpio_3/gpio_io_i] [get_bd_pins polyvec_basemul_acc_0/busy] [get_bd_pins timer_2/enable]
  connect_bd_net -net polyvec_basemul_acc_0_coeff0_to_fqmul0 [get_bd_pins polyvec_basemul_acc_0/coeff0_to_fqmul0] [get_bd_pins signal_multiplexer_12/data0]
  connect_bd_net -net polyvec_basemul_acc_0_coeff0_to_fqmul1 [get_bd_pins polyvec_basemul_acc_0/coeff0_to_fqmul1] [get_bd_pins signal_multiplexer_14/data0]
  connect_bd_net -net polyvec_basemul_acc_0_coeff0_to_fqmul2 [get_bd_pins polyvec_basemul_acc_0/coeff0_to_fqmul2] [get_bd_pins signal_multiplexer_16/data0]
  connect_bd_net -net polyvec_basemul_acc_0_coeff0_to_fqmul3 [get_bd_pins polyvec_basemul_acc_0/coeff0_to_fqmul3] [get_bd_pins signal_multiplexer_17/data0]
  connect_bd_net -net polyvec_basemul_acc_0_coeff0_to_fqmul4 [get_bd_pins polyvec_basemul_acc_0/coeff0_to_fqmul4] [get_bd_pins signal_multiplexer_18/data0]
  connect_bd_net -net polyvec_basemul_acc_0_coeff0_to_fqmul5 [get_bd_pins polyvec_basemul_acc_0/coeff0_to_fqmul5] [get_bd_pins signal_multiplexer_19/data0]
  connect_bd_net -net polyvec_basemul_acc_0_coeff1_to_fqmul0 [get_bd_pins polyvec_basemul_acc_0/coeff1_to_fqmul0] [get_bd_pins signal_multiplexer_12/data0b]
  connect_bd_net -net polyvec_basemul_acc_0_coeff1_to_fqmul1 [get_bd_pins polyvec_basemul_acc_0/coeff1_to_fqmul1] [get_bd_pins signal_multiplexer_14/data0b]
  connect_bd_net -net polyvec_basemul_acc_0_coeff1_to_fqmul2 [get_bd_pins polyvec_basemul_acc_0/coeff1_to_fqmul2] [get_bd_pins signal_multiplexer_16/data0b]
  connect_bd_net -net polyvec_basemul_acc_0_coeff1_to_fqmul3 [get_bd_pins polyvec_basemul_acc_0/coeff1_to_fqmul3] [get_bd_pins signal_multiplexer_17/data0b]
  connect_bd_net -net polyvec_basemul_acc_0_coeff1_to_fqmul4 [get_bd_pins polyvec_basemul_acc_0/coeff1_to_fqmul4] [get_bd_pins signal_multiplexer_18/data0b]
  connect_bd_net -net polyvec_basemul_acc_0_coeff1_to_fqmul5 [get_bd_pins polyvec_basemul_acc_0/coeff1_to_fqmul5] [get_bd_pins signal_multiplexer_19/data0b]
  connect_bd_net -net polyvec_basemul_acc_0_data0_to_barrett [get_bd_pins polyvec_basemul_acc_0/data0_to_barrett] [get_bd_pins signal_multiplexer_0/data1]
  connect_bd_net -net polyvec_basemul_acc_0_data1_to_barrett [get_bd_pins polyvec_basemul_acc_0/data1_to_barrett] [get_bd_pins signal_multiplexer_1/data1]
  connect_bd_net -net polyvec_basemul_acc_0_valid0_to_barrett [get_bd_pins polyvec_basemul_acc_0/valid0_to_barrett] [get_bd_pins signal_multiplexer_0/valid1]
  connect_bd_net -net polyvec_basemul_acc_0_valid1_to_barrett [get_bd_pins polyvec_basemul_acc_0/valid1_to_barrett] [get_bd_pins signal_multiplexer_1/valid1]
  connect_bd_net -net polyvec_basemul_acc_0_valid_to_fqmul0 [get_bd_pins polyvec_basemul_acc_0/valid_to_fqmul0] [get_bd_pins signal_multiplexer_12/valid0]
  connect_bd_net -net polyvec_basemul_acc_0_valid_to_fqmul1 [get_bd_pins polyvec_basemul_acc_0/valid_to_fqmul1] [get_bd_pins signal_multiplexer_14/valid0]
  connect_bd_net -net polyvec_basemul_acc_0_valid_to_fqmul2 [get_bd_pins polyvec_basemul_acc_0/valid_to_fqmul2] [get_bd_pins signal_multiplexer_16/valid0]
  connect_bd_net -net polyvec_basemul_acc_0_valid_to_fqmul3 [get_bd_pins polyvec_basemul_acc_0/valid_to_fqmul3] [get_bd_pins signal_multiplexer_17/valid0]
  connect_bd_net -net polyvec_basemul_acc_0_valid_to_fqmul4 [get_bd_pins polyvec_basemul_acc_0/valid_to_fqmul4] [get_bd_pins signal_multiplexer_18/valid0]
  connect_bd_net -net polyvec_basemul_acc_0_valid_to_fqmul5 [get_bd_pins polyvec_basemul_acc_0/valid_to_fqmul5] [get_bd_pins signal_multiplexer_19/valid0]
  connect_bd_net -net polyvec_invntt_0_busy [get_bd_pins axi_gpio_4/gpio2_io_i] [get_bd_pins polyvec_invntt_0/busy] [get_bd_pins timer_4/enable]
  connect_bd_net -net polyvec_invntt_0_coeff0_to_fqmul0 [get_bd_pins polyvec_invntt_0/coeff0_to_fqmul0] [get_bd_pins signal_multiplexer_18/data1]
  connect_bd_net -net polyvec_invntt_0_coeff0_to_fqmul1 [get_bd_pins polyvec_invntt_0/coeff0_to_fqmul1] [get_bd_pins signal_multiplexer_19/data1]
  connect_bd_net -net polyvec_invntt_0_coeff1_to_fqmul0 [get_bd_pins polyvec_invntt_0/coeff1_to_fqmul0] [get_bd_pins signal_multiplexer_18/data1b]
  connect_bd_net -net polyvec_invntt_0_coeff1_to_fqmul1 [get_bd_pins polyvec_invntt_0/coeff1_to_fqmul1] [get_bd_pins signal_multiplexer_19/data1b]
  connect_bd_net -net polyvec_invntt_0_data0_to_barrett [get_bd_pins polyvec_invntt_0/data0_to_barrett] [get_bd_pins signal_multiplexer_0/data3]
  connect_bd_net -net polyvec_invntt_0_data1_to_barrett [get_bd_pins polyvec_invntt_0/data1_to_barrett] [get_bd_pins signal_multiplexer_1/data3]
  connect_bd_net -net polyvec_invntt_0_en_dsm [get_bd_pins polyvec_invntt_0/en_dsm] [get_bd_pins signal_multiplexer_0/en3] [get_bd_pins signal_multiplexer_1/en3] [get_bd_pins signal_multiplexer_18/en1] [get_bd_pins signal_multiplexer_19/en1] [get_bd_pins signal_multiplexer_6/en1] [get_bd_pins signal_multiplexer_7/en1]
  connect_bd_net -net polyvec_invntt_0_valid0_to_barrett [get_bd_pins polyvec_invntt_0/valid0_to_barrett] [get_bd_pins signal_multiplexer_0/valid3]
  connect_bd_net -net polyvec_invntt_0_valid1_to_barrett [get_bd_pins polyvec_invntt_0/valid1_to_barrett] [get_bd_pins signal_multiplexer_1/valid3]
  connect_bd_net -net polyvec_invntt_0_valid_to_fqmul0 [get_bd_pins polyvec_invntt_0/valid_to_fqmul0] [get_bd_pins signal_multiplexer_18/valid1]
  connect_bd_net -net polyvec_invntt_0_valid_to_fqmul1 [get_bd_pins polyvec_invntt_0/valid_to_fqmul1] [get_bd_pins signal_multiplexer_19/valid1]
  connect_bd_net -net polyvec_ntt_0_busy [get_bd_pins axi_gpio_4/gpio_io_i] [get_bd_pins polyvec_ntt_0/busy] [get_bd_pins timer_3/enable]
  connect_bd_net -net polyvec_ntt_0_coeff0_to_fqmul0 [get_bd_pins polyvec_ntt_0/coeff0_to_fqmul0] [get_bd_pins signal_multiplexer_16/data1]
  connect_bd_net -net polyvec_ntt_0_coeff0_to_fqmul1 [get_bd_pins polyvec_ntt_0/coeff0_to_fqmul1] [get_bd_pins signal_multiplexer_17/data1]
  connect_bd_net -net polyvec_ntt_0_coeff1_to_fqmul0 [get_bd_pins polyvec_ntt_0/coeff1_to_fqmul0] [get_bd_pins signal_multiplexer_16/data1b]
  connect_bd_net -net polyvec_ntt_0_coeff1_to_fqmul1 [get_bd_pins polyvec_ntt_0/coeff1_to_fqmul1] [get_bd_pins signal_multiplexer_17/data1b]
  connect_bd_net -net polyvec_ntt_0_data0_to_barrett [get_bd_pins polyvec_ntt_0/data0_to_barrett] [get_bd_pins signal_multiplexer_0/data2]
  connect_bd_net -net polyvec_ntt_0_data1_to_barrett [get_bd_pins polyvec_ntt_0/data1_to_barrett] [get_bd_pins signal_multiplexer_1/data2]
  connect_bd_net -net polyvec_ntt_0_en_dsm [get_bd_pins polyvec_ntt_0/en_dsm] [get_bd_pins signal_multiplexer_0/en2] [get_bd_pins signal_multiplexer_1/en2] [get_bd_pins signal_multiplexer_16/en1] [get_bd_pins signal_multiplexer_17/en1] [get_bd_pins signal_multiplexer_4/en1] [get_bd_pins signal_multiplexer_5/en1]
  connect_bd_net -net polyvec_ntt_0_valid0_to_barrett [get_bd_pins polyvec_ntt_0/valid0_to_barrett] [get_bd_pins signal_multiplexer_0/valid2]
  connect_bd_net -net polyvec_ntt_0_valid1_to_barrett [get_bd_pins polyvec_ntt_0/valid1_to_barrett] [get_bd_pins signal_multiplexer_1/valid2]
  connect_bd_net -net polyvec_ntt_0_valid_to_fqmul0 [get_bd_pins polyvec_ntt_0/valid_to_fqmul0] [get_bd_pins signal_multiplexer_16/valid1]
  connect_bd_net -net polyvec_ntt_0_valid_to_fqmul1 [get_bd_pins polyvec_ntt_0/valid_to_fqmul1] [get_bd_pins signal_multiplexer_17/valid1]
  connect_bd_net -net polyvec_reduce_0_busy [get_bd_pins axi_gpio_2/gpio2_io_i] [get_bd_pins polyvec_reduce_0/busy] [get_bd_pins timer_1/enable]
  connect_bd_net -net polyvec_reduce_0_do_lower_barrett [get_bd_pins polyvec_reduce_0/do_lower_barrett0] [get_bd_pins signal_multiplexer_0/data0]
  connect_bd_net -net polyvec_reduce_0_do_lower_barrett1 [get_bd_pins polyvec_reduce_0/do_lower_barrett1] [get_bd_pins signal_multiplexer_8/data0]
  connect_bd_net -net polyvec_reduce_0_do_upper_barrett [get_bd_pins polyvec_reduce_0/do_upper_barrett0] [get_bd_pins signal_multiplexer_1/data0]
  connect_bd_net -net polyvec_reduce_0_do_upper_barrett1 [get_bd_pins polyvec_reduce_0/do_upper_barrett1] [get_bd_pins signal_multiplexer_9/data0]
  connect_bd_net -net polyvec_reduce_0_en_lower_barrett [get_bd_pins polyvec_reduce_0/en_lower_barrett0] [get_bd_pins signal_multiplexer_0/en0]
  connect_bd_net -net polyvec_reduce_0_en_lower_barrett1 [get_bd_pins polyvec_reduce_0/en_lower_barrett1] [get_bd_pins signal_multiplexer_8/en0]
  connect_bd_net -net polyvec_reduce_0_en_upper_barrett [get_bd_pins polyvec_reduce_0/en_upper_barrett0] [get_bd_pins signal_multiplexer_1/en0]
  connect_bd_net -net polyvec_reduce_0_en_upper_barrett1 [get_bd_pins polyvec_reduce_0/en_upper_barrett1] [get_bd_pins signal_multiplexer_9/en0]
  connect_bd_net -net polyvec_reduce_0_valid_out_lower_barrett [get_bd_pins polyvec_reduce_0/valid_out_lower_barrett0] [get_bd_pins signal_multiplexer_0/valid0]
  connect_bd_net -net polyvec_reduce_0_valid_out_lower_barrett1 [get_bd_pins polyvec_reduce_0/valid_out_lower_barrett1] [get_bd_pins signal_multiplexer_8/valid0]
  connect_bd_net -net polyvec_reduce_0_valid_out_upper_barrett [get_bd_pins polyvec_reduce_0/valid_out_upper_barrett0] [get_bd_pins signal_multiplexer_1/valid0]
  connect_bd_net -net polyvec_reduce_0_valid_out_upper_barrett1 [get_bd_pins polyvec_reduce_0/valid_out_upper_barrett1] [get_bd_pins signal_multiplexer_9/valid0]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins axi_gpio_10/s_axi_aresetn] [get_bd_pins axi_gpio_11/s_axi_aresetn] [get_bd_pins axi_gpio_2/s_axi_aresetn] [get_bd_pins axi_gpio_3/s_axi_aresetn] [get_bd_pins axi_gpio_4/s_axi_aresetn] [get_bd_pins axi_gpio_5/s_axi_aresetn] [get_bd_pins axi_gpio_6/s_axi_aresetn] [get_bd_pins axi_gpio_7/s_axi_aresetn] [get_bd_pins axi_gpio_8/s_axi_aresetn] [get_bd_pins axi_gpio_9/s_axi_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_interconnect_0/M08_ARESETN] [get_bd_pins axi_interconnect_0/M09_ARESETN] [get_bd_pins axi_interconnect_0/M10_ARESETN] [get_bd_pins axi_interconnect_0/M11_ARESETN] [get_bd_pins axi_interconnect_0/M12_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins axi_interconnect_1/S01_ARESETN] [get_bd_pins dual_bram_axis_0/m00_axis_aresetn] [get_bd_pins dual_bram_axis_0/s00_axis_aresetn] [get_bd_pins keccak_f1600_bram_ip_0/aresetn] [get_bd_pins poly_tomont_0/aresetn] [get_bd_pins polyvec_basemul_acc_0/aresetn] [get_bd_pins polyvec_invntt_0/aresetn] [get_bd_pins polyvec_ntt_0/aresetn] [get_bd_pins polyvec_reduce_0/aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins axi_gpio_10/s_axi_aclk] [get_bd_pins axi_gpio_11/s_axi_aclk] [get_bd_pins axi_gpio_2/s_axi_aclk] [get_bd_pins axi_gpio_3/s_axi_aclk] [get_bd_pins axi_gpio_4/s_axi_aclk] [get_bd_pins axi_gpio_5/s_axi_aclk] [get_bd_pins axi_gpio_6/s_axi_aclk] [get_bd_pins axi_gpio_7/s_axi_aclk] [get_bd_pins axi_gpio_8/s_axi_aclk] [get_bd_pins axi_gpio_9/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_interconnect_0/M08_ACLK] [get_bd_pins axi_interconnect_0/M09_ACLK] [get_bd_pins axi_interconnect_0/M10_ACLK] [get_bd_pins axi_interconnect_0/M11_ACLK] [get_bd_pins axi_interconnect_0/M12_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_interconnect_1/S01_ACLK] [get_bd_pins barrett_reduce_0/clk] [get_bd_pins barrett_reduce_1/clk] [get_bd_pins barrett_reduce_2/clk] [get_bd_pins barrett_reduce_3/clk] [get_bd_pins dual_bram_axis_0/m00_axis_aclk] [get_bd_pins dual_bram_axis_0/s00_axis_aclk] [get_bd_pins fqmul_0/clk] [get_bd_pins fqmul_1/clk] [get_bd_pins fqmul_2/clk] [get_bd_pins fqmul_3/clk] [get_bd_pins fqmul_4/clk] [get_bd_pins fqmul_5/clk] [get_bd_pins keccak_f1600_bram_ip_0/clk] [get_bd_pins montgomery_reduction_0/clk] [get_bd_pins montgomery_reduction_1/clk] [get_bd_pins montgomery_reduction_2/clk] [get_bd_pins montgomery_reduction_3/clk] [get_bd_pins montgomery_reduction_4/clk] [get_bd_pins montgomery_reduction_5/clk] [get_bd_pins poly_tomont_0/clk] [get_bd_pins polyvec_basemul_acc_0/clk] [get_bd_pins polyvec_invntt_0/clk] [get_bd_pins polyvec_ntt_0/clk] [get_bd_pins polyvec_reduce_0/clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins signal_multiplexer_0/clk] [get_bd_pins signal_multiplexer_1/clk] [get_bd_pins signal_multiplexer_12/clk] [get_bd_pins signal_multiplexer_14/clk] [get_bd_pins signal_multiplexer_16/clk] [get_bd_pins signal_multiplexer_17/clk] [get_bd_pins signal_multiplexer_18/clk] [get_bd_pins signal_multiplexer_19/clk] [get_bd_pins signal_multiplexer_2/clk] [get_bd_pins signal_multiplexer_3/clk] [get_bd_pins signal_multiplexer_4/clk] [get_bd_pins signal_multiplexer_5/clk] [get_bd_pins signal_multiplexer_6/clk] [get_bd_pins signal_multiplexer_7/clk] [get_bd_pins signal_multiplexer_8/clk] [get_bd_pins signal_multiplexer_9/clk] [get_bd_pins timer2_0/clk] [get_bd_pins timer_0/clk] [get_bd_pins timer_1/clk] [get_bd_pins timer_2/clk] [get_bd_pins timer_3/clk] [get_bd_pins timer_4/clk] [get_bd_pins timer_5/clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]
  connect_bd_net -net signal_multiplexer_0_data [get_bd_pins barrett_reduce_0/data_in] [get_bd_pins signal_multiplexer_0/data]
  connect_bd_net -net signal_multiplexer_0_valid [get_bd_pins barrett_reduce_0/valid_in] [get_bd_pins signal_multiplexer_0/valid]
  connect_bd_net -net signal_multiplexer_12_data [get_bd_pins fqmul_0/data_in_1] [get_bd_pins signal_multiplexer_12/data]
  connect_bd_net -net signal_multiplexer_12_datab [get_bd_pins fqmul_0/data_in_2] [get_bd_pins signal_multiplexer_12/datab]
  connect_bd_net -net signal_multiplexer_12_valid [get_bd_pins fqmul_0/valid_in] [get_bd_pins signal_multiplexer_12/valid]
  connect_bd_net -net signal_multiplexer_14_data [get_bd_pins fqmul_1/data_in_1] [get_bd_pins signal_multiplexer_14/data]
  connect_bd_net -net signal_multiplexer_14_datab [get_bd_pins fqmul_1/data_in_2] [get_bd_pins signal_multiplexer_14/datab]
  connect_bd_net -net signal_multiplexer_14_valid [get_bd_pins fqmul_1/valid_in] [get_bd_pins signal_multiplexer_14/valid]
  connect_bd_net -net signal_multiplexer_16_data [get_bd_pins fqmul_2/data_in_1] [get_bd_pins signal_multiplexer_16/data]
  connect_bd_net -net signal_multiplexer_16_datab [get_bd_pins fqmul_2/data_in_2] [get_bd_pins signal_multiplexer_16/datab]
  connect_bd_net -net signal_multiplexer_16_valid [get_bd_pins fqmul_2/valid_in] [get_bd_pins signal_multiplexer_16/valid]
  connect_bd_net -net signal_multiplexer_17_data [get_bd_pins fqmul_3/data_in_1] [get_bd_pins signal_multiplexer_17/data]
  connect_bd_net -net signal_multiplexer_17_datab [get_bd_pins fqmul_3/data_in_2] [get_bd_pins signal_multiplexer_17/datab]
  connect_bd_net -net signal_multiplexer_17_valid [get_bd_pins fqmul_3/valid_in] [get_bd_pins signal_multiplexer_17/valid]
  connect_bd_net -net signal_multiplexer_18_data [get_bd_pins fqmul_4/data_in_1] [get_bd_pins signal_multiplexer_18/data]
  connect_bd_net -net signal_multiplexer_18_datab [get_bd_pins fqmul_4/data_in_2] [get_bd_pins signal_multiplexer_18/datab]
  connect_bd_net -net signal_multiplexer_18_valid [get_bd_pins fqmul_4/valid_in] [get_bd_pins signal_multiplexer_18/valid]
  connect_bd_net -net signal_multiplexer_19_data [get_bd_pins fqmul_5/data_in_1] [get_bd_pins signal_multiplexer_19/data]
  connect_bd_net -net signal_multiplexer_19_datab [get_bd_pins fqmul_5/data_in_2] [get_bd_pins signal_multiplexer_19/datab]
  connect_bd_net -net signal_multiplexer_19_valid [get_bd_pins fqmul_5/valid_in] [get_bd_pins signal_multiplexer_19/valid]
  connect_bd_net -net signal_multiplexer_1_data [get_bd_pins barrett_reduce_1/data_in] [get_bd_pins signal_multiplexer_1/data]
  connect_bd_net -net signal_multiplexer_1_valid [get_bd_pins barrett_reduce_1/valid_in] [get_bd_pins signal_multiplexer_1/valid]
  connect_bd_net -net signal_multiplexer_2_data [get_bd_pins montgomery_reduction_0/data_in] [get_bd_pins signal_multiplexer_2/data]
  connect_bd_net -net signal_multiplexer_2_valid [get_bd_pins montgomery_reduction_0/valid_in] [get_bd_pins signal_multiplexer_2/valid]
  connect_bd_net -net signal_multiplexer_3_data [get_bd_pins montgomery_reduction_1/data_in] [get_bd_pins signal_multiplexer_3/data]
  connect_bd_net -net signal_multiplexer_3_valid [get_bd_pins montgomery_reduction_1/valid_in] [get_bd_pins signal_multiplexer_3/valid]
  connect_bd_net -net signal_multiplexer_4_data [get_bd_pins montgomery_reduction_2/data_in] [get_bd_pins signal_multiplexer_4/data]
  connect_bd_net -net signal_multiplexer_4_valid [get_bd_pins montgomery_reduction_2/valid_in] [get_bd_pins signal_multiplexer_4/valid]
  connect_bd_net -net signal_multiplexer_5_data [get_bd_pins montgomery_reduction_3/data_in] [get_bd_pins signal_multiplexer_5/data]
  connect_bd_net -net signal_multiplexer_5_valid [get_bd_pins montgomery_reduction_3/valid_in] [get_bd_pins signal_multiplexer_5/valid]
  connect_bd_net -net signal_multiplexer_6_data [get_bd_pins montgomery_reduction_4/data_in] [get_bd_pins signal_multiplexer_6/data]
  connect_bd_net -net signal_multiplexer_6_valid [get_bd_pins montgomery_reduction_4/valid_in] [get_bd_pins signal_multiplexer_6/valid]
  connect_bd_net -net signal_multiplexer_7_data [get_bd_pins montgomery_reduction_5/data_in] [get_bd_pins signal_multiplexer_7/data]
  connect_bd_net -net signal_multiplexer_7_valid [get_bd_pins montgomery_reduction_5/valid_in] [get_bd_pins signal_multiplexer_7/valid]
  connect_bd_net -net signal_multiplexer_8_data [get_bd_pins barrett_reduce_2/data_in] [get_bd_pins signal_multiplexer_8/data]
  connect_bd_net -net signal_multiplexer_8_valid [get_bd_pins barrett_reduce_2/valid_in] [get_bd_pins signal_multiplexer_8/valid]
  connect_bd_net -net signal_multiplexer_9_data [get_bd_pins barrett_reduce_3/data_in] [get_bd_pins signal_multiplexer_9/data]
  connect_bd_net -net signal_multiplexer_9_valid [get_bd_pins barrett_reduce_3/valid_in] [get_bd_pins signal_multiplexer_9/valid]
  connect_bd_net -net timer2_0_count [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins timer2_0/count]
  connect_bd_net -net timer_0_count [get_bd_pins axi_gpio_6/gpio2_io_i] [get_bd_pins timer_0/count]
  connect_bd_net -net timer_1_count [get_bd_pins axi_gpio_7/gpio2_io_i] [get_bd_pins timer_1/count]
  connect_bd_net -net timer_2_count [get_bd_pins axi_gpio_8/gpio2_io_i] [get_bd_pins timer_2/count]
  connect_bd_net -net timer_3_count [get_bd_pins axi_gpio_9/gpio2_io_i] [get_bd_pins timer_3/count]
  connect_bd_net -net timer_4_count [get_bd_pins axi_gpio_10/gpio2_io_i] [get_bd_pins timer_4/count]
  connect_bd_net -net timer_5_count [get_bd_pins axi_gpio_11/gpio2_io_i] [get_bd_pins timer_5/count]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x00010000 -offset 0x40400000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x412A0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_10/S_AXI/Reg] SEG_axi_gpio_10_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x412B0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_11/S_AXI/Reg] SEG_axi_gpio_11_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41210000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41220000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_2/S_AXI/Reg] SEG_axi_gpio_2_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41230000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_3/S_AXI/Reg] SEG_axi_gpio_3_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41240000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_4/S_AXI/Reg] SEG_axi_gpio_4_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41250000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_5/S_AXI/Reg] SEG_axi_gpio_5_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41260000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_6/S_AXI/Reg] SEG_axi_gpio_6_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41270000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_7/S_AXI/Reg] SEG_axi_gpio_7_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41280000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_8/S_AXI/Reg] SEG_axi_gpio_8_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41290000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_9/S_AXI/Reg] SEG_axi_gpio_9_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


