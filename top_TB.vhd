LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY top_TB IS
END top_TB;
 
ARCHITECTURE behavior OF top_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT somador_subtrator_n2
    PORT(
         CLOCK : IN  std_logic;
         INPUT : IN  std_logic_vector(3 downto 0);
         OPTION : IN  std_logic;
         ENABLE_A : IN  std_logic;
         ENABLE_B : IN  std_logic;
         CLEAR : IN  std_logic;
         CARRY_OUT : OUT  std_logic;
         OVERFLOW : OUT  std_logic;
         DISPLAYS : OUT  std_logic_vector(3 downto 0);
         SEGMENTS : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal INPUT : std_logic_vector(3 downto 0) := (others => '0');
   signal OPTION : std_logic := '0';
   signal ENABLE_A : std_logic := '0';
   signal ENABLE_B : std_logic := '0';
   signal CLEAR : std_logic := '0';

 	--Outputs
   signal CARRY_OUT : std_logic;
   signal OVERFLOW : std_logic;
   signal DISPLAYS : std_logic_vector(3 downto 0);
   signal SEGMENTS : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: somador_subtrator_n2 PORT MAP (
          CLOCK => CLOCK,
          INPUT => INPUT,
          OPTION => OPTION,
          ENABLE_A => ENABLE_A,
          ENABLE_B => ENABLE_B,
          CLEAR => CLEAR,
          CARRY_OUT => CARRY_OUT,
          OVERFLOW => OVERFLOW,
          DISPLAYS => DISPLAYS,
          SEGMENTS => SEGMENTS
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		CLEAR <= '1';
      wait for 100 ns;	
		CLEAR <= '0';
		wait for 200 ns;
		INPUT <= "0001";
		OPTION <= '0';
		ENABLE_A <= '1';
		ENABLE_B <= '0';
      wait for CLOCK_period*4;
		INPUT <= "0010";
		ENABLE_A <= '0';
		ENABLE_B <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
