
-- VHDL Instantiation Created from source file somador_subtrator_n2.vhd -- 00:27:50 10/24/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_somador_subtrator_n2: somador_subtrator_n2 PORT MAP(
		CLOCK => ,
		INPUT => ,
		OPTION => ,
		ENABLE_A => ,
		ENABLE_B => ,
		ENABLE_EXIT => ,
		CLEAR => ,
		CLEAR_EXIT => ,
		FLAG => ,
		DISPLAYS => ,
		SEGMENTS => 
	);


