LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY uc_somador_subtrator_TB IS
END uc_somador_subtrator_TB;
 
ARCHITECTURE behavior OF uc_somador_subtrator_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uc_somador_subtrator
    PORT(
         CLK_UC : IN  std_logic;
         RST_UC : IN  std_logic;
         MORE : IN  std_logic;
         LESS : IN  std_logic;
         EQUAL : IN  std_logic;
         CLR : IN  std_logic;
         EN1 : OUT  std_logic;
         EN2 : OUT  std_logic;
         EN3 : OUT  std_logic;
         OPERATION : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_UC : std_logic := '0';
   signal RST_UC : std_logic := '0';
   signal MORE : std_logic := '0';
   signal LESS : std_logic := '0';
   signal EQUAL : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal EN1 : std_logic;
   signal EN2 : std_logic;
   signal EN3 : std_logic;
   signal OPERATION : std_logic;

   -- Clock period definitions
   constant CLK_UC_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uc_somador_subtrator PORT MAP (
          CLK_UC => CLK_UC,
          RST_UC => RST_UC,
          MORE => MORE,
          LESS => LESS,
          EQUAL => EQUAL,
          CLR => CLR,
          EN1 => EN1,
          EN2 => EN2,
          EN3 => EN3,
          OPERATION => OPERATION
        );

   -- Clock process definitions
   CLK_UC_process :process
   begin
		CLK_UC <= '0';
		wait for CLK_UC_period/2;
		CLK_UC <= '1';
		wait for CLK_UC_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			MORE <= '1';
      wait for 100 ns;
			MORE <= '0';
			EQUAL <= '1';
		wait for 100 ns;
			EQUAL <= '0';
			CLR <= '1';
		wait for 100 ns;
			CLR <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
