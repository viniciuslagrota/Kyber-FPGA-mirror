library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity montgomery_reduction_v1_0 is
	generic (
		QINV	: integer	:= -3327;
		KYBER_Q	: integer	:= 3329
	);
	port (
		clk	:     in std_logic;
		data_in:  in std_logic_vector(31 downto 0);
		data_out: out std_logic_vector(15 downto 0)		
	);
end montgomery_reduction_v1_0;

architecture arch_imp of montgomery_reduction_v1_0 is
  
    signal t                        : std_logic_vector(15 downto 0);
    signal t2                       : std_logic_vector(31 downto 0);
    signal t3                       : std_logic_vector(31 downto 0);
    signal data_in_integer          : integer;
    signal data_in_split_integer    : integer;
    
begin 

    data_in_integer         <= to_integer(signed(data_in));
    data_in_split_integer   <= to_integer(signed(data_in(15 downto 0)));
    t                       <= std_logic_vector(to_signed(data_in_split_integer * QINV, t'length));
    t2                      <= std_logic_vector(to_signed(to_integer(signed(t)) * KYBER_Q, t2'length));
    t3                      <= std_logic_vector(to_signed(data_in_integer - to_integer(signed(t2)), t3'length));

	process(clk)
    begin
        if(rising_edge(clk)) then
            --t <= data_in_integer - ((data_in_split_integer * QINV) * KYBER_Q);
            data_out <= t3(31 downto 16);
        end if;
    end process;

--    data_out_full <= std_logic_vector(to_signed(t,32));
--    data_out <= data_out_full(31 downto 16);

end arch_imp;