library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all; 

entity adder_subtractor is
    Port ( 
			  ENT_A, ENT_B : in  STD_LOGIC_VECTOR(3 downto 0);
           OPTION : in  STD_LOGIC;
           RESULTS: out  STD_LOGIC_VECTOR (4 downto 0));
end adder_subtractor;

architecture Behavioral of adder_subtractor is
	signal OPERATION : STD_LOGIC_VECTOR (4 downto 0);
begin
--			 Validacao. Caso a opcao seja 0, sera realizado uma soma, caso contrario realizara uma subtracao
			with OPTION select 
				OPERATION <= ('0' & ENT_A) + ('0' & ENT_B) when '0',
						('0' & ENT_A) - ('0' & ENT_B) when '1',
						"00000" when others;
						
--			FLAG <= OPERATION(4); -- Flag que indica se o numero e negativo
			RESULTS <= OPERATION; -- Resultado da operacao
				
end Behavioral;

