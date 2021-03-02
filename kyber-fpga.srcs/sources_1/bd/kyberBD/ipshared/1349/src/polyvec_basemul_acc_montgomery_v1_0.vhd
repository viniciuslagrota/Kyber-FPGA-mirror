library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.or_reduce;

-- IMPORTANT: This block needs a delay of 1 pulse for each coeffX_to_fqmulX signal, valid_to_fqmulX, validX_to_barrett, and dataX_to_barrett.
--            It can be an outside double_signal_multiplexer or an internal delay (commente at the end).

entity polyvec_basemul_acc_montgomery_v1_0 is
	generic (
        DATA_WIDTH	         : integer	:= 32;
        ADDR_WIDTH	         : integer	:= 11   
	);
	port (
	   -- CLOCK AND RESET
        clk	                : in std_logic;
        aresetn             : in std_logic;
        
        -- MASTER BRAM PORT
        bram_read_ena       : out std_logic;                                      
        bram_read_wea       : out std_logic;                               
        bram_read_addra     : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram_read_dia       : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram_read_doa       : in std_logic_vector(DATA_WIDTH-1 downto 0);
          
        bram_read_enb       : out std_logic;                                      
        bram_read_web       : out std_logic;                               
        bram_read_addrb     : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram_read_dib       : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram_read_dob       : in std_logic_vector(DATA_WIDTH-1 downto 0);
        
        bram_write_ena      : out std_logic;                                      
        bram_write_wea      : out std_logic;                               
        bram_write_addra    : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram_write_dia      : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram_write_doa      : in std_logic_vector(DATA_WIDTH-1 downto 0);
        
        bram_write_enb      : out std_logic;                                      
        bram_write_web      : out std_logic;                               
        bram_write_addrb    : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        bram_write_dib      : out std_logic_vector(DATA_WIDTH-1 downto 0); 
        bram_write_dob      : in std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- SIGNAL TO FQMUL
        valid_to_fqmul0     : out std_logic;   
        coeff0_to_fqmul0    : out std_logic_vector(15 downto 0); 
        coeff1_to_fqmul0    : out std_logic_vector(15 downto 0); 
        valid_to_fqmul1     : out std_logic;   
        coeff0_to_fqmul1    : out std_logic_vector(15 downto 0); 
        coeff1_to_fqmul1    : out std_logic_vector(15 downto 0);
        valid_to_fqmul2     : out std_logic;   
        coeff0_to_fqmul2    : out std_logic_vector(15 downto 0); 
        coeff1_to_fqmul2    : out std_logic_vector(15 downto 0); 
        valid_to_fqmul3     : out std_logic;   
        coeff0_to_fqmul3    : out std_logic_vector(15 downto 0); 
        coeff1_to_fqmul3    : out std_logic_vector(15 downto 0); 
        valid_to_fqmul4     : out std_logic;   
        coeff0_to_fqmul4    : out std_logic_vector(15 downto 0); 
        coeff1_to_fqmul4    : out std_logic_vector(15 downto 0);
        valid_to_fqmul5     : out std_logic;   
        coeff0_to_fqmul5    : out std_logic_vector(15 downto 0); 
        coeff1_to_fqmul5    : out std_logic_vector(15 downto 0);
        
        valid_from_fqmul0   : in std_logic;   
        coeff_from_fqmul0   : in std_logic_vector(15 downto 0); 
        valid_from_fqmul1   : in std_logic;   
        coeff_from_fqmul1   : in std_logic_vector(15 downto 0); 
        valid_from_fqmul2   : in std_logic;   
        coeff_from_fqmul2   : in std_logic_vector(15 downto 0); 
        valid_from_fqmul3   : in std_logic;   
        coeff_from_fqmul3   : in std_logic_vector(15 downto 0); 
        valid_from_fqmul4   : in std_logic;   
        coeff_from_fqmul4   : in std_logic_vector(15 downto 0); 
        valid_from_fqmul5   : in std_logic;   
        coeff_from_fqmul5   : in std_logic_vector(15 downto 0);      
        
        -- SIGNAL TO BARRETT
        valid0_to_barrett   : out std_logic;   
        data0_to_barrett    : out std_logic_vector(15 downto 0); 
        valid1_to_barrett   : out std_logic;   
        data1_to_barrett    : out std_logic_vector(15 downto 0);
        valid0_from_barrett : in std_logic;   
        data0_from_barrett  : in std_logic_vector(15 downto 0);
        valid1_from_barrett : in std_logic;   
        data1_from_barrett  : in std_logic_vector(15 downto 0);  
        
        -- CONTROL
        en_dsm              : out std_logic;
        kyber_k             : in std_logic_vector(2 downto 0);
        start               : in std_logic;
        busy                : out std_logic 	
	);
end polyvec_basemul_acc_montgomery_v1_0;

architecture arch_imp of polyvec_basemul_acc_montgomery_v1_0 is

    -- BRAM
    signal s_bram_read_ena           : std_logic;                                      
    signal s_bram_read_wea           : std_logic;                               
    signal s_bram_read_addra         : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram_read_dia           : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram_read_doa           : std_logic_vector(DATA_WIDTH-1 downto 0); 
--    signal s_bram_read_ena_vec       : std_logic_vector(15 downto 0);

    
--    signal s_bram_read_enb           : std_logic;                                      
--    signal s_bram_read_web           : std_logic;                               
--    signal s_bram_read_addrb         : std_logic_vector(ADDR_WIDTH-1 downto 0); 
--    signal s_bram_read_dib           : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram_read_dob           : std_logic_vector(DATA_WIDTH-1 downto 0); 
    
    signal s_bram_write_ena          : std_logic;                                      
    signal s_bram_write_wea          : std_logic;                               
    signal s_bram_write_addra        : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram_write_dia          : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram_write_doa          : std_logic_vector(DATA_WIDTH-1 downto 0); 
    
    signal s_bram_write_enb          : std_logic;                                      
    signal s_bram_write_web          : std_logic;                               
    signal s_bram_write_addrb        : std_logic_vector(ADDR_WIDTH-1 downto 0); 
    signal s_bram_write_dib          : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal s_bram_write_dob          : std_logic_vector(DATA_WIDTH-1 downto 0); 
    
    -- SIGNAL TO FQMUL
    signal s_valid_to_fqmul0     : std_logic;
    signal s_valid_to_fqmul1     : std_logic;
    signal s_valid_to_fqmul2     : std_logic;
    signal s_valid_to_fqmul3     : std_logic;
    signal s_valid_to_fqmul4     : std_logic;
    signal s_valid_to_fqmul5     : std_logic;

    signal s_coeff0_to_fqmul0    : std_logic_vector(15 downto 0); 
    signal s_coeff1_to_fqmul0    : std_logic_vector(15 downto 0); 
    signal s_coeff0_to_fqmul1    : std_logic_vector(15 downto 0); 
    signal s_coeff1_to_fqmul1    : std_logic_vector(15 downto 0); 
    signal s_coeff0_to_fqmul2    : std_logic_vector(15 downto 0); 
    signal s_coeff1_to_fqmul2    : std_logic_vector(15 downto 0); 
    signal s_coeff0_to_fqmul3    : std_logic_vector(15 downto 0); 
    signal s_coeff1_to_fqmul3    : std_logic_vector(15 downto 0); 
    signal s_coeff0_to_fqmul4    : std_logic_vector(15 downto 0); 
    signal s_coeff1_to_fqmul4    : std_logic_vector(15 downto 0);
    signal s_coeff0_to_fqmul5    : std_logic_vector(15 downto 0); 
    signal s_coeff1_to_fqmul5    : std_logic_vector(15 downto 0);
    
    -- SIGNAL TO BARRETT
    signal s_valid0_to_barrett   : std_logic;
    signal s_valid1_to_barrett   : std_logic;
    
    signal s_data0_to_barrett    : std_logic_vector(15 downto 0); 
    signal s_data1_to_barrett    : std_logic_vector(15 downto 0);
    
    -- RESULTS
    signal s_bram_write_dia_high     : std_logic_vector(15 downto 0);
    signal s_bram_write_dia_low      : std_logic_vector(15 downto 0);

    -- CONTROL
    signal s_start                   : std_logic;
    signal s_busy                    : std_logic;  
    signal s_kyber_k                 : std_logic_vector(2 downto 0);
    
    -- LOCAL
    signal s_counter                 : unsigned(2 downto 0);
    signal s_counter_fqmul           : unsigned(1 downto 0);
    constant en_vec_max              : integer := 25;
    signal s_en_vec                  : std_logic_vector(en_vec_max downto 0);
    signal s_last_addra              : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal s_addr_delta              : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal s_ena_counter             : unsigned(3 downto 0);
    constant it_type_max             : integer := 7;
    type it_type is array (it_type_max downto 0) of unsigned(2 downto 0);
    signal s_iteration               : it_type;
    
    -- ZETA
--    type zeta_type is array ((128)-1 downto 0) of std_logic_vector(15 downto 0);
--    signal zetas                     : zeta_type := (0 => x"fbec", 1 => x"fd0a", 2 => x"fe99", 3 => x"fa13", 4 => x"05d5", 5 => x"058e", 6 => x"011f", 7 => x"00ca", 8 => x"ff55", 9 => x"026e", 10 => x"0629", 11 => x"00b6", 12 => x"03c2", 13 => x"fb4e", 14 => x"fa3e", 15 => x"05bc", 16 => x"023d", 17 => x"fad3", 18 => x"0108", 19 => x"017f", 20 => x"fcc3", 21 => x"05b2", 22 => x"f9be", 23 => x"ff7e", 24 => x"fd57", 25 => x"03f9", 26 => x"02dc", 27 => x"0260", 28 => x"f9fa", 29 => x"019b", 30 => x"ff33", 31 => x"f9dd", 32 => x"04c7", 33 => x"028c", 34 => x"fdd8", 35 => x"03f7", 36 => x"faf3", 37 => x"05d3", 38 => x"fee6", 39 => x"f9f8", 40 => x"0204", 41 => x"fff8", 42 => x"fec0", 43 => x"fd66", 44 => x"f9ae", 45 => x"fb76", 46 => x"007e", 47 => x"05bd", 48 => x"fcab", 49 => x"ffa6", 50 => x"fef1", 51 => x"033e", 52 => x"006b", 53 => x"fa73", 54 => x"ff09", 55 => x"fc49", 56 => x"fe72", 57 => x"03c1", 58 => x"fa1c", 59 => x"fd2b", 60 => x"01c0", 61 => x"fbd7", 62 => x"02a5", 63 => x"fb05", 64 => x"fbb1", 65 => x"01ae", 66 => x"022b", 67 => x"034b", 68 => x"fb1d", 69 => x"0367", 70 => x"060e", 71 => x"0069", 72 => x"01a6", 73 => x"024b", 74 => x"00b1", 75 => x"ff15", 76 => x"fedd", 77 => x"fe34", 78 => x"0626", 79 => x"0675", 80 => x"ff0a", 81 => x"030a", 82 => x"0487", 83 => x"ff6d", 84 => x"fcf7", 85 => x"05cb", 86 => x"fda6", 87 => x"045f", 88 => x"f9ca", 89 => x"0284", 90 => x"fc98", 91 => x"015d", 92 => x"01a2", 93 => x"0149", 94 => x"ff64", 95 => x"ffb5", 96 => x"0331", 97 => x"0449", 98 => x"025b", 99 => x"0262", 100 => x"052a", 101 => x"fafb", 102 => x"fa47", 103 => x"0180", 104 => x"fb41", 105 => x"ff78", 106 => x"04c2", 107 => x"fac9", 108 => x"fc96", 109 => x"00dc", 110 => x"fb5d", 111 => x"f985", 112 => x"fb5f", 113 => x"fa06", 114 => x"fb02", 115 => x"031a", 116 => x"fa1a", 117 => x"fcaa", 118 => x"fc9a", 119 => x"01de", 120 => x"ff94", 121 => x"fecc", 122 => x"03e4", 123 => x"03df", 124 => x"03be", 125 => x"fa4c", 126 => x"05f2", 127 => x"065c");
    type zeta_type is array ((64)-1 downto 0) of std_logic_vector(15 downto 0);
    signal zetas                     : zeta_type := (0 => x"fbb1", 1 => x"01ae", 2 => x"022b", 3 => x"034b", 4 => x"fb1d", 5 => x"0367", 6 => x"060e", 7 => x"0069", 8 => x"01a6", 9 => x"024b", 10 => x"00b1", 11 => x"ff15", 12 => x"fedd", 13 => x"fe34", 14 => x"0626", 15 => x"0675", 16 => x"ff0a", 17 => x"030a", 18 => x"0487", 19 => x"ff6d", 20 => x"fcf7", 21 => x"05cb", 22 => x"fda6", 23 => x"045f", 24 => x"f9ca", 25 => x"0284", 26 => x"fc98", 27 => x"015d", 28 => x"01a2", 29 => x"0149", 30 => x"ff64", 31 => x"ffb5", 32 => x"0331", 33 => x"0449", 34 => x"025b", 35 => x"0262", 36 => x"052a", 37 => x"fafb", 38 => x"fa47", 39 => x"0180", 40 => x"fb41", 41 => x"ff78", 42 => x"04c2", 43 => x"fac9", 44 => x"fc96", 45 => x"00dc", 46 => x"fb5d", 47 => x"f985", 48 => x"fb5f", 49 => x"fa06", 50 => x"fb02", 51 => x"031a", 52 => x"fa1a", 53 => x"fcaa", 54 => x"fc9a", 55 => x"01de", 56 => x"ff94", 57 => x"fecc", 58 => x"03e4", 59 => x"03df", 60 => x"03be", 61 => x"fa4c", 62 => x"05f2", 63 => x"065c");
    signal s_idx_zeta                : unsigned(6 downto 0);  
    
    -- REGISTER READ DATA FROM BRAM
    constant bram_vec_length         : integer := 12;
    type reg_type is array ((bram_vec_length)-1 downto 0) of std_logic_vector(31 downto 0); 
    signal s_bram_read_doa_vec       : reg_type;
    signal s_bram_read_dob_vec       : reg_type;
    
    -- REGISTER RESULT FQMUL
    constant fqmul_vec_length        : integer := 5;
    type fqmul_reg_type is array ((fqmul_vec_length)-1 downto 0) of std_logic_vector(15 downto 0); 
    signal s_fqmul0_vec               : fqmul_reg_type;
    signal s_fqmul1_vec               : fqmul_reg_type;
    signal s_fqmul2_vec               : fqmul_reg_type;
    signal s_fqmul3_vec               : fqmul_reg_type;
    signal s_fqmul4_vec               : fqmul_reg_type;
    signal s_fqmul5_vec               : fqmul_reg_type;
    
begin

    s_last_addra <=  "00011111111" when kyber_k = "010" else -- 255
                     "00101111111" when kyber_k = "011" else -- 383
                     "00111111111" when kyber_k = "100" else -- 511
                     "00011111111";
                     
    s_addr_delta <=  "00100000000" when kyber_k = "010" else -- 256
                     "00110000000" when kyber_k = "011" else -- 384
                     "01000000000" when kyber_k = "100" else -- 512
                     "00100000000";

    -- Register start signal
    process(clk)
    begin
        if(rising_edge(clk)) then
            s_fqmul0_vec(0)   <= coeff_from_fqmul0;
            s_fqmul1_vec(0)   <= coeff_from_fqmul1;
            s_fqmul2_vec(0)   <= coeff_from_fqmul2;
            s_fqmul3_vec(0)   <= coeff_from_fqmul3;
            s_fqmul4_vec(0)   <= coeff_from_fqmul4;
            s_fqmul5_vec(0)   <= coeff_from_fqmul5;
            s_fqmul0_vec(fqmul_vec_length - 1 downto 1)     <= s_fqmul0_vec(fqmul_vec_length - 2 downto 0);
            s_fqmul1_vec(fqmul_vec_length - 1 downto 1)     <= s_fqmul1_vec(fqmul_vec_length - 2 downto 0);
            s_fqmul2_vec(fqmul_vec_length - 1 downto 1)     <= s_fqmul2_vec(fqmul_vec_length - 2 downto 0);
            s_fqmul3_vec(fqmul_vec_length - 1 downto 1)     <= s_fqmul3_vec(fqmul_vec_length - 2 downto 0);
            s_fqmul4_vec(fqmul_vec_length - 1 downto 1)     <= s_fqmul4_vec(fqmul_vec_length - 2 downto 0);
            s_fqmul5_vec(fqmul_vec_length - 1 downto 1)     <= s_fqmul5_vec(fqmul_vec_length - 2 downto 0);
        end if;
    end process;  
    
    -- Register BRAM signal
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_bram_read_doa   <= (others => '0');
                s_bram_read_dob   <= (others => '0');     
                s_bram_write_doa  <= (others => '0');         
                s_bram_write_dob  <= (others => '0');  
            else
                s_bram_read_doa   <= bram_read_doa;
                s_bram_read_dob   <= bram_read_dob;
                s_bram_write_doa  <= bram_write_doa;   
                s_bram_write_dob  <= bram_write_dob;        
                s_bram_read_doa_vec(0) <= s_bram_read_doa;     
                s_bram_read_doa_vec(bram_vec_length-1 downto 1) <= s_bram_read_doa_vec(bram_vec_length-2 downto 0);
                s_bram_read_dob_vec(0) <= s_bram_read_dob;     
                s_bram_read_dob_vec(bram_vec_length-1 downto 1) <= s_bram_read_dob_vec(bram_vec_length-2 downto 0);
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
    
    -- Iteration counter
    process(clk)
    begin 
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_iteration   <= (others => (others => '0'));
            else
                if(start = '1') then
                    if(s_bram_write_addra = "00001111101") then -- two pulses before to facilitate poly_add and poly_reducec
                        s_iteration(0)   <= s_iteration(0) + 1;
                    end if;
                else
                    s_iteration(0)   <= (others => '0');
                end if;
                s_iteration(it_type_max downto 1)  <= s_iteration(it_type_max - 1 downto 0);
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
                elsif(s_en_vec(25) = '1' and s_en_vec(24) = '0') then
                    s_busy <= '0';
                else
                    s_busy <= s_busy;
                end if; 
            end if;
        end if;
    end process;  
    
    -- Enable counter read BRAM
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_ena_counter <= (others => '0');
            else
                if(start = '1') then
                    if(s_ena_counter < 11) then
                        s_ena_counter <= s_ena_counter + 1; 
                    else
                        s_ena_counter <= (others => '0');
                    end if; 
                else
                    s_ena_counter <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    -- Reading data
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then                 
                s_bram_read_ena   <= '0';
                s_bram_read_wea   <= '0';
                s_bram_read_addra <= (others => '0');
                s_bram_read_dia   <= (others => '0');
            else
                if(start = '1') then   
                    if(s_bram_read_addra < s_last_addra and s_ena_counter < 12) then
                        s_bram_read_ena   <= '1';
                    else
                        s_bram_read_ena   <= '0';
                    end if;
                    
                    s_bram_read_wea   <= '0';
                    if(s_bram_read_ena = '1') then
                        if(s_bram_read_addra < s_last_addra) then
                            s_bram_read_addra <= std_logic_vector(unsigned(s_bram_read_addra) + 1);
                        end if;
                    end if;
                    s_bram_read_dia   <= (others => '0');
                else
                    s_bram_read_ena   <= '0';
                    s_bram_read_wea   <= '0';
                    s_bram_read_addra <= (others => '0');
                    s_bram_read_dia   <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    -- Enable vector control
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_en_vec               <= (others => '0');        
            else
                if(start = '1') then  
                    s_en_vec(0)            <= s_bram_read_ena;
                    s_en_vec(en_vec_max downto 1)  <= s_en_vec(en_vec_max - 1 downto 0);                    
                else
                    s_en_vec(0)            <= '0';
                end if;
            end if;
        end if;
    end process; 
    
    -- Select fqmul
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then
                s_counter <= (others => '0'); 
                s_counter_fqmul <= (others => '0');          
            else
--                if(or_reduce(s_en_vec(8 downto 1)) = '1') then
                if(or_reduce(s_en_vec(14 downto 1)) = '1') then
                    if(s_counter = 4) then
                        s_counter <= (others => '0'); 
                        if(s_counter_fqmul = 2) then
                            s_counter_fqmul <= (others => '0');    
                        else
                            s_counter_fqmul <= s_counter_fqmul + 1;
                        end if;
                    else
                        s_counter <= s_counter + 1;
                    end if;
                else
                    s_counter <= (others => '0'); 
                    s_counter_fqmul <= (others => '0');   
                end if;                               
            end if;
        end if;
    end process;   
    
    -- Data direction to fqmul
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then     
                s_idx_zeta         <= (others => '0');
                
                s_valid_to_fqmul0 <= '0';
                s_valid_to_fqmul1 <= '0';
                s_valid_to_fqmul2 <= '0';
                s_valid_to_fqmul3 <= '0';
                s_valid_to_fqmul4 <= '0';
                s_valid_to_fqmul5 <= '0';    
                
                
                s_coeff0_to_fqmul0 <= (others => '0');
                s_coeff1_to_fqmul0 <= (others => '0');
                s_coeff0_to_fqmul1 <= (others => '0');
                s_coeff1_to_fqmul1 <= (others => '0');
                s_coeff0_to_fqmul2 <= (others => '0');
                s_coeff1_to_fqmul2 <= (others => '0');
                s_coeff0_to_fqmul3 <= (others => '0');
                s_coeff1_to_fqmul3 <= (others => '0');
                s_coeff0_to_fqmul4 <= (others => '0');
                s_coeff1_to_fqmul4 <= (others => '0');
                s_coeff0_to_fqmul5 <= (others => '0');
                s_coeff1_to_fqmul5 <= (others => '0');
            else
                if(start = '1') then
                    if(or_reduce(s_en_vec(14 downto 6)) = '1') then
                        s_idx_zeta <= s_idx_zeta + 1;
                    end if; 
                    
                    s_valid_to_fqmul0 <= s_en_vec(1);
                    s_valid_to_fqmul1 <= s_en_vec(6);
                    s_valid_to_fqmul2 <= s_en_vec(11);                  
                
                    if(s_counter_fqmul = 0) then
                        -- fqmul0
                        s_coeff0_to_fqmul0 <= s_bram_read_doa(31 downto 16); -- a[1]
                        s_coeff1_to_fqmul0 <= s_bram_read_dob(31 downto 16); -- b[1]                        
                        -- fqmul3   
                        s_valid_to_fqmul3 <= '0';                             
                        s_coeff0_to_fqmul3 <= s_coeff0_to_fqmul3;
                        s_coeff1_to_fqmul3 <= s_coeff0_to_fqmul3;
                        
                        -- fqmul1
                        s_coeff0_to_fqmul1 <= s_bram_read_doa_vec(9)(15 downto 0); -- a[0]
                        s_coeff1_to_fqmul1 <= s_bram_read_dob_vec(9)(15 downto 0); -- b[0]
                        -- fqmul4       
                        s_valid_to_fqmul4 <= s_en_vec(6);                                                    
                        s_coeff0_to_fqmul4 <= s_bram_read_doa_vec(9)(31 downto 16); -- a[1] 
                        s_coeff1_to_fqmul4 <= s_bram_read_dob_vec(9)(15 downto 0); -- b[0]  
                        
                        -- fqmul2
                        s_coeff0_to_fqmul2 <= coeff_from_fqmul2; -- r[0]
                        if(s_idx_zeta(0) = '0') then
                            s_coeff1_to_fqmul2 <= zetas(to_integer(s_idx_zeta(6 downto 1))); -- zeta
                        else
                            s_coeff1_to_fqmul2 <= std_logic_vector(signed(not(zetas(to_integer(s_idx_zeta(6 downto 1))))) + 1); -- zeta
                        end if;   
                        -- fqmul5
                        s_valid_to_fqmul5 <= s_en_vec(11);     
                        s_coeff0_to_fqmul5 <= s_bram_read_doa_vec(4)(15 downto 0); -- a[0]
                        s_coeff1_to_fqmul5 <= s_bram_read_dob_vec(4)(31 downto 16); -- b[1]                     
                        
                    elsif(s_counter_fqmul = 1) then 
                        -- fqmul0
                        s_coeff0_to_fqmul0 <= coeff_from_fqmul0; -- r[0]
                        if(s_idx_zeta(0) = '0') then
                            s_coeff1_to_fqmul0 <= zetas(to_integer(s_idx_zeta(6 downto 1))); -- zeta
                        else
                            s_coeff1_to_fqmul0 <= std_logic_vector(signed(not(zetas(to_integer(s_idx_zeta(6 downto 1))))) + 1); -- zeta
                        end if;
                        -- fqmul3
                        s_valid_to_fqmul3 <= s_en_vec(1);
                        s_coeff0_to_fqmul3 <= s_bram_read_doa_vec(4)(15 downto 0); -- a[0]
                        s_coeff1_to_fqmul3 <= s_bram_read_dob_vec(4)(31 downto 16); -- b[1]                        
                        
                        -- fqmul1
                        s_coeff0_to_fqmul1 <= s_bram_read_doa(31 downto 16); -- a[1]
                        s_coeff1_to_fqmul1 <= s_bram_read_dob(31 downto 16); -- b[1]
                        -- fqmul4      
                        s_valid_to_fqmul4 <= '0';                          
                        s_coeff0_to_fqmul4 <= s_coeff0_to_fqmul4;
                        s_coeff1_to_fqmul4 <= s_coeff0_to_fqmul4;
                        
                        -- fqmul2
                        s_coeff0_to_fqmul2 <= s_bram_read_doa_vec(9)(15 downto 0); -- a[0]
                        s_coeff1_to_fqmul2 <= s_bram_read_dob_vec(9)(15 downto 0); -- b[0]
                        -- fqmul5   
                        s_valid_to_fqmul5 <= s_en_vec(11);                                                             
                        s_coeff0_to_fqmul5 <= s_bram_read_doa_vec(9)(31 downto 16); -- a[1] 
                        s_coeff1_to_fqmul5 <= s_bram_read_dob_vec(9)(15 downto 0); -- b[0]  
                    else
                        -- fqmul0
                        s_coeff0_to_fqmul0 <= s_bram_read_doa_vec(9)(15 downto 0); -- a[0]
                        s_coeff1_to_fqmul0 <= s_bram_read_dob_vec(9)(15 downto 0); -- b[0]
                        -- fqmul3  
                        s_valid_to_fqmul3 <= s_en_vec(1);                                                         
                        s_coeff0_to_fqmul3 <= s_bram_read_doa_vec(9)(31 downto 16); -- a[1] 
                        s_coeff1_to_fqmul3 <= s_bram_read_dob_vec(9)(15 downto 0); -- b[0]  
                        
                        -- fqmul1
                        s_coeff0_to_fqmul1 <= coeff_from_fqmul1; -- r[0]
                        if(s_idx_zeta(0) = '0') then
                            s_coeff1_to_fqmul1 <= zetas(to_integer(s_idx_zeta(6 downto 1))); -- zeta
                        else
                            s_coeff1_to_fqmul1 <= std_logic_vector(signed(not(zetas(to_integer(s_idx_zeta(6 downto 1))))) + 1); -- zeta
                        end if;
                        -- fqmul4
                        s_valid_to_fqmul4 <= s_en_vec(6);
                        s_coeff0_to_fqmul4 <= s_bram_read_doa_vec(4)(15 downto 0); -- a[0]
                        s_coeff1_to_fqmul4 <= s_bram_read_dob_vec(4)(31 downto 16); -- b[1]
                        
                        -- fqmul2
                        s_coeff0_to_fqmul2 <= s_bram_read_doa(31 downto 16); -- a[1]
                        s_coeff1_to_fqmul2 <= s_bram_read_dob(31 downto 16); -- b[1]
                        -- fqmul5    
                        s_valid_to_fqmul5 <= '0';                                 
                        s_coeff0_to_fqmul5 <= s_coeff0_to_fqmul5;
                        s_coeff1_to_fqmul5 <= s_coeff0_to_fqmul5;
                    end if; 
                else
                    s_idx_zeta         <= (others => '0');
                    s_coeff0_to_fqmul0 <= (others => '0');
                    s_coeff1_to_fqmul0 <= (others => '0');
                    s_coeff0_to_fqmul1 <= (others => '0');
                    s_coeff1_to_fqmul1 <= (others => '0');
                    s_coeff0_to_fqmul2 <= (others => '0');
                    s_coeff1_to_fqmul2 <= (others => '0');
                    s_coeff0_to_fqmul3 <= (others => '0');
                    s_coeff1_to_fqmul3 <= (others => '0');
                    s_coeff0_to_fqmul4 <= (others => '0');
                    s_coeff1_to_fqmul4 <= (others => '0');
                    s_coeff0_to_fqmul5 <= (others => '0');
                    s_coeff1_to_fqmul5 <= (others => '0');
                end if;
            end if;
        end if;
    end process; 
    
    -- Barrett
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then    
                s_data0_to_barrett <= (others => '0');
                s_data1_to_barrett <= (others => '0');
            else
                s_data0_to_barrett <= std_logic_vector(signed(s_bram_write_dia_low) + signed(s_bram_write_dob(15 downto 0)));
                s_data1_to_barrett <= std_logic_vector(signed(s_bram_write_dia_high) + signed(s_bram_write_dob(31 downto 16)));
            end if;
        end if;
    end process;


    -- Write data
    process(clk)
    begin
        if(rising_edge(clk)) then
            if aresetn = '0' then     
                s_bram_write_ena     <= '0';
                s_bram_write_wea     <= '0';
                s_bram_write_addra   <= (others => '0');
                s_bram_write_dia     <= (others => '0');  
                
                s_bram_write_enb     <= '0';
                s_bram_write_web     <= '0';
                s_bram_write_addrb   <= (others => '0');
                s_bram_write_dib    <= (others => '0');  
            else
            
                ---- PORT A ----
                s_bram_write_ena <= or_reduce(s_en_vec(23 downto 17));                
                if(s_iteration(1) < unsigned(s_kyber_k) - 1) then
                    s_bram_write_wea <= s_en_vec(17);
                elsif(s_iteration(7) >= unsigned(s_kyber_k) - 1) then
                    s_bram_write_wea <= s_en_vec(23);
                else
                    s_bram_write_wea <= '0';
                end if;
                -- half words
                if(s_bram_write_wea = '1' and s_bram_write_addra < "00001111111") then
                    s_bram_write_addra <= std_logic_vector(unsigned(s_bram_write_addra) + 1);
                else
                    s_bram_write_addra   <= (others => '0');
                end if;
                if(s_counter_fqmul = 0) then
                    s_bram_write_dia_low  <= std_logic_vector(signed(coeff_from_fqmul0) + signed(s_fqmul0_vec(4)));
                    s_bram_write_dia_high <= std_logic_vector(signed(coeff_from_fqmul3) + signed(s_fqmul3_vec(4)));
                elsif(s_counter_fqmul = 1) then 
                    s_bram_write_dia_low  <= std_logic_vector(signed(coeff_from_fqmul1) + signed(s_fqmul1_vec(4)));
                    s_bram_write_dia_high <= std_logic_vector(signed(coeff_from_fqmul4) + signed(s_fqmul4_vec(4)));
                else
                    s_bram_write_dia_low  <= std_logic_vector(signed(coeff_from_fqmul2) + signed(s_fqmul2_vec(4)));
                    s_bram_write_dia_high <= std_logic_vector(signed(coeff_from_fqmul5) + signed(s_fqmul5_vec(4)));                    
                end if; 
                
                -- full word
                if(s_iteration(1) = 0) then
                    s_bram_write_dia <= s_bram_write_dia_high & s_bram_write_dia_low;                    
                elsif(s_iteration(1) < unsigned(s_kyber_k) - 1) then
                    s_bram_write_dia <= std_logic_vector(signed(s_bram_write_dia_high) + signed(s_bram_write_dob(31 downto 16))) & std_logic_vector(signed(s_bram_write_dia_low) + signed(s_bram_write_dob(15 downto 0)));
                else
                    s_bram_write_dia <= data1_from_barrett & data0_from_barrett;
                end if;
                                
                ---- PORT B ----
                s_bram_write_enb <= s_en_vec(14);
                if(s_bram_write_enb = '1' and s_bram_write_addrb < "00001111111") then
                    s_bram_write_addrb <= std_logic_vector(unsigned(s_bram_write_addrb) + 1);
                else
                    s_bram_write_addrb   <= (others => '0');
                end if;     
                               
            end if;
        end if;
    end process;  

--    -- Register outputs (uncomment this block for internal delay, comment the block below)
--    process(clk)
--    begin
--        if(rising_edge(clk)) then
--            if aresetn = '0' then  
--                valid_to_fqmul0      <= '0';
--                valid_to_fqmul1      <= '0';
--                valid_to_fqmul2      <= '0';
--                valid_to_fqmul3      <= '0';
--                valid_to_fqmul4      <= '0';
--                valid_to_fqmul5      <= '0';
                
--                coeff0_to_fqmul0     <= (others => '0');   
--                coeff1_to_fqmul0     <= (others => '0');
--                coeff0_to_fqmul1     <= (others => '0');
--                coeff1_to_fqmul1     <= (others => '0');
--                coeff0_to_fqmul2     <= (others => '0');
--                coeff1_to_fqmul2     <= (others => '0');
--                coeff0_to_fqmul3     <= (others => '0');
--                coeff1_to_fqmul3     <= (others => '0');
--                coeff0_to_fqmul4     <= (others => '0');
--                coeff1_to_fqmul4     <= (others => '0');
--                coeff0_to_fqmul5     <= (others => '0');
--                coeff1_to_fqmul5     <= (others => '0');
                
--                valid0_to_barrett    <= '0';
--                valid1_to_barrett    <= '0';
                
--                data0_to_barrett     <= (others => '0');
--                data1_to_barrett     <= (others => '0');
--            else
--                valid_to_fqmul0      <= s_valid_to_fqmul0;
--                valid_to_fqmul1      <= s_valid_to_fqmul1;
--                valid_to_fqmul2      <= s_valid_to_fqmul2;
--                valid_to_fqmul3      <= s_valid_to_fqmul3;
--                valid_to_fqmul4      <= s_valid_to_fqmul4;
--                valid_to_fqmul5      <= s_valid_to_fqmul5;
                
--                coeff0_to_fqmul0     <= s_coeff0_to_fqmul0;   
--                coeff1_to_fqmul0     <= s_coeff1_to_fqmul0;
--                coeff0_to_fqmul1     <= s_coeff0_to_fqmul1;
--                coeff1_to_fqmul1     <= s_coeff1_to_fqmul1;
--                coeff0_to_fqmul2     <= s_coeff0_to_fqmul2;
--                coeff1_to_fqmul2     <= s_coeff1_to_fqmul2;
--                coeff0_to_fqmul3     <= s_coeff0_to_fqmul3;
--                coeff1_to_fqmul3     <= s_coeff1_to_fqmul3;
--                coeff0_to_fqmul4     <= s_coeff0_to_fqmul4;
--                coeff1_to_fqmul4     <= s_coeff1_to_fqmul4;
--                coeff0_to_fqmul5     <= s_coeff0_to_fqmul5;
--                coeff1_to_fqmul5     <= s_coeff1_to_fqmul5;
                
--                valid0_to_barrett    <= s_valid0_to_barrett;
--                valid1_to_barrett    <= s_valid1_to_barrett;
                
--                data0_to_barrett     <= s_data0_to_barrett;
--                data1_to_barrett     <= s_data1_to_barrett;
--            end if;
--        end if;
--    end process;    

    -- BRAM output signals
    bram_read_ena        <= s_bram_read_ena;  
    bram_read_wea        <= s_bram_read_wea;  
    bram_read_addra      <= s_bram_read_addra;
    bram_read_dia        <= s_bram_read_dia;  
    
    bram_read_enb        <= s_bram_read_ena;  
    bram_read_web        <= s_bram_read_wea;  
    bram_read_addrb      <= std_logic_vector(unsigned(s_bram_read_addra) + unsigned(s_addr_delta));
    bram_read_dib        <= s_bram_read_dia; 
    
    bram_write_ena       <= s_bram_write_ena;  
    bram_write_wea       <= s_bram_write_wea;  
    bram_write_addra     <= s_bram_write_addra;
    bram_write_dia       <= s_bram_write_dia;
    
    bram_write_enb       <= s_bram_write_enb;  
    bram_write_web       <= s_bram_write_web;  
    bram_write_addrb     <= s_bram_write_addrb;
    bram_write_dib       <= s_bram_write_dib;
    
    -- Comment this block and uncomment the process above. 
    valid_to_fqmul0      <= s_valid_to_fqmul0;
    valid_to_fqmul1      <= s_valid_to_fqmul1;
    valid_to_fqmul2      <= s_valid_to_fqmul2;
    valid_to_fqmul3      <= s_valid_to_fqmul3;
    valid_to_fqmul4      <= s_valid_to_fqmul4;
    valid_to_fqmul5      <= s_valid_to_fqmul5;
    
    coeff0_to_fqmul0     <= s_coeff0_to_fqmul0;   
    coeff1_to_fqmul0     <= s_coeff1_to_fqmul0;
    coeff0_to_fqmul1     <= s_coeff0_to_fqmul1;
    coeff1_to_fqmul1     <= s_coeff1_to_fqmul1;
    coeff0_to_fqmul2     <= s_coeff0_to_fqmul2;
    coeff1_to_fqmul2     <= s_coeff1_to_fqmul2;
    coeff0_to_fqmul3     <= s_coeff0_to_fqmul3;
    coeff1_to_fqmul3     <= s_coeff1_to_fqmul3;
    coeff0_to_fqmul4     <= s_coeff0_to_fqmul4;
    coeff1_to_fqmul4     <= s_coeff1_to_fqmul4;
    coeff0_to_fqmul5     <= s_coeff0_to_fqmul5;
    coeff1_to_fqmul5     <= s_coeff1_to_fqmul5;
    
    valid0_to_barrett    <= s_valid0_to_barrett;
    valid1_to_barrett    <= s_valid1_to_barrett;
    
    data0_to_barrett     <= s_data0_to_barrett;
    data1_to_barrett     <= s_data1_to_barrett;
    -- End block
    
    -- Busy signal
    busy            <= s_busy; 
    en_dsm          <= s_busy;  

end arch_imp;