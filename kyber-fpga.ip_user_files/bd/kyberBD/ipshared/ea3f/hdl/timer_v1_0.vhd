library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_v1_0 is	
	port (
		clk : in std_logic;
		reset : in std_logic;
		enable : in std_logic;
		count : out std_logic_vector (31 downto 0)
	);
end timer_v1_0;

architecture arch_imp of timer_v1_0 is

signal counter : unsigned (31 downto 0);

begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            if(reset = '1') then
                counter <= (others => '0');
            else
                if(enable = '0') then
                    counter <= counter;
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    count <= std_logic_vector(counter);

end arch_imp;
