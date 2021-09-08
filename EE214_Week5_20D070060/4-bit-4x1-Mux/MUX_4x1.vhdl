library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MUX_4x1  is
  port (I : in std_logic_vector(3 downto 0); S : in std_logic_vector(1 downto 0); Y: out std_logic);
end entity MUX_4x1;

architecture Struct of MUX_4x1 is
  component  MUX_2x1  is
  port (I: in std_logic_vector(1 downto 0); S: in std_logic; Y: out std_logic);
  end component;
	
  signal tI : std_logic_vector(1 downto 0);  
begin
  m0: MUX_2x1 port map (I(0) => I(0),I(1) => I(1), S => S(1), Y => tI(0) );
  m1: MUX_2x1 port map (I(0) => I(2),I(1) => I(3), S => S(1), Y => tI(1) );
  tm: MUX_2x1 port map (I(0) => tI(0),I(1) => tI(1), S => S(0), Y => Y );
  
end Struct;
