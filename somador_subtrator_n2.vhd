----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity somador_subtrator_n2 is
    Port ( CLOCK : in STD_LOGIC;
			  INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
			  OPTION : in STD_LOGIC; -- Opcao que indica se sera adicao (0) ou subtracao (1)
			  ENABLE_A, ENABLE_B, ENABLE_EXIT : in STD_LOGIC;
			  CLEAR, CLEAR_EXIT : in STD_LOGIC;
			  
			  -- Outputs
			  FLAG : out STD_LOGIC;
			  DISPLAYS : out STD_LOGIC_VECTOR (3 downto 0); -- Usado para mapear qual dos displays de set esegmentos sera usado
           SEGMENTS : out  STD_LOGIC_VECTOR (6 downto 0));
end somador_subtrator_n2;

 architecture Behavioral of somador_subtrator_n2 is

	COMPONENT adder_subtractor
		PORT(
			ENT_A : IN std_logic_vector(3 downto 0);
			ENT_B : IN std_logic_vector(3 downto 0);
			OPTION : IN std_logic;          
			RESULTS : OUT std_logic_vector(4 downto 0)
			);
	END COMPONENT;
	
	COMPONENT seven_segments_display
	PORT(
		SEL : IN std_logic_vector(3 downto 0);
		FLAG : IN std_logic;          
		SEGMENTS : OUT std_logic_vector(6 downto 0);
		DISPLAYS : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	component regs
	port(
		clock : in std_logic;
		data : in std_logic_vector(3 downto 0);
		enable : in std_logic;
		clear : in std_logic;          
		q_out : out std_logic_vector(3 downto 0)
		);
	end component;
	
	component five_bit_regs
	port(
		clock : in std_logic;
		data : in std_logic_vector(4 downto 0);
		enable : in std_logic;
		clear : in std_logic;          
		q_out : out std_logic_vector(4 downto 0)
		);
	end component;
	
	-- ligacao do registrador de saida para o display
	signal regs_EXIT_to_display : STD_LOGIC_VECTOR (4 downto 0);
	
	signal regs_A_q_out : STD_LOGIC_VECTOR (3 downto 0);
	signal regs_B_q_out : STD_LOGIC_VECTOR (3 downto 0);
	
	--ligacao do somador/subtrator para o registrador de saida
	signal adder_subtractor_to_regs_EXIT : STD_LOGIC_VECTOR (4 downto 0);
begin
		
	-- Instanciacao do display de 7 segmentos
	SEVEN_SEGMENTS_DISPLAY_INST: seven_segments_display PORT MAP(
		SEL => regs_EXIT_to_display(3 downto 0),
		FLAG => regs_EXIT_to_display(4),
		SEGMENTS => SEGMENTS,
		DISPLAYS => DISPLAYS
	);
	
	REG_A: regs port map(
		clock => CLOCK,
		data => INPUT,
		enable => ENABLE_A,
		clear => CLEAR,
		q_out => regs_A_q_out
	);
	
	REG_B: regs port map(
		clock => CLOCK,
		data => INPUT,
		enable => ENABLE_B,
		clear => CLEAR,
		q_out => regs_B_q_out
	);
	
	REG_EXIT: five_bit_regs port map(
		clock => CLOCK,
		data => adder_subtractor_to_regs_EXIT,
		enable => ENABLE_EXIT,
		clear => CLEAR_EXIT,
		q_out => regs_EXIT_to_display
	);
	
	-- Instanciacao do somador de 4bits
	ADDER_SUBTRACTOR_INST: adder_subtractor PORT MAP(
		ENT_A => regs_A_q_out,
		ENT_B => regs_B_q_out,
		OPTION => OPTION,
		RESULTS => adder_subtractor_to_regs_EXIT
	);
	
	FLAG <= regs_EXIT_to_display(4);

end Behavioral;

