library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MUX_4bit_4x1  is
  port (a,b,c,d : in std_logic_vector(3 downto 0);
			     S : in std_logic_vector(1 downto 0);
              Y : out std_logic_vector(3 downto 0));
end entity MUX_4bit_4x1;  

architecture Struct of MUX_4bit_4x1 is
  component  MUX_4x1  is
  port (I : in std_logic_vector(3 downto 0); S : in std_logic_vector(1 downto 0); Y: out std_logic);
  end component;
	  
begin
  mx0: MUX_4x1  port map(I(0) => a(3),I(1) => b(3) ,I(2) => c(3) ,I(3) => d(3) , S(0) => S(1) ,S(1) => S(0) ,Y => Y(3) );
  mx1: MUX_4x1  port map(I(0) => a(2),I(1) => b(2) ,I(2) => c(2) ,I(3) => d(2) , S(0) => S(1) ,S(1) => S(0) ,Y => Y(2) );
  mx2: MUX_4x1  port map(I(0) => a(1),I(1) => b(1) ,I(2) => c(1) ,I(3) => d(1) , S(0) => S(1) ,S(1) => S(0) ,Y => Y(1) );
  mx3: MUX_4x1  port map(I(0) => a(0),I(1) => b(0) ,I(2) => c(0) ,I(3) => d(0) , S(0) => S(1) ,S(1) => S(0) ,Y => Y(0) );
  
end Struct;
