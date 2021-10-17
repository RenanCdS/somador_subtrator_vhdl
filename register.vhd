library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register is
    Port ( data : in  STD_LOGIC_VECTOR (3 downto 0);
           enable : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           q : out  STD_LOGIC);
end register;

architecture Behavioral of register is

begin


end Behavioral;

