library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signal_multiplexer_v1_0 is
	generic (
		DATA_WIDTH	: integer	:= 32
	);
	port (
        -- Input
		clk              : in std_logic;
	    en0              : in std_logic;
	    valid0           : in std_logic;
		data0            : in std_logic_vector(DATA_WIDTH-1 downto 0);
		data0b           : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		en1              : in std_logic;
		valid1           : in std_logic;
		data1            : in std_logic_vector(DATA_WIDTH-1 downto 0);
		data1b           : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		en2              : in std_logic;
	    valid2           : in std_logic;
		data2            : in std_logic_vector(DATA_WIDTH-1 downto 0);
		data2b           : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		en3              : in std_logic;
		valid3           : in std_logic;
		data3            : in std_logic_vector(DATA_WIDTH-1 downto 0);
        data3b           : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		en4              : in std_logic;
	    valid4           : in std_logic;
		data4            : in std_logic_vector(DATA_WIDTH-1 downto 0);
        data4b           : in std_logic_vector(DATA_WIDTH-1 downto 0);
		
		en5              : in std_logic;
		valid5           : in std_logic;
		data5            : in std_logic_vector(DATA_WIDTH-1 downto 0);
        data5b           : in std_logic_vector(DATA_WIDTH-1 downto 0);  
		
		-- Output		
		valid             : out std_logic;
        data              : out std_logic_vector(DATA_WIDTH-1 downto 0);
        datab             : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end signal_multiplexer_v1_0;

architecture arch_imp of signal_multiplexer_v1_0 is

    signal s_en0       : std_logic;
    signal s_en1       : std_logic;
    signal s_en2       : std_logic;
    signal s_en3       : std_logic;
    signal s_en4       : std_logic;
    signal s_en5       : std_logic;
    
    signal s_valid0    : std_logic;
    signal s_valid1    : std_logic;
    signal s_valid2    : std_logic;
    signal s_valid3    : std_logic;
    signal s_valid4    : std_logic;
    signal s_valid5    : std_logic;    
    
    signal s_data0     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data1     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data2     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data3     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data4     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data5     : std_logic_vector(DATA_WIDTH-1 downto 0);
    
    signal s_data0b     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data1b     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data2b     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data3b     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data4b     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_data5b     : std_logic_vector(DATA_WIDTH-1 downto 0);

begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            s_en0          <= en0;
            s_en1          <= en1;
            s_en2          <= en2;
            s_en3          <= en3;
            s_en4          <= en4;
            s_en5          <= en5;
            
            s_valid0       <= valid0;
            s_valid1       <= valid1;
            s_valid2       <= valid2;
            s_valid3       <= valid3;
            s_valid4       <= valid4;
            s_valid5       <= valid5;
            
            s_data0        <= data0;
            s_data1        <= data1;
            s_data2        <= data2;
            s_data3        <= data3;
            s_data4        <= data4;
            s_data5        <= data5;         
            
            s_data0b       <= data0b;
            s_data1b       <= data1b;
            s_data2b       <= data2b;
            s_data3b       <= data3b;
            s_data4b       <= data4b;
            s_data5b       <= data5b;   
        end if;
    end process;
    
    valid <= s_valid0 when s_en0 = '1' else
             s_valid1 when s_en1 = '1' else
             s_valid2 when s_en2 = '1' else
             s_valid3 when s_en3 = '1' else
             s_valid4 when s_en4 = '1' else
             s_valid5 when s_en5 = '1' else
             '0';
    
    data <= s_data0 when s_en0 = '1' else
            s_data1 when s_en1 = '1' else
            s_data2 when s_en2 = '1' else
            s_data3 when s_en3 = '1' else
            s_data4 when s_en4 = '1' else
            s_data5 when s_en5 = '1' else
            (others => '0');
            
    datab <= s_data0b when s_en0 = '1' else
             s_data1b when s_en1 = '1' else
             s_data2b when s_en2 = '1' else
             s_data3b when s_en3 = '1' else
             s_data4b when s_en4 = '1' else
             s_data5b when s_en5 = '1' else
             (others => '0');

end arch_imp;
