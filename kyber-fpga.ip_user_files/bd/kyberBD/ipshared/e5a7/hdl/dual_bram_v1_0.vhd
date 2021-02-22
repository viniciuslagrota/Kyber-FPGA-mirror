library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dual_bram_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 13;

		-- Parameters of Axi Slave Bus Interface S01_AXI
		C_S01_AXI_DATA_WIDTH	: integer	:= 32;
		C_S01_AXI_ADDR_WIDTH	: integer	:= 13
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic;

		-- Ports of Axi Slave Bus Interface S01_AXI
		s01_axi_aclk	: in std_logic;
		s01_axi_aresetn	: in std_logic;
		s01_axi_awaddr	: in std_logic_vector(C_S01_AXI_ADDR_WIDTH-1 downto 0);
		s01_axi_awprot	: in std_logic_vector(2 downto 0);
		s01_axi_awvalid	: in std_logic;
		s01_axi_awready	: out std_logic;
		s01_axi_wdata	: in std_logic_vector(C_S01_AXI_DATA_WIDTH-1 downto 0);
		s01_axi_wstrb	: in std_logic_vector((C_S01_AXI_DATA_WIDTH/8)-1 downto 0);
		s01_axi_wvalid	: in std_logic;
		s01_axi_wready	: out std_logic;
		s01_axi_bresp	: out std_logic_vector(1 downto 0);
		s01_axi_bvalid	: out std_logic;
		s01_axi_bready	: in std_logic;
		s01_axi_araddr	: in std_logic_vector(C_S01_AXI_ADDR_WIDTH-1 downto 0);
		s01_axi_arprot	: in std_logic_vector(2 downto 0);
		s01_axi_arvalid	: in std_logic;
		s01_axi_arready	: out std_logic;
		s01_axi_rdata	: out std_logic_vector(C_S01_AXI_DATA_WIDTH-1 downto 0);
		s01_axi_rresp	: out std_logic_vector(1 downto 0);
		s01_axi_rvalid	: out std_logic;
		s01_axi_rready	: in std_logic;
		
		s00_ena_bram    : in std_logic;
        s00_wea_bram    : in std_logic;                               
        s00_addra_bram  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-2-1 downto 0); 
        s00_dia_bram    : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
        s00_doa_bram    : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        
        s00_enb_bram    : in std_logic;
        s00_web_bram    : in std_logic;                               
        s00_addrb_bram  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-2-1 downto 0); 
        s00_dib_bram    : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
        s00_dob_bram    : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        
        s01_ena_bram    : in std_logic;
        s01_wea_bram    : in std_logic;                               
        s01_addra_bram  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-2-1 downto 0); 
        s01_dia_bram    : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
        s01_doa_bram    : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
          
        s01_enb_bram    : in std_logic;
        s01_web_bram    : in std_logic;                               
        s01_addrb_bram  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-2-1 downto 0); 
        s01_dib_bram    : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
        s01_dob_bram    : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0)

	);
end dual_bram_v1_0;

architecture arch_imp of dual_bram_v1_0 is

    constant ADDR_LSB                : integer   := (C_S00_AXI_DATA_WIDTH/32) + 1;
    constant ADDR_WIDTH              : integer   := C_S00_AXI_ADDR_WIDTH - ADDR_LSB;
	constant WORD_WIDTH              : integer   := C_S00_AXI_DATA_WIDTH;

	-- component declaration
	component bram_v1_0_S_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4;
		ADDR_LSB            : integer   := ADDR_LSB;
        ADDR_WIDTH          : integer   := ADDR_WIDTH;
	    WORD_WIDTH          : integer   := WORD_WIDTH	 
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic;
		
		S_ENA_BRAM      : in std_logic;                                     
        S_WEA_BRAM      : in std_logic;                               
        S_ADDRA_BRAM    : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        S_DIA_BRAM      : in std_logic_vector(WORD_WIDTH-1 downto 0); 
        S_DOA_BRAM      : out std_logic_vector(WORD_WIDTH-1 downto 0);
        
        S_ENB_BRAM      : in std_logic;                                     
        S_WEB_BRAM      : in std_logic;                               
        S_ADDRB_BRAM    : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        S_DIB_BRAM      : in std_logic_vector(WORD_WIDTH-1 downto 0); 
        S_DOB_BRAM      : out std_logic_vector(WORD_WIDTH-1 downto 0)
		);
	end component bram_v1_0_S_AXI;	

begin

	bram_v1_0_S00_AXI_inst : bram_v1_0_S_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH,
		ADDR_LSB            => ADDR_LSB,            
		ADDR_WIDTH          => ADDR_WIDTH,  
		WORD_WIDTH          => WORD_WIDTH      
	)
	port map (
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready,
		
--		S_CLKA_BRAM     => s00_clka_bram,
--		S_CLKB_BRAM     => s00_clkb_bram,
		S_ENA_BRAM      => s00_ena_bram, 
	    S_WEA_BRAM      => s00_wea_bram,
	    S_ADDRA_BRAM    => s00_addra_bram,
	    S_DIA_BRAM      => s00_dia_bram,
	    S_DOA_BRAM      => s00_doa_bram,
	    
	    S_ENB_BRAM      => s00_enb_bram, 
	    S_WEB_BRAM      => s00_web_bram,
	    S_ADDRB_BRAM    => s00_addrb_bram,
	    S_DIB_BRAM      => s00_dib_bram,
	    S_DOB_BRAM      => s00_dob_bram				
	);
	
	bram_v1_0_S01_AXI_inst : bram_v1_0_S_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S01_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S01_AXI_ADDR_WIDTH,
		ADDR_LSB            => ADDR_LSB,            
		ADDR_WIDTH          => ADDR_WIDTH,  
		WORD_WIDTH          => WORD_WIDTH      
	)
	port map (
		S_AXI_ACLK	=> s01_axi_aclk,
		S_AXI_ARESETN	=> s01_axi_aresetn,
		S_AXI_AWADDR	=> s01_axi_awaddr,
		S_AXI_AWPROT	=> s01_axi_awprot,
		S_AXI_AWVALID	=> s01_axi_awvalid,
		S_AXI_AWREADY	=> s01_axi_awready,
		S_AXI_WDATA	=> s01_axi_wdata,
		S_AXI_WSTRB	=> s01_axi_wstrb,
		S_AXI_WVALID	=> s01_axi_wvalid,
		S_AXI_WREADY	=> s01_axi_wready,
		S_AXI_BRESP	=> s01_axi_bresp,
		S_AXI_BVALID	=> s01_axi_bvalid,
		S_AXI_BREADY	=> s01_axi_bready,
		S_AXI_ARADDR	=> s01_axi_araddr,
		S_AXI_ARPROT	=> s01_axi_arprot,
		S_AXI_ARVALID	=> s01_axi_arvalid,
		S_AXI_ARREADY	=> s01_axi_arready,
		S_AXI_RDATA	=> s01_axi_rdata,
		S_AXI_RRESP	=> s01_axi_rresp,
		S_AXI_RVALID	=> s01_axi_rvalid,
		S_AXI_RREADY	=> s01_axi_rready,
		
--		S_CLKA_BRAM     => s01_clka_bram,
--		S_CLKB_BRAM     => s01_clkb_bram,
		S_ENA_BRAM      => s01_ena_bram, 
	    S_WEA_BRAM      => s01_wea_bram,
	    S_ADDRA_BRAM    => s01_addra_bram,
	    S_DIA_BRAM      => s01_dia_bram,
	    S_DOA_BRAM      => s01_doa_bram,
	                         
	    S_ENB_BRAM      => s01_enb_bram, 
	    S_WEB_BRAM      => s01_web_bram,
	    S_ADDRB_BRAM    => s01_addrb_bram,
	    S_DIB_BRAM      => s01_dib_bram,
	    S_DOB_BRAM      => s01_dob_bram		
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
