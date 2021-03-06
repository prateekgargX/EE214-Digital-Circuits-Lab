library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Scrabble  is
  port (X0,X1,X2,X3 : in std_logic; Y : out std_logic);
end entity Scrabble;
  
architecture Struct of Scrabble is
  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component ;

  component XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component ;

  component XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component ;

  signal t0,t1: std_logic;  
begin
	
	xnor1: XNOR_2 port map(A => X0, B => X1, Y => t0);
	xor1 : XOR_2  port map(A => X2, B => X3, Y => t1);
	and1 : AND_2  port map(A => t0, B => t1, Y => Y);
	
end Struct;
