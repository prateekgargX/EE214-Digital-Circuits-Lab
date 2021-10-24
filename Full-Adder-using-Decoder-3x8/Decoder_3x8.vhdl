library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Decoder_3x8  is
  port (A0,A1,A2,E: in std_logic; Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7: out std_logic);
end entity Decoder_3x8;

architecture Struct of Decoder_3x8 is
   component AND_2 is
	 port (A, B: in std_logic; Y: out std_logic);
	end component ;
	
	component INVERTER is
    port (A: in std_logic; Y: out std_logic);
   end component ;
	 
  component Decoder_2x4  is
    port (A0,A1,E: in std_logic; Y0,Y1,Y2,Y3: out std_logic);
  end component ;

  signal tA2,tE0,tE1: std_logic;  
begin
	ng: INVERTER port map (A=> A2, Y=> tA2);
   ag0: AND_2 port map (A => tA2, B => E, Y => tE0);
   ag1: AND_2 port map (A => A2, B => E, Y => tE1);
   dec2x4_0: Decoder_2x4 port map (A0 => A0, A1 =>A1, E => tE0, Y0 => Y0, Y1 => Y1, Y2 => Y2, Y3 => Y3);
	dec2x4_1: Decoder_2x4 port map (A0 => A0, A1 =>A1, E => tE1, Y0 => Y4, Y1 => Y5, Y2 => Y6, Y3 => Y7);
end Struct;
