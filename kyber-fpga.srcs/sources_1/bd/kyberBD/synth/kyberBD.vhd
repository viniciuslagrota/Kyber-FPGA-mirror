--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Thu Dec  9 18:59:42 2021
--Host        : DESKTOP-0F4OK3D running 64-bit major release  (build 9200)
--Command     : generate_target kyberBD.bd
--Design      : kyberBD
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1QP77VP is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1QP77VP;

architecture STRUCTURE of m00_couplers_imp_1QP77VP is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_YZY4OR is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_YZY4OR;

architecture STRUCTURE of m00_couplers_imp_YZY4OR is
  component kyberBD_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component kyberBD_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= auto_pc_to_m00_couplers_ARID(0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= auto_pc_to_m00_couplers_AWID(0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wid(0) <= auto_pc_to_m00_couplers_WID(0);
  M_AXI_wlast <= auto_pc_to_m00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(0) <= m00_couplers_to_auto_pc_BID(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(0) <= m00_couplers_to_auto_pc_RID(0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_pc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(0) <= S_AXI_arid(0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(0) <= S_AXI_awid(0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component kyberBD_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => auto_pc_to_m00_couplers_ARID(0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => auto_pc_to_m00_couplers_AWID(0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bid(0) => auto_pc_to_m00_couplers_BID(0),
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(0) => auto_pc_to_m00_couplers_RID(0),
      m_axi_rlast => auto_pc_to_m00_couplers_RLAST,
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wid(0) => auto_pc_to_m00_couplers_WID(0),
      m_axi_wlast => auto_pc_to_m00_couplers_WLAST,
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(0) => m00_couplers_to_auto_pc_ARID(0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(0) => m00_couplers_to_auto_pc_AWID(0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(0) => m00_couplers_to_auto_pc_BID(0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(0) => m00_couplers_to_auto_pc_RID(0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_SEKJXI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_SEKJXI;

architecture STRUCTURE of m01_couplers_imp_SEKJXI is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_EX380Y is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_EX380Y;

architecture STRUCTURE of m02_couplers_imp_EX380Y is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1DHVX9D is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_1DHVX9D;

architecture STRUCTURE of m03_couplers_imp_1DHVX9D is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_14RS86I is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_14RS86I;

architecture STRUCTURE of m04_couplers_imp_14RS86I is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_5X6C6H is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_5X6C6H;

architecture STRUCTURE of m05_couplers_imp_5X6C6H is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_JN7Q99 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_JN7Q99;

architecture STRUCTURE of m06_couplers_imp_JN7Q99 is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1HO17N2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_1HO17N2;

architecture STRUCTURE of m07_couplers_imp_1HO17N2 is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m07_couplers_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m07_couplers_to_m07_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m07_couplers_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m07_couplers_to_m07_couplers_AWVALID;
  M_AXI_bready <= m07_couplers_to_m07_couplers_BREADY;
  M_AXI_rready <= m07_couplers_to_m07_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m07_couplers_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m07_couplers_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m07_couplers_to_m07_couplers_WVALID;
  S_AXI_arready <= m07_couplers_to_m07_couplers_ARREADY;
  S_AXI_awready <= m07_couplers_to_m07_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_m07_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m07_couplers_to_m07_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_m07_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_m07_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m07_couplers_to_m07_couplers_RVALID;
  S_AXI_wready <= m07_couplers_to_m07_couplers_WREADY;
  m07_couplers_to_m07_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_m07_couplers_ARREADY <= M_AXI_arready;
  m07_couplers_to_m07_couplers_ARVALID <= S_AXI_arvalid;
  m07_couplers_to_m07_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_m07_couplers_AWREADY <= M_AXI_awready;
  m07_couplers_to_m07_couplers_AWVALID <= S_AXI_awvalid;
  m07_couplers_to_m07_couplers_BREADY <= S_AXI_bready;
  m07_couplers_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m07_couplers_to_m07_couplers_BVALID <= M_AXI_bvalid;
  m07_couplers_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m07_couplers_to_m07_couplers_RREADY <= S_AXI_rready;
  m07_couplers_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m07_couplers_to_m07_couplers_RVALID <= M_AXI_rvalid;
  m07_couplers_to_m07_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_m07_couplers_WREADY <= M_AXI_wready;
  m07_couplers_to_m07_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_m07_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_271NAZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_271NAZ;

architecture STRUCTURE of m08_couplers_imp_271NAZ is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m08_couplers_to_m08_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m08_couplers_to_m08_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m08_couplers_to_m08_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m08_couplers_to_m08_couplers_AWVALID;
  M_AXI_bready <= m08_couplers_to_m08_couplers_BREADY;
  M_AXI_rready <= m08_couplers_to_m08_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m08_couplers_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m08_couplers_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m08_couplers_to_m08_couplers_WVALID;
  S_AXI_arready <= m08_couplers_to_m08_couplers_ARREADY;
  S_AXI_awready <= m08_couplers_to_m08_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_m08_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m08_couplers_to_m08_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m08_couplers_to_m08_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_m08_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m08_couplers_to_m08_couplers_RVALID;
  S_AXI_wready <= m08_couplers_to_m08_couplers_WREADY;
  m08_couplers_to_m08_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m08_couplers_to_m08_couplers_ARREADY <= M_AXI_arready;
  m08_couplers_to_m08_couplers_ARVALID <= S_AXI_arvalid;
  m08_couplers_to_m08_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m08_couplers_to_m08_couplers_AWREADY <= M_AXI_awready;
  m08_couplers_to_m08_couplers_AWVALID <= S_AXI_awvalid;
  m08_couplers_to_m08_couplers_BREADY <= S_AXI_bready;
  m08_couplers_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m08_couplers_to_m08_couplers_BVALID <= M_AXI_bvalid;
  m08_couplers_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m08_couplers_to_m08_couplers_RREADY <= S_AXI_rready;
  m08_couplers_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m08_couplers_to_m08_couplers_RVALID <= M_AXI_rvalid;
  m08_couplers_to_m08_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m08_couplers_to_m08_couplers_WREADY <= M_AXI_wready;
  m08_couplers_to_m08_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m08_couplers_to_m08_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_ZLN33S is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m09_couplers_imp_ZLN33S;

architecture STRUCTURE of m09_couplers_imp_ZLN33S is
  signal m09_couplers_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_ARREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_AWREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_BVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_RREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_RVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_WREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m09_couplers_to_m09_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m09_couplers_to_m09_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m09_couplers_to_m09_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m09_couplers_to_m09_couplers_AWVALID;
  M_AXI_bready <= m09_couplers_to_m09_couplers_BREADY;
  M_AXI_rready <= m09_couplers_to_m09_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m09_couplers_to_m09_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m09_couplers_to_m09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m09_couplers_to_m09_couplers_WVALID;
  S_AXI_arready <= m09_couplers_to_m09_couplers_ARREADY;
  S_AXI_awready <= m09_couplers_to_m09_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m09_couplers_to_m09_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m09_couplers_to_m09_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m09_couplers_to_m09_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m09_couplers_to_m09_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m09_couplers_to_m09_couplers_RVALID;
  S_AXI_wready <= m09_couplers_to_m09_couplers_WREADY;
  m09_couplers_to_m09_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m09_couplers_to_m09_couplers_ARREADY <= M_AXI_arready;
  m09_couplers_to_m09_couplers_ARVALID <= S_AXI_arvalid;
  m09_couplers_to_m09_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m09_couplers_to_m09_couplers_AWREADY <= M_AXI_awready;
  m09_couplers_to_m09_couplers_AWVALID <= S_AXI_awvalid;
  m09_couplers_to_m09_couplers_BREADY <= S_AXI_bready;
  m09_couplers_to_m09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m09_couplers_to_m09_couplers_BVALID <= M_AXI_bvalid;
  m09_couplers_to_m09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m09_couplers_to_m09_couplers_RREADY <= S_AXI_rready;
  m09_couplers_to_m09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m09_couplers_to_m09_couplers_RVALID <= M_AXI_rvalid;
  m09_couplers_to_m09_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m09_couplers_to_m09_couplers_WREADY <= M_AXI_wready;
  m09_couplers_to_m09_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m09_couplers_to_m09_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m10_couplers_imp_42IP8K is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m10_couplers_imp_42IP8K;

architecture STRUCTURE of m10_couplers_imp_42IP8K is
  signal m10_couplers_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_ARREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_AWREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_BVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_RREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_RVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_WREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_m10_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m10_couplers_to_m10_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m10_couplers_to_m10_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m10_couplers_to_m10_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m10_couplers_to_m10_couplers_AWVALID;
  M_AXI_bready <= m10_couplers_to_m10_couplers_BREADY;
  M_AXI_rready <= m10_couplers_to_m10_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m10_couplers_to_m10_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m10_couplers_to_m10_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m10_couplers_to_m10_couplers_WVALID;
  S_AXI_arready <= m10_couplers_to_m10_couplers_ARREADY;
  S_AXI_awready <= m10_couplers_to_m10_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m10_couplers_to_m10_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m10_couplers_to_m10_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m10_couplers_to_m10_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m10_couplers_to_m10_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m10_couplers_to_m10_couplers_RVALID;
  S_AXI_wready <= m10_couplers_to_m10_couplers_WREADY;
  m10_couplers_to_m10_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m10_couplers_to_m10_couplers_ARREADY <= M_AXI_arready;
  m10_couplers_to_m10_couplers_ARVALID <= S_AXI_arvalid;
  m10_couplers_to_m10_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m10_couplers_to_m10_couplers_AWREADY <= M_AXI_awready;
  m10_couplers_to_m10_couplers_AWVALID <= S_AXI_awvalid;
  m10_couplers_to_m10_couplers_BREADY <= S_AXI_bready;
  m10_couplers_to_m10_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m10_couplers_to_m10_couplers_BVALID <= M_AXI_bvalid;
  m10_couplers_to_m10_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m10_couplers_to_m10_couplers_RREADY <= S_AXI_rready;
  m10_couplers_to_m10_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m10_couplers_to_m10_couplers_RVALID <= M_AXI_rvalid;
  m10_couplers_to_m10_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m10_couplers_to_m10_couplers_WREADY <= M_AXI_wready;
  m10_couplers_to_m10_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m10_couplers_to_m10_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m11_couplers_imp_120ZWUF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m11_couplers_imp_120ZWUF;

architecture STRUCTURE of m11_couplers_imp_120ZWUF is
  signal m11_couplers_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_ARREADY : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARVALID : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_AWREADY : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWVALID : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_BREADY : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_m11_couplers_BVALID : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_RREADY : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_m11_couplers_RVALID : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_WREADY : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_m11_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m11_couplers_to_m11_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m11_couplers_to_m11_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m11_couplers_to_m11_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m11_couplers_to_m11_couplers_AWVALID;
  M_AXI_bready <= m11_couplers_to_m11_couplers_BREADY;
  M_AXI_rready <= m11_couplers_to_m11_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m11_couplers_to_m11_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m11_couplers_to_m11_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m11_couplers_to_m11_couplers_WVALID;
  S_AXI_arready <= m11_couplers_to_m11_couplers_ARREADY;
  S_AXI_awready <= m11_couplers_to_m11_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m11_couplers_to_m11_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m11_couplers_to_m11_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m11_couplers_to_m11_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m11_couplers_to_m11_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m11_couplers_to_m11_couplers_RVALID;
  S_AXI_wready <= m11_couplers_to_m11_couplers_WREADY;
  m11_couplers_to_m11_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m11_couplers_to_m11_couplers_ARREADY <= M_AXI_arready;
  m11_couplers_to_m11_couplers_ARVALID <= S_AXI_arvalid;
  m11_couplers_to_m11_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m11_couplers_to_m11_couplers_AWREADY <= M_AXI_awready;
  m11_couplers_to_m11_couplers_AWVALID <= S_AXI_awvalid;
  m11_couplers_to_m11_couplers_BREADY <= S_AXI_bready;
  m11_couplers_to_m11_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m11_couplers_to_m11_couplers_BVALID <= M_AXI_bvalid;
  m11_couplers_to_m11_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m11_couplers_to_m11_couplers_RREADY <= S_AXI_rready;
  m11_couplers_to_m11_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m11_couplers_to_m11_couplers_RVALID <= M_AXI_rvalid;
  m11_couplers_to_m11_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m11_couplers_to_m11_couplers_WREADY <= M_AXI_wready;
  m11_couplers_to_m11_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m11_couplers_to_m11_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m12_couplers_imp_1ONGKG3 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m12_couplers_imp_1ONGKG3;

architecture STRUCTURE of m12_couplers_imp_1ONGKG3 is
  signal m12_couplers_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_ARREADY : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARVALID : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_AWREADY : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWVALID : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_BREADY : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_m12_couplers_BVALID : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_RREADY : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_m12_couplers_RVALID : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_WREADY : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m12_couplers_to_m12_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m12_couplers_to_m12_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m12_couplers_to_m12_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m12_couplers_to_m12_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m12_couplers_to_m12_couplers_AWVALID;
  M_AXI_bready <= m12_couplers_to_m12_couplers_BREADY;
  M_AXI_rready <= m12_couplers_to_m12_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m12_couplers_to_m12_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m12_couplers_to_m12_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m12_couplers_to_m12_couplers_WVALID;
  S_AXI_arready <= m12_couplers_to_m12_couplers_ARREADY;
  S_AXI_awready <= m12_couplers_to_m12_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m12_couplers_to_m12_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m12_couplers_to_m12_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m12_couplers_to_m12_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m12_couplers_to_m12_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m12_couplers_to_m12_couplers_RVALID;
  S_AXI_wready <= m12_couplers_to_m12_couplers_WREADY;
  m12_couplers_to_m12_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m12_couplers_to_m12_couplers_ARREADY <= M_AXI_arready;
  m12_couplers_to_m12_couplers_ARVALID <= S_AXI_arvalid;
  m12_couplers_to_m12_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m12_couplers_to_m12_couplers_AWREADY <= M_AXI_awready;
  m12_couplers_to_m12_couplers_AWVALID <= S_AXI_awvalid;
  m12_couplers_to_m12_couplers_BREADY <= S_AXI_bready;
  m12_couplers_to_m12_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m12_couplers_to_m12_couplers_BVALID <= M_AXI_bvalid;
  m12_couplers_to_m12_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m12_couplers_to_m12_couplers_RREADY <= S_AXI_rready;
  m12_couplers_to_m12_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m12_couplers_to_m12_couplers_RVALID <= M_AXI_rvalid;
  m12_couplers_to_m12_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m12_couplers_to_m12_couplers_WREADY <= M_AXI_wready;
  m12_couplers_to_m12_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m12_couplers_to_m12_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1X4AJS7 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_1X4AJS7;

architecture STRUCTURE of s00_couplers_imp_1X4AJS7 is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_couplers_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_couplers_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s00_couplers_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_couplers_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rlast(0) <= s00_couplers_to_s00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RLAST(0) <= M_AXI_rlast(0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_SILQ2H is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_SILQ2H;

architecture STRUCTURE of s00_couplers_imp_SILQ2H is
  component kyberBD_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component kyberBD_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component kyberBD_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_Z5VFMS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_Z5VFMS;

architecture STRUCTURE of s01_couplers_imp_Z5VFMS is
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s01_couplers_to_s01_couplers_AWVALID(0);
  M_AXI_bready(0) <= s01_couplers_to_s01_couplers_BREADY(0);
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s01_couplers_to_s01_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s01_couplers_to_s01_couplers_WVALID(0);
  S_AXI_awready(0) <= s01_couplers_to_s01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s01_couplers_to_s01_couplers_BVALID(0);
  S_AXI_wready(0) <= s01_couplers_to_s01_couplers_WREADY(0);
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWREADY(0) <= M_AXI_awready(0);
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s01_couplers_to_s01_couplers_BREADY(0) <= S_AXI_bready(0);
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WLAST(0) <= S_AXI_wlast(0);
  s01_couplers_to_s01_couplers_WREADY(0) <= M_AXI_wready(0);
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kyberBD_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC;
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_arready : in STD_LOGIC;
    M11_AXI_arvalid : out STD_LOGIC;
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_awready : in STD_LOGIC;
    M11_AXI_awvalid : out STD_LOGIC;
    M11_AXI_bready : out STD_LOGIC;
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC;
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rready : out STD_LOGIC;
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC;
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wready : in STD_LOGIC;
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC;
    M12_ACLK : in STD_LOGIC;
    M12_ARESETN : in STD_LOGIC;
    M12_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_arready : in STD_LOGIC;
    M12_AXI_arvalid : out STD_LOGIC;
    M12_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_awready : in STD_LOGIC;
    M12_AXI_awvalid : out STD_LOGIC;
    M12_AXI_bready : out STD_LOGIC;
    M12_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_bvalid : in STD_LOGIC;
    M12_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_rready : out STD_LOGIC;
    M12_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_rvalid : in STD_LOGIC;
    M12_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_wready : in STD_LOGIC;
    M12_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M12_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end kyberBD_axi_interconnect_0_0;

architecture STRUCTURE of kyberBD_axi_interconnect_0_0 is
  component kyberBD_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 415 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 415 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 51 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 25 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 415 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 415 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 25 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component kyberBD_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC;
  signal M08_ACLK_1 : STD_LOGIC;
  signal M08_ARESETN_1 : STD_LOGIC;
  signal M09_ACLK_1 : STD_LOGIC;
  signal M09_ARESETN_1 : STD_LOGIC;
  signal M10_ACLK_1 : STD_LOGIC;
  signal M10_ARESETN_1 : STD_LOGIC;
  signal M11_ACLK_1 : STD_LOGIC;
  signal M11_ARESETN_1 : STD_LOGIC;
  signal M12_ACLK_1 : STD_LOGIC;
  signal M12_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m12_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m12_couplers_ARVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m12_couplers_AWVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_BREADY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m12_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m12_couplers_RREADY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m12_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_WVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_axi_interconnect_0_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_axi_interconnect_0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_interconnect_0_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_interconnect_0_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_axi_interconnect_0_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_axi_interconnect_0_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_axi_interconnect_0_AWVALID;
  M02_AXI_bready <= m02_couplers_to_axi_interconnect_0_BREADY;
  M02_AXI_rready <= m02_couplers_to_axi_interconnect_0_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_axi_interconnect_0_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_axi_interconnect_0_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_axi_interconnect_0_AWVALID;
  M03_AXI_bready <= m03_couplers_to_axi_interconnect_0_BREADY;
  M03_AXI_rready <= m03_couplers_to_axi_interconnect_0_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_axi_interconnect_0_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_axi_interconnect_0_ARVALID;
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_axi_interconnect_0_AWVALID;
  M04_AXI_bready <= m04_couplers_to_axi_interconnect_0_BREADY;
  M04_AXI_rready <= m04_couplers_to_axi_interconnect_0_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_axi_interconnect_0_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_axi_interconnect_0_ARVALID;
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_axi_interconnect_0_AWVALID;
  M05_AXI_bready <= m05_couplers_to_axi_interconnect_0_BREADY;
  M05_AXI_rready <= m05_couplers_to_axi_interconnect_0_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_axi_interconnect_0_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_axi_interconnect_0_ARVALID;
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_axi_interconnect_0_AWVALID;
  M06_AXI_bready <= m06_couplers_to_axi_interconnect_0_BREADY;
  M06_AXI_rready <= m06_couplers_to_axi_interconnect_0_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_axi_interconnect_0_WVALID;
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1 <= M07_ARESETN;
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M07_AXI_arvalid <= m07_couplers_to_axi_interconnect_0_ARVALID;
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M07_AXI_awvalid <= m07_couplers_to_axi_interconnect_0_AWVALID;
  M07_AXI_bready <= m07_couplers_to_axi_interconnect_0_BREADY;
  M07_AXI_rready <= m07_couplers_to_axi_interconnect_0_RREADY;
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M07_AXI_wvalid <= m07_couplers_to_axi_interconnect_0_WVALID;
  M08_ACLK_1 <= M08_ACLK;
  M08_ARESETN_1 <= M08_ARESETN;
  M08_AXI_araddr(31 downto 0) <= m08_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M08_AXI_arvalid <= m08_couplers_to_axi_interconnect_0_ARVALID;
  M08_AXI_awaddr(31 downto 0) <= m08_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M08_AXI_awvalid <= m08_couplers_to_axi_interconnect_0_AWVALID;
  M08_AXI_bready <= m08_couplers_to_axi_interconnect_0_BREADY;
  M08_AXI_rready <= m08_couplers_to_axi_interconnect_0_RREADY;
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M08_AXI_wvalid <= m08_couplers_to_axi_interconnect_0_WVALID;
  M09_ACLK_1 <= M09_ACLK;
  M09_ARESETN_1 <= M09_ARESETN;
  M09_AXI_araddr(31 downto 0) <= m09_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M09_AXI_arvalid <= m09_couplers_to_axi_interconnect_0_ARVALID;
  M09_AXI_awaddr(31 downto 0) <= m09_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M09_AXI_awvalid <= m09_couplers_to_axi_interconnect_0_AWVALID;
  M09_AXI_bready <= m09_couplers_to_axi_interconnect_0_BREADY;
  M09_AXI_rready <= m09_couplers_to_axi_interconnect_0_RREADY;
  M09_AXI_wdata(31 downto 0) <= m09_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M09_AXI_wstrb(3 downto 0) <= m09_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M09_AXI_wvalid <= m09_couplers_to_axi_interconnect_0_WVALID;
  M10_ACLK_1 <= M10_ACLK;
  M10_ARESETN_1 <= M10_ARESETN;
  M10_AXI_araddr(31 downto 0) <= m10_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M10_AXI_arvalid <= m10_couplers_to_axi_interconnect_0_ARVALID;
  M10_AXI_awaddr(31 downto 0) <= m10_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M10_AXI_awvalid <= m10_couplers_to_axi_interconnect_0_AWVALID;
  M10_AXI_bready <= m10_couplers_to_axi_interconnect_0_BREADY;
  M10_AXI_rready <= m10_couplers_to_axi_interconnect_0_RREADY;
  M10_AXI_wdata(31 downto 0) <= m10_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M10_AXI_wstrb(3 downto 0) <= m10_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M10_AXI_wvalid <= m10_couplers_to_axi_interconnect_0_WVALID;
  M11_ACLK_1 <= M11_ACLK;
  M11_ARESETN_1 <= M11_ARESETN;
  M11_AXI_araddr(31 downto 0) <= m11_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M11_AXI_arvalid <= m11_couplers_to_axi_interconnect_0_ARVALID;
  M11_AXI_awaddr(31 downto 0) <= m11_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M11_AXI_awvalid <= m11_couplers_to_axi_interconnect_0_AWVALID;
  M11_AXI_bready <= m11_couplers_to_axi_interconnect_0_BREADY;
  M11_AXI_rready <= m11_couplers_to_axi_interconnect_0_RREADY;
  M11_AXI_wdata(31 downto 0) <= m11_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M11_AXI_wstrb(3 downto 0) <= m11_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M11_AXI_wvalid <= m11_couplers_to_axi_interconnect_0_WVALID;
  M12_ACLK_1 <= M12_ACLK;
  M12_ARESETN_1 <= M12_ARESETN;
  M12_AXI_araddr(31 downto 0) <= m12_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M12_AXI_arvalid <= m12_couplers_to_axi_interconnect_0_ARVALID;
  M12_AXI_awaddr(31 downto 0) <= m12_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M12_AXI_awvalid <= m12_couplers_to_axi_interconnect_0_AWVALID;
  M12_AXI_bready <= m12_couplers_to_axi_interconnect_0_BREADY;
  M12_AXI_rready <= m12_couplers_to_axi_interconnect_0_RREADY;
  M12_AXI_wdata(31 downto 0) <= m12_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M12_AXI_wstrb(3 downto 0) <= m12_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M12_AXI_wvalid <= m12_couplers_to_axi_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= axi_interconnect_0_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= axi_interconnect_0_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= axi_interconnect_0_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_0_to_s00_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net <= ARESETN;
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  axi_interconnect_0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_interconnect_0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_interconnect_0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_interconnect_0_WREADY <= M01_AXI_wready;
  m02_couplers_to_axi_interconnect_0_ARREADY <= M02_AXI_arready;
  m02_couplers_to_axi_interconnect_0_AWREADY <= M02_AXI_awready;
  m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_axi_interconnect_0_WREADY <= M02_AXI_wready;
  m03_couplers_to_axi_interconnect_0_ARREADY <= M03_AXI_arready;
  m03_couplers_to_axi_interconnect_0_AWREADY <= M03_AXI_awready;
  m03_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_axi_interconnect_0_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_axi_interconnect_0_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_axi_interconnect_0_WREADY <= M03_AXI_wready;
  m04_couplers_to_axi_interconnect_0_ARREADY <= M04_AXI_arready;
  m04_couplers_to_axi_interconnect_0_AWREADY <= M04_AXI_awready;
  m04_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_axi_interconnect_0_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_axi_interconnect_0_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_axi_interconnect_0_WREADY <= M04_AXI_wready;
  m05_couplers_to_axi_interconnect_0_ARREADY <= M05_AXI_arready;
  m05_couplers_to_axi_interconnect_0_AWREADY <= M05_AXI_awready;
  m05_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_axi_interconnect_0_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_axi_interconnect_0_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_axi_interconnect_0_WREADY <= M05_AXI_wready;
  m06_couplers_to_axi_interconnect_0_ARREADY <= M06_AXI_arready;
  m06_couplers_to_axi_interconnect_0_AWREADY <= M06_AXI_awready;
  m06_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_axi_interconnect_0_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_axi_interconnect_0_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_axi_interconnect_0_WREADY <= M06_AXI_wready;
  m07_couplers_to_axi_interconnect_0_ARREADY <= M07_AXI_arready;
  m07_couplers_to_axi_interconnect_0_AWREADY <= M07_AXI_awready;
  m07_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_axi_interconnect_0_BVALID <= M07_AXI_bvalid;
  m07_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_axi_interconnect_0_RVALID <= M07_AXI_rvalid;
  m07_couplers_to_axi_interconnect_0_WREADY <= M07_AXI_wready;
  m08_couplers_to_axi_interconnect_0_ARREADY <= M08_AXI_arready;
  m08_couplers_to_axi_interconnect_0_AWREADY <= M08_AXI_awready;
  m08_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_axi_interconnect_0_BVALID <= M08_AXI_bvalid;
  m08_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_axi_interconnect_0_RVALID <= M08_AXI_rvalid;
  m08_couplers_to_axi_interconnect_0_WREADY <= M08_AXI_wready;
  m09_couplers_to_axi_interconnect_0_ARREADY <= M09_AXI_arready;
  m09_couplers_to_axi_interconnect_0_AWREADY <= M09_AXI_awready;
  m09_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  m09_couplers_to_axi_interconnect_0_BVALID <= M09_AXI_bvalid;
  m09_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  m09_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  m09_couplers_to_axi_interconnect_0_RVALID <= M09_AXI_rvalid;
  m09_couplers_to_axi_interconnect_0_WREADY <= M09_AXI_wready;
  m10_couplers_to_axi_interconnect_0_ARREADY <= M10_AXI_arready;
  m10_couplers_to_axi_interconnect_0_AWREADY <= M10_AXI_awready;
  m10_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M10_AXI_bresp(1 downto 0);
  m10_couplers_to_axi_interconnect_0_BVALID <= M10_AXI_bvalid;
  m10_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M10_AXI_rdata(31 downto 0);
  m10_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M10_AXI_rresp(1 downto 0);
  m10_couplers_to_axi_interconnect_0_RVALID <= M10_AXI_rvalid;
  m10_couplers_to_axi_interconnect_0_WREADY <= M10_AXI_wready;
  m11_couplers_to_axi_interconnect_0_ARREADY <= M11_AXI_arready;
  m11_couplers_to_axi_interconnect_0_AWREADY <= M11_AXI_awready;
  m11_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M11_AXI_bresp(1 downto 0);
  m11_couplers_to_axi_interconnect_0_BVALID <= M11_AXI_bvalid;
  m11_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M11_AXI_rdata(31 downto 0);
  m11_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M11_AXI_rresp(1 downto 0);
  m11_couplers_to_axi_interconnect_0_RVALID <= M11_AXI_rvalid;
  m11_couplers_to_axi_interconnect_0_WREADY <= M11_AXI_wready;
  m12_couplers_to_axi_interconnect_0_ARREADY <= M12_AXI_arready;
  m12_couplers_to_axi_interconnect_0_AWREADY <= M12_AXI_awready;
  m12_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M12_AXI_bresp(1 downto 0);
  m12_couplers_to_axi_interconnect_0_BVALID <= M12_AXI_bvalid;
  m12_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M12_AXI_rdata(31 downto 0);
  m12_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M12_AXI_rresp(1 downto 0);
  m12_couplers_to_axi_interconnect_0_RVALID <= M12_AXI_rvalid;
  m12_couplers_to_axi_interconnect_0_WREADY <= M12_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1QP77VP
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_SEKJXI
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m01_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m01_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_EX380Y
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m02_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m02_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m02_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m02_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m02_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1DHVX9D
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m03_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m03_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m03_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m03_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m03_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_14RS86I
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m04_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m04_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m04_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m04_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m04_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_5X6C6H
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m05_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m05_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m05_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m05_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m05_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_JN7Q99
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m06_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m06_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m06_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m06_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m06_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1HO17N2
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN => M07_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m07_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m07_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m07_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m07_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m07_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m07_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m07_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m07_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m07_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m07_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m07_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m07_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m07_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m07_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m07_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arready => xbar_to_m07_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awready => xbar_to_m07_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m07_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m07_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready => xbar_to_m07_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_271NAZ
     port map (
      M_ACLK => M08_ACLK_1,
      M_ARESETN => M08_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m08_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m08_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m08_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m08_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m08_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m08_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m08_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m08_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m08_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m08_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m08_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m08_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m08_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m08_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m08_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m08_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      S_AXI_arready => xbar_to_m08_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr(31 downto 0) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      S_AXI_awready => xbar_to_m08_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m08_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m08_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m08_couplers_WDATA(287 downto 256),
      S_AXI_wready => xbar_to_m08_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      S_AXI_wvalid => xbar_to_m08_couplers_WVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_ZLN33S
     port map (
      M_ACLK => M09_ACLK_1,
      M_ARESETN => M09_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m09_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m09_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m09_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m09_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m09_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m09_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m09_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m09_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m09_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m09_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m09_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m09_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m09_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m09_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m09_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m09_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m09_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      S_AXI_arready => xbar_to_m09_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m09_couplers_ARVALID(9),
      S_AXI_awaddr(31 downto 0) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      S_AXI_awready => xbar_to_m09_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m09_couplers_AWVALID(9),
      S_AXI_bready => xbar_to_m09_couplers_BREADY(9),
      S_AXI_bresp(1 downto 0) => xbar_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m09_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m09_couplers_RREADY(9),
      S_AXI_rresp(1 downto 0) => xbar_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m09_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m09_couplers_WDATA(319 downto 288),
      S_AXI_wready => xbar_to_m09_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      S_AXI_wvalid => xbar_to_m09_couplers_WVALID(9)
    );
m10_couplers: entity work.m10_couplers_imp_42IP8K
     port map (
      M_ACLK => M10_ACLK_1,
      M_ARESETN => M10_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m10_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m10_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m10_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m10_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m10_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m10_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m10_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m10_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m10_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m10_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m10_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m10_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m10_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m10_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m10_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m10_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m10_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      S_AXI_arready => xbar_to_m10_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m10_couplers_ARVALID(10),
      S_AXI_awaddr(31 downto 0) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      S_AXI_awready => xbar_to_m10_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m10_couplers_AWVALID(10),
      S_AXI_bready => xbar_to_m10_couplers_BREADY(10),
      S_AXI_bresp(1 downto 0) => xbar_to_m10_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m10_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m10_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m10_couplers_RREADY(10),
      S_AXI_rresp(1 downto 0) => xbar_to_m10_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m10_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m10_couplers_WDATA(351 downto 320),
      S_AXI_wready => xbar_to_m10_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      S_AXI_wvalid => xbar_to_m10_couplers_WVALID(10)
    );
m11_couplers: entity work.m11_couplers_imp_120ZWUF
     port map (
      M_ACLK => M11_ACLK_1,
      M_ARESETN => M11_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m11_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m11_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m11_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m11_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m11_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m11_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m11_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m11_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m11_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m11_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m11_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m11_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m11_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m11_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m11_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m11_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m11_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      S_AXI_arready => xbar_to_m11_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m11_couplers_ARVALID(11),
      S_AXI_awaddr(31 downto 0) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      S_AXI_awready => xbar_to_m11_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m11_couplers_AWVALID(11),
      S_AXI_bready => xbar_to_m11_couplers_BREADY(11),
      S_AXI_bresp(1 downto 0) => xbar_to_m11_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m11_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m11_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m11_couplers_RREADY(11),
      S_AXI_rresp(1 downto 0) => xbar_to_m11_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m11_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m11_couplers_WDATA(383 downto 352),
      S_AXI_wready => xbar_to_m11_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      S_AXI_wvalid => xbar_to_m11_couplers_WVALID(11)
    );
m12_couplers: entity work.m12_couplers_imp_1ONGKG3
     port map (
      M_ACLK => M12_ACLK_1,
      M_ARESETN => M12_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m12_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m12_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m12_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m12_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m12_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m12_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m12_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m12_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m12_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m12_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m12_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m12_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m12_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m12_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m12_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m12_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m12_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m12_couplers_ARADDR(415 downto 384),
      S_AXI_arready => xbar_to_m12_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m12_couplers_ARVALID(12),
      S_AXI_awaddr(31 downto 0) => xbar_to_m12_couplers_AWADDR(415 downto 384),
      S_AXI_awready => xbar_to_m12_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m12_couplers_AWVALID(12),
      S_AXI_bready => xbar_to_m12_couplers_BREADY(12),
      S_AXI_bresp(1 downto 0) => xbar_to_m12_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m12_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m12_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m12_couplers_RREADY(12),
      S_AXI_rresp(1 downto 0) => xbar_to_m12_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m12_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m12_couplers_WDATA(415 downto 384),
      S_AXI_wready => xbar_to_m12_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m12_couplers_WSTRB(51 downto 48),
      S_AXI_wvalid => xbar_to_m12_couplers_WVALID(12)
    );
s00_couplers: entity work.s00_couplers_imp_SILQ2H
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => axi_interconnect_0_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => axi_interconnect_0_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => axi_interconnect_0_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => axi_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => axi_interconnect_0_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => axi_interconnect_0_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => axi_interconnect_0_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => axi_interconnect_0_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_0_to_s00_couplers_WVALID
    );
xbar: component kyberBD_xbar_0
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net,
      m_axi_araddr(415 downto 384) => xbar_to_m12_couplers_ARADDR(415 downto 384),
      m_axi_araddr(383 downto 352) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      m_axi_araddr(351 downto 320) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      m_axi_araddr(319 downto 288) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(38 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(38 downto 0),
      m_axi_arready(12) => xbar_to_m12_couplers_ARREADY,
      m_axi_arready(11) => xbar_to_m11_couplers_ARREADY,
      m_axi_arready(10) => xbar_to_m10_couplers_ARREADY,
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY,
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(12) => xbar_to_m12_couplers_ARVALID(12),
      m_axi_arvalid(11) => xbar_to_m11_couplers_ARVALID(11),
      m_axi_arvalid(10) => xbar_to_m10_couplers_ARVALID(10),
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID(9),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(415 downto 384) => xbar_to_m12_couplers_AWADDR(415 downto 384),
      m_axi_awaddr(383 downto 352) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      m_axi_awaddr(351 downto 320) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      m_axi_awaddr(319 downto 288) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(38 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(38 downto 0),
      m_axi_awready(12) => xbar_to_m12_couplers_AWREADY,
      m_axi_awready(11) => xbar_to_m11_couplers_AWREADY,
      m_axi_awready(10) => xbar_to_m10_couplers_AWREADY,
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY,
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(12) => xbar_to_m12_couplers_AWVALID(12),
      m_axi_awvalid(11) => xbar_to_m11_couplers_AWVALID(11),
      m_axi_awvalid(10) => xbar_to_m10_couplers_AWVALID(10),
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID(9),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(12) => xbar_to_m12_couplers_BREADY(12),
      m_axi_bready(11) => xbar_to_m11_couplers_BREADY(11),
      m_axi_bready(10) => xbar_to_m10_couplers_BREADY(10),
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY(9),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(25 downto 24) => xbar_to_m12_couplers_BRESP(1 downto 0),
      m_axi_bresp(23 downto 22) => xbar_to_m11_couplers_BRESP(1 downto 0),
      m_axi_bresp(21 downto 20) => xbar_to_m10_couplers_BRESP(1 downto 0),
      m_axi_bresp(19 downto 18) => xbar_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(12) => xbar_to_m12_couplers_BVALID,
      m_axi_bvalid(11) => xbar_to_m11_couplers_BVALID,
      m_axi_bvalid(10) => xbar_to_m10_couplers_BVALID,
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID,
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(415 downto 384) => xbar_to_m12_couplers_RDATA(31 downto 0),
      m_axi_rdata(383 downto 352) => xbar_to_m11_couplers_RDATA(31 downto 0),
      m_axi_rdata(351 downto 320) => xbar_to_m10_couplers_RDATA(31 downto 0),
      m_axi_rdata(319 downto 288) => xbar_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(287 downto 256) => xbar_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(12) => xbar_to_m12_couplers_RREADY(12),
      m_axi_rready(11) => xbar_to_m11_couplers_RREADY(11),
      m_axi_rready(10) => xbar_to_m10_couplers_RREADY(10),
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY(9),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(25 downto 24) => xbar_to_m12_couplers_RRESP(1 downto 0),
      m_axi_rresp(23 downto 22) => xbar_to_m11_couplers_RRESP(1 downto 0),
      m_axi_rresp(21 downto 20) => xbar_to_m10_couplers_RRESP(1 downto 0),
      m_axi_rresp(19 downto 18) => xbar_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(12) => xbar_to_m12_couplers_RVALID,
      m_axi_rvalid(11) => xbar_to_m11_couplers_RVALID,
      m_axi_rvalid(10) => xbar_to_m10_couplers_RVALID,
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID,
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(415 downto 384) => xbar_to_m12_couplers_WDATA(415 downto 384),
      m_axi_wdata(383 downto 352) => xbar_to_m11_couplers_WDATA(383 downto 352),
      m_axi_wdata(351 downto 320) => xbar_to_m10_couplers_WDATA(351 downto 320),
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(12) => xbar_to_m12_couplers_WREADY,
      m_axi_wready(11) => xbar_to_m11_couplers_WREADY,
      m_axi_wready(10) => xbar_to_m10_couplers_WREADY,
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY,
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(51 downto 48) => xbar_to_m12_couplers_WSTRB(51 downto 48),
      m_axi_wstrb(47 downto 44) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      m_axi_wstrb(43 downto 40) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => NLW_xbar_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid(12) => xbar_to_m12_couplers_WVALID(12),
      m_axi_wvalid(11) => xbar_to_m11_couplers_WVALID(11),
      m_axi_wvalid(10) => xbar_to_m10_couplers_WVALID(10),
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID(9),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kyberBD_axi_interconnect_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end kyberBD_axi_interconnect_1_0;

architecture STRUCTURE of kyberBD_axi_interconnect_1_0 is
  component kyberBD_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component kyberBD_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_1_ACLK_net : STD_LOGIC;
  signal axi_interconnect_1_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_1_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_1_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_interconnect_1_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_interconnect_1_ARCACHE(3 downto 0);
  M00_AXI_arid(0) <= m00_couplers_to_axi_interconnect_1_ARID(0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_axi_interconnect_1_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_axi_interconnect_1_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_interconnect_1_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_interconnect_1_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_interconnect_1_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_1_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_1_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_interconnect_1_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_interconnect_1_AWCACHE(3 downto 0);
  M00_AXI_awid(0) <= m00_couplers_to_axi_interconnect_1_AWID(0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_axi_interconnect_1_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_axi_interconnect_1_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_interconnect_1_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_interconnect_1_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_interconnect_1_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_1_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_1_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_1_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M00_AXI_wid(0) <= m00_couplers_to_axi_interconnect_1_WID(0);
  M00_AXI_wlast <= m00_couplers_to_axi_interconnect_1_WLAST;
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_1_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready(0) <= axi_interconnect_1_to_s00_couplers_ARREADY(0);
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_1_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast(0) <= axi_interconnect_1_to_s00_couplers_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_1_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= axi_interconnect_1_to_s00_couplers_RVALID(0);
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_awready(0) <= axi_interconnect_1_to_s01_couplers_AWREADY(0);
  S01_AXI_bresp(1 downto 0) <= axi_interconnect_1_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= axi_interconnect_1_to_s01_couplers_BVALID(0);
  S01_AXI_wready(0) <= axi_interconnect_1_to_s01_couplers_WREADY(0);
  axi_interconnect_1_ACLK_net <= ACLK;
  axi_interconnect_1_ARESETN_net <= ARESETN;
  axi_interconnect_1_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_1_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_1_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_1_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_1_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_1_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_1_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  axi_interconnect_1_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  axi_interconnect_1_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_interconnect_1_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_interconnect_1_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_interconnect_1_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_interconnect_1_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_interconnect_1_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_interconnect_1_to_s01_couplers_AWVALID(0) <= S01_AXI_awvalid(0);
  axi_interconnect_1_to_s01_couplers_BREADY(0) <= S01_AXI_bready(0);
  axi_interconnect_1_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  axi_interconnect_1_to_s01_couplers_WLAST(0) <= S01_AXI_wlast(0);
  axi_interconnect_1_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  axi_interconnect_1_to_s01_couplers_WVALID(0) <= S01_AXI_wvalid(0);
  m00_couplers_to_axi_interconnect_1_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_1_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_1_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_1_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_1_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_axi_interconnect_1_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_1_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_1_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_YZY4OR
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_1_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_interconnect_1_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_interconnect_1_ARCACHE(3 downto 0),
      M_AXI_arid(0) => m00_couplers_to_axi_interconnect_1_ARID(0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_axi_interconnect_1_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_axi_interconnect_1_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_interconnect_1_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_interconnect_1_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_interconnect_1_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_1_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_interconnect_1_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_interconnect_1_AWCACHE(3 downto 0),
      M_AXI_awid(0) => m00_couplers_to_axi_interconnect_1_AWID(0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_axi_interconnect_1_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_axi_interconnect_1_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_interconnect_1_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_interconnect_1_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_interconnect_1_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_axi_interconnect_1_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_axi_interconnect_1_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_interconnect_1_RLAST,
      M_AXI_rready => m00_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wid(0) => m00_couplers_to_axi_interconnect_1_WID(0),
      M_AXI_wlast => m00_couplers_to_axi_interconnect_1_WLAST,
      M_AXI_wready => m00_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => xbar_to_m00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => xbar_to_m00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(0) => xbar_to_m00_couplers_BID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => xbar_to_m00_couplers_RID(0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_1X4AJS7
     port map (
      M_ACLK => axi_interconnect_1_ACLK_net,
      M_ARESETN => axi_interconnect_1_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_1_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_1_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_1_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_1_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_1_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => axi_interconnect_1_to_s00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => axi_interconnect_1_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => axi_interconnect_1_to_s00_couplers_ARVALID(0),
      S_AXI_rdata(31 downto 0) => axi_interconnect_1_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast(0) => axi_interconnect_1_to_s00_couplers_RLAST(0),
      S_AXI_rready(0) => axi_interconnect_1_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_interconnect_1_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_interconnect_1_to_s00_couplers_RVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_Z5VFMS
     port map (
      M_ACLK => axi_interconnect_1_ACLK_net,
      M_ARESETN => axi_interconnect_1_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s01_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s01_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid(0) => s01_couplers_to_xbar_BVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s01_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s01_couplers_to_xbar_WVALID(0),
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_1_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_1_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_1_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_1_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_1_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => axi_interconnect_1_to_s01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_1_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_1_to_s01_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_1_to_s01_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_1_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_1_to_s01_couplers_BVALID(0),
      S_AXI_wdata(31 downto 0) => axi_interconnect_1_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => axi_interconnect_1_to_s01_couplers_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_1_to_s01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_interconnect_1_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_1_to_s01_couplers_WVALID(0)
    );
xbar: component kyberBD_xbar_1
     port map (
      aclk => axi_interconnect_1_ACLK_net,
      aresetn => axi_interconnect_1_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => xbar_to_m00_couplers_ARID(0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => xbar_to_m00_couplers_AWID(0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(0) => xbar_to_m00_couplers_BID(0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(0) => xbar_to_m00_couplers_RID(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(3 downto 2) => B"00",
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(7 downto 4) => B"0000",
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => B"00",
      s_axi_arlen(15 downto 8) => B"00000000",
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(5 downto 3) => B"000",
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(7 downto 0) => B"00000000",
      s_axi_arready(1) => NLW_xbar_s_axi_arready_UNCONNECTED(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(5 downto 3) => B"001",
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(1) => '0',
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => B"0011",
      s_axi_awid(1 downto 0) => B"00",
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(7 downto 0) => B"00000000",
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => NLW_xbar_s_axi_awready_UNCONNECTED(0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => B"010",
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(0) => '0',
      s_axi_bid(1 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(1 downto 0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY(0),
      s_axi_bready(0) => '0',
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => NLW_xbar_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => NLW_xbar_s_axi_bvalid_UNCONNECTED(0),
      s_axi_rdata(63 downto 32) => NLW_xbar_s_axi_rdata_UNCONNECTED(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(1 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(1 downto 0),
      s_axi_rlast(1) => NLW_xbar_s_axi_rlast_UNCONNECTED(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(1) => '0',
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(3 downto 2) => NLW_xbar_s_axi_rresp_UNCONNECTED(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => NLW_xbar_s_axi_rvalid_UNCONNECTED(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST(0),
      s_axi_wlast(0) => '0',
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => NLW_xbar_s_axi_wready_UNCONNECTED(0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => B"1111",
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kyberBD is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of kyberBD : entity is "kyberBD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=kyberBD,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=89,numReposBlks=70,numNonXlnxBlks=0,numHierBlks=19,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_bram_cntlr_cnt=4,da_ps7_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of kyberBD : entity is "kyberBD.hwdef";
end kyberBD;

architecture STRUCTURE of kyberBD is
  component kyberBD_processing_system7_0_0 is
  port (
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component kyberBD_processing_system7_0_0;
  component kyberBD_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component kyberBD_proc_sys_reset_0_0;
  component kyberBD_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_axi_gpio_0_0;
  component kyberBD_axi_gpio_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component kyberBD_axi_gpio_1_0;
  component kyberBD_axi_gpio_2_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component kyberBD_axi_gpio_2_0;
  component kyberBD_axi_gpio_3_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component kyberBD_axi_gpio_3_0;
  component kyberBD_barrett_reduce_0_0 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_barrett_reduce_0_0;
  component kyberBD_barrett_reduce_0_1 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_barrett_reduce_0_1;
  component kyberBD_fqmul_0_0 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_mont : in STD_LOGIC;
    data_in_mont : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out_mont : out STD_LOGIC;
    data_out_mont : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_fqmul_0_0;
  component kyberBD_fqmul_0_1 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_mont : in STD_LOGIC;
    data_in_mont : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out_mont : out STD_LOGIC;
    data_out_mont : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_fqmul_0_1;
  component kyberBD_fqmul_0_2 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_mont : in STD_LOGIC;
    data_in_mont : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out_mont : out STD_LOGIC;
    data_out_mont : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_fqmul_0_2;
  component kyberBD_fqmul_0_3 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_mont : in STD_LOGIC;
    data_in_mont : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out_mont : out STD_LOGIC;
    data_out_mont : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_fqmul_0_3;
  component kyberBD_fqmul_0_4 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_mont : in STD_LOGIC;
    data_in_mont : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out_mont : out STD_LOGIC;
    data_out_mont : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_fqmul_0_4;
  component kyberBD_fqmul_0_5 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_mont : in STD_LOGIC;
    data_in_mont : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out_mont : out STD_LOGIC;
    data_out_mont : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_fqmul_0_5;
  component kyberBD_timer2_0_0 is
  port (
    clk : in STD_LOGIC;
    control : in STD_LOGIC_VECTOR ( 31 downto 0 );
    count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_timer2_0_0;
  component kyberBD_axi_gpio_4_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component kyberBD_axi_gpio_4_0;
  component kyberBD_signal_multiplexer_0_0 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en2 : in STD_LOGIC;
    valid2 : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en3 : in STD_LOGIC;
    valid3 : in STD_LOGIC;
    data3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_signal_multiplexer_0_0;
  component kyberBD_signal_multiplexer_0_1 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en2 : in STD_LOGIC;
    valid2 : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en3 : in STD_LOGIC;
    valid3 : in STD_LOGIC;
    data3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_signal_multiplexer_0_1;
  component kyberBD_signal_multiplexer_12_0 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data0b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    datab : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_signal_multiplexer_12_0;
  component kyberBD_signal_multiplexer_12_2 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data0b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    datab : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_signal_multiplexer_12_2;
  component kyberBD_signal_multiplexer_12_4 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data0b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data1b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    datab : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_signal_multiplexer_12_4;
  component kyberBD_signal_multiplexer_16_0 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data0b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data1b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    datab : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_signal_multiplexer_16_0;
  component kyberBD_signal_multiplexer_17_0 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data0b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data1b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    datab : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_signal_multiplexer_17_0;
  component kyberBD_signal_multiplexer_17_1 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data0b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data1b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    datab : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_signal_multiplexer_17_1;
  component kyberBD_signal_multiplexer_2_0 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_signal_multiplexer_2_0;
  component kyberBD_signal_multiplexer_2_1 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_signal_multiplexer_2_1;
  component kyberBD_signal_multiplexer_2_2 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en2 : in STD_LOGIC;
    valid2 : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_signal_multiplexer_2_2;
  component kyberBD_signal_multiplexer_2_3 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en2 : in STD_LOGIC;
    valid2 : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_signal_multiplexer_2_3;
  component kyberBD_signal_multiplexer_2_4 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_signal_multiplexer_2_4;
  component kyberBD_signal_multiplexer_2_5 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en1 : in STD_LOGIC;
    valid1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_signal_multiplexer_2_5;
  component kyberBD_montgomery_reduction_0_0 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_montgomery_reduction_0_0;
  component kyberBD_montgomery_reduction_0_1 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_montgomery_reduction_0_1;
  component kyberBD_montgomery_reduction_0_2 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_montgomery_reduction_0_2;
  component kyberBD_montgomery_reduction_0_3 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_montgomery_reduction_0_3;
  component kyberBD_montgomery_reduction_0_4 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_montgomery_reduction_0_4;
  component kyberBD_montgomery_reduction_0_5 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_montgomery_reduction_0_5;
  component kyberBD_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component kyberBD_axi_dma_0_0;
  component kyberBD_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component kyberBD_xlconcat_0_0;
  component kyberBD_axi_gpio_5_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_axi_gpio_5_0;
  component kyberBD_polyvec_basemul_acc_0_1 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    bram_read_ena : out STD_LOGIC;
    bram_read_wea : out STD_LOGIC;
    bram_read_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram_read_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_read_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_read_enb : out STD_LOGIC;
    bram_read_web : out STD_LOGIC;
    bram_read_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram_read_dib : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_read_dob : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_write_ena : out STD_LOGIC;
    bram_write_wea : out STD_LOGIC;
    bram_write_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram_write_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_write_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_write_enb : out STD_LOGIC;
    bram_write_web : out STD_LOGIC;
    bram_write_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram_write_dib : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_write_dob : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_to_fqmul0 : out STD_LOGIC;
    coeff0_to_fqmul0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coeff1_to_fqmul0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_to_fqmul1 : out STD_LOGIC;
    coeff0_to_fqmul1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coeff1_to_fqmul1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_to_fqmul2 : out STD_LOGIC;
    coeff0_to_fqmul2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coeff1_to_fqmul2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_to_fqmul3 : out STD_LOGIC;
    coeff0_to_fqmul3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coeff1_to_fqmul3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_to_fqmul4 : out STD_LOGIC;
    coeff0_to_fqmul4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coeff1_to_fqmul4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_to_fqmul5 : out STD_LOGIC;
    coeff0_to_fqmul5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coeff1_to_fqmul5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_from_fqmul0 : in STD_LOGIC;
    coeff_from_fqmul0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_from_fqmul1 : in STD_LOGIC;
    coeff_from_fqmul1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_from_fqmul2 : in STD_LOGIC;
    coeff_from_fqmul2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_from_fqmul3 : in STD_LOGIC;
    coeff_from_fqmul3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_from_fqmul4 : in STD_LOGIC;
    coeff_from_fqmul4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_from_fqmul5 : in STD_LOGIC;
    coeff_from_fqmul5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid0_to_barrett : out STD_LOGIC;
    data0_to_barrett : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid1_to_barrett : out STD_LOGIC;
    data1_to_barrett : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid0_from_barrett : in STD_LOGIC;
    data0_from_barrett : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid1_from_barrett : in STD_LOGIC;
    data1_from_barrett : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_dsm : out STD_LOGIC;
    kyber_k : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start : in STD_LOGIC;
    busy : out STD_LOGIC
  );
  end component kyberBD_polyvec_basemul_acc_0_1;
  component kyberBD_bram_port_selector_0_0 is
  port (
    master_en : out STD_LOGIC;
    master_we : out STD_LOGIC;
    master_addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    master_di : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_do : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave0_en : in STD_LOGIC;
    slave0_we : in STD_LOGIC;
    slave0_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave0_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave0_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave1_en : in STD_LOGIC;
    slave1_we : in STD_LOGIC;
    slave1_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave1_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave1_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave2_en : in STD_LOGIC;
    slave2_we : in STD_LOGIC;
    slave2_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave2_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave2_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave3_en : in STD_LOGIC;
    slave3_we : in STD_LOGIC;
    slave3_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave3_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave3_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave4_en : in STD_LOGIC;
    slave4_we : in STD_LOGIC;
    slave4_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave4_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave4_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave5_en : in STD_LOGIC;
    slave5_we : in STD_LOGIC;
    slave5_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave5_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave5_do : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_bram_port_selector_0_0;
  component kyberBD_bram_port_selector_1_0 is
  port (
    master_en : out STD_LOGIC;
    master_we : out STD_LOGIC;
    master_addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    master_di : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_do : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave0_en : in STD_LOGIC;
    slave0_we : in STD_LOGIC;
    slave0_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave0_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave0_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave1_en : in STD_LOGIC;
    slave1_we : in STD_LOGIC;
    slave1_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave1_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave1_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave2_en : in STD_LOGIC;
    slave2_we : in STD_LOGIC;
    slave2_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave2_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave2_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave3_en : in STD_LOGIC;
    slave3_we : in STD_LOGIC;
    slave3_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave3_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave3_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave4_en : in STD_LOGIC;
    slave4_we : in STD_LOGIC;
    slave4_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave4_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave4_do : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_bram_port_selector_1_0;
  component kyberBD_bram_port_selector_1_1 is
  port (
    master_en : out STD_LOGIC;
    master_we : out STD_LOGIC;
    master_addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    master_di : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_do : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave0_en : in STD_LOGIC;
    slave0_we : in STD_LOGIC;
    slave0_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave0_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave0_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave1_en : in STD_LOGIC;
    slave1_we : in STD_LOGIC;
    slave1_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave1_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave1_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave2_en : in STD_LOGIC;
    slave2_we : in STD_LOGIC;
    slave2_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave2_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave2_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave3_en : in STD_LOGIC;
    slave3_we : in STD_LOGIC;
    slave3_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave3_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave3_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave4_en : in STD_LOGIC;
    slave4_we : in STD_LOGIC;
    slave4_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave4_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave4_do : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_bram_port_selector_1_1;
  component kyberBD_bram_port_selector_2_0 is
  port (
    master_en : out STD_LOGIC;
    master_we : out STD_LOGIC;
    master_addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    master_di : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_do : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave0_en : in STD_LOGIC;
    slave0_we : in STD_LOGIC;
    slave0_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave0_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave0_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave1_en : in STD_LOGIC;
    slave1_we : in STD_LOGIC;
    slave1_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave1_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave1_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave2_en : in STD_LOGIC;
    slave2_we : in STD_LOGIC;
    slave2_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave2_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave2_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave3_en : in STD_LOGIC;
    slave3_we : in STD_LOGIC;
    slave3_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave3_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave3_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave4_en : in STD_LOGIC;
    slave4_we : in STD_LOGIC;
    slave4_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave4_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave4_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave5_en : in STD_LOGIC;
    slave5_we : in STD_LOGIC;
    slave5_addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    slave5_di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave5_do : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_bram_port_selector_2_0;
  component kyberBD_dual_bram_axis_0_1 is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tready : in STD_LOGIC;
    port_bram0_ena : in STD_LOGIC;
    port_bram0_wea : in STD_LOGIC;
    port_bram0_addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    port_bram0_dia : in STD_LOGIC_VECTOR ( 31 downto 0 );
    port_bram0_doa : out STD_LOGIC_VECTOR ( 31 downto 0 );
    port_bram0_enb : in STD_LOGIC;
    port_bram0_web : in STD_LOGIC;
    port_bram0_addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    port_bram0_dib : in STD_LOGIC_VECTOR ( 31 downto 0 );
    port_bram0_dob : out STD_LOGIC_VECTOR ( 31 downto 0 );
    port_bram1_ena : in STD_LOGIC;
    port_bram1_wea : in STD_LOGIC;
    port_bram1_addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    port_bram1_dia : in STD_LOGIC_VECTOR ( 31 downto 0 );
    port_bram1_doa : out STD_LOGIC_VECTOR ( 31 downto 0 );
    port_bram1_enb : in STD_LOGIC;
    port_bram1_web : in STD_LOGIC;
    port_bram1_addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    port_bram1_dib : in STD_LOGIC_VECTOR ( 31 downto 0 );
    port_bram1_dob : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_enable_tx : in STD_LOGIC;
    gpio_length_tx : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  end component kyberBD_dual_bram_axis_0_1;
  component kyberBD_keccak_f1600_bram_ip_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    bram0_ena : out STD_LOGIC;
    bram0_wea : out STD_LOGIC;
    bram0_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram0_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_ena : out STD_LOGIC;
    bram1_wea : out STD_LOGIC;
    bram1_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram1_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start : in STD_LOGIC;
    busy : out STD_LOGIC
  );
  end component kyberBD_keccak_f1600_bram_ip_0_0;
  component kyberBD_polyvec_invntt_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    bram0_ena : out STD_LOGIC;
    bram0_wea : out STD_LOGIC;
    bram0_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram0_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_enb : out STD_LOGIC;
    bram0_web : out STD_LOGIC;
    bram0_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram0_dib : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_dob : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_ena : out STD_LOGIC;
    bram1_wea : out STD_LOGIC;
    bram1_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram1_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_enb : out STD_LOGIC;
    bram1_web : out STD_LOGIC;
    bram1_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram1_dib : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_dob : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_to_fqmul0 : out STD_LOGIC;
    coeff0_to_fqmul0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coeff1_to_fqmul0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_to_fqmul1 : out STD_LOGIC;
    coeff0_to_fqmul1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coeff1_to_fqmul1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_from_fqmul0 : in STD_LOGIC;
    coeff_from_fqmul0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_from_fqmul1 : in STD_LOGIC;
    coeff_from_fqmul1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid0_to_barrett : out STD_LOGIC;
    data0_to_barrett : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid1_to_barrett : out STD_LOGIC;
    data1_to_barrett : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid0_from_barrett : in STD_LOGIC;
    data0_from_barrett : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid1_from_barrett : in STD_LOGIC;
    data1_from_barrett : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_dsm : out STD_LOGIC;
    kyber_k : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start : in STD_LOGIC;
    busy : out STD_LOGIC
  );
  end component kyberBD_polyvec_invntt_0_0;
  component kyberBD_polyvec_ntt_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    bram0_ena : out STD_LOGIC;
    bram0_wea : out STD_LOGIC;
    bram0_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram0_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_enb : out STD_LOGIC;
    bram0_web : out STD_LOGIC;
    bram0_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram0_dib : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_dob : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_ena : out STD_LOGIC;
    bram1_wea : out STD_LOGIC;
    bram1_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram1_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_enb : out STD_LOGIC;
    bram1_web : out STD_LOGIC;
    bram1_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram1_dib : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_dob : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_to_fqmul0 : out STD_LOGIC;
    coeff0_to_fqmul0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coeff1_to_fqmul0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_to_fqmul1 : out STD_LOGIC;
    coeff0_to_fqmul1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coeff1_to_fqmul1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_from_fqmul0 : in STD_LOGIC;
    coeff_from_fqmul0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_from_fqmul1 : in STD_LOGIC;
    coeff_from_fqmul1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid0_to_barrett : out STD_LOGIC;
    data0_to_barrett : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid1_to_barrett : out STD_LOGIC;
    data1_to_barrett : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid0_from_barrett : in STD_LOGIC;
    data0_from_barrett : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid1_from_barrett : in STD_LOGIC;
    data1_from_barrett : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_dsm : out STD_LOGIC;
    kyber_k : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start : in STD_LOGIC;
    busy : out STD_LOGIC
  );
  end component kyberBD_polyvec_ntt_0_0;
  component kyberBD_timer_0_1 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_timer_0_1;
  component kyberBD_timer_0_2 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_timer_0_2;
  component kyberBD_timer_0_3 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_timer_0_3;
  component kyberBD_timer_0_4 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_timer_0_4;
  component kyberBD_timer_0_5 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_timer_0_5;
  component kyberBD_timer_0_6 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_timer_0_6;
  component kyberBD_axi_gpio_6_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_axi_gpio_6_0;
  component kyberBD_axi_gpio_6_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_axi_gpio_6_2;
  component kyberBD_axi_gpio_6_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_axi_gpio_6_3;
  component kyberBD_axi_gpio_6_4 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_axi_gpio_6_4;
  component kyberBD_axi_gpio_6_5 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_axi_gpio_6_5;
  component kyberBD_axi_gpio_6_6 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kyberBD_axi_gpio_6_6;
  component kyberBD_poly_tomont_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    bram0_ena : out STD_LOGIC;
    bram0_wea : out STD_LOGIC;
    bram0_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram0_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_enb : out STD_LOGIC;
    bram0_web : out STD_LOGIC;
    bram0_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram0_dib : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_dob : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_ena : out STD_LOGIC;
    bram1_wea : out STD_LOGIC;
    bram1_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram1_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_enb : out STD_LOGIC;
    bram1_web : out STD_LOGIC;
    bram1_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram1_dib : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_dob : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en_lower_mont0 : out STD_LOGIC;
    valid_out_lower_mont0 : out STD_LOGIC;
    do_lower_mont0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_in_lower_mont0 : in STD_LOGIC;
    di_lower_mont0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_upper_mont0 : out STD_LOGIC;
    valid_out_upper_mont0 : out STD_LOGIC;
    do_upper_mont0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_in_upper_mont0 : in STD_LOGIC;
    di_upper_mont0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_lower_mont1 : out STD_LOGIC;
    valid_out_lower_mont1 : out STD_LOGIC;
    do_lower_mont1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_in_lower_mont1 : in STD_LOGIC;
    di_lower_mont1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_upper_mont1 : out STD_LOGIC;
    valid_out_upper_mont1 : out STD_LOGIC;
    do_upper_mont1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_in_upper_mont1 : in STD_LOGIC;
    di_upper_mont1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    start : in STD_LOGIC;
    busy : out STD_LOGIC
  );
  end component kyberBD_poly_tomont_0_0;
  component kyberBD_polyvec_reduce_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    bram0_ena : out STD_LOGIC;
    bram0_wea : out STD_LOGIC;
    bram0_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram0_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_enb : out STD_LOGIC;
    bram0_web : out STD_LOGIC;
    bram0_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram0_dib : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram0_dob : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_ena : out STD_LOGIC;
    bram1_wea : out STD_LOGIC;
    bram1_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram1_dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_doa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_enb : out STD_LOGIC;
    bram1_web : out STD_LOGIC;
    bram1_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram1_dib : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram1_dob : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en_lower_barrett0 : out STD_LOGIC;
    valid_out_lower_barrett0 : out STD_LOGIC;
    do_lower_barrett0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_lower_barrett0 : in STD_LOGIC;
    di_lower_barrett0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_upper_barrett0 : out STD_LOGIC;
    valid_out_upper_barrett0 : out STD_LOGIC;
    do_upper_barrett0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_upper_barrett0 : in STD_LOGIC;
    di_upper_barrett0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_lower_barrett1 : out STD_LOGIC;
    valid_out_lower_barrett1 : out STD_LOGIC;
    do_lower_barrett1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_lower_barrett1 : in STD_LOGIC;
    di_lower_barrett1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_upper_barrett1 : out STD_LOGIC;
    valid_out_upper_barrett1 : out STD_LOGIC;
    do_upper_barrett1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_upper_barrett1 : in STD_LOGIC;
    di_upper_barrett1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    kyber_k : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start : in STD_LOGIC;
    busy : out STD_LOGIC
  );
  end component kyberBD_polyvec_reduce_0_0;
  component kyberBD_signal_multiplexer_1_0 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_signal_multiplexer_1_0;
  component kyberBD_signal_multiplexer_8_0 is
  port (
    clk : in STD_LOGIC;
    en0 : in STD_LOGIC;
    valid0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_signal_multiplexer_8_0;
  component kyberBD_barrett_reduce_1_0 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_barrett_reduce_1_0;
  component kyberBD_barrett_reduce_1_1 is
  port (
    clk : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kyberBD_barrett_reduce_1_1;
  signal Net : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_0_mm2s_introut : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC;
  signal axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_gpio_10_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_11_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_1_gpio_io_o : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_gpio_2_gpio2_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_2_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_3_gpio2_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_3_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_4_gpio2_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_4_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_5_gpio2_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_gpio_5_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_6_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_7_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_8_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_9_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M04_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M05_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M05_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M05_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M06_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M06_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M06_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M07_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M07_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M07_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M07_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M07_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M07_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M07_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M08_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M08_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M08_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M08_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M08_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M08_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M08_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M09_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M09_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M09_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M09_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M09_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M09_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M09_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M10_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M10_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M10_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M10_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M10_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M10_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M10_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M10_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M10_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M10_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M10_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M10_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M10_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M10_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M10_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M10_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M10_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M11_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M11_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M11_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M11_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M11_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M11_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M11_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M11_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M11_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M11_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M12_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M12_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M12_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M12_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M12_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M12_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M12_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M12_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M12_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M12_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M12_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M12_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M12_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M12_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M12_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M12_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M12_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_1_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_1_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_WVALID : STD_LOGIC;
  signal barrett_reduce_0_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal barrett_reduce_0_valid_out : STD_LOGIC;
  signal barrett_reduce_1_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal barrett_reduce_1_valid_out : STD_LOGIC;
  signal barrett_reduce_2_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal barrett_reduce_2_valid_out : STD_LOGIC;
  signal barrett_reduce_3_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal barrett_reduce_3_valid_out : STD_LOGIC;
  signal bram_port_selector_0_BRAM_PORT_MASTER_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal bram_port_selector_0_BRAM_PORT_MASTER_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_port_selector_0_BRAM_PORT_MASTER_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_port_selector_0_BRAM_PORT_MASTER_EN : STD_LOGIC;
  signal bram_port_selector_0_BRAM_PORT_MASTER_WE : STD_LOGIC;
  signal bram_port_selector_1_BRAM_PORT_MASTER_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal bram_port_selector_1_BRAM_PORT_MASTER_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_port_selector_1_BRAM_PORT_MASTER_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_port_selector_1_BRAM_PORT_MASTER_EN : STD_LOGIC;
  signal bram_port_selector_1_BRAM_PORT_MASTER_WE : STD_LOGIC;
  signal bram_port_selector_2_BRAM_PORT_MASTER_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal bram_port_selector_2_BRAM_PORT_MASTER_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_port_selector_2_BRAM_PORT_MASTER_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_port_selector_2_BRAM_PORT_MASTER_EN : STD_LOGIC;
  signal bram_port_selector_2_BRAM_PORT_MASTER_WE : STD_LOGIC;
  signal bram_port_selector_3_BRAM_PORT_MASTER_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal bram_port_selector_3_BRAM_PORT_MASTER_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_port_selector_3_BRAM_PORT_MASTER_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_port_selector_3_BRAM_PORT_MASTER_EN : STD_LOGIC;
  signal bram_port_selector_3_BRAM_PORT_MASTER_WE : STD_LOGIC;
  signal dual_bram_axis_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dual_bram_axis_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dual_bram_axis_0_M00_AXIS_TLAST : STD_LOGIC;
  signal dual_bram_axis_0_M00_AXIS_TREADY : STD_LOGIC;
  signal dual_bram_axis_0_M00_AXIS_TVALID : STD_LOGIC;
  signal fqmul_0_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fqmul_0_data_out_mont : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fqmul_0_valid_out : STD_LOGIC;
  signal fqmul_0_valid_out_mont : STD_LOGIC;
  signal fqmul_1_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fqmul_1_data_out_mont : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fqmul_1_valid_out : STD_LOGIC;
  signal fqmul_1_valid_out_mont : STD_LOGIC;
  signal fqmul_2_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fqmul_2_data_out_mont : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fqmul_2_valid_out : STD_LOGIC;
  signal fqmul_2_valid_out_mont : STD_LOGIC;
  signal fqmul_3_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fqmul_3_data_out_mont : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fqmul_3_valid_out : STD_LOGIC;
  signal fqmul_3_valid_out_mont : STD_LOGIC;
  signal fqmul_4_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fqmul_4_data_out_mont : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fqmul_4_valid_out : STD_LOGIC;
  signal fqmul_4_valid_out_mont : STD_LOGIC;
  signal fqmul_5_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fqmul_5_data_out_mont : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fqmul_5_valid_out : STD_LOGIC;
  signal fqmul_5_valid_out_mont : STD_LOGIC;
  signal keccak_f1600_bram_ip_0_BRAM1_PORT_A_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal keccak_f1600_bram_ip_0_BRAM1_PORT_A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal keccak_f1600_bram_ip_0_BRAM1_PORT_A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal keccak_f1600_bram_ip_0_BRAM1_PORT_A_EN : STD_LOGIC;
  signal keccak_f1600_bram_ip_0_BRAM1_PORT_A_WE : STD_LOGIC;
  signal keccak_f1600_bram_ip_0_PORT_BRAM_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal keccak_f1600_bram_ip_0_PORT_BRAM_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal keccak_f1600_bram_ip_0_PORT_BRAM_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal keccak_f1600_bram_ip_0_PORT_BRAM_EN : STD_LOGIC;
  signal keccak_f1600_bram_ip_0_PORT_BRAM_WE : STD_LOGIC;
  signal keccak_f1600_bram_ip_0_busy : STD_LOGIC;
  signal montgomery_reduction_0_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal montgomery_reduction_0_valid_out : STD_LOGIC;
  signal montgomery_reduction_1_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal montgomery_reduction_1_valid_out : STD_LOGIC;
  signal montgomery_reduction_2_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal montgomery_reduction_2_valid_out : STD_LOGIC;
  signal montgomery_reduction_3_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal montgomery_reduction_3_valid_out : STD_LOGIC;
  signal montgomery_reduction_4_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal montgomery_reduction_4_valid_out : STD_LOGIC;
  signal montgomery_reduction_5_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal montgomery_reduction_5_valid_out : STD_LOGIC;
  signal poly_tomont_0_BRAM0_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal poly_tomont_0_BRAM0_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_BRAM0_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_BRAM0_PORT_B_EN : STD_LOGIC;
  signal poly_tomont_0_BRAM0_PORT_B_WE : STD_LOGIC;
  signal poly_tomont_0_BRAM1_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal poly_tomont_0_BRAM1_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_BRAM1_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_BRAM1_PORT_B_EN : STD_LOGIC;
  signal poly_tomont_0_BRAM1_PORT_B_WE : STD_LOGIC;
  signal poly_tomont_0_BRAM_PORT_A_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal poly_tomont_0_BRAM_PORT_A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_BRAM_PORT_A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_BRAM_PORT_A_EN : STD_LOGIC;
  signal poly_tomont_0_BRAM_PORT_A_WE : STD_LOGIC;
  signal poly_tomont_0_BRAM_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal poly_tomont_0_BRAM_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_BRAM_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_BRAM_PORT_B_EN : STD_LOGIC;
  signal poly_tomont_0_BRAM_PORT_B_WE : STD_LOGIC;
  signal poly_tomont_0_busy : STD_LOGIC;
  signal poly_tomont_0_do_lower_mont : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_do_lower_mont1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_do_upper_mont : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_do_upper_mont1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal poly_tomont_0_en_lower_mont : STD_LOGIC;
  signal poly_tomont_0_en_lower_mont1 : STD_LOGIC;
  signal poly_tomont_0_en_upper_mont : STD_LOGIC;
  signal poly_tomont_0_en_upper_mont1 : STD_LOGIC;
  signal poly_tomont_0_valid_out_lower_mont : STD_LOGIC;
  signal poly_tomont_0_valid_out_lower_mont1 : STD_LOGIC;
  signal poly_tomont_0_valid_out_upper_mont : STD_LOGIC;
  signal poly_tomont_0_valid_out_upper_mont1 : STD_LOGIC;
  signal polyvec_basemul_acc_0_BRAM0_PORT_A_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_basemul_acc_0_BRAM0_PORT_A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_basemul_acc_0_BRAM0_PORT_A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_basemul_acc_0_BRAM0_PORT_A_EN : STD_LOGIC;
  signal polyvec_basemul_acc_0_BRAM0_PORT_A_WE : STD_LOGIC;
  signal polyvec_basemul_acc_0_BRAM0_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_basemul_acc_0_BRAM0_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_basemul_acc_0_BRAM0_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_basemul_acc_0_BRAM0_PORT_B_EN : STD_LOGIC;
  signal polyvec_basemul_acc_0_BRAM0_PORT_B_WE : STD_LOGIC;
  signal polyvec_basemul_acc_0_BRAM1_PORT_A_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_basemul_acc_0_BRAM1_PORT_A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_basemul_acc_0_BRAM1_PORT_A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_basemul_acc_0_BRAM1_PORT_A_EN : STD_LOGIC;
  signal polyvec_basemul_acc_0_BRAM1_PORT_A_WE : STD_LOGIC;
  signal polyvec_basemul_acc_0_BRAM1_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_basemul_acc_0_BRAM1_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_basemul_acc_0_BRAM1_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_basemul_acc_0_BRAM1_PORT_B_EN : STD_LOGIC;
  signal polyvec_basemul_acc_0_BRAM1_PORT_B_WE : STD_LOGIC;
  signal polyvec_basemul_acc_0_busy : STD_LOGIC;
  signal polyvec_basemul_acc_0_coeff0_to_fqmul0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff0_to_fqmul1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff0_to_fqmul2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff0_to_fqmul3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff0_to_fqmul4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff0_to_fqmul5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff1_to_fqmul0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff1_to_fqmul1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff1_to_fqmul2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff1_to_fqmul3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff1_to_fqmul4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_coeff1_to_fqmul5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_data0_to_barrett : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_data1_to_barrett : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_basemul_acc_0_valid0_to_barrett : STD_LOGIC;
  signal polyvec_basemul_acc_0_valid1_to_barrett : STD_LOGIC;
  signal polyvec_basemul_acc_0_valid_to_fqmul0 : STD_LOGIC;
  signal polyvec_basemul_acc_0_valid_to_fqmul1 : STD_LOGIC;
  signal polyvec_basemul_acc_0_valid_to_fqmul2 : STD_LOGIC;
  signal polyvec_basemul_acc_0_valid_to_fqmul3 : STD_LOGIC;
  signal polyvec_basemul_acc_0_valid_to_fqmul4 : STD_LOGIC;
  signal polyvec_basemul_acc_0_valid_to_fqmul5 : STD_LOGIC;
  signal polyvec_invntt_0_BRAM1_PORT_A_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_invntt_0_BRAM1_PORT_A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_invntt_0_BRAM1_PORT_A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_invntt_0_BRAM1_PORT_A_EN : STD_LOGIC;
  signal polyvec_invntt_0_BRAM1_PORT_A_WE : STD_LOGIC;
  signal polyvec_invntt_0_BRAM1_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_invntt_0_BRAM1_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_invntt_0_BRAM1_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_invntt_0_BRAM1_PORT_B_EN : STD_LOGIC;
  signal polyvec_invntt_0_BRAM1_PORT_B_WE : STD_LOGIC;
  signal polyvec_invntt_0_BRAM_PORT_A_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_invntt_0_BRAM_PORT_A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_invntt_0_BRAM_PORT_A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_invntt_0_BRAM_PORT_A_EN : STD_LOGIC;
  signal polyvec_invntt_0_BRAM_PORT_A_WE : STD_LOGIC;
  signal polyvec_invntt_0_BRAM_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_invntt_0_BRAM_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_invntt_0_BRAM_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_invntt_0_BRAM_PORT_B_EN : STD_LOGIC;
  signal polyvec_invntt_0_BRAM_PORT_B_WE : STD_LOGIC;
  signal polyvec_invntt_0_busy : STD_LOGIC;
  signal polyvec_invntt_0_coeff0_to_fqmul0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_invntt_0_coeff0_to_fqmul1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_invntt_0_coeff1_to_fqmul0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_invntt_0_coeff1_to_fqmul1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_invntt_0_data0_to_barrett : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_invntt_0_data1_to_barrett : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_invntt_0_en_dsm : STD_LOGIC;
  signal polyvec_invntt_0_valid0_to_barrett : STD_LOGIC;
  signal polyvec_invntt_0_valid1_to_barrett : STD_LOGIC;
  signal polyvec_invntt_0_valid_to_fqmul0 : STD_LOGIC;
  signal polyvec_invntt_0_valid_to_fqmul1 : STD_LOGIC;
  signal polyvec_ntt_0_BRAM1_PORT_A_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_ntt_0_BRAM1_PORT_A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_ntt_0_BRAM1_PORT_A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_ntt_0_BRAM1_PORT_A_EN : STD_LOGIC;
  signal polyvec_ntt_0_BRAM1_PORT_A_WE : STD_LOGIC;
  signal polyvec_ntt_0_BRAM1_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_ntt_0_BRAM1_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_ntt_0_BRAM1_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_ntt_0_BRAM1_PORT_B_EN : STD_LOGIC;
  signal polyvec_ntt_0_BRAM1_PORT_B_WE : STD_LOGIC;
  signal polyvec_ntt_0_BRAM_PORT_A_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_ntt_0_BRAM_PORT_A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_ntt_0_BRAM_PORT_A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_ntt_0_BRAM_PORT_A_EN : STD_LOGIC;
  signal polyvec_ntt_0_BRAM_PORT_A_WE : STD_LOGIC;
  signal polyvec_ntt_0_BRAM_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_ntt_0_BRAM_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_ntt_0_BRAM_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_ntt_0_BRAM_PORT_B_EN : STD_LOGIC;
  signal polyvec_ntt_0_BRAM_PORT_B_WE : STD_LOGIC;
  signal polyvec_ntt_0_busy : STD_LOGIC;
  signal polyvec_ntt_0_coeff0_to_fqmul0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_ntt_0_coeff0_to_fqmul1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_ntt_0_coeff1_to_fqmul0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_ntt_0_coeff1_to_fqmul1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_ntt_0_data0_to_barrett : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_ntt_0_data1_to_barrett : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_ntt_0_en_dsm : STD_LOGIC;
  signal polyvec_ntt_0_valid0_to_barrett : STD_LOGIC;
  signal polyvec_ntt_0_valid1_to_barrett : STD_LOGIC;
  signal polyvec_ntt_0_valid_to_fqmul0 : STD_LOGIC;
  signal polyvec_ntt_0_valid_to_fqmul1 : STD_LOGIC;
  signal polyvec_reduce_0_BRAM0_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_reduce_0_BRAM0_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_reduce_0_BRAM0_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_reduce_0_BRAM0_PORT_B_EN : STD_LOGIC;
  signal polyvec_reduce_0_BRAM0_PORT_B_WE : STD_LOGIC;
  signal polyvec_reduce_0_BRAM1_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_reduce_0_BRAM1_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_reduce_0_BRAM1_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_reduce_0_BRAM1_PORT_B_EN : STD_LOGIC;
  signal polyvec_reduce_0_BRAM1_PORT_B_WE : STD_LOGIC;
  signal polyvec_reduce_0_BRAM_PORT_A_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_reduce_0_BRAM_PORT_A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_reduce_0_BRAM_PORT_A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_reduce_0_BRAM_PORT_A_EN : STD_LOGIC;
  signal polyvec_reduce_0_BRAM_PORT_A_WE : STD_LOGIC;
  signal polyvec_reduce_0_BRAM_PORT_B_ADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal polyvec_reduce_0_BRAM_PORT_B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_reduce_0_BRAM_PORT_B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal polyvec_reduce_0_BRAM_PORT_B_EN : STD_LOGIC;
  signal polyvec_reduce_0_BRAM_PORT_B_WE : STD_LOGIC;
  signal polyvec_reduce_0_busy : STD_LOGIC;
  signal polyvec_reduce_0_do_lower_barrett : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_reduce_0_do_lower_barrett1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_reduce_0_do_upper_barrett : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_reduce_0_do_upper_barrett1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal polyvec_reduce_0_en_lower_barrett : STD_LOGIC;
  signal polyvec_reduce_0_en_lower_barrett1 : STD_LOGIC;
  signal polyvec_reduce_0_en_upper_barrett : STD_LOGIC;
  signal polyvec_reduce_0_en_upper_barrett1 : STD_LOGIC;
  signal polyvec_reduce_0_valid_out_lower_barrett : STD_LOGIC;
  signal polyvec_reduce_0_valid_out_lower_barrett1 : STD_LOGIC;
  signal polyvec_reduce_0_valid_out_upper_barrett : STD_LOGIC;
  signal polyvec_reduce_0_valid_out_upper_barrett1 : STD_LOGIC;
  signal proc_sys_reset_0_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal signal_multiplexer_0_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_0_valid : STD_LOGIC;
  signal signal_multiplexer_12_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_12_datab : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_12_valid : STD_LOGIC;
  signal signal_multiplexer_14_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_14_datab : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_14_valid : STD_LOGIC;
  signal signal_multiplexer_16_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_16_datab : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_16_valid : STD_LOGIC;
  signal signal_multiplexer_17_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_17_datab : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_17_valid : STD_LOGIC;
  signal signal_multiplexer_18_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_18_datab : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_18_valid : STD_LOGIC;
  signal signal_multiplexer_19_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_19_datab : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_19_valid : STD_LOGIC;
  signal signal_multiplexer_1_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_1_valid : STD_LOGIC;
  signal signal_multiplexer_2_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal signal_multiplexer_2_valid : STD_LOGIC;
  signal signal_multiplexer_3_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal signal_multiplexer_3_valid : STD_LOGIC;
  signal signal_multiplexer_4_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal signal_multiplexer_4_valid : STD_LOGIC;
  signal signal_multiplexer_5_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal signal_multiplexer_5_valid : STD_LOGIC;
  signal signal_multiplexer_6_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal signal_multiplexer_6_valid : STD_LOGIC;
  signal signal_multiplexer_7_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal signal_multiplexer_7_valid : STD_LOGIC;
  signal signal_multiplexer_8_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_8_valid : STD_LOGIC;
  signal signal_multiplexer_9_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_multiplexer_9_valid : STD_LOGIC;
  signal timer2_0_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timer_0_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timer_1_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timer_2_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timer_3_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timer_4_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timer_5_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_gpio_0_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_gpio_1_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_gpio_2_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_gpio_2_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_gpio_3_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_gpio_3_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_gpio_4_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_gpio_4_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dual_bram_axis_0_m00_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
axi_dma_0: component kyberBD_axi_dma_0_0
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_0_M_AXI_MM2S_ARREADY(0),
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_0_M_AXI_MM2S_RLAST(0),
      m_axi_mm2s_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_0_M_AXI_MM2S_RVALID(0),
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY(0),
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID(0),
      m_axi_s2mm_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY(0),
      m_axi_s2mm_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => axi_dma_0_M_AXIS_MM2S_TKEEP(3 downto 0),
      m_axis_mm2s_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID,
      mm2s_introut => axi_dma_0_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_introut => axi_dma_0_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(9 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_lite_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_lite_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s_axi_lite_bready => axi_interconnect_0_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_interconnect_0_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_lite_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => dual_bram_axis_0_M00_AXIS_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => dual_bram_axis_0_M00_AXIS_TKEEP(3 downto 0),
      s_axis_s2mm_tlast => dual_bram_axis_0_M00_AXIS_TLAST,
      s_axis_s2mm_tready => dual_bram_axis_0_M00_AXIS_TREADY,
      s_axis_s2mm_tvalid => dual_bram_axis_0_M00_AXIS_TVALID
    );
axi_gpio_0: component kyberBD_axi_gpio_0_0
     port map (
      gpio_io_i(31 downto 0) => timer2_0_count(31 downto 0),
      gpio_io_o(31 downto 0) => axi_gpio_0_gpio_io_o(31 downto 0),
      gpio_io_t(31 downto 0) => NLW_axi_gpio_0_gpio_io_t_UNCONNECTED(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M01_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M01_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M01_AXI_WVALID
    );
axi_gpio_1: component kyberBD_axi_gpio_1_0
     port map (
      gpio_io_i(2 downto 0) => axi_gpio_1_gpio_io_o(2 downto 0),
      gpio_io_o(2 downto 0) => axi_gpio_1_gpio_io_o(2 downto 0),
      gpio_io_t(2 downto 0) => NLW_axi_gpio_1_gpio_io_t_UNCONNECTED(2 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M02_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M02_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M02_AXI_WVALID
    );
axi_gpio_10: component kyberBD_axi_gpio_6_5
     port map (
      gpio2_io_i(31 downto 0) => timer_4_count(31 downto 0),
      gpio_io_o(0) => axi_gpio_10_gpio_io_o(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M11_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M11_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M11_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M11_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M11_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M11_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M11_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M11_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M11_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M11_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M11_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M11_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M11_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M11_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M11_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M11_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M11_AXI_WVALID
    );
axi_gpio_11: component kyberBD_axi_gpio_6_6
     port map (
      gpio2_io_i(31 downto 0) => timer_5_count(31 downto 0),
      gpio_io_o(0) => axi_gpio_11_gpio_io_o(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M12_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M12_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M12_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M12_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M12_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M12_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M12_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M12_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M12_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M12_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M12_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M12_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M12_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M12_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M12_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M12_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M12_AXI_WVALID
    );
axi_gpio_2: component kyberBD_axi_gpio_2_0
     port map (
      gpio2_io_i(0) => polyvec_reduce_0_busy,
      gpio2_io_o(0) => axi_gpio_2_gpio2_io_o(0),
      gpio2_io_t(0) => NLW_axi_gpio_2_gpio2_io_t_UNCONNECTED(0),
      gpio_io_i(0) => poly_tomont_0_busy,
      gpio_io_o(0) => axi_gpio_2_gpio_io_o(0),
      gpio_io_t(0) => NLW_axi_gpio_2_gpio_io_t_UNCONNECTED(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M03_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M03_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M03_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M03_AXI_WVALID
    );
axi_gpio_3: component kyberBD_axi_gpio_3_0
     port map (
      gpio2_io_i(0) => keccak_f1600_bram_ip_0_busy,
      gpio2_io_o(0) => axi_gpio_3_gpio2_io_o(0),
      gpio2_io_t(0) => NLW_axi_gpio_3_gpio2_io_t_UNCONNECTED(0),
      gpio_io_i(0) => polyvec_basemul_acc_0_busy,
      gpio_io_o(0) => axi_gpio_3_gpio_io_o(0),
      gpio_io_t(0) => NLW_axi_gpio_3_gpio_io_t_UNCONNECTED(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M04_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M04_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M04_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M04_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M04_AXI_WVALID
    );
axi_gpio_4: component kyberBD_axi_gpio_4_0
     port map (
      gpio2_io_i(0) => polyvec_invntt_0_busy,
      gpio2_io_o(0) => axi_gpio_4_gpio2_io_o(0),
      gpio2_io_t(0) => NLW_axi_gpio_4_gpio2_io_t_UNCONNECTED(0),
      gpio_io_i(0) => polyvec_ntt_0_busy,
      gpio_io_o(0) => axi_gpio_4_gpio_io_o(0),
      gpio_io_t(0) => NLW_axi_gpio_4_gpio_io_t_UNCONNECTED(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M05_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M05_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M05_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M05_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M05_AXI_WVALID
    );
axi_gpio_5: component kyberBD_axi_gpio_5_0
     port map (
      gpio2_io_o(31 downto 0) => axi_gpio_5_gpio2_io_o(31 downto 0),
      gpio_io_o(0) => axi_gpio_5_gpio_io_o(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M06_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M06_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M06_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M06_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M06_AXI_WVALID
    );
axi_gpio_6: component kyberBD_axi_gpio_6_0
     port map (
      gpio2_io_i(31 downto 0) => timer_0_count(31 downto 0),
      gpio_io_o(0) => axi_gpio_6_gpio_io_o(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M07_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M07_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M07_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M07_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M07_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M07_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M07_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M07_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M07_AXI_WVALID
    );
axi_gpio_7: component kyberBD_axi_gpio_6_2
     port map (
      gpio2_io_i(31 downto 0) => timer_1_count(31 downto 0),
      gpio_io_o(0) => axi_gpio_7_gpio_io_o(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M08_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M08_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M08_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M08_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M08_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M08_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M08_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M08_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M08_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M08_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M08_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M08_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M08_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M08_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M08_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M08_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M08_AXI_WVALID
    );
axi_gpio_8: component kyberBD_axi_gpio_6_3
     port map (
      gpio2_io_i(31 downto 0) => timer_2_count(31 downto 0),
      gpio_io_o(0) => axi_gpio_8_gpio_io_o(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M09_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M09_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M09_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M09_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M09_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M09_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M09_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M09_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M09_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M09_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M09_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M09_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M09_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M09_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M09_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M09_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M09_AXI_WVALID
    );
axi_gpio_9: component kyberBD_axi_gpio_6_4
     port map (
      gpio2_io_i(31 downto 0) => timer_3_count(31 downto 0),
      gpio_io_o(0) => axi_gpio_9_gpio_io_o(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M10_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M10_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M10_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M10_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M10_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M10_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M10_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M10_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M10_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M10_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M10_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M10_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M10_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M10_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M10_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M10_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M10_AXI_WVALID
    );
axi_interconnect_0: entity work.kyberBD_axi_interconnect_0_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => axi_interconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => axi_interconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => axi_interconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_interconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_interconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_interconnect_0_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready => axi_interconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready => axi_interconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => axi_interconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_interconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_interconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_interconnect_0_M02_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => axi_interconnect_0_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready => axi_interconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_interconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => axi_interconnect_0_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready => axi_interconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_interconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => axi_interconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_interconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_interconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_interconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_interconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => axi_interconnect_0_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => axi_interconnect_0_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready => axi_interconnect_0_M04_AXI_ARREADY,
      M04_AXI_arvalid => axi_interconnect_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 0) => axi_interconnect_0_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready => axi_interconnect_0_M04_AXI_AWREADY,
      M04_AXI_awvalid => axi_interconnect_0_M04_AXI_AWVALID,
      M04_AXI_bready => axi_interconnect_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => axi_interconnect_0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => axi_interconnect_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => axi_interconnect_0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => axi_interconnect_0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => axi_interconnect_0_M04_AXI_WVALID,
      M05_ACLK => processing_system7_0_FCLK_CLK0,
      M05_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => axi_interconnect_0_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready => axi_interconnect_0_M05_AXI_ARREADY,
      M05_AXI_arvalid => axi_interconnect_0_M05_AXI_ARVALID,
      M05_AXI_awaddr(31 downto 0) => axi_interconnect_0_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready => axi_interconnect_0_M05_AXI_AWREADY,
      M05_AXI_awvalid => axi_interconnect_0_M05_AXI_AWVALID,
      M05_AXI_bready => axi_interconnect_0_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => axi_interconnect_0_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => axi_interconnect_0_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => axi_interconnect_0_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => axi_interconnect_0_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => axi_interconnect_0_M05_AXI_WVALID,
      M06_ACLK => processing_system7_0_FCLK_CLK0,
      M06_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => axi_interconnect_0_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arready => axi_interconnect_0_M06_AXI_ARREADY,
      M06_AXI_arvalid => axi_interconnect_0_M06_AXI_ARVALID,
      M06_AXI_awaddr(31 downto 0) => axi_interconnect_0_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awready => axi_interconnect_0_M06_AXI_AWREADY,
      M06_AXI_awvalid => axi_interconnect_0_M06_AXI_AWVALID,
      M06_AXI_bready => axi_interconnect_0_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_interconnect_0_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => axi_interconnect_0_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_interconnect_0_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => axi_interconnect_0_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_interconnect_0_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => axi_interconnect_0_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_interconnect_0_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => axi_interconnect_0_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => axi_interconnect_0_M06_AXI_WVALID,
      M07_ACLK => processing_system7_0_FCLK_CLK0,
      M07_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M07_AXI_araddr(31 downto 0) => axi_interconnect_0_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arready => axi_interconnect_0_M07_AXI_ARREADY,
      M07_AXI_arvalid => axi_interconnect_0_M07_AXI_ARVALID,
      M07_AXI_awaddr(31 downto 0) => axi_interconnect_0_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awready => axi_interconnect_0_M07_AXI_AWREADY,
      M07_AXI_awvalid => axi_interconnect_0_M07_AXI_AWVALID,
      M07_AXI_bready => axi_interconnect_0_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => axi_interconnect_0_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => axi_interconnect_0_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => axi_interconnect_0_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready => axi_interconnect_0_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => axi_interconnect_0_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => axi_interconnect_0_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => axi_interconnect_0_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready => axi_interconnect_0_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => axi_interconnect_0_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => axi_interconnect_0_M07_AXI_WVALID,
      M08_ACLK => processing_system7_0_FCLK_CLK0,
      M08_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M08_AXI_araddr(31 downto 0) => axi_interconnect_0_M08_AXI_ARADDR(31 downto 0),
      M08_AXI_arready => axi_interconnect_0_M08_AXI_ARREADY,
      M08_AXI_arvalid => axi_interconnect_0_M08_AXI_ARVALID,
      M08_AXI_awaddr(31 downto 0) => axi_interconnect_0_M08_AXI_AWADDR(31 downto 0),
      M08_AXI_awready => axi_interconnect_0_M08_AXI_AWREADY,
      M08_AXI_awvalid => axi_interconnect_0_M08_AXI_AWVALID,
      M08_AXI_bready => axi_interconnect_0_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => axi_interconnect_0_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => axi_interconnect_0_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => axi_interconnect_0_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready => axi_interconnect_0_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => axi_interconnect_0_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => axi_interconnect_0_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => axi_interconnect_0_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready => axi_interconnect_0_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => axi_interconnect_0_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => axi_interconnect_0_M08_AXI_WVALID,
      M09_ACLK => processing_system7_0_FCLK_CLK0,
      M09_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M09_AXI_araddr(31 downto 0) => axi_interconnect_0_M09_AXI_ARADDR(31 downto 0),
      M09_AXI_arready => axi_interconnect_0_M09_AXI_ARREADY,
      M09_AXI_arvalid => axi_interconnect_0_M09_AXI_ARVALID,
      M09_AXI_awaddr(31 downto 0) => axi_interconnect_0_M09_AXI_AWADDR(31 downto 0),
      M09_AXI_awready => axi_interconnect_0_M09_AXI_AWREADY,
      M09_AXI_awvalid => axi_interconnect_0_M09_AXI_AWVALID,
      M09_AXI_bready => axi_interconnect_0_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => axi_interconnect_0_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid => axi_interconnect_0_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => axi_interconnect_0_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready => axi_interconnect_0_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => axi_interconnect_0_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid => axi_interconnect_0_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => axi_interconnect_0_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready => axi_interconnect_0_M09_AXI_WREADY,
      M09_AXI_wstrb(3 downto 0) => axi_interconnect_0_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid => axi_interconnect_0_M09_AXI_WVALID,
      M10_ACLK => processing_system7_0_FCLK_CLK0,
      M10_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M10_AXI_araddr(31 downto 0) => axi_interconnect_0_M10_AXI_ARADDR(31 downto 0),
      M10_AXI_arready => axi_interconnect_0_M10_AXI_ARREADY,
      M10_AXI_arvalid => axi_interconnect_0_M10_AXI_ARVALID,
      M10_AXI_awaddr(31 downto 0) => axi_interconnect_0_M10_AXI_AWADDR(31 downto 0),
      M10_AXI_awready => axi_interconnect_0_M10_AXI_AWREADY,
      M10_AXI_awvalid => axi_interconnect_0_M10_AXI_AWVALID,
      M10_AXI_bready => axi_interconnect_0_M10_AXI_BREADY,
      M10_AXI_bresp(1 downto 0) => axi_interconnect_0_M10_AXI_BRESP(1 downto 0),
      M10_AXI_bvalid => axi_interconnect_0_M10_AXI_BVALID,
      M10_AXI_rdata(31 downto 0) => axi_interconnect_0_M10_AXI_RDATA(31 downto 0),
      M10_AXI_rready => axi_interconnect_0_M10_AXI_RREADY,
      M10_AXI_rresp(1 downto 0) => axi_interconnect_0_M10_AXI_RRESP(1 downto 0),
      M10_AXI_rvalid => axi_interconnect_0_M10_AXI_RVALID,
      M10_AXI_wdata(31 downto 0) => axi_interconnect_0_M10_AXI_WDATA(31 downto 0),
      M10_AXI_wready => axi_interconnect_0_M10_AXI_WREADY,
      M10_AXI_wstrb(3 downto 0) => axi_interconnect_0_M10_AXI_WSTRB(3 downto 0),
      M10_AXI_wvalid => axi_interconnect_0_M10_AXI_WVALID,
      M11_ACLK => processing_system7_0_FCLK_CLK0,
      M11_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M11_AXI_araddr(31 downto 0) => axi_interconnect_0_M11_AXI_ARADDR(31 downto 0),
      M11_AXI_arready => axi_interconnect_0_M11_AXI_ARREADY,
      M11_AXI_arvalid => axi_interconnect_0_M11_AXI_ARVALID,
      M11_AXI_awaddr(31 downto 0) => axi_interconnect_0_M11_AXI_AWADDR(31 downto 0),
      M11_AXI_awready => axi_interconnect_0_M11_AXI_AWREADY,
      M11_AXI_awvalid => axi_interconnect_0_M11_AXI_AWVALID,
      M11_AXI_bready => axi_interconnect_0_M11_AXI_BREADY,
      M11_AXI_bresp(1 downto 0) => axi_interconnect_0_M11_AXI_BRESP(1 downto 0),
      M11_AXI_bvalid => axi_interconnect_0_M11_AXI_BVALID,
      M11_AXI_rdata(31 downto 0) => axi_interconnect_0_M11_AXI_RDATA(31 downto 0),
      M11_AXI_rready => axi_interconnect_0_M11_AXI_RREADY,
      M11_AXI_rresp(1 downto 0) => axi_interconnect_0_M11_AXI_RRESP(1 downto 0),
      M11_AXI_rvalid => axi_interconnect_0_M11_AXI_RVALID,
      M11_AXI_wdata(31 downto 0) => axi_interconnect_0_M11_AXI_WDATA(31 downto 0),
      M11_AXI_wready => axi_interconnect_0_M11_AXI_WREADY,
      M11_AXI_wstrb(3 downto 0) => axi_interconnect_0_M11_AXI_WSTRB(3 downto 0),
      M11_AXI_wvalid => axi_interconnect_0_M11_AXI_WVALID,
      M12_ACLK => processing_system7_0_FCLK_CLK0,
      M12_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M12_AXI_araddr(31 downto 0) => axi_interconnect_0_M12_AXI_ARADDR(31 downto 0),
      M12_AXI_arready => axi_interconnect_0_M12_AXI_ARREADY,
      M12_AXI_arvalid => axi_interconnect_0_M12_AXI_ARVALID,
      M12_AXI_awaddr(31 downto 0) => axi_interconnect_0_M12_AXI_AWADDR(31 downto 0),
      M12_AXI_awready => axi_interconnect_0_M12_AXI_AWREADY,
      M12_AXI_awvalid => axi_interconnect_0_M12_AXI_AWVALID,
      M12_AXI_bready => axi_interconnect_0_M12_AXI_BREADY,
      M12_AXI_bresp(1 downto 0) => axi_interconnect_0_M12_AXI_BRESP(1 downto 0),
      M12_AXI_bvalid => axi_interconnect_0_M12_AXI_BVALID,
      M12_AXI_rdata(31 downto 0) => axi_interconnect_0_M12_AXI_RDATA(31 downto 0),
      M12_AXI_rready => axi_interconnect_0_M12_AXI_RREADY,
      M12_AXI_rresp(1 downto 0) => axi_interconnect_0_M12_AXI_RRESP(1 downto 0),
      M12_AXI_rvalid => axi_interconnect_0_M12_AXI_RVALID,
      M12_AXI_wdata(31 downto 0) => axi_interconnect_0_M12_AXI_WDATA(31 downto 0),
      M12_AXI_wready => axi_interconnect_0_M12_AXI_WREADY,
      M12_AXI_wstrb(3 downto 0) => axi_interconnect_0_M12_AXI_WSTRB(3 downto 0),
      M12_AXI_wvalid => axi_interconnect_0_M12_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
axi_interconnect_1: entity work.kyberBD_axi_interconnect_1_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_1_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_1_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(0) => axi_interconnect_1_M00_AXI_ARID(0),
      M00_AXI_arlen(3 downto 0) => axi_interconnect_1_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_interconnect_1_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_1_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_1_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_1_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_1_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_1_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_1_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_1_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(0) => axi_interconnect_1_M00_AXI_AWID(0),
      M00_AXI_awlen(3 downto 0) => axi_interconnect_1_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_interconnect_1_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_1_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_1_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_1_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_1_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_1_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => axi_interconnect_1_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => axi_interconnect_1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(5 downto 0) => axi_interconnect_1_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => axi_interconnect_1_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wid(0) => axi_interconnect_1_M00_AXI_WID(0),
      M00_AXI_wlast => axi_interconnect_1_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_1_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_1_M00_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arready(0) => axi_dma_0_M_AXI_MM2S_ARREADY(0),
      S00_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => axi_dma_0_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      S00_AXI_rlast(0) => axi_dma_0_M_AXI_MM2S_RLAST(0),
      S00_AXI_rready(0) => axi_dma_0_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => axi_dma_0_M_AXI_MM2S_RVALID(0),
      S01_ACLK => processing_system7_0_FCLK_CLK0,
      S01_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S01_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awready(0) => axi_dma_0_M_AXI_S2MM_AWREADY(0),
      S01_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awvalid(0) => axi_dma_0_M_AXI_S2MM_AWVALID,
      S01_AXI_bready(0) => axi_dma_0_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => axi_dma_0_M_AXI_S2MM_BVALID(0),
      S01_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      S01_AXI_wlast(0) => axi_dma_0_M_AXI_S2MM_WLAST,
      S01_AXI_wready(0) => axi_dma_0_M_AXI_S2MM_WREADY(0),
      S01_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      S01_AXI_wvalid(0) => axi_dma_0_M_AXI_S2MM_WVALID
    );
barrett_reduce_0: component kyberBD_barrett_reduce_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in(15 downto 0) => signal_multiplexer_0_data(15 downto 0),
      data_out(15 downto 0) => barrett_reduce_0_data_out(15 downto 0),
      valid_in => signal_multiplexer_0_valid,
      valid_out => barrett_reduce_0_valid_out
    );
barrett_reduce_1: component kyberBD_barrett_reduce_0_1
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in(15 downto 0) => signal_multiplexer_1_data(15 downto 0),
      data_out(15 downto 0) => barrett_reduce_1_data_out(15 downto 0),
      valid_in => signal_multiplexer_1_valid,
      valid_out => barrett_reduce_1_valid_out
    );
barrett_reduce_2: component kyberBD_barrett_reduce_1_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in(15 downto 0) => signal_multiplexer_8_data(15 downto 0),
      data_out(15 downto 0) => barrett_reduce_2_data_out(15 downto 0),
      valid_in => signal_multiplexer_8_valid,
      valid_out => barrett_reduce_2_valid_out
    );
barrett_reduce_3: component kyberBD_barrett_reduce_1_1
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in(15 downto 0) => signal_multiplexer_9_data(15 downto 0),
      data_out(15 downto 0) => barrett_reduce_3_data_out(15 downto 0),
      valid_in => signal_multiplexer_9_valid,
      valid_out => barrett_reduce_3_valid_out
    );
bram_port_selector_0: component kyberBD_bram_port_selector_0_0
     port map (
      master_addr(10 downto 0) => bram_port_selector_0_BRAM_PORT_MASTER_ADDR(10 downto 0),
      master_di(31 downto 0) => bram_port_selector_0_BRAM_PORT_MASTER_DIN(31 downto 0),
      master_do(31 downto 0) => bram_port_selector_0_BRAM_PORT_MASTER_DOUT(31 downto 0),
      master_en => bram_port_selector_0_BRAM_PORT_MASTER_EN,
      master_we => bram_port_selector_0_BRAM_PORT_MASTER_WE,
      slave0_addr(10 downto 0) => poly_tomont_0_BRAM_PORT_A_ADDR(10 downto 0),
      slave0_di(31 downto 0) => poly_tomont_0_BRAM_PORT_A_DIN(31 downto 0),
      slave0_do(31 downto 0) => poly_tomont_0_BRAM_PORT_A_DOUT(31 downto 0),
      slave0_en => poly_tomont_0_BRAM_PORT_A_EN,
      slave0_we => poly_tomont_0_BRAM_PORT_A_WE,
      slave1_addr(10 downto 0) => polyvec_reduce_0_BRAM_PORT_A_ADDR(10 downto 0),
      slave1_di(31 downto 0) => polyvec_reduce_0_BRAM_PORT_A_DIN(31 downto 0),
      slave1_do(31 downto 0) => polyvec_reduce_0_BRAM_PORT_A_DOUT(31 downto 0),
      slave1_en => polyvec_reduce_0_BRAM_PORT_A_EN,
      slave1_we => polyvec_reduce_0_BRAM_PORT_A_WE,
      slave2_addr(10 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_A_ADDR(10 downto 0),
      slave2_di(31 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_A_DIN(31 downto 0),
      slave2_do(31 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_A_DOUT(31 downto 0),
      slave2_en => polyvec_basemul_acc_0_BRAM0_PORT_A_EN,
      slave2_we => polyvec_basemul_acc_0_BRAM0_PORT_A_WE,
      slave3_addr(10 downto 0) => polyvec_ntt_0_BRAM_PORT_A_ADDR(10 downto 0),
      slave3_di(31 downto 0) => polyvec_ntt_0_BRAM_PORT_A_DIN(31 downto 0),
      slave3_do(31 downto 0) => polyvec_ntt_0_BRAM_PORT_A_DOUT(31 downto 0),
      slave3_en => polyvec_ntt_0_BRAM_PORT_A_EN,
      slave3_we => polyvec_ntt_0_BRAM_PORT_A_WE,
      slave4_addr(10 downto 0) => polyvec_invntt_0_BRAM_PORT_A_ADDR(10 downto 0),
      slave4_di(31 downto 0) => polyvec_invntt_0_BRAM_PORT_A_DIN(31 downto 0),
      slave4_do(31 downto 0) => polyvec_invntt_0_BRAM_PORT_A_DOUT(31 downto 0),
      slave4_en => polyvec_invntt_0_BRAM_PORT_A_EN,
      slave4_we => polyvec_invntt_0_BRAM_PORT_A_WE,
      slave5_addr(10 downto 0) => keccak_f1600_bram_ip_0_PORT_BRAM_ADDR(10 downto 0),
      slave5_di(31 downto 0) => keccak_f1600_bram_ip_0_PORT_BRAM_DIN(31 downto 0),
      slave5_do(31 downto 0) => keccak_f1600_bram_ip_0_PORT_BRAM_DOUT(31 downto 0),
      slave5_en => keccak_f1600_bram_ip_0_PORT_BRAM_EN,
      slave5_we => keccak_f1600_bram_ip_0_PORT_BRAM_WE
    );
bram_port_selector_1: component kyberBD_bram_port_selector_1_0
     port map (
      master_addr(10 downto 0) => bram_port_selector_1_BRAM_PORT_MASTER_ADDR(10 downto 0),
      master_di(31 downto 0) => bram_port_selector_1_BRAM_PORT_MASTER_DIN(31 downto 0),
      master_do(31 downto 0) => bram_port_selector_1_BRAM_PORT_MASTER_DOUT(31 downto 0),
      master_en => bram_port_selector_1_BRAM_PORT_MASTER_EN,
      master_we => bram_port_selector_1_BRAM_PORT_MASTER_WE,
      slave0_addr(10 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_B_ADDR(10 downto 0),
      slave0_di(31 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_B_DIN(31 downto 0),
      slave0_do(31 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_B_DOUT(31 downto 0),
      slave0_en => polyvec_basemul_acc_0_BRAM0_PORT_B_EN,
      slave0_we => polyvec_basemul_acc_0_BRAM0_PORT_B_WE,
      slave1_addr(10 downto 0) => polyvec_ntt_0_BRAM_PORT_B_ADDR(10 downto 0),
      slave1_di(31 downto 0) => polyvec_ntt_0_BRAM_PORT_B_DIN(31 downto 0),
      slave1_do(31 downto 0) => polyvec_ntt_0_BRAM_PORT_B_DOUT(31 downto 0),
      slave1_en => polyvec_ntt_0_BRAM_PORT_B_EN,
      slave1_we => polyvec_ntt_0_BRAM_PORT_B_WE,
      slave2_addr(10 downto 0) => polyvec_invntt_0_BRAM_PORT_B_ADDR(10 downto 0),
      slave2_di(31 downto 0) => polyvec_invntt_0_BRAM_PORT_B_DIN(31 downto 0),
      slave2_do(31 downto 0) => polyvec_invntt_0_BRAM_PORT_B_DOUT(31 downto 0),
      slave2_en => polyvec_invntt_0_BRAM_PORT_B_EN,
      slave2_we => polyvec_invntt_0_BRAM_PORT_B_WE,
      slave3_addr(10 downto 0) => poly_tomont_0_BRAM0_PORT_B_ADDR(10 downto 0),
      slave3_di(31 downto 0) => poly_tomont_0_BRAM0_PORT_B_DIN(31 downto 0),
      slave3_do(31 downto 0) => poly_tomont_0_BRAM0_PORT_B_DOUT(31 downto 0),
      slave3_en => poly_tomont_0_BRAM0_PORT_B_EN,
      slave3_we => poly_tomont_0_BRAM0_PORT_B_WE,
      slave4_addr(10 downto 0) => polyvec_reduce_0_BRAM0_PORT_B_ADDR(10 downto 0),
      slave4_di(31 downto 0) => polyvec_reduce_0_BRAM0_PORT_B_DIN(31 downto 0),
      slave4_do(31 downto 0) => polyvec_reduce_0_BRAM0_PORT_B_DOUT(31 downto 0),
      slave4_en => polyvec_reduce_0_BRAM0_PORT_B_EN,
      slave4_we => polyvec_reduce_0_BRAM0_PORT_B_WE
    );
bram_port_selector_2: component kyberBD_bram_port_selector_2_0
     port map (
      master_addr(10 downto 0) => bram_port_selector_2_BRAM_PORT_MASTER_ADDR(10 downto 0),
      master_di(31 downto 0) => bram_port_selector_2_BRAM_PORT_MASTER_DIN(31 downto 0),
      master_do(31 downto 0) => bram_port_selector_2_BRAM_PORT_MASTER_DOUT(31 downto 0),
      master_en => bram_port_selector_2_BRAM_PORT_MASTER_EN,
      master_we => bram_port_selector_2_BRAM_PORT_MASTER_WE,
      slave0_addr(10 downto 0) => poly_tomont_0_BRAM_PORT_B_ADDR(10 downto 0),
      slave0_di(31 downto 0) => poly_tomont_0_BRAM_PORT_B_DIN(31 downto 0),
      slave0_do(31 downto 0) => poly_tomont_0_BRAM_PORT_B_DOUT(31 downto 0),
      slave0_en => poly_tomont_0_BRAM_PORT_B_EN,
      slave0_we => poly_tomont_0_BRAM_PORT_B_WE,
      slave1_addr(10 downto 0) => polyvec_reduce_0_BRAM_PORT_B_ADDR(10 downto 0),
      slave1_di(31 downto 0) => polyvec_reduce_0_BRAM_PORT_B_DIN(31 downto 0),
      slave1_do(31 downto 0) => polyvec_reduce_0_BRAM_PORT_B_DOUT(31 downto 0),
      slave1_en => polyvec_reduce_0_BRAM_PORT_B_EN,
      slave1_we => polyvec_reduce_0_BRAM_PORT_B_WE,
      slave2_addr(10 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_A_ADDR(10 downto 0),
      slave2_di(31 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_A_DIN(31 downto 0),
      slave2_do(31 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_A_DOUT(31 downto 0),
      slave2_en => polyvec_basemul_acc_0_BRAM1_PORT_A_EN,
      slave2_we => polyvec_basemul_acc_0_BRAM1_PORT_A_WE,
      slave3_addr(10 downto 0) => polyvec_ntt_0_BRAM1_PORT_A_ADDR(10 downto 0),
      slave3_di(31 downto 0) => polyvec_ntt_0_BRAM1_PORT_A_DIN(31 downto 0),
      slave3_do(31 downto 0) => polyvec_ntt_0_BRAM1_PORT_A_DOUT(31 downto 0),
      slave3_en => polyvec_ntt_0_BRAM1_PORT_A_EN,
      slave3_we => polyvec_ntt_0_BRAM1_PORT_A_WE,
      slave4_addr(10 downto 0) => polyvec_invntt_0_BRAM1_PORT_A_ADDR(10 downto 0),
      slave4_di(31 downto 0) => polyvec_invntt_0_BRAM1_PORT_A_DIN(31 downto 0),
      slave4_do(31 downto 0) => polyvec_invntt_0_BRAM1_PORT_A_DOUT(31 downto 0),
      slave4_en => polyvec_invntt_0_BRAM1_PORT_A_EN,
      slave4_we => polyvec_invntt_0_BRAM1_PORT_A_WE,
      slave5_addr(10 downto 0) => keccak_f1600_bram_ip_0_BRAM1_PORT_A_ADDR(10 downto 0),
      slave5_di(31 downto 0) => keccak_f1600_bram_ip_0_BRAM1_PORT_A_DIN(31 downto 0),
      slave5_do(31 downto 0) => keccak_f1600_bram_ip_0_BRAM1_PORT_A_DOUT(31 downto 0),
      slave5_en => keccak_f1600_bram_ip_0_BRAM1_PORT_A_EN,
      slave5_we => keccak_f1600_bram_ip_0_BRAM1_PORT_A_WE
    );
bram_port_selector_3: component kyberBD_bram_port_selector_1_1
     port map (
      master_addr(10 downto 0) => bram_port_selector_3_BRAM_PORT_MASTER_ADDR(10 downto 0),
      master_di(31 downto 0) => bram_port_selector_3_BRAM_PORT_MASTER_DIN(31 downto 0),
      master_do(31 downto 0) => bram_port_selector_3_BRAM_PORT_MASTER_DOUT(31 downto 0),
      master_en => bram_port_selector_3_BRAM_PORT_MASTER_EN,
      master_we => bram_port_selector_3_BRAM_PORT_MASTER_WE,
      slave0_addr(10 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_B_ADDR(10 downto 0),
      slave0_di(31 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_B_DIN(31 downto 0),
      slave0_do(31 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_B_DOUT(31 downto 0),
      slave0_en => polyvec_basemul_acc_0_BRAM1_PORT_B_EN,
      slave0_we => polyvec_basemul_acc_0_BRAM1_PORT_B_WE,
      slave1_addr(10 downto 0) => polyvec_ntt_0_BRAM1_PORT_B_ADDR(10 downto 0),
      slave1_di(31 downto 0) => polyvec_ntt_0_BRAM1_PORT_B_DIN(31 downto 0),
      slave1_do(31 downto 0) => polyvec_ntt_0_BRAM1_PORT_B_DOUT(31 downto 0),
      slave1_en => polyvec_ntt_0_BRAM1_PORT_B_EN,
      slave1_we => polyvec_ntt_0_BRAM1_PORT_B_WE,
      slave2_addr(10 downto 0) => polyvec_invntt_0_BRAM1_PORT_B_ADDR(10 downto 0),
      slave2_di(31 downto 0) => polyvec_invntt_0_BRAM1_PORT_B_DIN(31 downto 0),
      slave2_do(31 downto 0) => polyvec_invntt_0_BRAM1_PORT_B_DOUT(31 downto 0),
      slave2_en => polyvec_invntt_0_BRAM1_PORT_B_EN,
      slave2_we => polyvec_invntt_0_BRAM1_PORT_B_WE,
      slave3_addr(10 downto 0) => poly_tomont_0_BRAM1_PORT_B_ADDR(10 downto 0),
      slave3_di(31 downto 0) => poly_tomont_0_BRAM1_PORT_B_DIN(31 downto 0),
      slave3_do(31 downto 0) => poly_tomont_0_BRAM1_PORT_B_DOUT(31 downto 0),
      slave3_en => poly_tomont_0_BRAM1_PORT_B_EN,
      slave3_we => poly_tomont_0_BRAM1_PORT_B_WE,
      slave4_addr(10 downto 0) => polyvec_reduce_0_BRAM1_PORT_B_ADDR(10 downto 0),
      slave4_di(31 downto 0) => polyvec_reduce_0_BRAM1_PORT_B_DIN(31 downto 0),
      slave4_do(31 downto 0) => polyvec_reduce_0_BRAM1_PORT_B_DOUT(31 downto 0),
      slave4_en => polyvec_reduce_0_BRAM1_PORT_B_EN,
      slave4_we => polyvec_reduce_0_BRAM1_PORT_B_WE
    );
dual_bram_axis_0: component kyberBD_dual_bram_axis_0_1
     port map (
      gpio_enable_tx => axi_gpio_5_gpio_io_o(0),
      gpio_length_tx(31 downto 0) => axi_gpio_5_gpio2_io_o(31 downto 0),
      m00_axis_aclk => processing_system7_0_FCLK_CLK0,
      m00_axis_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      m00_axis_tdata(31 downto 0) => dual_bram_axis_0_M00_AXIS_TDATA(31 downto 0),
      m00_axis_tkeep(3 downto 0) => dual_bram_axis_0_M00_AXIS_TKEEP(3 downto 0),
      m00_axis_tlast => dual_bram_axis_0_M00_AXIS_TLAST,
      m00_axis_tready => dual_bram_axis_0_M00_AXIS_TREADY,
      m00_axis_tstrb(3 downto 0) => NLW_dual_bram_axis_0_m00_axis_tstrb_UNCONNECTED(3 downto 0),
      m00_axis_tvalid => dual_bram_axis_0_M00_AXIS_TVALID,
      port_bram0_addra(10 downto 0) => bram_port_selector_0_BRAM_PORT_MASTER_ADDR(10 downto 0),
      port_bram0_addrb(10 downto 0) => bram_port_selector_1_BRAM_PORT_MASTER_ADDR(10 downto 0),
      port_bram0_dia(31 downto 0) => bram_port_selector_0_BRAM_PORT_MASTER_DIN(31 downto 0),
      port_bram0_dib(31 downto 0) => bram_port_selector_1_BRAM_PORT_MASTER_DIN(31 downto 0),
      port_bram0_doa(31 downto 0) => bram_port_selector_0_BRAM_PORT_MASTER_DOUT(31 downto 0),
      port_bram0_dob(31 downto 0) => bram_port_selector_1_BRAM_PORT_MASTER_DOUT(31 downto 0),
      port_bram0_ena => bram_port_selector_0_BRAM_PORT_MASTER_EN,
      port_bram0_enb => bram_port_selector_1_BRAM_PORT_MASTER_EN,
      port_bram0_wea => bram_port_selector_0_BRAM_PORT_MASTER_WE,
      port_bram0_web => bram_port_selector_1_BRAM_PORT_MASTER_WE,
      port_bram1_addra(10 downto 0) => bram_port_selector_2_BRAM_PORT_MASTER_ADDR(10 downto 0),
      port_bram1_addrb(10 downto 0) => bram_port_selector_3_BRAM_PORT_MASTER_ADDR(10 downto 0),
      port_bram1_dia(31 downto 0) => bram_port_selector_2_BRAM_PORT_MASTER_DIN(31 downto 0),
      port_bram1_dib(31 downto 0) => bram_port_selector_3_BRAM_PORT_MASTER_DIN(31 downto 0),
      port_bram1_doa(31 downto 0) => bram_port_selector_2_BRAM_PORT_MASTER_DOUT(31 downto 0),
      port_bram1_dob(31 downto 0) => bram_port_selector_3_BRAM_PORT_MASTER_DOUT(31 downto 0),
      port_bram1_ena => bram_port_selector_2_BRAM_PORT_MASTER_EN,
      port_bram1_enb => bram_port_selector_3_BRAM_PORT_MASTER_EN,
      port_bram1_wea => bram_port_selector_2_BRAM_PORT_MASTER_WE,
      port_bram1_web => bram_port_selector_3_BRAM_PORT_MASTER_WE,
      s00_axis_aclk => processing_system7_0_FCLK_CLK0,
      s00_axis_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s00_axis_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      s00_axis_tkeep(3 downto 0) => axi_dma_0_M_AXIS_MM2S_TKEEP(3 downto 0),
      s00_axis_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      s00_axis_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      s00_axis_tstrb(3 downto 0) => B"1111",
      s00_axis_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID
    );
fqmul_0: component kyberBD_fqmul_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in_1(15 downto 0) => signal_multiplexer_12_data(15 downto 0),
      data_in_2(15 downto 0) => signal_multiplexer_12_datab(15 downto 0),
      data_in_mont(15 downto 0) => montgomery_reduction_0_data_out(15 downto 0),
      data_out(15 downto 0) => fqmul_0_data_out(15 downto 0),
      data_out_mont(31 downto 0) => fqmul_0_data_out_mont(31 downto 0),
      valid_in => signal_multiplexer_12_valid,
      valid_in_mont => montgomery_reduction_0_valid_out,
      valid_out => fqmul_0_valid_out,
      valid_out_mont => fqmul_0_valid_out_mont
    );
fqmul_1: component kyberBD_fqmul_0_1
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in_1(15 downto 0) => signal_multiplexer_14_data(15 downto 0),
      data_in_2(15 downto 0) => signal_multiplexer_14_datab(15 downto 0),
      data_in_mont(15 downto 0) => montgomery_reduction_1_data_out(15 downto 0),
      data_out(15 downto 0) => fqmul_1_data_out(15 downto 0),
      data_out_mont(31 downto 0) => fqmul_1_data_out_mont(31 downto 0),
      valid_in => signal_multiplexer_14_valid,
      valid_in_mont => montgomery_reduction_1_valid_out,
      valid_out => fqmul_1_valid_out,
      valid_out_mont => fqmul_1_valid_out_mont
    );
fqmul_2: component kyberBD_fqmul_0_2
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in_1(15 downto 0) => signal_multiplexer_16_data(15 downto 0),
      data_in_2(15 downto 0) => signal_multiplexer_16_datab(15 downto 0),
      data_in_mont(15 downto 0) => montgomery_reduction_2_data_out(15 downto 0),
      data_out(15 downto 0) => fqmul_2_data_out(15 downto 0),
      data_out_mont(31 downto 0) => fqmul_2_data_out_mont(31 downto 0),
      valid_in => signal_multiplexer_16_valid,
      valid_in_mont => montgomery_reduction_2_valid_out,
      valid_out => fqmul_2_valid_out,
      valid_out_mont => fqmul_2_valid_out_mont
    );
fqmul_3: component kyberBD_fqmul_0_3
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in_1(15 downto 0) => signal_multiplexer_17_data(15 downto 0),
      data_in_2(15 downto 0) => signal_multiplexer_17_datab(15 downto 0),
      data_in_mont(15 downto 0) => montgomery_reduction_3_data_out(15 downto 0),
      data_out(15 downto 0) => fqmul_3_data_out(15 downto 0),
      data_out_mont(31 downto 0) => fqmul_3_data_out_mont(31 downto 0),
      valid_in => signal_multiplexer_17_valid,
      valid_in_mont => montgomery_reduction_3_valid_out,
      valid_out => fqmul_3_valid_out,
      valid_out_mont => fqmul_3_valid_out_mont
    );
fqmul_4: component kyberBD_fqmul_0_4
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in_1(15 downto 0) => signal_multiplexer_18_data(15 downto 0),
      data_in_2(15 downto 0) => signal_multiplexer_18_datab(15 downto 0),
      data_in_mont(15 downto 0) => montgomery_reduction_4_data_out(15 downto 0),
      data_out(15 downto 0) => fqmul_4_data_out(15 downto 0),
      data_out_mont(31 downto 0) => fqmul_4_data_out_mont(31 downto 0),
      valid_in => signal_multiplexer_18_valid,
      valid_in_mont => montgomery_reduction_4_valid_out,
      valid_out => fqmul_4_valid_out,
      valid_out_mont => fqmul_4_valid_out_mont
    );
fqmul_5: component kyberBD_fqmul_0_5
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in_1(15 downto 0) => signal_multiplexer_19_data(15 downto 0),
      data_in_2(15 downto 0) => signal_multiplexer_19_datab(15 downto 0),
      data_in_mont(15 downto 0) => montgomery_reduction_5_data_out(15 downto 0),
      data_out(15 downto 0) => fqmul_5_data_out(15 downto 0),
      data_out_mont(31 downto 0) => fqmul_5_data_out_mont(31 downto 0),
      valid_in => signal_multiplexer_19_valid,
      valid_in_mont => montgomery_reduction_5_valid_out,
      valid_out => fqmul_5_valid_out,
      valid_out_mont => fqmul_5_valid_out_mont
    );
keccak_f1600_bram_ip_0: component kyberBD_keccak_f1600_bram_ip_0_0
     port map (
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      bram0_addra(10 downto 0) => keccak_f1600_bram_ip_0_PORT_BRAM_ADDR(10 downto 0),
      bram0_dia(31 downto 0) => keccak_f1600_bram_ip_0_PORT_BRAM_DIN(31 downto 0),
      bram0_doa(31 downto 0) => keccak_f1600_bram_ip_0_PORT_BRAM_DOUT(31 downto 0),
      bram0_ena => keccak_f1600_bram_ip_0_PORT_BRAM_EN,
      bram0_wea => keccak_f1600_bram_ip_0_PORT_BRAM_WE,
      bram1_addra(10 downto 0) => keccak_f1600_bram_ip_0_BRAM1_PORT_A_ADDR(10 downto 0),
      bram1_dia(31 downto 0) => keccak_f1600_bram_ip_0_BRAM1_PORT_A_DIN(31 downto 0),
      bram1_doa(31 downto 0) => keccak_f1600_bram_ip_0_BRAM1_PORT_A_DOUT(31 downto 0),
      bram1_ena => keccak_f1600_bram_ip_0_BRAM1_PORT_A_EN,
      bram1_wea => keccak_f1600_bram_ip_0_BRAM1_PORT_A_WE,
      busy => keccak_f1600_bram_ip_0_busy,
      clk => processing_system7_0_FCLK_CLK0,
      start => axi_gpio_3_gpio2_io_o(0)
    );
montgomery_reduction_0: component kyberBD_montgomery_reduction_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in(31 downto 0) => signal_multiplexer_2_data(31 downto 0),
      data_out(15 downto 0) => montgomery_reduction_0_data_out(15 downto 0),
      valid_in => signal_multiplexer_2_valid,
      valid_out => montgomery_reduction_0_valid_out
    );
montgomery_reduction_1: component kyberBD_montgomery_reduction_0_1
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in(31 downto 0) => signal_multiplexer_3_data(31 downto 0),
      data_out(15 downto 0) => montgomery_reduction_1_data_out(15 downto 0),
      valid_in => signal_multiplexer_3_valid,
      valid_out => montgomery_reduction_1_valid_out
    );
montgomery_reduction_2: component kyberBD_montgomery_reduction_0_2
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in(31 downto 0) => signal_multiplexer_4_data(31 downto 0),
      data_out(15 downto 0) => montgomery_reduction_2_data_out(15 downto 0),
      valid_in => signal_multiplexer_4_valid,
      valid_out => montgomery_reduction_2_valid_out
    );
montgomery_reduction_3: component kyberBD_montgomery_reduction_0_3
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in(31 downto 0) => signal_multiplexer_5_data(31 downto 0),
      data_out(15 downto 0) => montgomery_reduction_3_data_out(15 downto 0),
      valid_in => signal_multiplexer_5_valid,
      valid_out => montgomery_reduction_3_valid_out
    );
montgomery_reduction_4: component kyberBD_montgomery_reduction_0_4
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in(31 downto 0) => signal_multiplexer_6_data(31 downto 0),
      data_out(15 downto 0) => montgomery_reduction_4_data_out(15 downto 0),
      valid_in => signal_multiplexer_6_valid,
      valid_out => montgomery_reduction_4_valid_out
    );
montgomery_reduction_5: component kyberBD_montgomery_reduction_0_5
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data_in(31 downto 0) => signal_multiplexer_7_data(31 downto 0),
      data_out(15 downto 0) => montgomery_reduction_5_data_out(15 downto 0),
      valid_in => signal_multiplexer_7_valid,
      valid_out => montgomery_reduction_5_valid_out
    );
poly_tomont_0: component kyberBD_poly_tomont_0_0
     port map (
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      bram0_addra(10 downto 0) => poly_tomont_0_BRAM_PORT_A_ADDR(10 downto 0),
      bram0_addrb(10 downto 0) => poly_tomont_0_BRAM0_PORT_B_ADDR(10 downto 0),
      bram0_dia(31 downto 0) => poly_tomont_0_BRAM_PORT_A_DIN(31 downto 0),
      bram0_dib(31 downto 0) => poly_tomont_0_BRAM0_PORT_B_DIN(31 downto 0),
      bram0_doa(31 downto 0) => poly_tomont_0_BRAM_PORT_A_DOUT(31 downto 0),
      bram0_dob(31 downto 0) => poly_tomont_0_BRAM0_PORT_B_DOUT(31 downto 0),
      bram0_ena => poly_tomont_0_BRAM_PORT_A_EN,
      bram0_enb => poly_tomont_0_BRAM0_PORT_B_EN,
      bram0_wea => poly_tomont_0_BRAM_PORT_A_WE,
      bram0_web => poly_tomont_0_BRAM0_PORT_B_WE,
      bram1_addra(10 downto 0) => poly_tomont_0_BRAM_PORT_B_ADDR(10 downto 0),
      bram1_addrb(10 downto 0) => poly_tomont_0_BRAM1_PORT_B_ADDR(10 downto 0),
      bram1_dia(31 downto 0) => poly_tomont_0_BRAM_PORT_B_DIN(31 downto 0),
      bram1_dib(31 downto 0) => poly_tomont_0_BRAM1_PORT_B_DIN(31 downto 0),
      bram1_doa(31 downto 0) => poly_tomont_0_BRAM_PORT_B_DOUT(31 downto 0),
      bram1_dob(31 downto 0) => poly_tomont_0_BRAM1_PORT_B_DOUT(31 downto 0),
      bram1_ena => poly_tomont_0_BRAM_PORT_B_EN,
      bram1_enb => poly_tomont_0_BRAM1_PORT_B_EN,
      bram1_wea => poly_tomont_0_BRAM_PORT_B_WE,
      bram1_web => poly_tomont_0_BRAM1_PORT_B_WE,
      busy => poly_tomont_0_busy,
      clk => processing_system7_0_FCLK_CLK0,
      di_lower_mont0(15 downto 0) => montgomery_reduction_0_data_out(15 downto 0),
      di_lower_mont1(15 downto 0) => montgomery_reduction_2_data_out(15 downto 0),
      di_upper_mont0(15 downto 0) => montgomery_reduction_1_data_out(15 downto 0),
      di_upper_mont1(15 downto 0) => montgomery_reduction_3_data_out(15 downto 0),
      do_lower_mont0(31 downto 0) => poly_tomont_0_do_lower_mont(31 downto 0),
      do_lower_mont1(31 downto 0) => poly_tomont_0_do_lower_mont1(31 downto 0),
      do_upper_mont0(31 downto 0) => poly_tomont_0_do_upper_mont(31 downto 0),
      do_upper_mont1(31 downto 0) => poly_tomont_0_do_upper_mont1(31 downto 0),
      en_lower_mont0 => poly_tomont_0_en_lower_mont,
      en_lower_mont1 => poly_tomont_0_en_lower_mont1,
      en_upper_mont0 => poly_tomont_0_en_upper_mont,
      en_upper_mont1 => poly_tomont_0_en_upper_mont1,
      start => axi_gpio_2_gpio_io_o(0),
      valid_in_lower_mont0 => montgomery_reduction_0_valid_out,
      valid_in_lower_mont1 => montgomery_reduction_2_valid_out,
      valid_in_upper_mont0 => montgomery_reduction_1_valid_out,
      valid_in_upper_mont1 => montgomery_reduction_3_valid_out,
      valid_out_lower_mont0 => poly_tomont_0_valid_out_lower_mont,
      valid_out_lower_mont1 => poly_tomont_0_valid_out_lower_mont1,
      valid_out_upper_mont0 => poly_tomont_0_valid_out_upper_mont,
      valid_out_upper_mont1 => poly_tomont_0_valid_out_upper_mont1
    );
polyvec_basemul_acc_0: component kyberBD_polyvec_basemul_acc_0_1
     port map (
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      bram_read_addra(10 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_A_ADDR(10 downto 0),
      bram_read_addrb(10 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_B_ADDR(10 downto 0),
      bram_read_dia(31 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_A_DIN(31 downto 0),
      bram_read_dib(31 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_B_DIN(31 downto 0),
      bram_read_doa(31 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_A_DOUT(31 downto 0),
      bram_read_dob(31 downto 0) => polyvec_basemul_acc_0_BRAM0_PORT_B_DOUT(31 downto 0),
      bram_read_ena => polyvec_basemul_acc_0_BRAM0_PORT_A_EN,
      bram_read_enb => polyvec_basemul_acc_0_BRAM0_PORT_B_EN,
      bram_read_wea => polyvec_basemul_acc_0_BRAM0_PORT_A_WE,
      bram_read_web => polyvec_basemul_acc_0_BRAM0_PORT_B_WE,
      bram_write_addra(10 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_A_ADDR(10 downto 0),
      bram_write_addrb(10 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_B_ADDR(10 downto 0),
      bram_write_dia(31 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_A_DIN(31 downto 0),
      bram_write_dib(31 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_B_DIN(31 downto 0),
      bram_write_doa(31 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_A_DOUT(31 downto 0),
      bram_write_dob(31 downto 0) => polyvec_basemul_acc_0_BRAM1_PORT_B_DOUT(31 downto 0),
      bram_write_ena => polyvec_basemul_acc_0_BRAM1_PORT_A_EN,
      bram_write_enb => polyvec_basemul_acc_0_BRAM1_PORT_B_EN,
      bram_write_wea => polyvec_basemul_acc_0_BRAM1_PORT_A_WE,
      bram_write_web => polyvec_basemul_acc_0_BRAM1_PORT_B_WE,
      busy => polyvec_basemul_acc_0_busy,
      clk => processing_system7_0_FCLK_CLK0,
      coeff0_to_fqmul0(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul0(15 downto 0),
      coeff0_to_fqmul1(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul1(15 downto 0),
      coeff0_to_fqmul2(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul2(15 downto 0),
      coeff0_to_fqmul3(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul3(15 downto 0),
      coeff0_to_fqmul4(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul4(15 downto 0),
      coeff0_to_fqmul5(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul5(15 downto 0),
      coeff1_to_fqmul0(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul0(15 downto 0),
      coeff1_to_fqmul1(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul1(15 downto 0),
      coeff1_to_fqmul2(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul2(15 downto 0),
      coeff1_to_fqmul3(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul3(15 downto 0),
      coeff1_to_fqmul4(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul4(15 downto 0),
      coeff1_to_fqmul5(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul5(15 downto 0),
      coeff_from_fqmul0(15 downto 0) => fqmul_0_data_out(15 downto 0),
      coeff_from_fqmul1(15 downto 0) => fqmul_1_data_out(15 downto 0),
      coeff_from_fqmul2(15 downto 0) => fqmul_2_data_out(15 downto 0),
      coeff_from_fqmul3(15 downto 0) => fqmul_3_data_out(15 downto 0),
      coeff_from_fqmul4(15 downto 0) => fqmul_4_data_out(15 downto 0),
      coeff_from_fqmul5(15 downto 0) => fqmul_5_data_out(15 downto 0),
      data0_from_barrett(15 downto 0) => barrett_reduce_0_data_out(15 downto 0),
      data0_to_barrett(15 downto 0) => polyvec_basemul_acc_0_data0_to_barrett(15 downto 0),
      data1_from_barrett(15 downto 0) => barrett_reduce_1_data_out(15 downto 0),
      data1_to_barrett(15 downto 0) => polyvec_basemul_acc_0_data1_to_barrett(15 downto 0),
      en_dsm => Net,
      kyber_k(2 downto 0) => axi_gpio_1_gpio_io_o(2 downto 0),
      start => axi_gpio_3_gpio_io_o(0),
      valid0_from_barrett => barrett_reduce_0_valid_out,
      valid0_to_barrett => polyvec_basemul_acc_0_valid0_to_barrett,
      valid1_from_barrett => barrett_reduce_1_valid_out,
      valid1_to_barrett => polyvec_basemul_acc_0_valid1_to_barrett,
      valid_from_fqmul0 => fqmul_0_valid_out,
      valid_from_fqmul1 => fqmul_1_valid_out,
      valid_from_fqmul2 => fqmul_2_valid_out,
      valid_from_fqmul3 => fqmul_3_valid_out,
      valid_from_fqmul4 => fqmul_4_valid_out,
      valid_from_fqmul5 => fqmul_5_valid_out,
      valid_to_fqmul0 => polyvec_basemul_acc_0_valid_to_fqmul0,
      valid_to_fqmul1 => polyvec_basemul_acc_0_valid_to_fqmul1,
      valid_to_fqmul2 => polyvec_basemul_acc_0_valid_to_fqmul2,
      valid_to_fqmul3 => polyvec_basemul_acc_0_valid_to_fqmul3,
      valid_to_fqmul4 => polyvec_basemul_acc_0_valid_to_fqmul4,
      valid_to_fqmul5 => polyvec_basemul_acc_0_valid_to_fqmul5
    );
polyvec_invntt_0: component kyberBD_polyvec_invntt_0_0
     port map (
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      bram0_addra(10 downto 0) => polyvec_invntt_0_BRAM_PORT_A_ADDR(10 downto 0),
      bram0_addrb(10 downto 0) => polyvec_invntt_0_BRAM_PORT_B_ADDR(10 downto 0),
      bram0_dia(31 downto 0) => polyvec_invntt_0_BRAM_PORT_A_DIN(31 downto 0),
      bram0_dib(31 downto 0) => polyvec_invntt_0_BRAM_PORT_B_DIN(31 downto 0),
      bram0_doa(31 downto 0) => polyvec_invntt_0_BRAM_PORT_A_DOUT(31 downto 0),
      bram0_dob(31 downto 0) => polyvec_invntt_0_BRAM_PORT_B_DOUT(31 downto 0),
      bram0_ena => polyvec_invntt_0_BRAM_PORT_A_EN,
      bram0_enb => polyvec_invntt_0_BRAM_PORT_B_EN,
      bram0_wea => polyvec_invntt_0_BRAM_PORT_A_WE,
      bram0_web => polyvec_invntt_0_BRAM_PORT_B_WE,
      bram1_addra(10 downto 0) => polyvec_invntt_0_BRAM1_PORT_A_ADDR(10 downto 0),
      bram1_addrb(10 downto 0) => polyvec_invntt_0_BRAM1_PORT_B_ADDR(10 downto 0),
      bram1_dia(31 downto 0) => polyvec_invntt_0_BRAM1_PORT_A_DIN(31 downto 0),
      bram1_dib(31 downto 0) => polyvec_invntt_0_BRAM1_PORT_B_DIN(31 downto 0),
      bram1_doa(31 downto 0) => polyvec_invntt_0_BRAM1_PORT_A_DOUT(31 downto 0),
      bram1_dob(31 downto 0) => polyvec_invntt_0_BRAM1_PORT_B_DOUT(31 downto 0),
      bram1_ena => polyvec_invntt_0_BRAM1_PORT_A_EN,
      bram1_enb => polyvec_invntt_0_BRAM1_PORT_B_EN,
      bram1_wea => polyvec_invntt_0_BRAM1_PORT_A_WE,
      bram1_web => polyvec_invntt_0_BRAM1_PORT_B_WE,
      busy => polyvec_invntt_0_busy,
      clk => processing_system7_0_FCLK_CLK0,
      coeff0_to_fqmul0(15 downto 0) => polyvec_invntt_0_coeff0_to_fqmul0(15 downto 0),
      coeff0_to_fqmul1(15 downto 0) => polyvec_invntt_0_coeff0_to_fqmul1(15 downto 0),
      coeff1_to_fqmul0(15 downto 0) => polyvec_invntt_0_coeff1_to_fqmul0(15 downto 0),
      coeff1_to_fqmul1(15 downto 0) => polyvec_invntt_0_coeff1_to_fqmul1(15 downto 0),
      coeff_from_fqmul0(15 downto 0) => fqmul_4_data_out(15 downto 0),
      coeff_from_fqmul1(15 downto 0) => fqmul_5_data_out(15 downto 0),
      data0_from_barrett(15 downto 0) => barrett_reduce_0_data_out(15 downto 0),
      data0_to_barrett(15 downto 0) => polyvec_invntt_0_data0_to_barrett(15 downto 0),
      data1_from_barrett(15 downto 0) => barrett_reduce_1_data_out(15 downto 0),
      data1_to_barrett(15 downto 0) => polyvec_invntt_0_data1_to_barrett(15 downto 0),
      en_dsm => polyvec_invntt_0_en_dsm,
      kyber_k(2 downto 0) => axi_gpio_1_gpio_io_o(2 downto 0),
      start => axi_gpio_4_gpio2_io_o(0),
      valid0_from_barrett => barrett_reduce_0_valid_out,
      valid0_to_barrett => polyvec_invntt_0_valid0_to_barrett,
      valid1_from_barrett => barrett_reduce_1_valid_out,
      valid1_to_barrett => polyvec_invntt_0_valid1_to_barrett,
      valid_from_fqmul0 => fqmul_4_valid_out,
      valid_from_fqmul1 => fqmul_5_valid_out,
      valid_to_fqmul0 => polyvec_invntt_0_valid_to_fqmul0,
      valid_to_fqmul1 => polyvec_invntt_0_valid_to_fqmul1
    );
polyvec_ntt_0: component kyberBD_polyvec_ntt_0_0
     port map (
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      bram0_addra(10 downto 0) => polyvec_ntt_0_BRAM_PORT_A_ADDR(10 downto 0),
      bram0_addrb(10 downto 0) => polyvec_ntt_0_BRAM_PORT_B_ADDR(10 downto 0),
      bram0_dia(31 downto 0) => polyvec_ntt_0_BRAM_PORT_A_DIN(31 downto 0),
      bram0_dib(31 downto 0) => polyvec_ntt_0_BRAM_PORT_B_DIN(31 downto 0),
      bram0_doa(31 downto 0) => polyvec_ntt_0_BRAM_PORT_A_DOUT(31 downto 0),
      bram0_dob(31 downto 0) => polyvec_ntt_0_BRAM_PORT_B_DOUT(31 downto 0),
      bram0_ena => polyvec_ntt_0_BRAM_PORT_A_EN,
      bram0_enb => polyvec_ntt_0_BRAM_PORT_B_EN,
      bram0_wea => polyvec_ntt_0_BRAM_PORT_A_WE,
      bram0_web => polyvec_ntt_0_BRAM_PORT_B_WE,
      bram1_addra(10 downto 0) => polyvec_ntt_0_BRAM1_PORT_A_ADDR(10 downto 0),
      bram1_addrb(10 downto 0) => polyvec_ntt_0_BRAM1_PORT_B_ADDR(10 downto 0),
      bram1_dia(31 downto 0) => polyvec_ntt_0_BRAM1_PORT_A_DIN(31 downto 0),
      bram1_dib(31 downto 0) => polyvec_ntt_0_BRAM1_PORT_B_DIN(31 downto 0),
      bram1_doa(31 downto 0) => polyvec_ntt_0_BRAM1_PORT_A_DOUT(31 downto 0),
      bram1_dob(31 downto 0) => polyvec_ntt_0_BRAM1_PORT_B_DOUT(31 downto 0),
      bram1_ena => polyvec_ntt_0_BRAM1_PORT_A_EN,
      bram1_enb => polyvec_ntt_0_BRAM1_PORT_B_EN,
      bram1_wea => polyvec_ntt_0_BRAM1_PORT_A_WE,
      bram1_web => polyvec_ntt_0_BRAM1_PORT_B_WE,
      busy => polyvec_ntt_0_busy,
      clk => processing_system7_0_FCLK_CLK0,
      coeff0_to_fqmul0(15 downto 0) => polyvec_ntt_0_coeff0_to_fqmul0(15 downto 0),
      coeff0_to_fqmul1(15 downto 0) => polyvec_ntt_0_coeff0_to_fqmul1(15 downto 0),
      coeff1_to_fqmul0(15 downto 0) => polyvec_ntt_0_coeff1_to_fqmul0(15 downto 0),
      coeff1_to_fqmul1(15 downto 0) => polyvec_ntt_0_coeff1_to_fqmul1(15 downto 0),
      coeff_from_fqmul0(15 downto 0) => fqmul_2_data_out(15 downto 0),
      coeff_from_fqmul1(15 downto 0) => fqmul_3_data_out(15 downto 0),
      data0_from_barrett(15 downto 0) => barrett_reduce_0_data_out(15 downto 0),
      data0_to_barrett(15 downto 0) => polyvec_ntt_0_data0_to_barrett(15 downto 0),
      data1_from_barrett(15 downto 0) => barrett_reduce_1_data_out(15 downto 0),
      data1_to_barrett(15 downto 0) => polyvec_ntt_0_data1_to_barrett(15 downto 0),
      en_dsm => polyvec_ntt_0_en_dsm,
      kyber_k(2 downto 0) => axi_gpio_1_gpio_io_o(2 downto 0),
      start => axi_gpio_4_gpio_io_o(0),
      valid0_from_barrett => barrett_reduce_0_valid_out,
      valid0_to_barrett => polyvec_ntt_0_valid0_to_barrett,
      valid1_from_barrett => barrett_reduce_1_valid_out,
      valid1_to_barrett => polyvec_ntt_0_valid1_to_barrett,
      valid_from_fqmul0 => fqmul_2_valid_out,
      valid_from_fqmul1 => fqmul_3_valid_out,
      valid_to_fqmul0 => polyvec_ntt_0_valid_to_fqmul0,
      valid_to_fqmul1 => polyvec_ntt_0_valid_to_fqmul1
    );
polyvec_reduce_0: component kyberBD_polyvec_reduce_0_0
     port map (
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      bram0_addra(10 downto 0) => polyvec_reduce_0_BRAM_PORT_A_ADDR(10 downto 0),
      bram0_addrb(10 downto 0) => polyvec_reduce_0_BRAM0_PORT_B_ADDR(10 downto 0),
      bram0_dia(31 downto 0) => polyvec_reduce_0_BRAM_PORT_A_DIN(31 downto 0),
      bram0_dib(31 downto 0) => polyvec_reduce_0_BRAM0_PORT_B_DIN(31 downto 0),
      bram0_doa(31 downto 0) => polyvec_reduce_0_BRAM_PORT_A_DOUT(31 downto 0),
      bram0_dob(31 downto 0) => polyvec_reduce_0_BRAM0_PORT_B_DOUT(31 downto 0),
      bram0_ena => polyvec_reduce_0_BRAM_PORT_A_EN,
      bram0_enb => polyvec_reduce_0_BRAM0_PORT_B_EN,
      bram0_wea => polyvec_reduce_0_BRAM_PORT_A_WE,
      bram0_web => polyvec_reduce_0_BRAM0_PORT_B_WE,
      bram1_addra(10 downto 0) => polyvec_reduce_0_BRAM_PORT_B_ADDR(10 downto 0),
      bram1_addrb(10 downto 0) => polyvec_reduce_0_BRAM1_PORT_B_ADDR(10 downto 0),
      bram1_dia(31 downto 0) => polyvec_reduce_0_BRAM_PORT_B_DIN(31 downto 0),
      bram1_dib(31 downto 0) => polyvec_reduce_0_BRAM1_PORT_B_DIN(31 downto 0),
      bram1_doa(31 downto 0) => polyvec_reduce_0_BRAM_PORT_B_DOUT(31 downto 0),
      bram1_dob(31 downto 0) => polyvec_reduce_0_BRAM1_PORT_B_DOUT(31 downto 0),
      bram1_ena => polyvec_reduce_0_BRAM_PORT_B_EN,
      bram1_enb => polyvec_reduce_0_BRAM1_PORT_B_EN,
      bram1_wea => polyvec_reduce_0_BRAM_PORT_B_WE,
      bram1_web => polyvec_reduce_0_BRAM1_PORT_B_WE,
      busy => polyvec_reduce_0_busy,
      clk => processing_system7_0_FCLK_CLK0,
      di_lower_barrett0(15 downto 0) => barrett_reduce_0_data_out(15 downto 0),
      di_lower_barrett1(15 downto 0) => barrett_reduce_2_data_out(15 downto 0),
      di_upper_barrett0(15 downto 0) => barrett_reduce_1_data_out(15 downto 0),
      di_upper_barrett1(15 downto 0) => barrett_reduce_3_data_out(15 downto 0),
      do_lower_barrett0(15 downto 0) => polyvec_reduce_0_do_lower_barrett(15 downto 0),
      do_lower_barrett1(15 downto 0) => polyvec_reduce_0_do_lower_barrett1(15 downto 0),
      do_upper_barrett0(15 downto 0) => polyvec_reduce_0_do_upper_barrett(15 downto 0),
      do_upper_barrett1(15 downto 0) => polyvec_reduce_0_do_upper_barrett1(15 downto 0),
      en_lower_barrett0 => polyvec_reduce_0_en_lower_barrett,
      en_lower_barrett1 => polyvec_reduce_0_en_lower_barrett1,
      en_upper_barrett0 => polyvec_reduce_0_en_upper_barrett,
      en_upper_barrett1 => polyvec_reduce_0_en_upper_barrett1,
      kyber_k(2 downto 0) => axi_gpio_1_gpio_io_o(2 downto 0),
      start => axi_gpio_2_gpio2_io_o(0),
      valid_in_lower_barrett0 => barrett_reduce_0_valid_out,
      valid_in_lower_barrett1 => barrett_reduce_2_valid_out,
      valid_in_upper_barrett0 => barrett_reduce_1_valid_out,
      valid_in_upper_barrett1 => barrett_reduce_3_valid_out,
      valid_out_lower_barrett0 => polyvec_reduce_0_valid_out_lower_barrett,
      valid_out_lower_barrett1 => polyvec_reduce_0_valid_out_lower_barrett1,
      valid_out_upper_barrett0 => polyvec_reduce_0_valid_out_upper_barrett,
      valid_out_upper_barrett1 => polyvec_reduce_0_valid_out_upper_barrett1
    );
proc_sys_reset_0: component kyberBD_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => proc_sys_reset_0_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
processing_system7_0: component kyberBD_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      IRQ_F2P(1 downto 0) => xlconcat_0_dout(1 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_interconnect_1_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_interconnect_1_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 1) => B"00000",
      S_AXI_HP0_ARID(0) => axi_interconnect_1_M00_AXI_ARID(0),
      S_AXI_HP0_ARLEN(3 downto 0) => axi_interconnect_1_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_interconnect_1_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_interconnect_1_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_interconnect_1_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_interconnect_1_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_interconnect_1_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_interconnect_1_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_interconnect_1_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_interconnect_1_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 1) => B"00000",
      S_AXI_HP0_AWID(0) => axi_interconnect_1_M00_AXI_AWID(0),
      S_AXI_HP0_AWLEN(3 downto 0) => axi_interconnect_1_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_interconnect_1_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_interconnect_1_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_interconnect_1_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_interconnect_1_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_interconnect_1_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_interconnect_1_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => axi_interconnect_1_M00_AXI_BID(5 downto 0),
      S_AXI_HP0_BREADY => axi_interconnect_1_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_interconnect_1_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => axi_interconnect_1_M00_AXI_RID(5 downto 0),
      S_AXI_HP0_RLAST => axi_interconnect_1_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_interconnect_1_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_interconnect_1_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      S_AXI_HP0_WID(5 downto 1) => B"00000",
      S_AXI_HP0_WID(0) => axi_interconnect_1_M00_AXI_WID(0),
      S_AXI_HP0_WLAST => axi_interconnect_1_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_interconnect_1_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(3 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(3 downto 0),
      S_AXI_HP0_WVALID => axi_interconnect_1_M00_AXI_WVALID,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
signal_multiplexer_0: component kyberBD_signal_multiplexer_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(15 downto 0) => signal_multiplexer_0_data(15 downto 0),
      data0(15 downto 0) => polyvec_reduce_0_do_lower_barrett(15 downto 0),
      data1(15 downto 0) => polyvec_basemul_acc_0_data0_to_barrett(15 downto 0),
      data2(15 downto 0) => polyvec_ntt_0_data0_to_barrett(15 downto 0),
      data3(15 downto 0) => polyvec_invntt_0_data0_to_barrett(15 downto 0),
      en0 => polyvec_reduce_0_en_lower_barrett,
      en1 => Net,
      en2 => polyvec_ntt_0_en_dsm,
      en3 => polyvec_invntt_0_en_dsm,
      valid => signal_multiplexer_0_valid,
      valid0 => polyvec_reduce_0_valid_out_lower_barrett,
      valid1 => polyvec_basemul_acc_0_valid0_to_barrett,
      valid2 => polyvec_ntt_0_valid0_to_barrett,
      valid3 => polyvec_invntt_0_valid0_to_barrett
    );
signal_multiplexer_1: component kyberBD_signal_multiplexer_0_1
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(15 downto 0) => signal_multiplexer_1_data(15 downto 0),
      data0(15 downto 0) => polyvec_reduce_0_do_upper_barrett(15 downto 0),
      data1(15 downto 0) => polyvec_basemul_acc_0_data1_to_barrett(15 downto 0),
      data2(15 downto 0) => polyvec_ntt_0_data1_to_barrett(15 downto 0),
      data3(15 downto 0) => polyvec_invntt_0_data1_to_barrett(15 downto 0),
      en0 => polyvec_reduce_0_en_upper_barrett,
      en1 => Net,
      en2 => polyvec_ntt_0_en_dsm,
      en3 => polyvec_invntt_0_en_dsm,
      valid => signal_multiplexer_1_valid,
      valid0 => polyvec_reduce_0_valid_out_upper_barrett,
      valid1 => polyvec_basemul_acc_0_valid1_to_barrett,
      valid2 => polyvec_ntt_0_valid1_to_barrett,
      valid3 => polyvec_invntt_0_valid1_to_barrett
    );
signal_multiplexer_12: component kyberBD_signal_multiplexer_12_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(15 downto 0) => signal_multiplexer_12_data(15 downto 0),
      data0(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul0(15 downto 0),
      data0b(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul0(15 downto 0),
      datab(15 downto 0) => signal_multiplexer_12_datab(15 downto 0),
      en0 => Net,
      valid => signal_multiplexer_12_valid,
      valid0 => polyvec_basemul_acc_0_valid_to_fqmul0
    );
signal_multiplexer_14: component kyberBD_signal_multiplexer_12_2
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(15 downto 0) => signal_multiplexer_14_data(15 downto 0),
      data0(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul1(15 downto 0),
      data0b(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul1(15 downto 0),
      datab(15 downto 0) => signal_multiplexer_14_datab(15 downto 0),
      en0 => Net,
      valid => signal_multiplexer_14_valid,
      valid0 => polyvec_basemul_acc_0_valid_to_fqmul1
    );
signal_multiplexer_16: component kyberBD_signal_multiplexer_12_4
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(15 downto 0) => signal_multiplexer_16_data(15 downto 0),
      data0(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul2(15 downto 0),
      data0b(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul2(15 downto 0),
      data1(15 downto 0) => polyvec_ntt_0_coeff0_to_fqmul0(15 downto 0),
      data1b(15 downto 0) => polyvec_ntt_0_coeff1_to_fqmul0(15 downto 0),
      datab(15 downto 0) => signal_multiplexer_16_datab(15 downto 0),
      en0 => Net,
      en1 => polyvec_ntt_0_en_dsm,
      valid => signal_multiplexer_16_valid,
      valid0 => polyvec_basemul_acc_0_valid_to_fqmul2,
      valid1 => polyvec_ntt_0_valid_to_fqmul0
    );
signal_multiplexer_17: component kyberBD_signal_multiplexer_16_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(15 downto 0) => signal_multiplexer_17_data(15 downto 0),
      data0(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul3(15 downto 0),
      data0b(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul3(15 downto 0),
      data1(15 downto 0) => polyvec_ntt_0_coeff0_to_fqmul1(15 downto 0),
      data1b(15 downto 0) => polyvec_ntt_0_coeff1_to_fqmul1(15 downto 0),
      datab(15 downto 0) => signal_multiplexer_17_datab(15 downto 0),
      en0 => Net,
      en1 => polyvec_ntt_0_en_dsm,
      valid => signal_multiplexer_17_valid,
      valid0 => polyvec_basemul_acc_0_valid_to_fqmul3,
      valid1 => polyvec_ntt_0_valid_to_fqmul1
    );
signal_multiplexer_18: component kyberBD_signal_multiplexer_17_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(15 downto 0) => signal_multiplexer_18_data(15 downto 0),
      data0(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul4(15 downto 0),
      data0b(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul4(15 downto 0),
      data1(15 downto 0) => polyvec_invntt_0_coeff0_to_fqmul0(15 downto 0),
      data1b(15 downto 0) => polyvec_invntt_0_coeff1_to_fqmul0(15 downto 0),
      datab(15 downto 0) => signal_multiplexer_18_datab(15 downto 0),
      en0 => Net,
      en1 => polyvec_invntt_0_en_dsm,
      valid => signal_multiplexer_18_valid,
      valid0 => polyvec_basemul_acc_0_valid_to_fqmul4,
      valid1 => polyvec_invntt_0_valid_to_fqmul0
    );
signal_multiplexer_19: component kyberBD_signal_multiplexer_17_1
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(15 downto 0) => signal_multiplexer_19_data(15 downto 0),
      data0(15 downto 0) => polyvec_basemul_acc_0_coeff0_to_fqmul5(15 downto 0),
      data0b(15 downto 0) => polyvec_basemul_acc_0_coeff1_to_fqmul5(15 downto 0),
      data1(15 downto 0) => polyvec_invntt_0_coeff0_to_fqmul1(15 downto 0),
      data1b(15 downto 0) => polyvec_invntt_0_coeff1_to_fqmul1(15 downto 0),
      datab(15 downto 0) => signal_multiplexer_19_datab(15 downto 0),
      en0 => Net,
      en1 => polyvec_invntt_0_en_dsm,
      valid => signal_multiplexer_19_valid,
      valid0 => polyvec_basemul_acc_0_valid_to_fqmul5,
      valid1 => polyvec_invntt_0_valid_to_fqmul1
    );
signal_multiplexer_2: component kyberBD_signal_multiplexer_2_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(31 downto 0) => signal_multiplexer_2_data(31 downto 0),
      data0(31 downto 0) => poly_tomont_0_do_lower_mont(31 downto 0),
      data1(31 downto 0) => fqmul_0_data_out_mont(31 downto 0),
      en0 => poly_tomont_0_en_lower_mont,
      en1 => Net,
      valid => signal_multiplexer_2_valid,
      valid0 => poly_tomont_0_valid_out_lower_mont,
      valid1 => fqmul_0_valid_out_mont
    );
signal_multiplexer_3: component kyberBD_signal_multiplexer_2_1
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(31 downto 0) => signal_multiplexer_3_data(31 downto 0),
      data0(31 downto 0) => poly_tomont_0_do_upper_mont(31 downto 0),
      data1(31 downto 0) => fqmul_1_data_out_mont(31 downto 0),
      en0 => poly_tomont_0_en_upper_mont,
      en1 => Net,
      valid => signal_multiplexer_3_valid,
      valid0 => poly_tomont_0_valid_out_upper_mont,
      valid1 => fqmul_1_valid_out_mont
    );
signal_multiplexer_4: component kyberBD_signal_multiplexer_2_2
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(31 downto 0) => signal_multiplexer_4_data(31 downto 0),
      data0(31 downto 0) => fqmul_2_data_out_mont(31 downto 0),
      data1(31 downto 0) => fqmul_2_data_out_mont(31 downto 0),
      data2(31 downto 0) => poly_tomont_0_do_lower_mont1(31 downto 0),
      en0 => Net,
      en1 => polyvec_ntt_0_en_dsm,
      en2 => poly_tomont_0_en_lower_mont1,
      valid => signal_multiplexer_4_valid,
      valid0 => fqmul_2_valid_out_mont,
      valid1 => fqmul_2_valid_out_mont,
      valid2 => poly_tomont_0_valid_out_lower_mont1
    );
signal_multiplexer_5: component kyberBD_signal_multiplexer_2_3
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(31 downto 0) => signal_multiplexer_5_data(31 downto 0),
      data0(31 downto 0) => fqmul_3_data_out_mont(31 downto 0),
      data1(31 downto 0) => fqmul_3_data_out_mont(31 downto 0),
      data2(31 downto 0) => poly_tomont_0_do_upper_mont1(31 downto 0),
      en0 => Net,
      en1 => polyvec_ntt_0_en_dsm,
      en2 => poly_tomont_0_en_upper_mont1,
      valid => signal_multiplexer_5_valid,
      valid0 => fqmul_3_valid_out_mont,
      valid1 => fqmul_3_valid_out_mont,
      valid2 => poly_tomont_0_valid_out_upper_mont1
    );
signal_multiplexer_6: component kyberBD_signal_multiplexer_2_4
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(31 downto 0) => signal_multiplexer_6_data(31 downto 0),
      data0(31 downto 0) => fqmul_4_data_out_mont(31 downto 0),
      data1(31 downto 0) => fqmul_4_data_out_mont(31 downto 0),
      en0 => Net,
      en1 => polyvec_invntt_0_en_dsm,
      valid => signal_multiplexer_6_valid,
      valid0 => fqmul_4_valid_out_mont,
      valid1 => fqmul_4_valid_out_mont
    );
signal_multiplexer_7: component kyberBD_signal_multiplexer_2_5
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(31 downto 0) => signal_multiplexer_7_data(31 downto 0),
      data0(31 downto 0) => fqmul_5_data_out_mont(31 downto 0),
      data1(31 downto 0) => fqmul_5_data_out_mont(31 downto 0),
      en0 => Net,
      en1 => polyvec_invntt_0_en_dsm,
      valid => signal_multiplexer_7_valid,
      valid0 => fqmul_5_valid_out_mont,
      valid1 => fqmul_5_valid_out_mont
    );
signal_multiplexer_8: component kyberBD_signal_multiplexer_1_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(15 downto 0) => signal_multiplexer_8_data(15 downto 0),
      data0(15 downto 0) => polyvec_reduce_0_do_lower_barrett1(15 downto 0),
      en0 => polyvec_reduce_0_en_lower_barrett1,
      valid => signal_multiplexer_8_valid,
      valid0 => polyvec_reduce_0_valid_out_lower_barrett1
    );
signal_multiplexer_9: component kyberBD_signal_multiplexer_8_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      data(15 downto 0) => signal_multiplexer_9_data(15 downto 0),
      data0(15 downto 0) => polyvec_reduce_0_do_upper_barrett1(15 downto 0),
      en0 => polyvec_reduce_0_en_upper_barrett1,
      valid => signal_multiplexer_9_valid,
      valid0 => polyvec_reduce_0_valid_out_upper_barrett1
    );
timer2_0: component kyberBD_timer2_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      control(31 downto 0) => axi_gpio_0_gpio_io_o(31 downto 0),
      count(31 downto 0) => timer2_0_count(31 downto 0)
    );
timer_0: component kyberBD_timer_0_1
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      count(31 downto 0) => timer_0_count(31 downto 0),
      enable => poly_tomont_0_busy,
      reset => axi_gpio_6_gpio_io_o(0)
    );
timer_1: component kyberBD_timer_0_2
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      count(31 downto 0) => timer_1_count(31 downto 0),
      enable => polyvec_reduce_0_busy,
      reset => axi_gpio_7_gpio_io_o(0)
    );
timer_2: component kyberBD_timer_0_3
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      count(31 downto 0) => timer_2_count(31 downto 0),
      enable => polyvec_basemul_acc_0_busy,
      reset => axi_gpio_8_gpio_io_o(0)
    );
timer_3: component kyberBD_timer_0_4
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      count(31 downto 0) => timer_3_count(31 downto 0),
      enable => polyvec_ntt_0_busy,
      reset => axi_gpio_9_gpio_io_o(0)
    );
timer_4: component kyberBD_timer_0_5
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      count(31 downto 0) => timer_4_count(31 downto 0),
      enable => polyvec_invntt_0_busy,
      reset => axi_gpio_10_gpio_io_o(0)
    );
timer_5: component kyberBD_timer_0_6
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      count(31 downto 0) => timer_5_count(31 downto 0),
      enable => keccak_f1600_bram_ip_0_busy,
      reset => axi_gpio_11_gpio_io_o(0)
    );
xlconcat_0: component kyberBD_xlconcat_0_0
     port map (
      In0(0) => axi_dma_0_mm2s_introut,
      In1(0) => axi_dma_0_s2mm_introut,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
end STRUCTURE;
