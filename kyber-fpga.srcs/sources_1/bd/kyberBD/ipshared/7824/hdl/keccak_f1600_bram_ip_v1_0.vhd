library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library xil_defaultlib;
use xil_defaultlib.keccak_global.all;

entity keccak_f1600_bram_ip_v1_0 is
	generic (
        DATA_WIDTH	            : integer	:= 32;
        ADDR_WIDTH	            : integer	:= 11
	);
	port (
	    -- CLOCK AND RESET
        clk	                    :    in std_logic;
        aresetn                 :    in std_logic;
        
        -- MASTER BRAM PORT
        bram0_ena                : out std_logic;                                      
        bram0_wea                : out std_logic;                               
        bram0_addra              : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram0_dia                : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram0_doa                : in std_logic_vector(DATA_WIDTH-1 downto 0);
        
		bram1_ena                : out std_logic;                                      
        bram1_wea                : out std_logic;                               
        bram1_addra              : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram1_dia                : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram1_doa                : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
        -- CONTROL
        start                   : in std_logic;
        busy                    : out std_logic 	
	);
end keccak_f1600_bram_ip_v1_0;

architecture arch_imp of keccak_f1600_bram_ip_v1_0 is

    -- BRAM
    constant ena_vec_len            : integer := 3;
    signal s_bram_ena               : std_logic_vector(ena_vec_len - 1 downto 0);                                      
    signal s_bram_wea               : std_logic;                               
    signal s_bram_addra             : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram_dia               : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram_doa               : std_logic_vector(DATA_WIDTH-1 downto 0); 
    
	-- CONTROL
    signal s_start                  : std_logic;
    signal s_busy                   : std_logic;  
    
    -- KECCAK INSTANCE
    signal round_in                 : k_state;		  
    signal valid_to_core            : std_logic;
    signal round_out                : k_state;		
    signal valid_from_core          : std_logic;
    signal s_done                   : std_logic;
    
    -- KECCAK AUXILIAR
    signal upper_word_in            : std_logic;
    signal upper_word_out           : std_logic;
    signal x_in, x_out              : integer;
    signal y_in, y_out              : integer;
    
    component keccak_f1600_mm_core_fast is
        generic(
        C_S_AXI_DATA_WIDTH	: integer	:= 32
        );
        port ( 
            clk             : in std_logic;
            reset_n         : in std_logic;
            round_in        : in k_state;
            valid_in        : in std_logic;
            round_out       : out k_state;
            valid_out       : out std_logic;        
            start           : in std_logic;
            done            : out std_logic
        );
    end component;
    
begin

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
            else
                s_bram_doa   <= bram0_doa;
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
                elsif(s_done = '1' and s_bram_addra = "00000110001") then
                    s_busy <= '0';
                else
                    s_busy <= s_busy;
                end if; 
            end if;
        end if;
    end process;     
    
    -- BRAM
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_bram_ena   <= (others => '0');
                s_bram_wea   <= '0';
                s_bram_addra <= (others => '0');
                s_bram_dia   <= (others => '0');
                
                upper_word_out <= '0';
                x_out <= 0;
                y_out <= 0;
            else
                if(s_start = '1') then
                    if(valid_from_core = '1') then
                        s_bram_addra <= (others => '0');
                    else
                        if(s_done = '0') then
                            if(s_bram_addra < "00000110001") then -- 50
                                s_bram_ena(0)   <= '1';
                            else
                                s_bram_ena(0)   <= '0';
                            end if;
                            s_bram_wea   <= '0';
                            if(s_bram_ena(0) = '1') then
                                if(s_bram_addra < "00000110001") then -- 50
                                    s_bram_addra <= std_logic_vector(unsigned(s_bram_addra) + 1);
                                end if;
                            end if;
                            s_bram_dia   <= (others => '0');
                        else
                            if(s_bram_addra < "00000110001") then -- 50
                                s_bram_ena(0)   <= '1';
                                s_bram_wea   <= '1';
                            else
                                s_bram_ena(0)   <= '0';
                                s_bram_wea   <= '0';
                            end if;                            
                            if(s_bram_ena(0) = '1') then
                                if(s_bram_addra < "00000110001") then -- 50
                                    s_bram_addra <= std_logic_vector(unsigned(s_bram_addra) + 1);
                                end if;
                            end if;
                            if(upper_word_out = '0') then -- lower part
                                for z in 0 to 31 loop
                                    s_bram_dia(z) <= round_out(y_out)(x_out)(z); -- define here if upper or lower word in position 0
                                end loop;
                                upper_word_out <= '1';                               
                            else -- upper part
                                for z in 0 to 31 loop
                                    s_bram_dia(z) <= round_out(y_out)(x_out)(32 + z);
                                end loop;     
                                upper_word_out <= '0';
                                
                                if(x_out = num_plane - 1) then
                                    x_out <= 0;
                                    if(y_out = num_sheet - 1) then
                                        y_out <= 0;                                
                                    else
                                        y_out <= y_out + 1;
                                    end if;
                                else
                                    x_out <= x_out + 1;
                                end if;                            
                            end if;    
                        end if;    
                    end if; 
                else
                    s_bram_ena(0)   <= '0';
                    s_bram_wea   <= '0';
                    s_bram_addra <= (others => '0');
                    s_bram_dia   <= (others => '0');
                    
                    upper_word_out <= '0';
                    x_out <= 0;
                    y_out <= 0;
                end if;
                s_bram_ena(ena_vec_len - 1 downto 1) <= s_bram_ena(ena_vec_len - 2 downto 0);
            end if;
        end if;
    end process;    
    
    -- Save input data at to_round_in
    process( clk )
    begin
        if(rising_edge( clk )) then
            if ( aresetn = '0' ) then
                upper_word_in <= '0';
                x_in <= 0;
                y_in <= 0;
                valid_to_core <= '0';    
            else
                if(s_start = '0') then
                    upper_word_in <= '0';
                    x_in <= 0;
                    y_in <= 0;
                    valid_to_core <= '0';   
                else     
                    if(s_bram_ena(2) = '1')then
                        if(upper_word_in = '0') then -- lower part
                            for z in 0 to 31 loop
                                round_in(y_in)(x_in)(z) <= s_bram_doa(z);
                            end loop;
                            upper_word_in <= '1';                               
                        else -- upper part
                            for z in 0 to 31 loop
                                round_in(y_in)(x_in)(32 + z) <= s_bram_doa(z);
                            end loop;     
                            upper_word_in <= '0';
                            
                            if(x_in = num_plane - 1) then
                                x_in <= 0;
                                if(y_in = num_sheet - 1) then
                                    y_in <= 0;
                                    if(s_done = '0') then
                                        valid_to_core <= '1'; 
                                    end if;                                   
                                else
                                    y_in <= y_in + 1;
                                end if;
                            else
                                x_in <= x_in + 1;
                            end if;                            
                        end if; 
                    else
                        valid_to_core <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    keccak_f1600_mm_core_fast_inst : keccak_f1600_mm_core_fast
    generic map
    (
        C_S_AXI_DATA_WIDTH    =>   DATA_WIDTH  
    )
    port map
    (
        clk             => clk,
        reset_n         => aresetn,
        round_in        => round_in,
        valid_in        => valid_to_core,        
        round_out       => round_out,
        valid_out       => valid_from_core,        
        start           => s_start,
        done            => s_done
    );
    
    -- BRAM output signals
    bram0_ena                <= s_bram_ena(0);  
    bram0_wea                <= s_bram_wea;  
    bram0_addra              <= s_bram_addra;
    bram0_dia                <= s_bram_dia;  
	
	bram1_ena                <= s_bram_ena(0);  
    bram1_wea                <= s_bram_wea;  
    bram1_addra              <= s_bram_addra;
    bram1_dia                <= s_bram_dia; 
    
    -- Busy signal
    busy                    <= s_busy;

end arch_imp;
