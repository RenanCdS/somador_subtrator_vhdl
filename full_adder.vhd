library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CARRY_IN : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           CARRY_OUT : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
begin

	SUM <= (A xor B) xor CARRY_IN;
	CARRY_OUT <= (A and (B or CARRY_IN)) or (CARRY_IN and B);

end Behavioral;

