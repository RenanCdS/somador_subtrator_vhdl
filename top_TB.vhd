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
			ENABLE_EXIT: IN  std_logic;
         CLEAR : IN  std_logic;
			CLEAR_EXIT: IN  std_logic;
         FLAG : OUT  std_logic;
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
	signal ENABLE_EXIT : std_logic := '0';
   signal CLEAR_EXIT : std_logic := '0';
	signal CLEAR : std_logic := '0';

 	--Outputs
   signal FLAG : std_logic;
   signal DISPLAYS : std_logic_vector(3 downto 0);
   signal SEGMENTS : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: somador_subtrator_n2 PORT MAP (
          CLOCK => CLOCK,
          INPUT => INPUT,
          OPTION => OPTION,
          ENABLE_A => ENABLE_A,
          ENABLE_B => ENABLE_B,
			 ENABLE_EXIT => ENABLE_EXIT,
          CLEAR => CLEAR,
			 CLEAR_EXIT => CLEAR_EXIT,
          FLAG => FLAG,
          DISPLAYS => DISPLAYS,
          SEGMENTS => SEGMENTS
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period;
		CLOCK <= '1';
		wait for CLOCK_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		CLEAR	<= '1';
		CLEAR_EXIT <= '0';
		ENABLE_EXIT <= '1';
		
		-- Adicao comum
--      wait for CLOCK_period;	
--		CLEAR <= '0';
--		OPTION <= '0';
--		ENABLE_A <= '1';
--		ENABLE_B <= '0';
--		INPUT <= "0001";
--      wait for CLOCK_period;
--		ENABLE_A <= '0';
--		ENABLE_B <= '1';
--		INPUT <= "0010";
		
		-- Subtracao que resulta em numero negativo
--		wait for CLOCK_period;
--		CLEAR	<= '0';
--		OPTION <= '1';
--		ENABLE_A <= '1';
--		ENABLE_B <= '0';
--		INPUT <= "0010";
--		wait for CLOCK_period;
--		ENABLE_A <= '0';
--		ENABLE_B <= '1';
--		INPUT <= "1000";
		
		-- Subtracao que resulta em numero positivo
--		wait for CLOCK_period;
--		CLEAR	<= '0';
--		OPTION <= '1';
--		ENABLE_A <= '1';
--		INPUT <= "1010";
--		ENABLE_B <= '0';
--		wait for CLOCK_period;
--		ENABLE_A <= '0';
--		INPUT <= "0010";
--		ENABLE_B <= '1';
		
		-- Adicao de F + 1. Deve resultar em 0 e acender a flag
		wait for CLOCK_period;
		CLEAR	<= '0';
		OPTION <= '0';
		ENABLE_A <= '1';
		INPUT <= "1111";
		ENABLE_B <= '0';
		wait for CLOCK_period;
		ENABLE_A <= '0';
		INPUT <= "0001";
		ENABLE_B <= '1';
      wait;
   end process;

END;
