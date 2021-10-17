LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY adder_subtractor_TB IS
END adder_subtractor_TB;
 
ARCHITECTURE behavior OF adder_subtractor_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_subtractor
    PORT(
         ENT_A : IN  std_logic_vector(3 downto 0);
         ENT_B : IN  std_logic_vector(3 downto 0);
         OPTION : IN  std_logic;
         FLAG : OUT  std_logic;
         RESULTS : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENT_A : std_logic_vector(3 downto 0) := (others => '0');
   signal ENT_B : std_logic_vector(3 downto 0) := (others => '0');
   signal OPTION : std_logic := '0';

 	--Outputs
   signal FLAG : std_logic;
   signal RESULTS : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_subtractor PORT MAP (
          ENT_A => ENT_A,
          ENT_B => ENT_B,
          OPTION => OPTION,
          FLAG => FLAG,
          RESULTS => RESULTS
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		ENT_A <= "1000";
		ENT_B <= "0010";
		OPTION <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
