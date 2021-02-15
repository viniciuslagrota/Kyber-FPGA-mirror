library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity barret_reduce_v1_0 is
	generic (
		KYBER_Q	: integer	:= 3329
	);
	port (
        clk	:     in std_logic;
		data_in:  in std_logic_vector(15 downto 0);
		data_out: out std_logic_vector(15 downto 0)		
	);
end barret_reduce_v1_0;

architecture arch_imp of barret_reduce_v1_0 is
    
    constant v_full                 : signed(31 downto 0) := (x"04000000" + KYBER_Q/2)/KYBER_Q;
    constant v                      : signed(15 downto 0) := v_full(15 downto 0);
    signal t                        : signed(31 downto 0) := (others => '0');
    signal t2                       : signed(31 downto 0) := (others => '0');
    signal t3                       : signed(15 downto 0) := (others => '0');
    signal t4                       : signed(15 downto 0) := (others => '0');

begin

    t <= v * signed(data_in); 
    t2 <= shift_right(t + x"02000000", 26);
    t3 <= to_signed((to_integer(t2) * KYBER_Q),t3'length);
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            data_out <= std_logic_vector(signed(data_in) - t3);
        end if;
    end process;    
    
end arch_imp;
