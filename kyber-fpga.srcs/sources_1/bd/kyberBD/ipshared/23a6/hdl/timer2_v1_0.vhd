library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer2_v1_0 is	
	port (
		clk : in std_logic;
		control : in std_logic_vector (31 downto 0); -- bit 0: reset; bit 1: enable; other bits: no effect
		count : out std_logic_vector (31 downto 0)
	);
end timer2_v1_0;

architecture arch_imp of timer2_v1_0 is

signal counter : unsigned (31 downto 0);

begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            if(control(0) = '1') then
                counter <= (others => '0');
            else
                if(control(1) = '0') then
                    counter <= counter;
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    count <= std_logic_vector(counter);

end arch_imp;
