LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY sd_somador_subtrator_TB IS
END sd_somador_subtrator_TB;
 
ARCHITECTURE behavior OF sd_somador_subtrator_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sd_somador_subtrator_n2
    PORT(
         CLK : IN  std_logic;
         INPUT : IN  std_logic_vector(3 downto 0);
         MORE : IN  std_logic;
         LESS : IN  std_logic;
         EQUAL : IN  std_logic;
         CLEAR : IN  std_logic;
         FLAG : OUT  std_logic;
         DISPLAYS : OUT  std_logic_vector(3 downto 0);
         SEGMENTS : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal INPUT : std_logic_vector(3 downto 0) := (others => '0');
   signal MORE : std_logic := '0';
   signal LESS : std_logic := '0';
   signal EQUAL : std_logic := '0';
   signal CLEAR : std_logic := '0';

 	--Outputs
   signal FLAG : std_logic;
   signal DISPLAYS : std_logic_vector(3 downto 0);
   signal SEGMENTS : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sd_somador_subtrator_n2 PORT MAP (
          CLK => CLK,
          INPUT => INPUT,
          MORE => MORE,
          LESS => LESS,
          EQUAL => EQUAL,
          CLEAR => CLEAR,
          FLAG => FLAG,
          DISPLAYS => DISPLAYS,
          SEGMENTS => SEGMENTS
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		CLEAR <= '1';
		
		-- Teste de soma de dois numeros
      wait for 100 ns;	
		CLEAR <= '0';
		INPUT <= "0001";
		MORE <= '1';
      wait for 50 ns;
		MORE <= '0';
		INPUT <= "0010";
		EQUAL <= '1';
		
		-- Subtracao que resulta em numero positivo
		wait for 100 ns;	
		CLEAR <= '1';
		EQUAL <= '0';
		wait for 50 ns;
		CLEAR <= '0';
		INPUT <= "0100";
		LESS <= '1';
      wait for 50 ns;
		LESS <= '0';
		INPUT <= "0010";
		EQUAL <= '1';
		
		-- Subtracao que resulta em numero negativo
		wait for 100 ns;	
		CLEAR <= '1';
		EQUAL <= '0';
		wait for 50 ns;
		CLEAR <= '0';
		INPUT <= "0010";
		LESS <= '1';
      wait for 50 ns;
		LESS <= '0';
		INPUT <= "0100";
		EQUAL <= '1';

		-- Soma de F + 1
		wait for 100 ns;	
		CLEAR <= '1';
		EQUAL <= '0';
		wait for 50 ns;
		CLEAR <= '0';
		INPUT <= "1111";
		MORE <= '1';
      wait for 50 ns;
		MORE <= '0';
		INPUT <= "0001";
		EQUAL <= '1';
      wait;
   end process;

END;
