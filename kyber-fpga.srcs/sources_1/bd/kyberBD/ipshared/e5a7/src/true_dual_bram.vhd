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

entity true_dual_bram is
    generic(
        ADDR_WIDTH    : integer;
        WORD_WIDTH    : integer
    );
    port(
        clka    : in std_logic;
        clkb    : in std_logic;
        ena     : in std_logic;
        enb     : in std_logic;
        wea     : in std_logic;
        web     : in std_logic;
        addra   : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        addrb   : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        dia     : in std_logic_vector(WORD_WIDTH-1 downto 0);
        dib     : in std_logic_vector(WORD_WIDTH-1 downto 0);
        doa     : out std_logic_vector(WORD_WIDTH-1 downto 0);
        dob     : out std_logic_vector(WORD_WIDTH-1 downto 0)
    );
end true_dual_bram;

architecture Behavioral of true_dual_bram is

    type ram_type is array ((2**ADDR_WIDTH)-1 downto 0) of std_logic_vector(WORD_WIDTH-1 downto 0);
    shared variable RAM : ram_type;
    
begin

    process(CLKA)
    begin
        if CLKA'event and CLKA = '1' then
            if ENA = '1' then
                DOA <= RAM(conv_integer(ADDRA));
                if WEA = '1' then
                    RAM(conv_integer(ADDRA)) := DIA;
                end if;
            end if;
        end if;
    end process;
    
    process(CLKB)
    begin
        if CLKB'event and CLKB = '1' then
            if ENB = '1' then
                DOB <= RAM(conv_integer(ADDRB));
                if WEB = '1' then
                    RAM(conv_integer(ADDRB)) := DIB;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
