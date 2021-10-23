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
					when "0000" => SEGMENTS <= "1000000"; 
					when "0001" => SEGMENTS <= "1111001"; 
					when "0010" => SEGMENTS <= "0100100"; 
					when "0011" => SEGMENTS <= "0110000"; 
					when "0100" => SEGMENTS <= "0011001"; 
					when "0101" => SEGMENTS <= "0010010"; 
					when "0110" => SEGMENTS <= "0000010"; 
					when "0111" => SEGMENTS <= "1111000"; 
					when "1000" => SEGMENTS <= "0000000"; 
					when "1001" => SEGMENTS <= "0011000"; 
					when "1010" => SEGMENTS <= "0001000"; 
					when "1011" => SEGMENTS <= "0000011"; 
					when "1100" => SEGMENTS <= "1000110"; 
					when "1101" => SEGMENTS <= "0100001"; 
					when "1110" => SEGMENTS <= "0000110"; 
					when "1111" => SEGMENTS <= "0001110"; 
					when others => SEGMENTS <= "0000001"; 
				end case;
		else 
				case SEL is
					when "0000" => SEGMENTS <= "1000000"; 
					when "1111" => SEGMENTS <= "1111001"; 
					when "1110" => SEGMENTS <= "0100100"; 
					when "1101" => SEGMENTS <= "0110000"; 
					when "1100" => SEGMENTS <= "0011001"; 
					when "1011" => SEGMENTS <= "0010010"; 
					when "1010" => SEGMENTS <= "0000010"; 
					when "1001" => SEGMENTS <= "1111000"; 
					when "1000" => SEGMENTS <= "0000000"; 
					when "0111" => SEGMENTS <= "0011000"; 
					when "0110" => SEGMENTS <= "0001000"; 
					when "0101" => SEGMENTS <= "0000011"; 
					when "0100" => SEGMENTS <= "1000110"; 
					when "0011" => SEGMENTS <= "0100001"; 
					when "0010" => SEGMENTS <= "0000110"; 
					when "0001" => SEGMENTS <= "0001110"; 
					when others => SEGMENTS <= "0000001";  
				end case;
		end if;
	end process;
	

end Behavioral;

