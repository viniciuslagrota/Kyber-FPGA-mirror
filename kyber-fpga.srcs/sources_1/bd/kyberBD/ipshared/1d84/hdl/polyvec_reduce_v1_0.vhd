library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity polyvec_reduce_v1_0 is
	generic (
        DATA_WIDTH	             : integer	:= 32;
        ADDR_WIDTH	             : integer	:= 11
	);
	port (		
		-- CLOCK AND RESET
        clk	                    : in std_logic;
        aresetn                 : in std_logic;
        
        -- MASTER BRAM PORT
        bram0_ena                : out std_logic;                                      
        bram0_wea                : out std_logic;                               
        bram0_addra              : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram0_dia                : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram0_doa                : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		bram0_enb                : out std_logic;                                      
        bram0_web                : out std_logic;                               
        bram0_addrb              : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram0_dib                : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram0_dob                : in std_logic_vector(DATA_WIDTH-1 downto 0);
       
        bram1_ena                : out std_logic;                                      
        bram1_wea                : out std_logic;                               
        bram1_addra              : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram1_dia                : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram1_doa                : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		bram1_enb                : out std_logic;                                      
        bram1_web                : out std_logic;                               
        bram1_addrb              : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram1_dib                : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram1_dob                : in std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- BARRETT
        en_lower_barrett0        : out std_logic;
        valid_out_lower_barrett0 : out std_logic;
        do_lower_barrett0        : out std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        valid_in_lower_barrett0  : in std_logic;
        di_lower_barrett0        : in std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        
        en_upper_barrett0        : out std_logic;        
        valid_out_upper_barrett0 : out std_logic;
        do_upper_barrett0        : out std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        valid_in_upper_barrett0  : in std_logic;
        di_upper_barrett0        : in std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
		
		en_lower_barrett1        : out std_logic;
        valid_out_lower_barrett1 : out std_logic;
        do_lower_barrett1        : out std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        valid_in_lower_barrett1  : in std_logic;
        di_lower_barrett1        : in std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        
        en_upper_barrett1        : out std_logic;        
        valid_out_upper_barrett1 : out std_logic;
        do_upper_barrett1        : out std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        valid_in_upper_barrett1  : in std_logic;
        di_upper_barrett1        : in std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
        
        -- CONTROL
        kyber_k                 : in std_logic_vector(2 downto 0);
        start                   : in std_logic;
        busy                    : out std_logic 	
	);
end polyvec_reduce_v1_0;

architecture arch_imp of polyvec_reduce_v1_0 is

    -- BRAM
    signal s_bram0_ena                   : std_logic;                                      
    signal s_bram0_wea                   : std_logic;                               
    signal s_bram0_addra                 : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram0_dia                   : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram0_doa                   : std_logic_vector(DATA_WIDTH-1 downto 0); 
	
	signal s_bram0_enb                   : std_logic;                                      
    signal s_bram0_web                   : std_logic;                               
    signal s_bram0_addrb                 : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram0_dib                   : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram0_dob                   : std_logic_vector(DATA_WIDTH-1 downto 0); 

    signal s_bram1_ena                   : std_logic;                                      
    signal s_bram1_wea                   : std_logic;                               
    signal s_bram1_addra                 : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram1_dia                   : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram1_doa                   : std_logic_vector(DATA_WIDTH-1 downto 0); 
	
	signal s_bram1_enb                   : std_logic;                                      
    signal s_bram1_web                   : std_logic;                               
    signal s_bram1_addrb                 : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram1_dib                   : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram1_dob                   : std_logic_vector(DATA_WIDTH-1 downto 0); 
    
    -- BARRETT
    signal s_en_lower_barrett0           : std_logic;
    signal s_valid_out_lower_barrett0    : std_logic;
    signal s_do_lower_barrett0           : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    signal s_valid_in_lower_barrett0     : std_logic;
    signal s_di_lower_barrett0           : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    
    signal s_en_upper_barrett0           : std_logic;
    signal s_valid_out_upper_barrett0    : std_logic;
    signal s_do_upper_barrett0           : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    signal s_valid_in_upper_barrett0     : std_logic;
    signal s_di_upper_barrett0           : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
	
	signal s_en_lower_barrett1           : std_logic;
    signal s_valid_out_lower_barrett1    : std_logic;
    signal s_do_lower_barrett1           : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    signal s_valid_in_lower_barrett1     : std_logic;
    signal s_di_lower_barrett1           : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    
    signal s_en_upper_barrett1           : std_logic;
    signal s_valid_out_upper_barrett1    : std_logic;
    signal s_do_upper_barrett1           : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    signal s_valid_in_upper_barrett1     : std_logic;
    signal s_di_upper_barrett1           : std_logic_vector((DATA_WIDTH/2)-1 downto 0); 
    
    -- CONTROL
    signal s_start                      : std_logic;
    signal s_busy                       : std_logic;  
    
    -- LOCAL
    signal s_en_vec_barrett             : std_logic_vector(1 downto 0);
    signal s_valid_vec                  : std_logic_vector(1 downto 0); 
    signal s_last_addra                 : std_logic_vector(ADDR_WIDTH-1 downto 0);
	signal s_start_addrb				: std_logic_vector(ADDR_WIDTH-1 downto 0);
	signal s_last_addrb                 : std_logic_vector(ADDR_WIDTH-1 downto 0);

begin

	-- Half of the polynom is covered with port A and the second half by port B.
    
    s_last_addra <= "00001111111" when kyber_k = "010" else -- 127
                    "00010111111" when kyber_k = "011" else -- 191
                    "00011111111" when kyber_k = "100" else -- 255
                    "00011111111";
					
	s_start_addrb <= "00010000000" when kyber_k = "010" else -- 128
                    "00011000000" when kyber_k = "011" else -- 192
                    "00100000000" when kyber_k = "100" else -- 256
                    "00011111111";
	
	s_last_addrb <= "00011111111" when kyber_k = "010" else -- 255
                    "00101111111" when kyber_k = "011" else -- 383
                    "00111111111" when kyber_k = "100" else -- 511
                    "00011111111";
                    
    s_di_lower_barrett0          <= di_lower_barrett0;
    s_di_upper_barrett0          <= di_upper_barrett0;    
    s_valid_in_lower_barrett0    <= valid_in_lower_barrett0;
    s_valid_in_upper_barrett0    <= valid_in_upper_barrett0;
	
	s_di_lower_barrett1          <= di_lower_barrett1;
    s_di_upper_barrett1          <= di_upper_barrett1;    
    s_valid_in_lower_barrett1    <= valid_in_lower_barrett1;
    s_valid_in_upper_barrett1    <= valid_in_upper_barrett1;
         
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
                s_bram0_doa   <= (others => '0');
				s_bram0_dob   <= (others => '0');
                s_bram1_doa   <= (others => '0');   
				s_bram1_dob   <= (others => '0');				
            else
                s_bram0_doa   <= bram0_doa;
                s_bram0_dob   <= bram0_dob;
				s_bram1_doa   <= bram1_doa;
                s_bram1_dob   <= bram1_dob;
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
                elsif(s_valid_vec(1) = '1' and s_valid_vec(0) = '0') then
                    s_busy <= '0';
                else
                    s_busy <= s_busy;
                end if; 
            end if;
        end if;
    end process;    
    
    -- Reading data BRAM 0 PORT A
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_bram0_ena   <= '0';
                s_bram0_wea   <= '0';
                s_bram0_addra <= (others => '0');
                s_bram0_dia   <= (others => '0');
            else
                if(start = '1') then
                    if(s_bram0_addra < s_last_addra) then -- 127/191/255
                        s_bram0_ena   <= '1';
                    else
                        s_bram0_ena   <= '0';
                    end if;
                    s_bram0_wea   <= '0';
                    if(s_bram0_ena = '1') then
                        if(s_bram0_addra < s_last_addra) then -- 127/191/255
                            s_bram0_addra <= std_logic_vector(unsigned(s_bram0_addra) + 1);
                        end if;
                    end if;
                    s_bram0_dia   <= (others => '0');
                else
                    s_bram0_ena   <= '0';
                    s_bram0_wea   <= '0';
                    s_bram0_addra <= (others => '0');
                    s_bram0_dia   <= (others => '0');
                end if;
            end if;
        end if;
    end process;
	
	-- Reading data BRAM 0 PORT B
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_bram0_enb   <= '0';
                s_bram0_web   <= '0';
                s_bram0_addrb <= s_start_addrb;
                s_bram0_dib   <= (others => '0');
            else
                if(start = '1') then
                    if(s_bram0_addrb < s_last_addrb) then -- 255/383/511
                        s_bram0_enb   <= '1';
                    else
                        s_bram0_enb   <= '0';
                    end if;
                    s_bram0_web   <= '0';
                    if(s_bram0_enb = '1') then
                        if(s_bram0_addrb < s_last_addrb) then -- 255/383/511
                            s_bram0_addrb <= std_logic_vector(unsigned(s_bram0_addrb) + 1);
                        end if;
                    end if;
                    s_bram0_dib   <= (others => '0');
                else
                    s_bram0_enb   <= '0';
                    s_bram0_web   <= '0';
                    s_bram0_addrb <= s_start_addrb;
                    s_bram0_dib   <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    -- Enable barrett vector control
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_en_vec_barrett                <= (others => '0');          
                s_valid_vec                     <= (others => '0');     
            else
                s_en_vec_barrett(0)             <= s_bram0_ena;
                s_en_vec_barrett(1)             <= s_en_vec_barrett(0);
                
                s_valid_vec(0)                  <= s_valid_in_lower_barrett0; -- or s_valid_in_upper_barrett0
                s_valid_vec(1)                  <= s_valid_vec(0);
            end if;
        end if;
    end process;   
         
    -- Processing data
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_en_lower_barrett0   <= '0';
                s_en_upper_barrett0   <= '0';
                s_do_lower_barrett0   <= (others => '0');
                s_do_upper_barrett0   <= (others => '0');
            else
                if(start = '1') then
                    s_en_lower_barrett0          <= s_busy;
                    s_en_upper_barrett0          <= s_busy;
                    s_valid_out_lower_barrett0   <= s_en_vec_barrett(1);
                    s_valid_out_upper_barrett0   <= s_en_vec_barrett(1);
                    s_do_lower_barrett0          <= s_bram0_doa((DATA_WIDTH/2)-1 downto 0);
                    s_do_upper_barrett0          <= s_bram0_doa(DATA_WIDTH-1 downto (DATA_WIDTH/2));
                else
                    s_en_lower_barrett0   <= '0';
                    s_en_upper_barrett0   <= '0';
                    s_do_lower_barrett0   <= (others => '0');
                    s_do_upper_barrett0   <= (others => '0');
                end if;
            end if;
        end if;
    end process;
	
	process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_en_lower_barrett1   <= '0';
                s_en_upper_barrett1   <= '0';
                s_do_lower_barrett1   <= (others => '0');
                s_do_upper_barrett1   <= (others => '0');
            else
                if(start = '1') then
                    s_en_lower_barrett1          <= s_busy;
                    s_en_upper_barrett1          <= s_busy;
                    s_valid_out_lower_barrett1   <= s_en_vec_barrett(1);
                    s_valid_out_upper_barrett1   <= s_en_vec_barrett(1);
                    s_do_lower_barrett1          <= s_bram0_dob((DATA_WIDTH/2)-1 downto 0);
                    s_do_upper_barrett1          <= s_bram0_dob(DATA_WIDTH-1 downto (DATA_WIDTH/2));
                else
                    s_en_lower_barrett1   <= '0';
                    s_en_upper_barrett1   <= '0';
                    s_do_lower_barrett1   <= (others => '0');
                    s_do_upper_barrett1   <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    -- Writing data BRAM1 PORT A
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_bram1_ena   <= '0';
                s_bram1_wea   <= '0';
                s_bram1_addra <= (others => '0');
                s_bram1_dia   <= (others => '0');
            else
                if(start = '1') then
--                    s_bram1_ena   <= s_en_vec_barrett(7);
--                    s_bram1_wea   <= s_en_vec_barrett(7);
                    s_bram1_ena   <= s_valid_in_lower_barrett0;
                    s_bram1_wea   <= s_valid_in_lower_barrett0;
                    if(s_bram1_wea = '1') then
                        s_bram1_addra <= std_logic_vector(unsigned(s_bram1_addra) + 1);                        
                    end if;                    
                    s_bram1_dia   <= s_di_upper_barrett0 & s_di_lower_barrett0;
                else
                    s_bram1_ena   <= '0';
                    s_bram1_wea   <= '0';
                    s_bram1_addra <= (others => '0');
                    s_bram1_dia   <= (others => '0');
                end if;
            end if;
        end if;
    end process;
	
	-- Writing data BRAM1 PORT B
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_bram1_enb   <= '0';
                s_bram1_web   <= '0';
                s_bram1_addrb <= s_start_addrb;
                s_bram1_dib   <= (others => '0');
            else
                if(start = '1') then
--                    s_bram1_enb   <= s_en_vec_barrett(7);
--                    s_bram1_web   <= s_en_vec_barrett(7);
                    s_bram1_enb   <= s_valid_in_lower_barrett1;
                    s_bram1_web   <= s_valid_in_lower_barrett1;
                    if(s_bram1_web = '1') then
                        s_bram1_addrb <= std_logic_vector(unsigned(s_bram1_addrb) + 1);                        
                    end if;                    
                    s_bram1_dib   <= s_di_upper_barrett1 & s_di_lower_barrett1;
                else
                    s_bram1_enb   <= '0';
                    s_bram1_web   <= '0';
                    s_bram1_addrb <= s_start_addrb;
                    s_bram1_dib   <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    -- BRAM output signals
    bram0_ena        <= s_bram0_ena;  
    bram0_wea        <= s_bram0_wea;  
    bram0_addra      <= s_bram0_addra;
    bram0_dia        <= s_bram0_dia;  
	
	bram0_enb        <= s_bram0_enb;  
    bram0_web        <= s_bram0_web;  
    bram0_addrb      <= s_bram0_addrb;
    bram0_dib        <= s_bram0_dib; 
    
    bram1_ena        <= s_bram1_ena;  
    bram1_wea        <= s_bram1_wea;  
    bram1_addra      <= s_bram1_addra;
    bram1_dia        <= s_bram1_dia; 

	bram1_enb        <= s_bram1_enb;  
    bram1_web        <= s_bram1_web;  
    bram1_addrb      <= s_bram1_addrb;
    bram1_dib        <= s_bram1_dib;	
    
    -- Barrett signals
    en_lower_barrett0        <= s_en_lower_barrett0;
    valid_out_lower_barrett0 <= s_valid_out_lower_barrett0;
    do_lower_barrett0        <= s_do_lower_barrett0;     
    en_upper_barrett0        <= s_en_upper_barrett0;
    valid_out_upper_barrett0 <= s_valid_out_upper_barrett0;
    do_upper_barrett0        <= s_do_upper_barrett0;   
	
	en_lower_barrett1        <= s_en_lower_barrett1;
    valid_out_lower_barrett1 <= s_valid_out_lower_barrett1;
    do_lower_barrett1        <= s_do_lower_barrett1;     
    en_upper_barrett1        <= s_en_upper_barrett1;
    valid_out_upper_barrett1 <= s_valid_out_upper_barrett1;
    do_upper_barrett1        <= s_do_upper_barrett1;       
    
    -- Busy signal
    busy            <= s_busy;                         

end arch_imp;
