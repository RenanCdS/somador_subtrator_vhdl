-- EC8 - Arquitetura de Computadores II - N1 2 Bimestre
-- Rachel Moreira 081180045
-- Renan Castro dos Santos 081180029
-- Wellison Sousa 081180040
-- Wesley Rogerio 081180035

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uc_somador_subtrator is
    Port ( 
			  CLK_UC : in  STD_LOGIC;
           RST_UC : in  STD_LOGIC;
			  MORE : in  STD_LOGIC;
           LESS : in  STD_LOGIC;
           EQUAL : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           EN1, EN2, EN3 : out  STD_LOGIC;
           OPERATION : out  STD_LOGIC);
end uc_somador_subtrator;

architecture Behavioral of uc_somador_subtrator is

	
	type STATE_TYPE is (e0, e1, e2, e3, e4, e5, e6, e7); -- todos os estados devem ser declarados!
	
	signal CURRENT_STATE, NEXT_STATE : STATE_TYPE;
begin
		
	sincronism: process (CLK_UC, RST_UC)
	begin
		if (RST_UC='1') then
		
			CURRENT_STATE <= e0;
		
		elsif (CLK_UC' event and CLK_UC='1') then
			
			CURRENT_STATE <= NEXT_STATE;
		
		end if;
	end process;
	
	fsm_progress: process (CURRENT_STATE, MORE, LESS, EQUAL, CLR)
	begin
	
		NEXT_STATE <= CURRENT_STATE;
		
		case (CURRENT_STATE) is
			
			when e0 =>
				EN1 <= '0';
				EN2 <= '0';
				EN3 <= '0';
				OPERATION <= '0';
			
				if (MORE = '1') then 
					NEXT_STATE <= e1;
				elsif (LESS = '1') then
					NEXT_STATE <= e2;
				else
					NEXT_STATE <= e0;
				end if;
			when e1 => 
				EN1 <= '1';
				OPERATION <= '0';
				
				NEXT_STATE <= e4;
			when e2 =>
				EN1 <= '1';
				OPERATION <= '1';
				
				NEXT_STATE <= e3;
			when e3 =>
				EN1 <= '0';
				EN2 <= '1';
				OPERATION <= '1';
				
				if (EQUAL = '1') then
					NEXT_STATE <= e5;
				else
					NEXT_STATE <= e3;
				end if;
			when e4 => 
				EN1 <= '0';
				EN2 <= '1';
				EN3 <= '0';
				OPERATION <= '0';
				
				if (EQUAL = '1') then
					NEXT_STATE <= e6;
				else
					NEXT_STATE <= e4;
				end if;
			when e5 =>
				EN2 <= '1';
				EN3 <= '1';
				OPERATION <= '1';
				
				NEXT_STATE <= e7;
			when e6 =>
				EN2 <= '1';
				EN3 <= '1';
				OPERATION <= '0';
				
				NEXT_STATE <= e7;
			when e7 => 
				EN1 <= '0';
				EN2 <= '0';
				EN3 <= '0';
	
				if (CLR = '1') then
					NEXT_STATE <= e0;
				else
					NEXT_STATE <= e7;
				end if;
		end case;
	end process;
	
	
end Behavioral;

