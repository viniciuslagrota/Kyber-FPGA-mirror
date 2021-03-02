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
-- IP Revision: 4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY kyberBD_signal_multiplexer_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    en0 : IN STD_LOGIC;
    valid0 : IN STD_LOGIC;
    data0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    en1 : IN STD_LOGIC;
    valid1 : IN STD_LOGIC;
    data1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    en2 : IN STD_LOGIC;
    valid2 : IN STD_LOGIC;
    data2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    valid : OUT STD_LOGIC;
    data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END kyberBD_signal_multiplexer_0_0;

ARCHITECTURE kyberBD_signal_multiplexer_0_0_arch OF kyberBD_signal_multiplexer_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF kyberBD_signal_multiplexer_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT signal_multiplexer_v1_0 IS
    GENERIC (
      DATA_WIDTH : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      en0 : IN STD_LOGIC;
      valid0 : IN STD_LOGIC;
      data0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data0b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en1 : IN STD_LOGIC;
      valid1 : IN STD_LOGIC;
      data1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data1b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en2 : IN STD_LOGIC;
      valid2 : IN STD_LOGIC;
      data2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data2b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en3 : IN STD_LOGIC;
      valid3 : IN STD_LOGIC;
      data3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data3b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en4 : IN STD_LOGIC;
      valid4 : IN STD_LOGIC;
      data4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data4b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      en5 : IN STD_LOGIC;
      valid5 : IN STD_LOGIC;
      data5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data5b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      valid : OUT STD_LOGIC;
      data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      datab : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
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
      en0 => en0,
      valid0 => valid0,
      data0 => data0,
      data0b => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      en1 => en1,
      valid1 => valid1,
      data1 => data1,
      data1b => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      en2 => en2,
      valid2 => valid2,
      data2 => data2,
      data2b => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      en3 => '0',
      valid3 => '0',
      data3 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data3b => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      en4 => '0',
      valid4 => '0',
      data4 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data4b => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      en5 => '0',
      valid5 => '0',
      data5 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data5b => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      valid => valid,
      data => data
    );
END kyberBD_signal_multiplexer_0_0_arch;
