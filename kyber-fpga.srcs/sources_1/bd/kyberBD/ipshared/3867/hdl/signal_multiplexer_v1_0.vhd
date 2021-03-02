library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signal_multiplexer_v1_0 is
	generic (
		DATA_WIDTH	: integer	:= 32
	);
	port (
        -- Input
		clk               : in std_logic;
	    en_0              : in std_logic;
	    valid_0           : in std_logic;
		data_0            : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		en_1              : in std_logic;
		valid_1           : in std_logic;
		data_1            : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		en_2              : in std_logic;
	    valid_2           : in std_logic;
		data_2            : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		en_3              : in std_logic;
		valid_3           : in std_logic;
		data_3            : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		en_4              : in std_logic;
	    valid_4           : in std_logic;
		data_4            : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		en_5              : in std_logic;
		valid_5           : in std_logic;
		data_5            : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		-- Output		
		valid             : out std_logic;
        data              : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end signal_multiplexer_v1_0;

architecture arch_imp of signal_multiplexer_v1_0 is

    signal s_en_0       : std_logic;
    signal s_en_1       : std_logic;
    signal s_en_2       : std_logic;
    signal s_en_3       : std_logic;
    signal s_en_4       : std_logic;
    signal s_en_5       : std_logic;
    
    signal s_valid_0    : std_logic;
    signal s_valid_1    : std_logic;
    signal s_valid_2    : std_logic;
    signal s_valid_3    : std_logic;
    signal s_valid_4    : std_logic;
    signal s_valid_5    : std_logic;    
    
    signal s_data_0     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data_1     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data_2     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data_3     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data_4     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data_5     : std_logic_vector(DATA_WIDTH-1 downto 0);

begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            s_en_0          <= en_0;
            s_en_1          <= en_1;
            s_en_2          <= en_2;
            s_en_3          <= en_3;
            s_en_4          <= en_4;
            s_en_5          <= en_5;
            
            s_valid_0       <= valid_0;
            s_valid_1       <= valid_1;
            s_valid_2       <= valid_2;
            s_valid_3       <= valid_3;
            s_valid_4       <= valid_4;
            s_valid_5       <= valid_5;
            
            s_data_0        <= data_0;
            s_data_1        <= data_1;
            s_data_2        <= data_2;
            s_data_3        <= data_3;
            s_data_4        <= data_4;
            s_data_5        <= data_5;            
        end if;
    end process;
    
    valid <= s_valid_0 when s_en_0 = '1' else
             s_valid_1 when s_en_1 = '1' else
             s_valid_2 when s_en_2 = '1' else
             s_valid_3 when s_en_3 = '1' else
             s_valid_4 when s_en_4 = '1' else
             s_valid_5 when s_en_5 = '1' else
             '0';
    
    data <= s_data_0 when s_en_0 = '1' else
            s_data_1 when s_en_1 = '1' else
            s_data_2 when s_en_2 = '1' else
            s_data_3 when s_en_3 = '1' else
            s_data_4 when s_en_4 = '1' else
            s_data_5 when s_en_5 = '1' else
            (others => '0');

end arch_imp;
