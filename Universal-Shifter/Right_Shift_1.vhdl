library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Right_Shift_1 is
  port (I : in std_logic_vector(7 downto 0); E : in std_logic; Y: out std_logic_vector(7 downto 0));
end entity Right_Shift_1;

architecture Struct of Right_Shift_1 is
  component  MUX_2x1  is
  port (I: in std_logic_vector(1 downto 0); S: in std_logic; Y: out std_logic);
  end component;
	
begin
  R_Shift_1: for a in 0 to 7 generate
    
	 lsb: if a < 7 generate
            mx: MUX_2x1   port map(I(0) => I(a), I(1) => I(a+1), S => E, Y => Y(a));
        end generate lsb;

        msb: if a > 6 generate
            mx: MUX_2x1   port map(I(0) => I(a), I(1) => '0', S => E, Y => Y(a));
        end generate msb;
  
  end generate ; --Right_Shift_1
	 	 
end Struct;
