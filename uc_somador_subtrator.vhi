
-- VHDL Instantiation Created from source file uc_somador_subtrator.vhd -- 00:28:21 10/24/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_uc_somador_subtrator: uc_somador_subtrator PORT MAP(
		CLK_UC => ,
		RST_UC => ,
		MORE => ,
		LESS => ,
		EQUAL => ,
		CLR => ,
		EN1 => ,
		EN2 => ,
		EN3 => ,
		OPERATION => 
	);


