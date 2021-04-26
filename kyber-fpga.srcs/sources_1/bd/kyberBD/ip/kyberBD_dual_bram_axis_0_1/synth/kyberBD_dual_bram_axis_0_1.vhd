-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:dual_bram_axis:1.0
-- IP Revision: 11

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.dual_bram_axis_v1_0;

ENTITY kyberBD_dual_bram_axis_0_1 IS
  PORT (
    m00_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axis_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axis_tlast : OUT STD_LOGIC;
    m00_axis_tvalid : OUT STD_LOGIC;
    m00_axis_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axis_tready : IN STD_LOGIC;
    port_bram0_ena : IN STD_LOGIC;
    port_bram0_wea : IN STD_LOGIC;
    port_bram0_addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    port_bram0_dia : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    port_bram0_doa : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    port_bram0_enb : IN STD_LOGIC;
    port_bram0_web : IN STD_LOGIC;
    port_bram0_addrb : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    port_bram0_dib : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    port_bram0_dob : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    port_bram1_ena : IN STD_LOGIC;
    port_bram1_wea : IN STD_LOGIC;
    port_bram1_addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    port_bram1_dia : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    port_bram1_doa : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    port_bram1_enb : IN STD_LOGIC;
    port_bram1_web : IN STD_LOGIC;
    port_bram1_addrb : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    port_bram1_dib : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    port_bram1_dob : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    gpio_enable_tx : IN STD_LOGIC;
    gpio_length_tx : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axis_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axis_tlast : IN STD_LOGIC;
    s00_axis_tvalid : IN STD_LOGIC;
    m00_axis_aclk : IN STD_LOGIC;
    m00_axis_aresetn : IN STD_LOGIC;
    s00_axis_tready : OUT STD_LOGIC;
    s00_axis_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axis_aclk : IN STD_LOGIC;
    s00_axis_aresetn : IN STD_LOGIC
  );
END kyberBD_dual_bram_axis_0_1;

ARCHITECTURE kyberBD_dual_bram_axis_0_1_arch OF kyberBD_dual_bram_axis_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF kyberBD_dual_bram_axis_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT dual_bram_axis_v1_0 IS
    GENERIC (
      ADDR_WIDTH : INTEGER;
      WORD_WIDTH : INTEGER
    );
    PORT (
      m00_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axis_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axis_tlast : OUT STD_LOGIC;
      m00_axis_tvalid : OUT STD_LOGIC;
      m00_axis_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axis_tready : IN STD_LOGIC;
      port_bram0_ena : IN STD_LOGIC;
      port_bram0_wea : IN STD_LOGIC;
      port_bram0_addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      port_bram0_dia : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      port_bram0_doa : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      port_bram0_enb : IN STD_LOGIC;
      port_bram0_web : IN STD_LOGIC;
      port_bram0_addrb : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      port_bram0_dib : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      port_bram0_dob : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      port_bram1_ena : IN STD_LOGIC;
      port_bram1_wea : IN STD_LOGIC;
      port_bram1_addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      port_bram1_dia : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      port_bram1_doa : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      port_bram1_enb : IN STD_LOGIC;
      port_bram1_web : IN STD_LOGIC;
      port_bram1_addrb : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      port_bram1_dib : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      port_bram1_dob : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      gpio_enable_tx : IN STD_LOGIC;
      gpio_length_tx : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axis_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axis_tlast : IN STD_LOGIC;
      s00_axis_tvalid : IN STD_LOGIC;
      m00_axis_aclk : IN STD_LOGIC;
      m00_axis_aresetn : IN STD_LOGIC;
      s00_axis_tready : OUT STD_LOGIC;
      s00_axis_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axis_aclk : IN STD_LOGIC;
      s00_axis_aresetn : IN STD_LOGIC
    );
  END COMPONENT dual_bram_axis_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF kyberBD_dual_bram_axis_0_1_arch: ARCHITECTURE IS "dual_bram_axis_v1_0,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF kyberBD_dual_bram_axis_0_1_arch : ARCHITECTURE IS "kyberBD_dual_bram_axis_0_1,dual_bram_axis_v1_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF kyberBD_dual_bram_axis_0_1_arch: ARCHITECTURE IS "kyberBD_dual_bram_axis_0_1,dual_bram_axis_v1_0,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=dual_bram_axis,x_ipVersion=1.0,x_ipCoreRevision=11,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,ADDR_WIDTH=11,WORD_WIDTH=32}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN kyberBD_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axis_aresetn: SIGNAL IS "XIL_INTERFACENAME m00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 m00_axis_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axis_aclk: SIGNAL IS "XIL_INTERFACENAME m00_axis_aclk, ASSOCIATED_RESET m00_axis_aresetn, ASSOCIATED_BUSIF M00_AXIS, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN kyberBD_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 m00_axis_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_tdata: SIGNAL IS "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN kyberBD_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram1_dob: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_B DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram1_dib: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_B DIN";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram1_addrb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_B ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram1_web: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_B WE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF port_bram1_enb: SIGNAL IS "XIL_INTERFACENAME BRAM1_PORT_B, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram1_enb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_B EN";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram1_doa: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_A DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram1_dia: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_A DIN";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram1_addra: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_A ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram1_wea: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_A WE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF port_bram1_ena: SIGNAL IS "XIL_INTERFACENAME BRAM1_PORT_A, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram1_ena: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_A EN";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram0_dob: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_B DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram0_dib: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_B DIN";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram0_addrb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_B ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram0_web: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_B WE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF port_bram0_enb: SIGNAL IS "XIL_INTERFACENAME BRAM0_PORT_B, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram0_enb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_B EN";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram0_doa: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_A DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram0_dia: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_A DIN";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram0_addra: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_A ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram0_wea: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_A WE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF port_bram0_ena: SIGNAL IS "XIL_INTERFACENAME BRAM0_PORT_A, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF port_bram0_ena: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_A EN";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axis_tdata: SIGNAL IS "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN kyberBD_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
BEGIN
  U0 : dual_bram_axis_v1_0
    GENERIC MAP (
      ADDR_WIDTH => 11,
      WORD_WIDTH => 32
    )
    PORT MAP (
      m00_axis_tdata => m00_axis_tdata,
      m00_axis_tstrb => m00_axis_tstrb,
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tvalid => m00_axis_tvalid,
      m00_axis_tkeep => m00_axis_tkeep,
      m00_axis_tready => m00_axis_tready,
      port_bram0_ena => port_bram0_ena,
      port_bram0_wea => port_bram0_wea,
      port_bram0_addra => port_bram0_addra,
      port_bram0_dia => port_bram0_dia,
      port_bram0_doa => port_bram0_doa,
      port_bram0_enb => port_bram0_enb,
      port_bram0_web => port_bram0_web,
      port_bram0_addrb => port_bram0_addrb,
      port_bram0_dib => port_bram0_dib,
      port_bram0_dob => port_bram0_dob,
      port_bram1_ena => port_bram1_ena,
      port_bram1_wea => port_bram1_wea,
      port_bram1_addra => port_bram1_addra,
      port_bram1_dia => port_bram1_dia,
      port_bram1_doa => port_bram1_doa,
      port_bram1_enb => port_bram1_enb,
      port_bram1_web => port_bram1_web,
      port_bram1_addrb => port_bram1_addrb,
      port_bram1_dib => port_bram1_dib,
      port_bram1_dob => port_bram1_dob,
      gpio_enable_tx => gpio_enable_tx,
      gpio_length_tx => gpio_length_tx,
      s00_axis_tdata => s00_axis_tdata,
      s00_axis_tstrb => s00_axis_tstrb,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tkeep => s00_axis_tkeep,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn
    );
END kyberBD_dual_bram_axis_0_1_arch;
