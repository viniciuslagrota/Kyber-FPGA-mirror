----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2021 05:45:51 PM
-- Design Name: 
-- Module Name: brams_core - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity brams_core is
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
end brams_core;

architecture Behavioral of brams_core is

    -- Slave AXIS
    signal s_tready                   : std_logic;
    signal s_tdata                    : std_logic_vector(WORD_WIDTH-1 downto 0);     
    signal s_tlast                    : std_logic;
    signal s_tvalid                   : std_logic;
    
    -- Master AXIS
    signal m_tdata                    : std_logic_vector(WORD_WIDTH-1 downto 0);     
    signal m_tlast                    : std_logic;
    signal m_tvalid                   : std_logic;

    -- INTERNAL BRAM0 PORTA
    signal s_bram0_wea                : std_logic;
	signal s_bram0_ena                : std_logic;
	signal s_bram0_addra              : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal s_bram0_dia                : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal s_bram0_doa                : std_logic_vector(WORD_WIDTH-1 downto 0);
    
    -- INTERNAL BRAM1 PORTA
    signal s_bram1_wea                : std_logic;
	signal s_bram1_ena                : std_logic;
	signal s_bram1_addra              : std_logic_vector(ADDR_WIDTH downto 0);
    signal s_bram1_dia                : std_logic_vector(WORD_WIDTH-1 downto 0);
    signal s_bram1_doa                : std_logic_vector(WORD_WIDTH-1 downto 0);     
    
    -- CONNECTION PORTA BRAM0
    signal s_conn_bram0_ena      : std_logic;
    signal s_conn_bram0_wea      : std_logic;                               
    signal s_conn_bram0_addra    : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_conn_bram0_dia      : std_logic_vector(WORD_WIDTH-1 downto 0); 
    signal s_conn_bram0_doa      : std_logic_vector(WORD_WIDTH-1 downto 0);
    
    -- CONNECTION PORTB BRAM0
    signal s_conn_bram0_enb      : std_logic;
    signal s_conn_bram0_web      : std_logic;                               
    signal s_conn_bram0_addrb    : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_conn_bram0_dib      : std_logic_vector(WORD_WIDTH-1 downto 0); 
    signal s_conn_bram0_dob      : std_logic_vector(WORD_WIDTH-1 downto 0);

    -- CONNECTION PORTA BRAM1
    signal s_conn_bram1_ena      : std_logic;
    signal s_conn_bram1_wea      : std_logic;                               
    signal s_conn_bram1_addra    : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_conn_bram1_dia      : std_logic_vector(WORD_WIDTH-1 downto 0); 
    signal s_conn_bram1_doa      : std_logic_vector(WORD_WIDTH-1 downto 0);
    
    -- CONNECTION PORTB BRAM1
    signal s_conn_bram1_enb      : std_logic;
    signal s_conn_bram1_web      : std_logic;                               
    signal s_conn_bram1_addrb    : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_conn_bram1_dib      : std_logic_vector(WORD_WIDTH-1 downto 0); 
    signal s_conn_bram1_dob      : std_logic_vector(WORD_WIDTH-1 downto 0);  
    
    -- CONTROL
    signal s_gpio_enable_tx           : std_logic_vector(1 downto 0);
    signal s_gpio_length_tx           : std_logic_vector(31 downto 0);
    signal s_transmit                 : std_logic_vector(1 downto 0);

    component true_dual_bram is
    generic(
        ADDR_WIDTH   : integer;
        WORD_WIDTH   : integer
    );
    port(
        clka    : in std_logic;
        ena     : in std_logic;
        wea     : in std_logic;
        addra   : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        dia     : in std_logic_vector(WORD_WIDTH-1 downto 0);
        doa     : out std_logic_vector(WORD_WIDTH-1 downto 0);
        
        clkb    : in std_logic;
        enb     : in std_logic;
        web     : in std_logic;
        addrb   : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        dib     : in std_logic_vector(WORD_WIDTH-1 downto 0);
        dob     : out std_logic_vector(WORD_WIDTH-1 downto 0)
    );
    end component;

begin

    -- SLAVE AXIS
    process(CLK)
    begin
        if(rising_edge(CLK)) then
            if ARESETN = '0' then
                s_tready <= '0';
                s_tdata <= (others => '0');
                s_tlast <= '0';
                s_tvalid <= '0';
            else
                s_tready <= '1';
                s_tdata <= S_AXIS_TDATA;
                s_tlast <= S_AXIS_TLAST;
                s_tvalid <= S_AXIS_TVALID;
            end if;
        end if;
    end process;
    
    -- MASTER AXIS
    process(CLK)
    begin
        if(rising_edge(CLK)) then
            if ARESETN = '0' then
--                m_tdata <= (others => '0');
                m_tlast <= '0';
                m_tvalid <= '0';
            else
--                m_tdata <= s_bram0_dob;  
                if((s_bram1_addra = std_logic_vector(to_unsigned(0,s_bram1_addra'length))) and (M_AXIS_TREADY = '0')) then
                    m_tvalid <= '0';            
                elsif((s_gpio_enable_tx(0) = '1') and (s_bram1_addra < s_gpio_length_tx(ADDR_WIDTH downto 0))) then
                    m_tvalid <= '1';
                else
                    m_tvalid <= '0';
                end if;
                if((std_logic_vector(unsigned(s_gpio_length_tx(ADDR_WIDTH downto 0)) - 1) = s_bram1_addra) and (M_AXIS_TREADY = '1')) then
                    m_tlast <= '1';
                else
                    m_tlast <= '0';
                end if;
            end if;
        end if;
    end process;
    
    -- Control signals
    process(CLK)
    begin
        if(rising_edge(CLK)) then
            if ARESETN = '0' then
                s_gpio_enable_tx <= (others => '0');
                s_gpio_length_tx <= (others => '0');
            else
                s_gpio_enable_tx(0) <= gpio_enable_tx;
                s_gpio_enable_tx(1) <= s_gpio_enable_tx(0);
                s_gpio_length_tx <= gpio_length_tx;
            end if;
        end if;
    end process;
    
    -- BRAM0 PORT A
    process(CLK)
    begin
        if(rising_edge(CLK)) then
            if ARESETN = '0' then
                s_bram0_ena   <= '0';
                s_bram0_wea   <= '0';
                s_bram0_addra <= (others => '0');
                s_bram0_dia   <= (others => '0');               
            else
                s_bram0_ena <= s_tready;
                s_bram0_wea <= s_tready and s_tvalid;
                if(s_bram0_wea = '1') then
                    s_bram0_addra <= std_logic_vector(unsigned(s_bram0_addra) + 1);
                elsif(s_gpio_enable_tx(0) = '0' and s_gpio_enable_tx(1) = '1') then 
                    s_bram0_addra <= (others => '0');
                end if;
                s_bram0_dia <= s_tdata;
            end if;
        end if;
    end process;
    
    -- BRAM1 PORT A
    process(CLK)
    begin
        if(rising_edge(CLK)) then
            if ARESETN = '0' then
                s_bram1_ena   <= '0';
                s_bram1_wea   <= '0';
                s_bram1_addra <= (others => '0');
                s_bram1_dia   <= (others => '0');               
            else
                s_bram1_ena <= M_AXIS_TREADY;
                s_bram1_wea <= '0';
                if((s_gpio_enable_tx(0) = '1') and (s_bram1_addra < s_gpio_length_tx(ADDR_WIDTH downto 0)) and (M_AXIS_TREADY = '1')) then
                    s_bram1_addra <= std_logic_vector(unsigned(s_bram1_addra) + 1);
                elsif(s_gpio_enable_tx(0) = '0' and s_gpio_enable_tx(1) = '1') then 
                    s_bram1_addra <= (others => '0');
                end if;
                s_bram1_dia   <= (others => '0');  
            end if;
        end if;
    end process;
        
    -- Slave output
    S_AXIS_TREADY <= s_tready;
    
    -- Master output
    M_AXIS_TKEEP <= (others => '1');
    M_AXIS_TDATA <= s_conn_bram1_doa;
    M_AXIS_TLAST <= m_tlast;
    M_AXIS_TVALID <= m_tvalid;    
    
    -- BRAM0 connections
    s_conn_bram0_ena   <= s_bram0_ena or port_bram0_ena;
    s_conn_bram0_wea   <= s_bram0_wea or port_bram0_wea;
    s_conn_bram0_addra <= port_bram0_addra    when port_bram0_ena = '1'   else
                          s_bram0_addra       when s_bram0_ena = '1'      else
                          (others => '0');
    s_conn_bram0_dia   <= port_bram0_dia      when port_bram0_ena = '1'   else
                          s_bram0_dia         when s_bram0_ena = '1'      else
                          (others => '0');
    port_bram0_doa     <= s_conn_bram0_doa;
    
    s_conn_bram0_enb   <= port_bram0_enb;
    s_conn_bram0_web   <= port_bram0_web;
    s_conn_bram0_addrb <= port_bram0_addrb;
    s_conn_bram0_dib   <= port_bram0_dib;
    port_bram0_dob     <= s_conn_bram0_dob;
    
    -- BRAM1 connections
    s_conn_bram1_ena   <= M_AXIS_TREADY or port_bram1_ena;
    s_conn_bram1_wea   <= s_bram1_wea or port_bram1_wea;
    s_conn_bram1_addra <= port_bram1_addra                          when port_bram1_ena = '1'     else
                          s_bram1_addra(ADDR_WIDTH - 1 downto 0)    when M_AXIS_TREADY = '1'        else
                          (others => '0');
    s_conn_bram1_dia   <= port_bram1_dia                            when port_bram1_ena = '1'     else
                          s_bram1_dia                               when M_AXIS_TREADY = '1'        else
                          (others => '0');
    port_bram1_doa      <= s_conn_bram1_doa;
    
    s_conn_bram1_enb   <= port_bram1_enb;
    s_conn_bram1_web   <= port_bram1_web;
    s_conn_bram1_addrb <= port_bram1_addrb;
    s_conn_bram1_dib   <= port_bram1_dib;
    port_bram1_dob     <= s_conn_bram1_dob;
    
    true_dual_bram_inst0 : true_dual_bram
    generic map(
        ADDR_WIDTH  => ADDR_WIDTH,
        WORD_WIDTH  => WORD_WIDTH
    )
    port map(
        clka   =>   CLK,
        ena    =>   s_conn_bram0_ena, 
        wea    =>   s_conn_bram0_wea,
        addra  =>   s_conn_bram0_addra,
        dia    =>   s_conn_bram0_dia,
        doa    =>   s_conn_bram0_doa,
        
        clkb   =>   CLK,
        enb    =>   s_conn_bram0_enb, 
        web    =>   s_conn_bram0_web,
        addrb  =>   s_conn_bram0_addrb,
        dib    =>   s_conn_bram0_dib,
        dob    =>   s_conn_bram0_dob
    );
    
    true_dual_bram_inst1 : true_dual_bram
    generic map(
        ADDR_WIDTH  => ADDR_WIDTH,
        WORD_WIDTH  => WORD_WIDTH
    )
    port map(
        clka   =>   CLK,
        ena    =>   s_conn_bram1_ena, 
        wea    =>   s_conn_bram1_wea,
        addra  =>   s_conn_bram1_addra,
        dia    =>   s_conn_bram1_dia,
        doa    =>   s_conn_bram1_doa,
        
        clkb   =>   CLK,
        enb    =>   s_conn_bram1_enb, 
        web    =>   s_conn_bram1_web,
        addrb  =>   s_conn_bram1_addrb,
        dib    =>   s_conn_bram1_dib,
        dob    =>   s_conn_bram1_dob
    );

end Behavioral;
