--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:14:52 10/16/2021
-- Design Name:   
-- Module Name:   /home/ise/ISE_Projects/somador_subtrator_n2/adder_subtractor_TB.vhd
-- Project Name:  somador_subtrator_n2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_subtractor
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
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
         CARRY_OUT : OUT  std_logic;
         OVERFLOW : OUT  std_logic;
         OP : IN  std_logic;
         RESULTS : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENT_A : std_logic_vector(3 downto 0) := (others => '0');
   signal ENT_B : std_logic_vector(3 downto 0) := (others => '0');
   signal CARRY_OUT : std_logic := '0';
   signal OVERFLOW : std_logic := '0';
   signal OP : std_logic := '0';

 	--Outputs
   signal RESULTS : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_subtractor PORT MAP (
          ENT_A => ENT_A,
          ENT_B => ENT_B,
          CARRY_OUT => CARRY_OUT,
          OVERFLOW => OVERFLOW,
          OP => OP,
          RESULTS => RESULTS
        );
		  
	table_adder_subtractor: process
   begin
		ENT_A <= "1000"; -- resultado da soma deve ser 1010
		ENT_B <= "0010";
		OP <= '0';
		wait for 100 ns;
		ENT_A <= "1111"; -- resultado da soma deve ser 1110 com carry out igual a 1
		ENT_B <= "1111";
		OP <= '0';
		wait for 100 ns;
		ENT_A <= "0111";
		ENT_B <= "0011";
		OP <= '1';
		wait for 100 ns;
		ENT_A <= "0001";
		ENT_B <= "0010";
		OP <= '0';
		wait;
	end process;

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
