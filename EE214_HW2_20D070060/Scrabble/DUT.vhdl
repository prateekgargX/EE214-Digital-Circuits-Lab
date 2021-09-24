library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(
		  input_vector  : in std_logic_vector(3 downto 0);
        output_vector : out std_logic_vector(0 downto 0)
		 );
end entity;

architecture DutWrap of DUT is
  component scrabble is
    port (
        A: in std_logic_vector(3 downto 0);
        Y: out std_logic_vector(0 downto 0)
    ) ;
  end component;
	
begin

   add_instance: scrabble
			port map (
						
						--input map
						A    => input_vector,

						--output map
						Y    => output_vector(0 downto 0)
						
						);

end DutWrap;
