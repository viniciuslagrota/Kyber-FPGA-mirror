library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity polyvec_reduce_v1_0 is
	generic (
        DATA_WIDTH	     : integer	:= 32;
        ADDR_WIDTH	     : integer	:= 11
	);
	port (		
		-- CLOCK AND RESET
        clk	             : in std_logic;
        aresetn          : in std_logic;
        
        -- MASTER BRAM PORT
        bram_ena         : out std_logic;                                      
        bram_wea         : out std_logic;                               
        bram_addra       : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram_dia         : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram_doa         : in std_logic_vector(DATA_WIDTH-1 downto 0);
       
        bram_enb         : out std_logic;                                      
        bram_web         : out std_logic;                               
        bram_addrb       : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram_dib         : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram_dob         : in std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- BARRETT
        do_lower_barrett : out std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        di_lower_barrett : in std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        en_lower_barrett : out std_logic;
        do_upper_barrett : out std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        di_upper_barrett : in std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        en_upper_barrett : out std_logic;        
        
        -- CONTROL
        kyber_k          : in std_logic_vector(2 downto 0);
        start            : in std_logic;
        busy             : out std_logic 	
	);
end polyvec_reduce_v1_0;

architecture arch_imp of polyvec_reduce_v1_0 is

    -- BRAM
    signal s_bram_ena           : std_logic;                                      
    signal s_bram_wea           : std_logic;                               
    signal s_bram_addra         : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram_dia           : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram_doa           : std_logic_vector(DATA_WIDTH-1 downto 0); 

    signal s_bram_enb           : std_logic;                                      
    signal s_bram_web           : std_logic;                               
    signal s_bram_addrb         : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram_dib           : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram_dob           : std_logic_vector(DATA_WIDTH-1 downto 0); 
    
    -- BARRETT
    signal s_do_lower_barrett   : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    signal s_di_lower_barrett   : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    signal s_en_lower_barrett   : std_logic;
    signal s_do_upper_barrett   : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    signal s_di_upper_barrett   : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    signal s_en_upper_barrett   : std_logic;
    
    -- CONTROL
    signal s_start              : std_logic;
    signal s_busy               : std_logic;  
    
    -- LOCAL
    signal s_en_vec_barrett     : std_logic_vector(15 downto 0);
    signal s_last_addr          : std_logic_vector(ADDR_WIDTH-1 downto 0);

begin
    
    s_last_addr <=  "00011111111" when kyber_k = "010" else -- 255
                    "00101111111" when kyber_k = "011" else -- 383
                    "00111111111" when kyber_k = "100" else -- 511
                    "00011111111";
                    
    s_di_lower_barrett <= di_lower_barrett;
    s_di_upper_barrett <= di_upper_barrett;    
         
    -- Register start signal
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_start   <= '0';
            else
                s_start   <= start;
            end if;
        end if;
    end process;  
    
    -- Register BRAM signal
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_bram_doa   <= (others => '0');
                s_bram_dob   <= (others => '0');                
            else
                s_bram_doa   <= bram_doa;
                s_bram_dob   <= bram_dob;
            end if;
        end if;
    end process;   
    
    -- Busy signal
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_busy   <= '0';
            else
                if(start = '1' and s_start = '0') then
                    s_busy <= '1';
                elsif(s_en_vec_barrett(9) = '1' and s_en_vec_barrett(8) = '0') then
                    s_busy <= '0';
                else
                    s_busy <= s_busy;
                end if; 
            end if;
        end if;
    end process;    
    
    -- Reading data
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_bram_ena   <= '0';
                s_bram_wea   <= '0';
                s_bram_addra <= (others => '0');
                s_bram_dia   <= (others => '0');
            else
                if(start = '1') then
                    if(s_bram_addra < s_last_addr) then -- 127/255/383
                        s_bram_ena   <= '1';
                    else
                        s_bram_ena   <= '0';
                    end if;
                    s_bram_wea   <= '0';
                    if(s_bram_ena = '1') then
                        if(s_bram_addra < s_last_addr) then -- 127/255/383
                            s_bram_addra <= std_logic_vector(unsigned(s_bram_addra) + 1);
                        end if;
                    end if;
                    s_bram_dia   <= (others => '0');
                else
                    s_bram_ena   <= '0';
                    s_bram_wea   <= '0';
                    s_bram_addra <= (others => '0');
                    s_bram_dia   <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    -- Enable barrett vector control
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_en_vec_barrett               <= (others => '0');          
            else
                s_en_vec_barrett(0)            <= s_bram_ena;
                s_en_vec_barrett(15 downto 1)   <= s_en_vec_barrett(14 downto 0);
            end if;
        end if;
    end process;   
         
    -- Processing data
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_en_lower_barrett   <= '0';
                s_en_upper_barrett   <= '0';
                s_do_lower_barrett   <= (others => '0');
                s_do_upper_barrett   <= (others => '0');
            else
                if(start = '1') then
                    s_en_lower_barrett   <= s_en_vec_barrett(1);
                    s_en_upper_barrett   <= s_en_vec_barrett(1);
                    s_do_lower_barrett   <= s_bram_doa((DATA_WIDTH/2)-1 downto 0);
                    s_do_upper_barrett   <= s_bram_doa(DATA_WIDTH-1 downto (DATA_WIDTH/2));
                else
                    s_en_lower_barrett   <= '0';
                    s_en_upper_barrett   <= '0';
                    s_do_lower_barrett   <= (others => '0');
                    s_do_upper_barrett   <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    -- Writing data
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_bram_enb   <= '0';
                s_bram_web   <= '0';
                s_bram_addrb <= (others => '0');
                s_bram_dib   <= (others => '0');
            else
                if(start = '1') then
                    s_bram_enb   <= s_en_vec_barrett(7);
                    s_bram_web   <= s_en_vec_barrett(7);
                    if(s_bram_web = '1') then
                        s_bram_addrb <= std_logic_vector(unsigned(s_bram_addrb) + 1);                        
                    end if;                    
                    s_bram_dib   <= s_di_upper_barrett & s_di_lower_barrett;
                else
                    s_bram_enb   <= '0';
                    s_bram_web   <= '0';
                    s_bram_addrb <= (others => '0');
                    s_bram_dib   <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    -- BRAM output signals
    bram_ena        <= s_bram_ena;  
    bram_wea        <= s_bram_wea;  
    bram_addra      <= s_bram_addra;
    bram_dia        <= s_bram_dia;  
    
    bram_enb        <= s_bram_enb;  
    bram_web        <= s_bram_web;  
    bram_addrb      <= s_bram_addrb;
    bram_dib        <= s_bram_dib;  
    
    -- Barrett signals
    do_lower_barrett   <= s_do_lower_barrett;     
    en_lower_barrett   <= s_en_lower_barrett;
    do_upper_barrett   <= s_do_upper_barrett;   
    en_upper_barrett   <= s_en_upper_barrett;
    
    -- Busy signal
    busy            <= s_busy;                         

end arch_imp;
