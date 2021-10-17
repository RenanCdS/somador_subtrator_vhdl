LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY regs_TB IS
END regs_TB;
 
ARCHITECTURE behavior OF regs_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regs
    PORT(
         clock : IN  std_logic;
         data : IN  std_logic_vector(3 downto 0);
         enable : IN  std_logic;
         clear : IN  std_logic;
         q_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal data : std_logic_vector(3 downto 0) := (others => '0');
   signal enable : std_logic := '0';
   signal clear : std_logic := '0';

 	--Outputs
   signal q_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regs PORT MAP (
          clock => clock,
          data => data,
          enable => enable,
          clear => clear,
          q_out => q_out
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

     -- Stimulus process
   stim_proc: process
   begin		
      clear <= '1';
		
      wait for clock_period;	
		clear <= '0';
		data <= "1010";
		wait for clock_period;
		enable <= '1';
		wait for clock_period;
		enable <= '0';
		data <= "1111";
		wait for clock_period * 4;
		enable <= '1';
		wait for clock_period;
		enable <= '0';
      wait;
   end process;

END;
