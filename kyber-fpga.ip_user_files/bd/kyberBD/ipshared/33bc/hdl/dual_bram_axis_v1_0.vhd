library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dual_bram_axis_v1_0 is
	generic (
		ADDR_WIDTH          : integer := 11;
	    WORD_WIDTH          : integer := 32	  
	);
	port (
		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	    : in std_logic;
		s00_axis_aresetn    : in std_logic;
		s00_axis_tready	    : out std_logic;
		s00_axis_tkeep	    : in std_logic_vector((WORD_WIDTH/8)-1 downto 0);
		s00_axis_tdata	    : in std_logic_vector(WORD_WIDTH-1 downto 0);
		s00_axis_tstrb	    : in std_logic_vector((WORD_WIDTH/8)-1 downto 0);
		s00_axis_tlast	    : in std_logic;
		s00_axis_tvalid	    : in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	    : in std_logic;
		m00_axis_aresetn    : in std_logic;
		m00_axis_tvalid	    : out std_logic;
		m00_axis_tkeep	    : out std_logic_vector((WORD_WIDTH/8)-1 downto 0);
		m00_axis_tdata	    : out std_logic_vector(WORD_WIDTH-1 downto 0);
		m00_axis_tstrb	    : out std_logic_vector((WORD_WIDTH/8)-1 downto 0);
		m00_axis_tlast	    : out std_logic;
		m00_axis_tready	    : in std_logic;
		
		-- PORTA BRAM0
		port_bram0_ena      : in std_logic;
        port_bram0_wea      : in std_logic;                               
        port_bram0_addra    : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        port_bram0_dia      : in std_logic_vector(WORD_WIDTH-1 downto 0); 
        port_bram0_doa      : out std_logic_vector(WORD_WIDTH-1 downto 0);
        
        -- PORTB BRAM0
		port_bram0_enb      : in std_logic;
        port_bram0_web      : in std_logic;                               
        port_bram0_addrb    : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        port_bram0_dib      : in std_logic_vector(WORD_WIDTH-1 downto 0); 
        port_bram0_dob      : out std_logic_vector(WORD_WIDTH-1 downto 0);
        
        -- PORTA BRAM1
		port_bram1_ena      : in std_logic;
        port_bram1_wea      : in std_logic;                               
        port_bram1_addra    : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        port_bram1_dia      : in std_logic_vector(WORD_WIDTH-1 downto 0); 
        port_bram1_doa      : out std_logic_vector(WORD_WIDTH-1 downto 0);
        
        -- PORTB BRAM1
		port_bram1_enb      : in std_logic;
        port_bram1_web      : in std_logic;                               
        port_bram1_addrb    : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
        port_bram1_dib      : in std_logic_vector(WORD_WIDTH-1 downto 0); 
        port_bram1_dob      : out std_logic_vector(WORD_WIDTH-1 downto 0);                
		
		-- Control signal
		gpio_enable_tx      : in std_logic;
		gpio_length_tx      : in std_logic_vector(31 downto 0)
	);
end dual_bram_axis_v1_0;

architecture arch_imp of dual_bram_axis_v1_0 is

	-- component declaration
--	component dual_bram_axis_v1_0_S00_AXIS is
--		generic (
--		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
--		);
--		port (
--		S_AXIS_ACLK	: in std_logic;
--		S_AXIS_ARESETN	: in std_logic;
--		S_AXIS_TREADY	: out std_logic;
--		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
--		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
--		S_AXIS_TLAST	: in std_logic;
--		S_AXIS_TVALID	: in std_logic
--		);
--	end component dual_bram_axis_v1_0_S00_AXIS;

--	component dual_bram_axis_v1_0_M00_AXIS is
--		generic (
--		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
--		C_M_START_COUNT	: integer	:= 32
--		);
--		port (
--		M_AXIS_ACLK	: in std_logic;
--		M_AXIS_ARESETN	: in std_logic;
--		M_AXIS_TVALID	: out std_logic;
--		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
--		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
--		M_AXIS_TLAST	: out std_logic;
--		M_AXIS_TREADY	: in std_logic
--		);
--	end component dual_bram_axis_v1_0_M00_AXIS;

    component brams_core is
        generic (
            ADDR_WIDTH          : integer := 11;
	        WORD_WIDTH          : integer := 32
        );
        port (
            -- Clock and reset
            CLK	                : in std_logic;
            ARESETN	            : in std_logic;
            
            -- Slave AXIS            
            S_AXIS_TREADY	    : out std_logic;
            S_AXIS_TKEEP	    : in std_logic_vector((WORD_WIDTH/8)-1 downto 0);
            S_AXIS_TDATA	    : in std_logic_vector(WORD_WIDTH-1 downto 0);
            S_AXIS_TSTRB	    : in std_logic_vector((WORD_WIDTH/8)-1 downto 0);
            S_AXIS_TLAST	    : in std_logic;
            S_AXIS_TVALID	    : in std_logic;
            
            -- Master AXIS
            M_AXIS_TVALID	    : out std_logic;
            M_AXIS_TKEEP	    : out std_logic_vector((WORD_WIDTH/8)-1 downto 0);
            M_AXIS_TDATA	    : out std_logic_vector(WORD_WIDTH-1 downto 0);
            M_AXIS_TSTRB	    : out std_logic_vector((WORD_WIDTH/8)-1 downto 0);
            M_AXIS_TLAST	    : out std_logic;
            M_AXIS_TREADY	    : in std_logic;
            
            -- PORTA BRAM0
            port_bram0_ena      : in std_logic;
            port_bram0_wea      : in std_logic;                               
            port_bram0_addra    : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
            port_bram0_dia      : in std_logic_vector(WORD_WIDTH-1 downto 0); 
            port_bram0_doa      : out std_logic_vector(WORD_WIDTH-1 downto 0);
            
            -- PORTB BRAM0
            port_bram0_enb      : in std_logic;
            port_bram0_web      : in std_logic;                               
            port_bram0_addrb    : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
            port_bram0_dib      : in std_logic_vector(WORD_WIDTH-1 downto 0); 
            port_bram0_dob      : out std_logic_vector(WORD_WIDTH-1 downto 0);
            
            -- PORTA BRAM1
            port_bram1_ena      : in std_logic;
            port_bram1_wea      : in std_logic;                               
            port_bram1_addra    : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
            port_bram1_dia      : in std_logic_vector(WORD_WIDTH-1 downto 0); 
            port_bram1_doa      : out std_logic_vector(WORD_WIDTH-1 downto 0);
            
            -- PORTB BRAM1
            port_bram1_enb      : in std_logic;
            port_bram1_web      : in std_logic;                               
            port_bram1_addrb    : in std_logic_vector(ADDR_WIDTH-1 downto 0); 
            port_bram1_dib      : in std_logic_vector(WORD_WIDTH-1 downto 0); 
            port_bram1_dob      : out std_logic_vector(WORD_WIDTH-1 downto 0);  
            
            -- Control
            gpio_enable_tx      : in std_logic;
            gpio_length_tx      : in std_logic_vector(31 downto 0)
        );
    end component brams_core;

begin

---- Instantiation of Axi Bus Interface S00_AXIS
--dual_bram_axis_v1_0_S00_AXIS_inst : dual_bram_axis_v1_0_S00_AXIS
--	generic map (
--		C_S_AXIS_TDATA_WIDTH	=> C_S00_AXIS_TDATA_WIDTH
--	)
--	port map (
--		S_AXIS_ACLK	=> s00_axis_aclk,
--		S_AXIS_ARESETN	=> s00_axis_aresetn,
--		S_AXIS_TREADY	=> s00_axis_tready,
--		S_AXIS_TDATA	=> s00_axis_tdata,
--		S_AXIS_TSTRB	=> s00_axis_tstrb,
--		S_AXIS_TLAST	=> s00_axis_tlast,
--		S_AXIS_TVALID	=> s00_axis_tvalid
--	);

---- Instantiation of Axi Bus Interface M00_AXIS
--dual_bram_axis_v1_0_M00_AXIS_inst : dual_bram_axis_v1_0_M00_AXIS
--	generic map (
--		C_M_AXIS_TDATA_WIDTH	=> C_M00_AXIS_TDATA_WIDTH,
--		C_M_START_COUNT	=> C_M00_AXIS_START_COUNT
--	)
--	port map (
--		M_AXIS_ACLK	=> m00_axis_aclk,
--		M_AXIS_ARESETN	=> m00_axis_aresetn,
--		M_AXIS_TVALID	=> m00_axis_tvalid,
--		M_AXIS_TDATA	=> m00_axis_tdata,
--		M_AXIS_TSTRB	=> m00_axis_tstrb,
--		M_AXIS_TLAST	=> m00_axis_tlast,
--		M_AXIS_TREADY	=> m00_axis_tready
--	);

	-- Add user logic here
--    process(s00_axis_aclk)
--    begin
--        if(rising_edge(s00_axis_aclk)) then
        
--            s00_axis_tready <= m00_axis_tready;
            
--            m00_axis_tvalid <= s00_axis_tvalid;
--            m00_axis_tdata  <= std_logic_vector(unsigned(s00_axis_tdata) + 1);
--            m00_axis_tstrb  <= s00_axis_tstrb;
--            m00_axis_tlast  <= s00_axis_tlast;
        
--        end if;
--    end process;
	-- User logic ends
	
-- Instantiation of Axi Bus Interface M00_AXIS
    brams_core_inst : brams_core
        generic map (
            ADDR_WIDTH	=> ADDR_WIDTH,        
            WORD_WIDTH	=> WORD_WIDTH
        )
        port map (
            CLK	                => s00_axis_aclk,
            ARESETN	            => s00_axis_aresetn,
            
            S_AXIS_TREADY	    => s00_axis_tready,
            S_AXIS_TKEEP        => s00_axis_tkeep,
            S_AXIS_TDATA	    => s00_axis_tdata,
            S_AXIS_TSTRB	    => s00_axis_tstrb,
            S_AXIS_TLAST	    => s00_axis_tlast,
            S_AXIS_TVALID	    => s00_axis_tvalid,
        
            M_AXIS_TVALID	    => m00_axis_tvalid,
            M_AXIS_TKEEP        => m00_axis_tkeep,
            M_AXIS_TDATA	    => m00_axis_tdata,
            M_AXIS_TSTRB	    => m00_axis_tstrb,
            M_AXIS_TLAST	    => m00_axis_tlast,
            M_AXIS_TREADY	    => m00_axis_tready,
                   
            port_bram0_ena      =>  port_bram0_ena,      
            port_bram0_wea      =>  port_bram0_wea,      
            port_bram0_addra    =>  port_bram0_addra,    
            port_bram0_dia      =>  port_bram0_dia,      
            port_bram0_doa      =>  port_bram0_doa,   
             
            port_bram0_enb      =>  port_bram0_enb,      
            port_bram0_web      =>  port_bram0_web,      
            port_bram0_addrb    =>  port_bram0_addrb,    
            port_bram0_dib      =>  port_bram0_dib,      
            port_bram0_dob      =>  port_bram0_dob,   
              
            port_bram1_ena      =>  port_bram1_ena,      
            port_bram1_wea      =>  port_bram1_wea,      
            port_bram1_addra    =>  port_bram1_addra,    
            port_bram1_dia      =>  port_bram1_dia,      
            port_bram1_doa      =>  port_bram1_doa,   
               
            port_bram1_enb      =>  port_bram1_enb,      
            port_bram1_web      =>  port_bram1_web,      
            port_bram1_addrb    =>  port_bram1_addrb,    
            port_bram1_dib      =>  port_bram1_dib,      
            port_bram1_dob      =>  port_bram1_dob,      
            
            gpio_enable_tx      => gpio_enable_tx,
            gpio_length_tx      => gpio_length_tx
    );

end arch_imp;
