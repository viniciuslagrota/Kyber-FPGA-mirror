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

-- IP VLNV: xilinx.com:user:signal_multiplexer:1.0
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY kyberBD_signal_multiplexer_12_2 IS
  PORT (
    clk : IN STD_LOGIC;
    en_0 : IN STD_LOGIC;
    valid_0 : IN STD_LOGIC;
    data_0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    valid : OUT STD_LOGIC;
    data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END kyberBD_signal_multiplexer_12_2;

ARCHITECTURE kyberBD_signal_multiplexer_12_2_arch OF kyberBD_signal_multiplexer_12_2 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF kyberBD_signal_multiplexer_12_2_arch: ARCHITECTURE IS "yes";
  COMPONENT signal_multiplexer_v1_0 IS
    GENERIC (
      DATA_WIDTH : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      en_0 : IN STD_LOGIC;
      valid_0 : IN STD_LOGIC;
      data_0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en_1 : IN STD_LOGIC;
      valid_1 : IN STD_LOGIC;
      data_1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en_2 : IN STD_LOGIC;
      valid_2 : IN STD_LOGIC;
      data_2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en_3 : IN STD_LOGIC;
      valid_3 : IN STD_LOGIC;
      data_3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en_4 : IN STD_LOGIC;
      valid_4 : IN STD_LOGIC;
      data_4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en_5 : IN STD_LOGIC;
      valid_5 : IN STD_LOGIC;
      data_5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      valid : OUT STD_LOGIC;
      data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT signal_multiplexer_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN kyberBD_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : signal_multiplexer_v1_0
    GENERIC MAP (
      DATA_WIDTH => 16
    )
    PORT MAP (
      clk => clk,
      en_0 => en_0,
      valid_0 => valid_0,
      data_0 => data_0,
      en_1 => '0',
      valid_1 => '0',
      data_1 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      en_2 => '0',
      valid_2 => '0',
      data_2 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      en_3 => '0',
      valid_3 => '0',
      data_3 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      en_4 => '0',
      valid_4 => '0',
      data_4 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      en_5 => '0',
      valid_5 => '0',
      data_5 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      valid => valid,
      data => data
    );
END kyberBD_signal_multiplexer_12_2_arch;