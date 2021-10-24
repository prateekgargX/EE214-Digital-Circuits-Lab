library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Full_Adder_v2  is
  port (A,B,C: in std_logic; S,Cout: out std_logic);
end entity Full_Adder_v2;
  
architecture Struct of Full_Adder_v2 is
  component Decoder_3x8  is
    port (A0,A1,A2,E: in std_logic; Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7: out std_logic);
  end component;
	
  component OR_4 is
   port (A, B, C, D: in std_logic; Y: out std_logic);
  end component ;

  signal tY1,tY2,tY3,tY4,tY5,tY6,tY7: std_logic;  
begin
	
	dec3x8: Decoder_3x8 port map(A0 => A, A1 => B, A2 =>C, E => '1', Y1 => tY1 ,Y2 => tY2,Y3 => tY3,Y4 => tY4,Y5 => tY5,Y6 => tY6 ,Y7 => tY7);
	
	oSum: OR_4 port map (A => tY1, B => tY2 , C => tY4, D => tY7,Y => S );
	oCout: OR_4 port map (A => tY3, B => tY5, C => tY6, D => tY7,Y => Cout);
end Struct;
