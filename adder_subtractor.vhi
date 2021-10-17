
-- VHDL Instantiation Created from source file adder_subtractor.vhd -- 02:52:41 10/17/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT adder_subtractor
	PORT(
		ENT_A : IN std_logic_vector(3 downto 0);
		ENT_B : IN std_logic_vector(3 downto 0);
		OP : IN std_logic;          
		CARRY_OUT : OUT std_logic;
		OVERFLOW : OUT std_logic;
		RESULTS : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_adder_subtractor: adder_subtractor PORT MAP(
		ENT_A => ,
		ENT_B => ,
		CARRY_OUT => ,
		OVERFLOW => ,
		OP => ,
		RESULTS => 
	);


