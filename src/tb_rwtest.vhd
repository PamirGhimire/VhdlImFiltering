library ieee;
use ieee.std_logic_1164.all;

entity SYNC
	is port( 
	      I1,I2:in std_logic_vector (7 downto 0);
	      O1,O2:out std_logic_vector (7 downto 0);
        --nRESET: in std_logic;
	      CLK: in std_logic
	      
	       );
END SYNC;

architecture arch_SYNC of SYNC is

begin
 
process (CLK) begin
 if (CLK'event and CLK='1') then 
   O1 <= I1;
   O2 <= I2;
 end if;
end process;

end arch_SYNC;
-------------------------------------------------------------------------------
-- 
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity COMP2N8
	is port( 
	      I1:in std_logic_vector (7 downto 0);
	      I2:in std_logic_vector (7 downto 0);
              --nRESET: in std_logic;
	      --CLK: in std_logic;
	      I2BIGGER: out std_logic
	     
	       );
END COMP2N8;

architecture arch_COMP2N8 of COMP2N8 is

begin
 I2BIGGER <= '1' when (I2 > I1) else '0';
 
-- process (CLK) begin
-- if (CLK'event and CLK='1') then 
--   if (I2 > I1) then I2BIGGER <= '1';
--   else I2BIGGER <= '0';
--   end if;
-- end if;
-- end process;

end arch_COMP2N8;

library ieee;
use ieee.std_logic_1164.all;

entity MUX2I8
	is port( 
	      I1:in std_logic_vector (7 downto 0);
	      I2:in std_logic_vector (7 downto 0);
--	      nRESET: in std_logic;
--	      CLK: in std_logic;
	      SEL: in std_logic;
--            EN: in std_logic;
	      O: out std_logic_vector (7 downto 0)
	       );
END MUX2I8;

architecture arch_MUX2I8 of MUX2I8 is
begin

O <= I1 when SEL = '0' else I2;
-- process (CLK) begin
-- if (CLK'event and CLK='1') then
--   if (EN = '1') then
--     if (SEL = '0') then O <= IN0;
--     else O <= IN1;
--     end if;
--   end if;
-- end if;
-- end process;
end arch_MUX2I8;