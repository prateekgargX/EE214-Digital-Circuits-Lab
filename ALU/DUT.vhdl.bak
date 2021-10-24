library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector : out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
  component Scrabble  is
   port (X0,X1,X2,X3 : in std_logic; Y : out std_logic);
  end component;
	
begin

   add_instance: Scrabble
			port map (
			
						--input map
					   X0 => input_vector(3),
						X1 => input_vector(2),
				      X2 => input_vector(1),
				      X3 => input_vector(0),

						--output map
						Y => output_vector(0)
						
						);

end DutWrap;



