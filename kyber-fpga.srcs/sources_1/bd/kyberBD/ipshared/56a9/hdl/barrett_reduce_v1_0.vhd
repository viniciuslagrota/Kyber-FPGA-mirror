--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

--entity barrett_reduce_v1_0 is
--	generic (
--		KYBER_Q	: integer	:= 3329
--	);
--	port (
--        clk	:     in std_logic;
--        valid_out  : in std_logic; 
--		data_in:  in std_logic_vector(15 downto 0);
--        valid_out  : in std_logic; 
--		data_out: out std_logic_vector(15 downto 0)		
--	);
--end barrett_reduce_v1_0;

--architecture arch_imp of barrett_reduce_v1_0 is
    
--    constant v_full                 : signed(31 downto 0) := (x"04000000" + KYBER_Q/2)/KYBER_Q;
--    constant v                      : signed(15 downto 0) := v_full(15 downto 0);
--    signal t                        : signed(31 downto 0) := (others => '0');
--    signal t2                       : signed(31 downto 0) := (others => '0');
--    signal t3                       : signed(15 downto 0) := (others => '0');
--    signal t4                       : signed(15 downto 0) := (others => '0');
--    signal s_valid_out  : std_logic;

--begin

--    t <= v * signed(data_in); 
--    t2 <= shift_right(t + x"02000000", 26);
--    t3 <= to_signed((to_integer(t2) * KYBER_Q),t3'length);
    
--    process(clk)
--    begin
--        if(rising_edge(clk)) then
--           s_valid_out <= valid_in;
--            data_out <= std_logic_vector(signed(data_in) - t3);
--        end if;
--    end process;   

--    valid_out <= s_valid_out;  
    
--end arch_imp;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity barrett_reduce_v1_0 is
	generic (
		KYBER_Q	: integer	:= 3329
	);
	port (
        clk	      : in std_logic;
		valid_in  : in std_logic; 
		data_in   : in std_logic_vector(15 downto 0);
		valid_out : out std_logic;		
		data_out  : out std_logic_vector(15 downto 0)		
	);
end barrett_reduce_v1_0;

architecture arch_imp of barrett_reduce_v1_0 is
    
    constant v_full                 : signed(31 downto 0) := (x"04000000" + KYBER_Q/2)/KYBER_Q;
    constant v                      : signed(15 downto 0) := v_full(15 downto 0);
    signal t                        : signed(31 downto 0) := (others => '0');
    signal t2                       : signed(31 downto 0) := (others => '0');
    signal t3                       : signed(15 downto 0) := (others => '0');
    signal t4                       : signed(15 downto 0) := (others => '0');
    type data_vec is array (2 downto 0) of std_logic_vector(15 downto 0);
    signal data_in_vec              : data_vec;
    type valid_vec is array (2 downto 0) of std_logic;
    signal valid_in_vec : valid_vec;
    signal s_valid_out  : std_logic;
    
begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            valid_in_vec(0) <= valid_in;
            valid_in_vec(2 downto 1) <= valid_in_vec(1 downto 0);
            data_in_vec(0) <= data_in;
            data_in_vec(2 downto 1) <= data_in_vec(1 downto 0);
            t <= v * signed(data_in); 
            t2 <= shift_right(t + x"02000000", 26);
            t3 <= to_signed((to_integer(t2) * KYBER_Q),t3'length);
            s_valid_out <= valid_in_vec(2);
            data_out <= std_logic_vector(signed(data_in_vec(2)) - t3);
        end if;
    end process;   
    
    valid_out <= s_valid_out; 
    
end arch_imp;
