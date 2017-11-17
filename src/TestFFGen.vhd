LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestFFGen IS
END TestFFGen;
 
ARCHITECTURE behavior OF TestFFGen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dGenFlipFlop
    PORT(
         d : IN  std_logic_vector(7 downto 0);
         q : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         en : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal en : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dGenFlipFlop PORT MAP (
          d => d,
          q => q,
          clk => clk,
          en => en
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;				
		en <= '1';	
		d <= "11110000";
		
      wait for clk_period*10;
		d <= "00001111";
      -- insert stimulus here 

      wait;
   end process;

END;
