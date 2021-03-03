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

-- IP VLNV: xilinx.com:user:bram_port_selector:1.0
-- IP Revision: 4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY kyberBD_bram_port_selector_1_1 IS
  PORT (
    master_en : OUT STD_LOGIC;
    master_we : OUT STD_LOGIC;
    master_addr : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    master_di : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    master_do : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    slave0_en : IN STD_LOGIC;
    slave0_we : IN STD_LOGIC;
    slave0_addr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    slave0_di : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    slave0_do : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END kyberBD_bram_port_selector_1_1;

ARCHITECTURE kyberBD_bram_port_selector_1_1_arch OF kyberBD_bram_port_selector_1_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF kyberBD_bram_port_selector_1_1_arch: ARCHITECTURE IS "yes";
  COMPONENT bram_port_selector_v1_0 IS
    GENERIC (
      DATA_WIDTH : INTEGER;
      ADDR_WIDTH : INTEGER
    );
    PORT (
      master_en : OUT STD_LOGIC;
      master_we : OUT STD_LOGIC;
      master_addr : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      master_di : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      master_do : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      slave0_en : IN STD_LOGIC;
      slave0_we : IN STD_LOGIC;
      slave0_addr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      slave0_di : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      slave0_do : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      slave1_en : IN STD_LOGIC;
      slave1_we : IN STD_LOGIC;
      slave1_addr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      slave1_di : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      slave1_do : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      slave2_en : IN STD_LOGIC;
      slave2_we : IN STD_LOGIC;
      slave2_addr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      slave2_di : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      slave2_do : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      slave3_en : IN STD_LOGIC;
      slave3_we : IN STD_LOGIC;
      slave3_addr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      slave3_di : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      slave3_do : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      slave4_en : IN STD_LOGIC;
      slave4_we : IN STD_LOGIC;
      slave4_addr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      slave4_di : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      slave4_do : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT bram_port_selector_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF kyberBD_bram_port_selector_1_1_arch: ARCHITECTURE IS "bram_port_selector_v1_0,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF kyberBD_bram_port_selector_1_1_arch : ARCHITECTURE IS "kyberBD_bram_port_selector_1_1,bram_port_selector_v1_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF kyberBD_bram_port_selector_1_1_arch: ARCHITECTURE IS "kyberBD_bram_port_selector_1_1,bram_port_selector_v1_0,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=bram_port_selector,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DATA_WIDTH=32,ADDR_WIDTH=11}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF slave0_do: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_0 DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF slave0_di: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_0 DIN";
  ATTRIBUTE X_INTERFACE_INFO OF slave0_addr: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_0 ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF slave0_we: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_0 WE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF slave0_en: SIGNAL IS "XIL_INTERFACENAME BRAM_PORT_0, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF slave0_en: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_0 EN";
  ATTRIBUTE X_INTERFACE_INFO OF master_do: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_MASTER DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF master_di: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_MASTER DIN";
  ATTRIBUTE X_INTERFACE_INFO OF master_addr: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_MASTER ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF master_we: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_MASTER WE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF master_en: SIGNAL IS "XIL_INTERFACENAME BRAM_PORT_MASTER, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF master_en: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORT_MASTER EN";
BEGIN
  U0 : bram_port_selector_v1_0
    GENERIC MAP (
      DATA_WIDTH => 32,
      ADDR_WIDTH => 11
    )
    PORT MAP (
      master_en => master_en,
      master_we => master_we,
      master_addr => master_addr,
      master_di => master_di,
      master_do => master_do,
      slave0_en => slave0_en,
      slave0_we => slave0_we,
      slave0_addr => slave0_addr,
      slave0_di => slave0_di,
      slave0_do => slave0_do,
      slave1_en => '0',
      slave1_we => '0',
      slave1_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      slave1_di => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      slave2_en => '0',
      slave2_we => '0',
      slave2_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      slave2_di => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      slave3_en => '0',
      slave3_we => '0',
      slave3_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      slave3_di => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      slave4_en => '0',
      slave4_we => '0',
      slave4_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      slave4_di => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32))
    );
END kyberBD_bram_port_selector_1_1_arch;
