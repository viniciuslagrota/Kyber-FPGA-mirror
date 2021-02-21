library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity double_signal_multiplexer_v1_0 is
	generic (
		DATA_WIDTH	: integer	:= 32
	);
	port (
	    clk           : in std_logic;
		data_in_0     : in std_logic_vector(DATA_WIDTH-1 downto 0);
		enable_in_0   : in std_logic;
		data_in_1     : in std_logic_vector(DATA_WIDTH-1 downto 0);
		enable_in_1   : in std_logic;
        data_out      : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end double_signal_multiplexer_v1_0;

architecture arch_imp of double_signal_multiplexer_v1_0 is

    signal s_data_in_0     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_enable_in_0   : std_logic;
    signal s_data_in_1     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal s_enable_in_1   : std_logic;

begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            s_data_in_0     <= data_in_0;
            s_enable_in_0   <= enable_in_0;
            s_data_in_1     <= data_in_1;
            s_enable_in_1   <= enable_in_1;
        end if;
    end process;
    
    data_out <= s_data_in_0 when s_enable_in_0 = '1' else
                s_data_in_1 when s_enable_in_1 = '1' else
                (others => '0');

end arch_imp;
