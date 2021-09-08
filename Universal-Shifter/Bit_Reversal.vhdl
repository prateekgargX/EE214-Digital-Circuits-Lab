library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Bit_Reversal is
  port (I : in std_logic_vector(7 downto 0); E : in std_logic; Y: out std_logic_vector(7 downto 0));
end entity Bit_Reversal;

architecture Struct of Bit_Reversal is
  component  MUX_2x1  is
  port (I: in std_logic_vector(1 downto 0); S: in std_logic; Y: out std_logic);
  end component;
	
begin
  bit_Rev : for a in 0 to 7 generate
    
	 mx: MUX_2x1 port map(I(0) => I(a), I(1) => I(7-a), S => E, Y => Y(a));
  
  end generate ; --Bit_Reversal
	 	 
end Struct;
