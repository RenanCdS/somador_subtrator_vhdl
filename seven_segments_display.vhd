library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_segments_display is
    Port ( SEL : in  STD_LOGIC_VECTOR (3 downto 0);
           SEGMENTS : out  STD_LOGIC_VECTOR (6 downto 0);
           DISPLAYS : out  STD_LOGIC_VECTOR (3 downto 0));
end seven_segments_display;

architecture Behavioral of seven_segments_display is

begin
	-- Seleciona o display
		DISPLAYS <= "0111";
		
	with SEL select 
		SEGMENTS <= "0000110" when "0001", -- 1
						"1011011" when "0010", -- 2
						"1001111" when "0011", -- 3
						"1100110" when "0100", -- 4
						"1101101" when "0101", -- 5
						"1111101" when "0110", -- 6
						"0000111" when "0111", -- 7
						"1111111" when "1000", -- 8
						"1100111" when "1001", -- 9
						"1110111" when "1010", -- A
						"1111100" when "1011", -- B
						"0111001" when "1100", -- C
						"1011110" when "1101", -- D 
						"1111001" when "1110", -- E
						"1110001" when "1111", -- F
						"0111111" when others; -- 0

end Behavioral;

