library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity adder_subtractor is
    Port ( ENT_A, ENT_B : in  STD_LOGIC_VECTOR(3 downto 0);
           OP : in  STD_LOGIC;
			  CARRY_OUT, OVERFLOW : out  STD_LOGIC;
           RESULTS: out  STD_LOGIC_VECTOR (3 downto 0));
end adder_subtractor;

architecture Behavioral of adder_subtractor is
	
	component full_adder is
	port( A, B, CARRY_IN : in STD_LOGIC;
        SUM, CARRY_OUT : out STD_LOGIC);
	end component;
	
	signal CARRY_1, CARRY_2, CARRY_3, CARRY_4 : STD_LOGIC;
	signal TMP: std_logic_vector(3 downto 0);
begin
	-- Porta xor da entrada B com a entrada que identificara se e uma soma ou uma subtracao
	TMP(0) <= ENT_B(0) xor OP;
	TMP(1) <= ENT_B(1) xor OP;
	TMP(2) <= ENT_B(2) xor OP;
	TMP(3) <= ENT_B(3) xor OP;
	
	-- Instanciacao dos full adders
	FA_0: full_adder port map (ENT_A(0), TMP(0), OP, RESULTS(0), CARRY_1);
	FA_1: full_adder port map (ENT_A(1), TMP(1), CARRY_1, RESULTS(1), CARRY_2);
	FA_2: full_adder port map (ENT_A(2), TMP(2), CARRY_2, RESULTS(2), CARRY_3);
	FA_3: full_adder port map (ENT_A(3), TMP(3), CARRY_3, RESULTS(3), CARRY_4);

	OVERFLOW <= CARRY_3 xor CARRY_4;
	CARRY_OUT <= CARRY_4;
end Behavioral;

