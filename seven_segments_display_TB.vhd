LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY seven_segments_display_TB IS
END seven_segments_display_TB;
 
ARCHITECTURE behavior OF seven_segments_display_TB IS 
 
    COMPONENT seven_segments_display
    PORT(
         SEL : IN  std_logic_vector(3 downto 0);
         SEGMENTS : OUT  std_logic_vector(6 downto 0);
         DISPLAYS : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SEL : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal SEGMENTS : std_logic_vector(6 downto 0);
   signal DISPLAYS : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seven_segments_display PORT MAP (
          SEL => SEL,
          SEGMENTS => SEGMENTS,
          DISPLAYS => DISPLAYS
        );
		  
	table_seven_segments_display: process
	begin
		SEL <= "0010";
		wait for 100 ns;
		SEL <= "1111";
	end process;

END;
