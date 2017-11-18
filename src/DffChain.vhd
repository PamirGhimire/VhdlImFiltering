library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


-- PIPELINE ENTITY
entity DffChain is
generic (busWidth : integer := 8);
	port(d : in std_logic_vector(busWidth-1 downto 0);
		en : in std_logic;
		clk : in std_logic;
		q : out std_logic_vector(busWidth-1 downto 0) );
end DffChain;

-- ARCHITECTURE OF PIPELINE ENTITY
architecture dffchain_arch of DffChain is

	-- component instantiation of generic flip flop
component dGenFlipFLop
generic (busWidth : integer := 8);
	port(d : in std_logic_vector(busWidth-1 downto 0);
		  q : out std_logic_vector(busWidth-1 downto 0);
		  clk : in std_logic;
		  en : in std_logic );
end component;


	-- component instantiation of fifo
COMPONENT fifo_jd
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    prog_full_thresh : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    prog_full : OUT STD_LOGIC
  );
END COMPONENT;

	-- variables for communicating results of dff's and fifo's in the pipeline
type tempCommArray is array(10 downto 0) of std_logic_vector(7 downto 0); 
signal temp : tempCommArray;

	-- for initializing processing:
signal pcounter : std_logic_vector(13 downto 0) := "00000000000000" ;

begin

incrementCounter : process(clk)
begin
if (rising_edge(clk)) then
	pcounter <= std_logic_vector(unsigned(pcounter) + 1);
end if;
end process;

-- image row (n - 2)
f11 : dGenFlipFlop generic map (busWidth => 8) port map(d => d, en => en, clk => clk, q => temp(0));
f12 :  dGenFlipFlop generic map (busWidth => 8) port map(d => temp(0), en => en, clk => clk, q => temp(1));
f13 : dGenFlipFlop generic map (busWidth => 8) port map(d => temp(1), en => en, clk => clk, q => temp(2) );
fifo1 : fifo_jd port map(clk => clk, rst => '0', din => temp(2), wr_en => '1', rd_en => '1', prog_full_thresh => "1111111111", dout => temp(3));

-- image row (n - 1)
f21 : dGenFlipFlop generic map (busWidth => 8) port map(d => temp(3), en => en, clk => clk, q => temp(4));
f22 : dGenFlipFlop generic map (busWidth => 8) port map(d => temp(4), en => en, clk => clk, q => temp(5));
f23 : dGenFlipFlop generic map (busWidth => 8) port map(d => temp(5), en => en, clk => clk, q => temp(6));
fifo2 : fifo_jd port map(clk => clk, rst => '0', din => temp(6), wr_en => '1', rd_en => '1', prog_full_thresh => "1111111111", dout => temp(7));

-- image row (n)
f31 : dGenFlipFlop generic map (busWidth => 8) port map(d => temp(7), en => en, clk => clk, q => temp(8));
f32 : dGenFlipFlop generic map (busWidth => 8) port map(d => temp(8), en => en, clk => clk, q => temp(9));
f33 : dGenFlipFlop generic map (busWidth => 8) port map(d => temp(9), en => en, clk => clk, q => temp(10));

-- get output from temp buffer
getOut : q <= temp(10);



end dffchain_arch;

