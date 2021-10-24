library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sd_somador_subtrator_n2 is
    Port ( 
			  CLK : in STD_LOGIC;
			  INPUT : in STD_LOGIC_VECTOR(3 downto 0);
			  MORE : in  STD_LOGIC;
           LESS : in  STD_LOGIC;
           EQUAL : in  STD_LOGIC;
           CLEAR : in  STD_LOGIC;
			  FLAG : out STD_LOGIC;
			  DISPLAYS : out STD_LOGIC_VECTOR(3 downto 0);
			  SEGMENTS : out STD_LOGIC_VECTOR(6 downto 0));
end sd_somador_subtrator_n2;

architecture Behavioral of sd_somador_subtrator_n2 is
	COMPONENT somador_subtrator_n2
	PORT(
		CLOCK : IN std_logic;
		INPUT : IN std_logic_vector(3 downto 0);
		OPTION : IN std_logic;
		ENABLE_A : IN std_logic;
		ENABLE_B : IN std_logic;
		ENABLE_EXIT : IN std_logic;
		CLEAR : IN std_logic;
		CLEAR_EXIT : IN std_logic;          
		FLAG : OUT std_logic;
		DISPLAYS : OUT std_logic_vector(3 downto 0);
		SEGMENTS : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
	COMPONENT uc_somador_subtrator
	PORT(
		CLK_UC : IN std_logic;
		RST_UC : IN std_logic;
		MORE : IN std_logic;
		LESS : IN std_logic;
		EQUAL : IN std_logic;
		CLR : IN std_logic;          
		EN1 : OUT std_logic;
		EN2 : OUT std_logic;
		EN3 : OUT std_logic;
		OPERATION : OUT std_logic
		);
	END COMPONENT;
	
	signal EN1_ENABLE_A, EN2_ENABLE_B, EN3_ENABLE_EXIT, OPERATION_OPTION : STD_LOGIC;
begin

	sd_somador_subtrator_n2: somador_subtrator_n2 PORT MAP(
		CLOCK => CLK,
		INPUT => INPUT,
		OPTION => OPERATION_OPTION,
		ENABLE_A => EN1_ENABLE_A,
		ENABLE_B => EN2_ENABLE_B,
		ENABLE_EXIT => EN3_ENABLE_EXIT,
		CLEAR => CLEAR,
		CLEAR_EXIT => CLEAR,
		FLAG => FLAG,
		DISPLAYS => DISPLAYS,
		SEGMENTS => SEGMENTS
	);
	
	sd_somador_subtrator: uc_somador_subtrator PORT MAP(
		CLK_UC => CLK,
		RST_UC => CLEAR,
		MORE => MORE,
		LESS => LESS,
		EQUAL => EQUAL,
		CLR => CLEAR,
		EN1 => EN1_ENABLE_A,
		EN2 => EN2_ENABLE_B,
		EN3 => EN3_ENABLE_EXIT,
		OPERATION => OPERATION_OPTION
	);

end Behavioral;

