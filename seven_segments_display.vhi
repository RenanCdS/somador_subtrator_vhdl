
-- VHDL Instantiation Created from source file seven_segments_display.vhd -- 04:03:42 10/16/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT seven_segments_display
	PORT(
		SEL : IN std_logic_vector(3 downto 0);          
		SEGMENTS : OUT std_logic_vector(6 downto 0);
		DISPLAYS : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_seven_segments_display: seven_segments_display PORT MAP(
		SEL => ,
		SEGMENTS => ,
		DISPLAYS => 
	);


