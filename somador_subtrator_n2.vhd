----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity somador_subtrator_n2 is
    Port ( ENT_A, ENT_B : in  STD_LOGIC_VECTOR (3 downto 0);
			  OPTION : in STD_LOGIC; -- Opcao que indica se sera adicao (0) ou subtracao (1)
           FLAG : out  STD_LOGIC;
			  CARRY_OUT, OVERFLOW : out STD_LOGIC;
           SEGMENTS : out  STD_LOGIC_VECTOR (6 downto 0));
end somador_subtrator_n2;

architecture Behavioral of somador_subtrator_n2 is

	component adder_subtractor 
		port (ENT_A, ENT_B : in STD_LOGIC_VECTOR(3 downto 0);
				OP: in STD_LOGIC;
				CARRY_OUT, OVERFLOW : out STD_LOGIC;
				RESULTS : out  STD_LOGIC_VECTOR (3 downto 0)
				);
	end component;
	
	component seven_segments_display 
		port (SEL : in STD_LOGIC_VECTOR(3 downto 0);
				SEGMENTS : out  STD_LOGIC_VECTOR (6 downto 0);
				DISPLAYS : out  STD_LOGIC_VECTOR (3 downto 0)
				);
	end component;
	
	signal adder_subtractor_to_display : STD_LOGIC_VECTOR (3 downto 0);
begin
	
	-- Instanciacao do somador de 4bits
	ADDER_SUBTRACTOR: adder_subtractor 
		port map (ENT_A, ENT_B, OPTION,CARRY_OUT, OVERFLOW, adder_subtractor_to_display);
		
	-- Instanciacao do display de 7 segmentos
	SEVEN_SEGMENTS_DISPLAY: seven_segments_display PORT MAP(
		SEL => adder_subtractor_to_display,
		SEGMENTS => SEGMENTS,
		DISPLAYS => "0111"
	);

end Behavioral;

