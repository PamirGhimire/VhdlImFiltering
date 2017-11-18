LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

use std.textio.all;
use ieee.std_logic_textio.all;
 
ENTITY tb_dffChain IS
END tb_dffChain;
 
ARCHITECTURE behavior OF tb_dffChain IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DffChain
    PORT(
         d : IN  std_logic_vector(7 downto 0);
         en : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(7 downto 0) := (others => '0');
   signal en : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
	
 	shared variable pixel : std_logic_vector(7 downto 0) := "00000000";

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DffChain PORT MAP (
          d => d,
          en => en,
          clk => clk,
          q => q
        );

   -- Clock process definitions
--   clk_process :process
--   begin
--		clk <= '0';
--		wait for clk_period/2;
--		clk <= '1';
--		wait for clk_period/2;
--   end process;
 

   -- Stimulus process, read data from a file and feed it into the pipeline
   stim_proc: process
		-- variables for the stimulus process
	  FILE data : text;
	  variable sample : line;
	  
   begin		
      -- hold reset state for 100 ns.
     wait for 100 ns;	
		en <= '1';
		 
		 file_open (data,"Lena128x128g_8bits.dat", read_mode);

		 while not endfile(data) loop
			readline (data,sample);
			read (sample, pixel);
			
			clk <= '0';
			wait for clk_period/2;
			clk <= '1';
			wait for clk_period/2;
			
			d <= pixel;
			
		 end loop;
		 
		 file_close (data);
		 wait;
		end process;

END;




