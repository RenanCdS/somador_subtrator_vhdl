library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_segments_display is
    Port ( SEL : in  STD_LOGIC_VECTOR (3 downto 0);
			  FLAG : in STD_LOGIC;
			  
           SEGMENTS : out  STD_LOGIC_VECTOR (6 downto 0);
           DISPLAYS : out  STD_LOGIC_VECTOR (3 downto 0));
end seven_segments_display;

architecture Behavioral of seven_segments_display is

begin
	-- Seleciona o display
		DISPLAYS <= "0111";
		
	-- Dependendo do valor da flag sera decodificado de forma diferente, pois o valor pode ser negativo
	process (SEL)
	begin
		if (FLAG = '0') then
				case SEL is
					when "0000" => SEGMENTS <= "0111111"; --0
					when "0001" => SEGMENTS <= "0000110"; --1
					when "0010" => SEGMENTS <= "1011011"; --2
					when "0011" => SEGMENTS <= "1001111"; --3
					when "0100" => SEGMENTS <= "1100110"; --4
					when "0101" => SEGMENTS <= "1101101"; --5
					when "0110" => SEGMENTS <= "1111101"; --6
					when "0111" => SEGMENTS <= "0000111"; --7
					when "1000" => SEGMENTS <= "1111111"; --8
					when "1001" => SEGMENTS <= "1100111"; --9
					when "1010" => SEGMENTS <= "1110111"; --A
					when "1011" => SEGMENTS <= "1111100"; --B
					when "1100" => SEGMENTS <= "0111001"; --C
					when "1101" => SEGMENTS <= "1011110"; --D
					when "1110" => SEGMENTS <= "1111001"; --E
					when "1111" => SEGMENTS <= "1110001"; --F
					when others => SEGMENTS <= "1111110";
				end case;
		else 
				case SEL is
					when "0000" => SEGMENTS <= "0111111"; --0
					when "1111" => SEGMENTS <= "0000110"; --1
					when "1110" => SEGMENTS <= "1011011"; --2
					when "1101" => SEGMENTS <= "1001111"; --3
					when "1100" => SEGMENTS <= "1100110"; --4
					when "1011" => SEGMENTS <= "1101101"; --5
					when "1010" => SEGMENTS <= "1111101"; --6
					when "1001" => SEGMENTS <= "0000111"; --7
					when "1000" => SEGMENTS <= "1111111"; --8
					when "0111" => SEGMENTS <= "1100111"; --9
					when "0110" => SEGMENTS <= "1110111"; --A
					when "0101" => SEGMENTS <= "1111100"; --B
					when "0100" => SEGMENTS <= "0111001"; --C
					when "0011" => SEGMENTS <= "1011110"; --D
					when "0010" => SEGMENTS <= "1111001"; --E
					when "0001" => SEGMENTS <= "1110001"; --F
					when others => SEGMENTS <= "1111110"; 
				end case;
		end if;
	end process;
	

end Behavioral;

