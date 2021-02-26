library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.or_reduce;

entity polyvec_ntt_v1_0 is
	generic (
		DATA_WIDTH	                        : integer	:= 32;
        ADDR_WIDTH	                        : integer	:= 11   
	);
	port (
		-- CLOCK AND RESET
        clk	                                : in std_logic;
        aresetn                             : in std_logic;
        
        -- MASTER BRAM PORT
        bram_ena                            : out std_logic;                                      
        bram_wea                            : out std_logic;                               
        bram_addra                          : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram_dia                            : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram_doa                            : in std_logic_vector(DATA_WIDTH-1 downto 0);
         
        bram_enb                            : out std_logic;                                      
        bram_web                            : out std_logic;                               
        bram_addrb                          : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram_dib                            : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram_dob                            : in std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- SIGNAL TO FQMUL
        valid_to_fqmul0                     : out std_logic;   
        coeff0_to_fqmul0                    : out std_logic_vector(15 downto 0); 
        coeff1_to_fqmul0                    : out std_logic_vector(15 downto 0); 
        valid_to_fqmul1                     : out std_logic;   
        coeff0_to_fqmul1                    : out std_logic_vector(15 downto 0); 
        coeff1_to_fqmul1                    : out std_logic_vector(15 downto 0);
        
        valid_from_fqmul0                   : in std_logic;   
        coeff_from_fqmul0                   : in std_logic_vector(15 downto 0); 
        valid_from_fqmul1                   : in std_logic;   
        coeff_from_fqmul1                   : in std_logic_vector(15 downto 0); 
        
        -- SIGNAL TO BARRETT                
        valid0_to_barrett                   : out std_logic;   
        data0_to_barrett                    : out std_logic_vector(15 downto 0); 
        valid1_to_barrett                   : out std_logic;   
        data1_to_barrett                    : out std_logic_vector(15 downto 0);
        valid0_from_barrett                 : in std_logic;   
        data0_from_barrett                  : in std_logic_vector(15 downto 0);
        valid1_from_barrett                 : in std_logic;   
        data1_from_barrett                  : in std_logic_vector(15 downto 0); 
        
        -- CONTROL
        en_dsm                              : out std_logic;
        kyber_k                             : in std_logic_vector(2 downto 0);
        start                               : in std_logic;
        busy                                : out std_logic 
	);
end polyvec_ntt_v1_0;

architecture arch_imp of polyvec_ntt_v1_0 is

	signal s_bram_ena                       : std_logic;                                      
    signal s_bram_wea                       : std_logic;                               
    signal s_bram_addra                     : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram_dia                       : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram_doa                       : std_logic_vector(DATA_WIDTH-1 downto 0); 
    
    signal s_bram_enb                       : std_logic;                                      
    signal s_bram_web                       : std_logic;                               
    signal s_bram_addrb                     : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram_dib                       : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram_dob                       : std_logic_vector(DATA_WIDTH-1 downto 0); 
    
    -- SIGNAL TO FQMUL
    signal s_valid_to_fqmul0                : std_logic;
    signal s_valid_to_fqmul1                : std_logic;
    signal s_coeff0_to_fqmul0               : std_logic_vector(15 downto 0); 
    signal s_coeff1_to_fqmul0               : std_logic_vector(15 downto 0); 
    signal s_coeff0_to_fqmul1               : std_logic_vector(15 downto 0); 
    signal s_coeff1_to_fqmul1               : std_logic_vector(15 downto 0);     
    
    -- SIGNAL TO BARRETT
    signal s_valid0_to_barrett              : std_logic;
    signal s_valid1_to_barrett              : std_logic;
    signal s_data0_to_barrett               : std_logic_vector(15 downto 0); 
    signal s_data1_to_barrett               : std_logic_vector(15 downto 0);
    
    -- SIGNAL FROM BARRETT
    signal s_valid0_from_barrett            : std_logic;
    signal s_valid1_from_barrett            : std_logic;
    signal s_data0_from_barrett             : std_logic_vector(15 downto 0); 
    signal s_data1_from_barrett             : std_logic_vector(15 downto 0);

    -- CONTROL
    signal s_start                          : std_logic;
    signal s_busy                           : std_logic;  
    signal s_kyber_k                        : std_logic_vector(2 downto 0);
    constant kyber_k_max                    : integer := 14;
    type s_kyber_k_vec_type is array (kyber_k_max - 1 downto 0) of unsigned(2 downto 0);
    signal s_kyber_k_it                     : s_kyber_k_vec_type;
        
    -- ZETA
    type zeta_type is array ((128)-1 downto 0) of std_logic_vector(15 downto 0);
    signal zetas                            : zeta_type := (0 => x"fbec", 1 => x"fd0a", 2 => x"fe99", 3 => x"fa13", 4 => x"05d5", 5 => x"058e", 6 => x"011f", 7 => x"00ca", 8 => x"ff55", 9 => x"026e", 10 => x"0629", 11 => x"00b6", 12 => x"03c2", 13 => x"fb4e", 14 => x"fa3e", 15 => x"05bc", 16 => x"023d", 17 => x"fad3", 18 => x"0108", 19 => x"017f", 20 => x"fcc3", 21 => x"05b2", 22 => x"f9be", 23 => x"ff7e", 24 => x"fd57", 25 => x"03f9", 26 => x"02dc", 27 => x"0260", 28 => x"f9fa", 29 => x"019b", 30 => x"ff33", 31 => x"f9dd", 32 => x"04c7", 33 => x"028c", 34 => x"fdd8", 35 => x"03f7", 36 => x"faf3", 37 => x"05d3", 38 => x"fee6", 39 => x"f9f8", 40 => x"0204", 41 => x"fff8", 42 => x"fec0", 43 => x"fd66", 44 => x"f9ae", 45 => x"fb76", 46 => x"007e", 47 => x"05bd", 48 => x"fcab", 49 => x"ffa6", 50 => x"fef1", 51 => x"033e", 52 => x"006b", 53 => x"fa73", 54 => x"ff09", 55 => x"fc49", 56 => x"fe72", 57 => x"03c1", 58 => x"fa1c", 59 => x"fd2b", 60 => x"01c0", 61 => x"fbd7", 62 => x"02a5", 63 => x"fb05", 64 => x"fbb1", 65 => x"01ae", 66 => x"022b", 67 => x"034b", 68 => x"fb1d", 69 => x"0367", 70 => x"060e", 71 => x"0069", 72 => x"01a6", 73 => x"024b", 74 => x"00b1", 75 => x"ff15", 76 => x"fedd", 77 => x"fe34", 78 => x"0626", 79 => x"0675", 80 => x"ff0a", 81 => x"030a", 82 => x"0487", 83 => x"ff6d", 84 => x"fcf7", 85 => x"05cb", 86 => x"fda6", 87 => x"045f", 88 => x"f9ca", 89 => x"0284", 90 => x"fc98", 91 => x"015d", 92 => x"01a2", 93 => x"0149", 94 => x"ff64", 95 => x"ffb5", 96 => x"0331", 97 => x"0449", 98 => x"025b", 99 => x"0262", 100 => x"052a", 101 => x"fafb", 102 => x"fa47", 103 => x"0180", 104 => x"fb41", 105 => x"ff78", 106 => x"04c2", 107 => x"fac9", 108 => x"fc96", 109 => x"00dc", 110 => x"fb5d", 111 => x"f985", 112 => x"fb5f", 113 => x"fa06", 114 => x"fb02", 115 => x"031a", 116 => x"fa1a", 117 => x"fcaa", 118 => x"fc9a", 119 => x"01de", 120 => x"ff94", 121 => x"fecc", 122 => x"03e4", 123 => x"03df", 124 => x"03be", 125 => x"fa4c", 126 => x"05f2", 127 => x"065c");
        
    -- INDEXERS NTT
    constant index_ntt_max                  : integer := 8;
    type index_ntt_type is array (index_ntt_max downto 0) of unsigned(6 downto 0);
    signal s_it                             : unsigned(5 downto 0);
    signal s_length                         : index_ntt_type;  
    signal s_length_count                   : unsigned(6 downto 0);  
    signal s_start_ntt                      : unsigned(6 downto 0);     
    signal s_j                              : index_ntt_type;     
    signal s_idx_zeta                       : index_ntt_type;        

    -- LOCAL
    constant en_vec_max                     : integer := 22;
    signal s_en_vec                         : std_logic_vector(en_vec_max downto 0);
    signal s_last_addra                     : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal s_ntt_iteration_valid            : std_logic;
    constant register_len                   : integer  := 4;
    type mem_vec is array (register_len - 1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_bram_doa_vec                   : mem_vec;
    signal s_bram_dob_vec                   : mem_vec;
    constant barrett_len                    : integer := 4;
    signal s_en_barrett_vec                 : std_logic_vector(barrett_len - 1 downto 0);
    
begin

    s_last_addra <=  "00011111111" when kyber_k = "010" else -- 255
                     "00101111111" when kyber_k = "011" else -- 383
                     "00111111111" when kyber_k = "100" else -- 511
                     "00011111111";
                     
     -- Register BRAM signal
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_bram_doa                                  <= (others => '0');
                s_bram_dob                                  <= (others => '0'); 
            else
                s_bram_doa                                  <= bram_doa;
                s_bram_dob                                  <= bram_dob;  
                s_bram_doa_vec(0)                           <= s_bram_doa;
                s_bram_doa_vec(register_len - 1 downto 1)   <= s_bram_doa_vec(register_len - 2 downto 0);
                s_bram_dob_vec(0)                           <= s_bram_dob;
                s_bram_dob_vec(register_len - 1 downto 1)   <= s_bram_dob_vec(register_len - 2 downto 0);
            end if;
        end if;
    end process;  
    
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
    
    -- Register kyber_k
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_kyber_k   <= (others => '0');
            else
                s_kyber_k   <= kyber_k;
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
                elsif(s_bram_addrb = s_last_addra and s_kyber_k_it(13) = unsigned(s_kyber_k)) then
                    s_busy <= '0';
                else
                    s_busy <= s_busy;
                end if; 
            end if;
        end if;
    end process; 
    
    --NTT valid
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_ntt_iteration_valid   <= '0';
            else
                if(start = '1' and s_start = '0') then
                    s_ntt_iteration_valid <= '1';
                elsif(start = '1') then
                    if(std_logic_vector(s_kyber_k_it(0)) < s_kyber_k) then
                        s_ntt_iteration_valid <= s_ntt_iteration_valid xor '1';
                    else
                        s_ntt_iteration_valid <= '0';                    
                    end if;
                else
                    s_ntt_iteration_valid <= '0';
                end if;
            end if;
        end if;
    end process;
    
    -- NTT indexers logic
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_kyber_k_it            <= (others => (others => '0'));
                s_it                    <= (others => '0');
                s_length                <= (others => (others => '0'));
                s_length_count          <= (others => '0');
--                s_start_ntt             <= (others => '0');
                s_j                     <= (others => (others => '0'));
                s_idx_zeta              <= (others => (others => '0'));  
            else  
                if(s_start = '1') then
                    if(s_kyber_k_it(0) < unsigned(s_kyber_k)) then
                        if(s_ntt_iteration_valid = '1') then
                            s_it <= s_it + 1;
                            if(s_it = 63) then
                                if(s_length(0) = 1) then
                                    s_kyber_k_it(0) <= s_kyber_k_it(0) + 1;
                                    s_length(0) <= "1000000"; -- 64
    --                                s_start_ntt <= (others => '0');
                                    s_length_count <= (others => '0');
                                    s_idx_zeta(0) <= (others => '0');  
                                else 
                                    s_length(0) <= '0' & s_length(0)(6 downto 1);
                                    s_length_count  <= (others => '0');
                                    s_idx_zeta(0) <= s_idx_zeta(0) + 1;
    --                                s_start_ntt <= (others => '0');
                                end if;                        
                                s_j(0) <= (others => '0'); 
                            else                        
                                if(s_length_count = s_length(0) - 1) then
    --                                s_start_ntt <= s_start_ntt + s_length;
                                    s_idx_zeta(0) <= s_idx_zeta(0) + 1;
                                    s_length_count <= (others => '0');
                                    s_j(0) <= s_j(0) + s_length(0) + 1;
                                else
                                    s_length_count <= s_length_count + 1;
                                    s_j(0) <= s_j(0) + 1;
                                end if;
                            end if;     
                        end if;
                    else
                        s_j(0) <= (others => '0'); 
                    end if;
                else
                    s_kyber_k_it(0) <= (others => '0');
                    s_it            <= (others => '0');
                    s_length(0)     <= "1000000"; -- 64
                    s_length_count  <= (others => '0');
--                    s_start_ntt     <= (others => '0');
                    s_j(0)          <= (others => '0');
                    s_idx_zeta(0)   <= (others => '0'); 
                end if;
                
                s_length(index_ntt_max downto 1) <= s_length(index_ntt_max - 1 downto 0);
                s_j(index_ntt_max downto 1) <= s_j(index_ntt_max - 1 downto 0);
                s_idx_zeta(index_ntt_max downto 1) <= s_idx_zeta(index_ntt_max - 1 downto 0);
                s_kyber_k_it(kyber_k_max - 1 downto 1) <= s_kyber_k_it(kyber_k_max - 2 downto 0);
            end if;
        end if;
    end process;
    
    -- BRAM data
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then                 
                s_bram_ena   <= '0';
                s_bram_wea   <= '0';
                s_bram_addra <= (others => '0');
                s_bram_dia   <= (others => '0');
                
                s_bram_enb   <= '0';
                s_bram_web   <= '1';
--                s_bram_addrb <= std_logic_vector(unsigned(s_last_addra) + 1);
                s_bram_dib   <= (others => '0');
            else
            
                -- PORT A
                if(s_start = '1') then                       
                    s_bram_ena   <= s_start;   
                    if(s_kyber_k_it(9) < unsigned(s_kyber_k)) then
                        if(s_en_vec(6) = '1') then
                            s_bram_wea <= '1';  
                            s_bram_addra <= "0" & std_logic_vector(s_kyber_k_it(8)) & std_logic_vector(s_j(7) + s_length(7));
                            s_bram_dia   <= std_logic_vector(unsigned(s_bram_dob_vec(3)(31 downto 16)) - unsigned(coeff_from_fqmul1))
                                          & std_logic_vector(unsigned(s_bram_dob_vec(3)(15 downto 0)) - unsigned(coeff_from_fqmul0));
                        else
                            s_bram_wea <= '0';                                    
                            s_bram_addra <= "0" & std_logic_vector(s_kyber_k_it(1)) & std_logic_vector(s_j(0) + s_length(0));
                            s_bram_dia   <= (others => '0');
                        end if;     
                    elsif((s_kyber_k_it(9) = unsigned(s_kyber_k)) and (s_kyber_k_it(10) = unsigned(s_kyber_k) - 1)) then   
                        s_bram_wea   <= '0';
                        s_bram_addra <= (others => '0');
                        s_bram_dia   <= (others => '0');
                    elsif((s_kyber_k_it(11) = unsigned(s_kyber_k))) then  
                        if(s_bram_addra < s_last_addra) then
                            s_bram_addra <= std_logic_vector(unsigned(s_bram_addra) + 1);
                        end if;                    
                    end if;
                else
                    s_bram_ena   <= '0';
                    s_bram_wea   <= '0';
                    s_bram_addra <= (others => '0');
                    s_bram_dia   <= (others => '0');
                end if;
                
                -- PORT B
                if(s_start = '1') then                       
                    s_bram_enb   <= s_start; 
                    if(s_kyber_k_it(9) < unsigned(s_kyber_k)) then
                        if(s_en_vec(6) = '1') then
                            s_bram_web <= '1';  
                            s_bram_addrb <= "0" & std_logic_vector(s_kyber_k_it(8)) & std_logic_vector(s_j(7));
                            s_bram_dib   <= std_logic_vector(unsigned(s_bram_dob_vec(3)(31 downto 16)) + unsigned(coeff_from_fqmul1))
                                          & std_logic_vector(unsigned(s_bram_dob_vec(3)(15 downto 0)) + unsigned(coeff_from_fqmul0));
                        else
                            s_bram_web   <= '0';         
                            s_bram_addrb <= "0" & std_logic_vector(s_kyber_k_it(1)) & std_logic_vector(s_j(0));               
                            s_bram_dib   <= (others => '0');
                        end if;
                    elsif((s_kyber_k_it(9) = unsigned(s_kyber_k)) and (s_kyber_k_it(10) = unsigned(s_kyber_k) - 1)) then
                        s_bram_web   <= '0';
                        s_bram_addrb <= (others => '0');
                        s_bram_dib   <= (others => '0');
                    elsif((s_kyber_k_it(11) = unsigned(s_kyber_k))) then  
                        s_bram_web <= s_valid0_from_barrett;
                        s_bram_dib   <= s_data1_from_barrett & s_data0_from_barrett;
                        if(s_bram_web = '1') then
                            s_bram_addrb <= std_logic_vector(unsigned(s_bram_addrb) + 1);
                        end if;                    
                    end if;
                else
                    s_bram_enb   <= '0';
                    s_bram_web   <= '0';
                    s_bram_addrb <= std_logic_vector(unsigned(s_last_addra) + 1);
                    s_bram_dib   <= (others => '0');
                end if;                
            end if;
        end if;
    end process;
    
    -- Enable vector control
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_en_vec                            <= (others => '0');        
            else
                if(s_start = '1') then  
                    s_en_vec(0)                     <= s_ntt_iteration_valid;
                    s_en_vec(en_vec_max downto 1)   <= s_en_vec(en_vec_max - 1 downto 0);                    
                else
                    s_en_vec(0)                     <= '0';
                end if;
            end if;
        end if;
    end process; 
    
    -- Data direction to fqmul
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then  
                s_valid_to_fqmul0 <= '0';
                s_valid_to_fqmul1 <= '0';                
                s_coeff0_to_fqmul0 <= (others => '0');
                s_coeff1_to_fqmul0 <= (others => '0');
            else
                if(s_start = '1') then
                    -- valids
                    s_valid_to_fqmul0 <= s_en_vec(2);
                    s_valid_to_fqmul1 <= s_en_vec(2);                    
                    -- fqmul0
                    s_coeff0_to_fqmul0 <= zetas(to_integer(s_idx_zeta(3) + 1));
                    s_coeff1_to_fqmul0 <= s_bram_doa(15 downto 0);
                    -- fqmul1
                    s_coeff0_to_fqmul1 <= zetas(to_integer(s_idx_zeta(3) + 1));
                    s_coeff1_to_fqmul1 <= s_bram_doa(31 downto 16);
                else
                    s_valid_to_fqmul0  <= '0';
                    s_valid_to_fqmul1  <= '0';
                    s_coeff0_to_fqmul0 <= (others => '0');
                    s_coeff1_to_fqmul0 <= (others => '0');
                    s_coeff0_to_fqmul1 <= (others => '0');
                    s_coeff1_to_fqmul1 <= (others => '0');
                end if;
            end if;
        end if;
    end process; 
    
    -- To barrett
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then  
                s_en_barrett_vec    <= (others => '0');
                s_valid0_to_barrett <= '0';
                s_valid1_to_barrett <= '0'; 
                s_data0_to_barrett  <= (others => '0');
                s_data1_to_barrett  <= (others => '0');
            else
--                if((s_kyber_k_it(9) = unsigned(s_kyber_k)) and (s_kyber_k_it(10) = unsigned(s_kyber_k) - 1)) then   
                if(s_kyber_k_it(9) = unsigned(s_kyber_k)) then
                    if(s_bram_addra < s_last_addra) then
                        s_en_barrett_vec(0) <= '1';
                    else
                        s_en_barrett_vec(0) <= '0';
                    end if;
                else
                    s_en_barrett_vec(0) <= '0';
                end if;
                s_en_barrett_vec(barrett_len - 1 downto 1) <= s_en_barrett_vec(barrett_len - 2 downto 0);
                s_valid0_to_barrett <= s_en_barrett_vec(2);
                s_valid1_to_barrett <= s_en_barrett_vec(2);
                s_data0_to_barrett <= s_bram_doa(15 downto 0);
                s_data1_to_barrett <= s_bram_doa(31 downto 16);
            end if;
        end if;
    end process;

    -- From barrett
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_valid0_from_barrett <= '0';
                s_valid1_from_barrett <= '0';
                s_data0_from_barrett  <= (others => '0');
                s_data1_from_barrett  <= (others => '0');
            else
                s_valid0_from_barrett <= valid0_from_barrett;
                s_valid1_from_barrett <= valid1_from_barrett; 
                s_data0_from_barrett  <= data0_from_barrett;
                s_data1_from_barrett  <= data1_from_barrett; 
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
    
    valid_to_fqmul0      <= s_valid_to_fqmul0;
    valid_to_fqmul1      <= s_valid_to_fqmul1;
    coeff0_to_fqmul0     <= s_coeff0_to_fqmul0;   
    coeff1_to_fqmul0     <= s_coeff1_to_fqmul0;
    coeff0_to_fqmul1     <= s_coeff0_to_fqmul1;
    coeff1_to_fqmul1     <= s_coeff1_to_fqmul1;
     
    valid0_to_barrett    <= s_valid0_to_barrett;
    valid1_to_barrett    <= s_valid1_to_barrett;
    
    data0_to_barrett     <= s_data0_to_barrett;
    data1_to_barrett     <= s_data1_to_barrett;
     
    -- Busy signal
    busy            <= s_busy; 
    en_dsm          <= s_busy; 
     
end arch_imp;
