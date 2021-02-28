library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fqmul_v1_0 is
	port (
		clk	              : in std_logic;
		valid_in          : in std_logic;
		data_in_1         : in std_logic_vector(15 downto 0);
		data_in_2         : in std_logic_vector(15 downto 0);
		valid_in_mont     : in std_logic;
		data_in_mont      : in std_logic_vector(15 downto 0);
		valid_out_mont    : out std_logic;
		data_out_mont     : out std_logic_vector(31 downto 0);
		valid_out         : out std_logic;
		data_out          : out std_logic_vector(15 downto 0)
	);
end fqmul_v1_0;

architecture arch_imp of fqmul_v1_0 is
    
    signal data_in_1_integer    : signed(15 downto 0);
    signal data_in_2_integer    : signed(15 downto 0);
	signal data_out_integer     : signed(31 downto 0);
	signal s_valid_out_mont     : std_logic;
	
begin

    -- signal received
    data_in_1_integer <= signed(data_in_1);
    data_in_2_integer <= signed(data_in_2);
    -- signal to be converted and directed to montgomery_reduce IP.
    data_out_integer <= data_in_1_integer * data_in_2_integer;

    process(clk)
    begin
        if(rising_edge(clk)) then
            -- data_out_mont must be inserted in montgomery_reduce IP.
            s_valid_out_mont <= valid_in;
            data_out_mont <= std_logic_vector(data_out_integer);
        end if;    
    end process;
    
    -- data_in_mont is the signal received from montgomery_reduce IP.
    valid_out_mont  <= s_valid_out_mont;
    valid_out       <= valid_in_mont;
    data_out        <= data_in_mont;

end arch_imp;
