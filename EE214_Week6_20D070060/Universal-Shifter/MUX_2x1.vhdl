library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MUX_2x1  is
  port (I: in std_logic_vector(1 downto 0); S: in std_logic; Y: out std_logic);
end entity MUX_2x1;

architecture Struct of MUX_2x1 is
  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
   end component;

	component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
	end component;
	
	component INVERTER is
    port (A: in std_logic; Y: out std_logic);
   end component;
	
  signal tI: std_logic_vector(2 downto 0);  
begin
  not2:INVERTER port map(A => S, Y => tI(2));
  a0: AND_2 port map (A => I(0), B => tI(2), Y => tI(0));
  a1: AND_2 port map (A => I(1), B => S, Y => tI(1));
  o2: OR_2  port map (A => tI(0), B => tI(1), Y =>Y);
  
end Struct;
