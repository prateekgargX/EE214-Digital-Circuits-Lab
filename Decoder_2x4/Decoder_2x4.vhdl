library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Decoder_2x4  is
  port (A0,A1,E: in std_logic; Y0,Y1,Y2,Y3: out std_logic);
end entity Decoder_2x4;

architecture Struct of Decoder_2x4 is
   component AND_3 is
	 port (A, B, C: in std_logic; Y: out std_logic);
	end component;
	
	component INVERTER is
    port (A: in std_logic; Y: out std_logic);
   end component;
	
  signal tI0, tI1, tA0, tA1: std_logic;  
begin
	n0: INVERTER port map (A=> A0, Y=> tA0);
	n1: INVERTER port map (A=> A1, Y=> tA1);
  
  ag0: AND_3 port map (A => tA0, B => tA1 ,c => E, Y => Y0);
  ag1: AND_3 port map (A => A0, B => tA1 ,c => E, Y => Y1);
  ag2: AND_3 port map (A => tA0, B => A1,c => E, Y => Y2);
  ag3: AND_3 port map (A => A0 , B => A1 ,c => E, Y => Y3);
  
end Struct;
