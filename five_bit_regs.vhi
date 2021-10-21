
-- VHDL Instantiation Created from source file five_bit_regs.vhd -- 02:17:01 10/21/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT five_bit_regs
	PORT(
		clock : IN std_logic;
		data : IN std_logic_vector(4 downto 0);
		enable : IN std_logic;
		clear : IN std_logic;          
		q_out : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

	Inst_five_bit_regs: five_bit_regs PORT MAP(
		clock => ,
		data => ,
		enable => ,
		clear => ,
		q_out => 
	);


