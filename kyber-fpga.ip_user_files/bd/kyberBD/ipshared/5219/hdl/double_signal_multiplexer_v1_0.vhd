library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity double_signal_multiplexer_v1_0 is
	generic (
		DATA_WIDTH	: integer	:= 32
	);
	port (
		data_in_1     : in std_logic_vector(DATA_WIDTH-1 downto 0);
		enable_in_1   : in std_logic;
		data_in_2     : in std_logic_vector(DATA_WIDTH-1 downto 0);
		enable_in_2   : in std_logic;
        data_out      : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end double_signal_multiplexer_v1_0;

architecture arch_imp of double_signal_multiplexer_v1_0 is

begin

    data_out <= data_in_1 when enable_in_1 = '1' else
                data_in_2 when enable_in_2 = '1' else
                (others => '0');

end arch_imp;
