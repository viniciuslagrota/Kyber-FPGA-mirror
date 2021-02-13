----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2020 10:14:37 AM
-- Design Name: 
-- Module Name: true_dual_bram - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity true_single_bram is
    generic(
        ADDR_WIDTH    : integer;
        WORD_WIDTH    : integer
    );
    port(
        clk    : in std_logic;
        en     : in std_logic;
        we     : in std_logic;
        addr   : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        di     : in std_logic_vector(WORD_WIDTH-1 downto 0);
        do     : out std_logic_vector(WORD_WIDTH-1 downto 0)
    );
end true_single_bram;

architecture Behavioral of true_single_bram is

    type ram_type is array ((2**ADDR_WIDTH)-1 downto 0) of std_logic_vector(WORD_WIDTH-1 downto 0);
    shared variable RAM : ram_type;
    
begin

    process(CLK)
    begin
        if CLK'event and CLK = '1' then
            if EN = '1' then
                DO <= RAM(conv_integer(ADDR));
                if WE = '1' then
                    RAM(conv_integer(ADDR)) := DI;
                end if;
            end if;
        end if;
    end process;  

end Behavioral;
