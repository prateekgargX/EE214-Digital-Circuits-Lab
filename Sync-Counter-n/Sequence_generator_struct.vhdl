
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.Flipflops.all;

entity Sequence_Generator_Structural is
    port (
        reset:   in std_logic;
        clk:   in std_logic;
        Y:   out std_logic_vector(3 downto 0)
    ) ;
end Sequence_generator_Structural ;

architecture structa of Sequence_generator_Structural is
  component mod2n_counter is
	generic(
				n: integer:=3
				);
    port(
        reset:   in std_logic;
        clk  :   in std_logic;
        Y    :  out std_logic_vector(n-1 downto 0)
        ); 
  end component;
	
  component logic_unit is
    port (
        I:   in std_logic_vector(2 downto 0);
        Y:   out std_logic_vector(3 downto 0)
    ) ;
  end component;

signal D: std_logic_vector(2 downto 0); 
	 
begin
counter: mod2n_counter generic map(3)
	port map(
					reset => reset,
					clk   => clk,
					Y     => D
				
				);
lu: logic_unit port map(I => D,Y =>Y);
end structa ;
