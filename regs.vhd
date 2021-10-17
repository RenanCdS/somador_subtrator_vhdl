
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity regs is
    Port ( clock : in  STD_LOGIC;
			  data : in  STD_LOGIC_VECTOR (3 downto 0);
           enable : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           q_out : out  STD_LOGIC_VECTOR (3 downto 0));
end regs;

architecture Behavioral of regs is

	signal q_out_temp : STD_LOGIC_VECTOR (3 downto 0);
begin
	
	process (clock, clear)
	begin
		if clear = '1' then
			q_out_temp <= "0000"; -- Caso o clear esteja ativo a saida recebera 0000
		elsif clock'EVENT and clock = '1' then -- Aguarda a borda de subida do clock
			if enable = '1' then
				q_out_temp <= data;
			else
				q_out_temp <= q_out_temp;
			end if;
		end if;
	end process;
	q_out <= q_out_temp;
end Behavioral;

