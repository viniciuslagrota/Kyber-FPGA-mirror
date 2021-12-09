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

-- IP VLNV: xilinx.com:user:polyvec_invntt:1.0
-- IP Revision: 7

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.polyvec_invntt_v1_0;

ENTITY kyberBD_polyvec_invntt_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    bram0_ena : OUT STD_LOGIC;
    bram0_wea : OUT STD_LOGIC;
    bram0_addra : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    bram0_dia : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram0_doa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram0_enb : OUT STD_LOGIC;
    bram0_web : OUT STD_LOGIC;
    bram0_addrb : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    bram0_dib : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram0_dob : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram1_ena : OUT STD_LOGIC;
    bram1_wea : OUT STD_LOGIC;
    bram1_addra : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    bram1_dia : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram1_doa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram1_enb : OUT STD_LOGIC;
    bram1_web : OUT STD_LOGIC;
    bram1_addrb : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    bram1_dib : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram1_dob : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    valid_to_fqmul0 : OUT STD_LOGIC;
    coeff0_to_fqmul0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    coeff1_to_fqmul0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    valid_to_fqmul1 : OUT STD_LOGIC;
    coeff0_to_fqmul1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    coeff1_to_fqmul1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    valid_from_fqmul0 : IN STD_LOGIC;
    coeff_from_fqmul0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    valid_from_fqmul1 : IN STD_LOGIC;
    coeff_from_fqmul1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    valid0_to_barrett : OUT STD_LOGIC;
    data0_to_barrett : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    valid1_to_barrett : OUT STD_LOGIC;
    data1_to_barrett : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    valid0_from_barrett : IN STD_LOGIC;
    data0_from_barrett : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    valid1_from_barrett : IN STD_LOGIC;
    data1_from_barrett : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    en_dsm : OUT STD_LOGIC;
    kyber_k : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    start : IN STD_LOGIC;
    busy : OUT STD_LOGIC
  );
END kyberBD_polyvec_invntt_0_0;

ARCHITECTURE kyberBD_polyvec_invntt_0_0_arch OF kyberBD_polyvec_invntt_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF kyberBD_polyvec_invntt_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT polyvec_invntt_v1_0 IS
    GENERIC (
      DATA_WIDTH : INTEGER;
      ADDR_WIDTH : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      bram0_ena : OUT STD_LOGIC;
      bram0_wea : OUT STD_LOGIC;
      bram0_addra : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      bram0_dia : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram0_doa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram0_enb : OUT STD_LOGIC;
      bram0_web : OUT STD_LOGIC;
      bram0_addrb : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      bram0_dib : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram0_dob : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram1_ena : OUT STD_LOGIC;
      bram1_wea : OUT STD_LOGIC;
      bram1_addra : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      bram1_dia : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram1_doa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram1_enb : OUT STD_LOGIC;
      bram1_web : OUT STD_LOGIC;
      bram1_addrb : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      bram1_dib : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram1_dob : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      valid_to_fqmul0 : OUT STD_LOGIC;
      coeff0_to_fqmul0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      coeff1_to_fqmul0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      valid_to_fqmul1 : OUT STD_LOGIC;
      coeff0_to_fqmul1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      coeff1_to_fqmul1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      valid_from_fqmul0 : IN STD_LOGIC;
      coeff_from_fqmul0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      valid_from_fqmul1 : IN STD_LOGIC;
      coeff_from_fqmul1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      valid0_to_barrett : OUT STD_LOGIC;
      data0_to_barrett : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      valid1_to_barrett : OUT STD_LOGIC;
      data1_to_barrett : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      valid0_from_barrett : IN STD_LOGIC;
      data0_from_barrett : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      valid1_from_barrett : IN STD_LOGIC;
      data1_from_barrett : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en_dsm : OUT STD_LOGIC;
      kyber_k : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      start : IN STD_LOGIC;
      busy : OUT STD_LOGIC
    );
  END COMPONENT polyvec_invntt_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF bram1_dob: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_B DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF bram1_dib: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_B DIN";
  ATTRIBUTE X_INTERFACE_INFO OF bram1_addrb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_B ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF bram1_web: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_B WE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF bram1_enb: SIGNAL IS "XIL_INTERFACENAME BRAM1_PORT_B, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF bram1_enb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_B EN";
  ATTRIBUTE X_INTERFACE_INFO OF bram1_doa: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_A DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF bram1_dia: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_A DIN";
  ATTRIBUTE X_INTERFACE_INFO OF bram1_addra: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_A ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF bram1_wea: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_A WE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF bram1_ena: SIGNAL IS "XIL_INTERFACENAME BRAM1_PORT_A, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF bram1_ena: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM1_PORT_A EN";
  ATTRIBUTE X_INTERFACE_INFO OF bram0_dob: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_B DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF bram0_dib: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_B DIN";
  ATTRIBUTE X_INTERFACE_INFO OF bram0_addrb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_B ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF bram0_web: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_B WE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF bram0_enb: SIGNAL IS "XIL_INTERFACENAME BRAM0_PORT_B, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF bram0_enb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_B EN";
  ATTRIBUTE X_INTERFACE_INFO OF bram0_doa: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_A DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF bram0_dia: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_A DIN";
  ATTRIBUTE X_INTERFACE_INFO OF bram0_addra: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_A ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF bram0_wea: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_A WE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF bram0_ena: SIGNAL IS "XIL_INTERFACENAME BRAM0_PORT_A, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF bram0_ena: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM0_PORT_A EN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN kyberBD_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : polyvec_invntt_v1_0
    GENERIC MAP (
      DATA_WIDTH => 32,
      ADDR_WIDTH => 11
    )
    PORT MAP (
      clk => clk,
      aresetn => aresetn,
      bram0_ena => bram0_ena,
      bram0_wea => bram0_wea,
      bram0_addra => bram0_addra,
      bram0_dia => bram0_dia,
      bram0_doa => bram0_doa,
      bram0_enb => bram0_enb,
      bram0_web => bram0_web,
      bram0_addrb => bram0_addrb,
      bram0_dib => bram0_dib,
      bram0_dob => bram0_dob,
      bram1_ena => bram1_ena,
      bram1_wea => bram1_wea,
      bram1_addra => bram1_addra,
      bram1_dia => bram1_dia,
      bram1_doa => bram1_doa,
      bram1_enb => bram1_enb,
      bram1_web => bram1_web,
      bram1_addrb => bram1_addrb,
      bram1_dib => bram1_dib,
      bram1_dob => bram1_dob,
      valid_to_fqmul0 => valid_to_fqmul0,
      coeff0_to_fqmul0 => coeff0_to_fqmul0,
      coeff1_to_fqmul0 => coeff1_to_fqmul0,
      valid_to_fqmul1 => valid_to_fqmul1,
      coeff0_to_fqmul1 => coeff0_to_fqmul1,
      coeff1_to_fqmul1 => coeff1_to_fqmul1,
      valid_from_fqmul0 => valid_from_fqmul0,
      coeff_from_fqmul0 => coeff_from_fqmul0,
      valid_from_fqmul1 => valid_from_fqmul1,
      coeff_from_fqmul1 => coeff_from_fqmul1,
      valid0_to_barrett => valid0_to_barrett,
      data0_to_barrett => data0_to_barrett,
      valid1_to_barrett => valid1_to_barrett,
      data1_to_barrett => data1_to_barrett,
      valid0_from_barrett => valid0_from_barrett,
      data0_from_barrett => data0_from_barrett,
      valid1_from_barrett => valid1_from_barrett,
      data1_from_barrett => data1_from_barrett,
      en_dsm => en_dsm,
      kyber_k => kyber_k,
      start => start,
      busy => busy
    );
END kyberBD_polyvec_invntt_0_0_arch;
