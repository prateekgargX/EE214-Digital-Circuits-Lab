library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(
		  input_vector  : in std_logic_vector(3 downto 0);
        output_vector : out std_logic_vector(7 downto 0)
		 );
end entity;

architecture DutWrap of DUT is
  component decoder_3x8 is
    port (
        A: in std_logic_vector(2 downto 0);
        E: in std_logic;
        Y: out std_logic_vector(7 downto 0)
    ) ;
  end component;
	
begin

   add_instance: decoder_3x8 
			port map (
						
						--input map
						A    => input_vector( 3  downto 1),
						E	  => input_vector(0),

						--output map
						Y    => output_vector
						
						);

end DutWrap;
