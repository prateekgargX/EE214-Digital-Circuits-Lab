library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Universal_Shifter is
  port (
          I : in std_logic_vector(7 downto 0); 
          b : in std_logic_vector(2 downto 0); 
	       L : in std_logic; 
          Y: out std_logic_vector(7 downto 0)
	 
	    );
end entity Universal_Shifter;

architecture Struct of Universal_Shifter is
  component Bit_Reversal is
    port (I : in std_logic_vector(7 downto 0); E : in std_logic; Y: out std_logic_vector(7 downto 0)); 
  end component;
  
  component Right_Shift_4 is
    port (I : in std_logic_vector(7 downto 0); E : in std_logic; Y: out std_logic_vector(7 downto 0));
  end component;

  component Right_Shift_2 is
  port (I : in std_logic_vector(7 downto 0); E : in std_logic; Y: out std_logic_vector(7 downto 0)); 
  end component;
  
  component Right_Shift_1 is
  port (I : in std_logic_vector(7 downto 0); E : in std_logic; Y: out std_logic_vector(7 downto 0)); 
  end component;
  
  signal Y1,Y2,Y3,Y4: std_logic_vector(7 downto 0);
  
begin
  	 rev0: Bit_Reversal  port map (I => I,  E => L,   Y => Y1);
	 R4:   Right_Shift_4 port map (I => Y1, E => b(2),Y => Y2);
	 R2:   Right_Shift_2 port map (I => Y2, E => b(1),Y => Y3);
	 R1:   Right_Shift_1 port map (I => Y3, E => b(0),Y => Y4);
	 rev1: Bit_Reversal  port map (I => Y4, E => L,    Y => Y);
end Struct;
