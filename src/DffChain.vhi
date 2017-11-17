
-- VHDL Instantiation Created from source file DffChain.vhd -- 15:27:32 11/17/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DffChain
	PORT(
		d : IN std_logic_vector(7 downto 0);
		en : IN std_logic;
		clk : IN std_logic;          
		q : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_DffChain: DffChain PORT MAP(
		d => ,
		en => ,
		clk => ,
		q => 
	);


