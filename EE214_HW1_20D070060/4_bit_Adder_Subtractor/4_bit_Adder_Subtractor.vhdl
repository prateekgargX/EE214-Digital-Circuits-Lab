library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Adder_Subtractor is
  port (A0,A1,A2,A3,B0,B1,B2,B3,M: in std_logic; S0,S1,S2,S3,Cout: out std_logic);
end entity Adder_Subtractor;

architecture Struct of Adder_Subtractor is
  component Full_Adder  is
  port (A, B, Cin: in std_logic; S, Cout: out std_logic);
  end component;

  signal tC0,tC1,tC2,XB0,XB1,XB2,XB3: std_logic;
begin
  x0: XOR_2 port map (A => M, B => B0, Y => XB0);
  x1: XOR_2 port map (A => M, B => B1, Y => XB1);
  x2: XOR_2 port map (A => M, B => B2, Y => XB2);
  x3: XOR_2 port map (A => M, B => B3, Y => XB3);
 
  fa0: Full_Adder port map (A=> A0, B=> XB0 , Cin=> M, S=> S0, Cout=> tC0 ); 	 
  fa1: Full_Adder port map (A=> A1, B=> XB1 , Cin=> tC0, S=> S1, Cout=> tC1 ); 	 
  fa2: Full_Adder port map (A=> A2, B=> XB2 , Cin=> tC1, S=> S2, Cout=> tC2 ); 	 
  fa3: Full_Adder port map (A=> A3, B=> XB3 , Cin=> tC2, S=> S3, Cout=> Cout ); 	 

end Struct;
