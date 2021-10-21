----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:13:37 10/21/2021 
-- Design Name: 
-- Module Name:    five_bit_regs - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity five_bit_regs is
	Port ( clock : in  STD_LOGIC;
			  data : in  STD_LOGIC_VECTOR (4 downto 0);
           enable : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           q_out : out  STD_LOGIC_VECTOR (4 downto 0));
end five_bit_regs;

architecture Behavioral of five_bit_regs is

	signal q_out_temp : STD_LOGIC_VECTOR (4 downto 0);
begin

	process (clock, clear)
		begin
			if clear = '1' then
				q_out_temp <= "00000"; -- Caso o clear esteja ativo a saida recebera 0000
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

