library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector : out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
  component Decoder_3x8  is
    port (A0,A1,A2,E: in std_logic; Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7: out std_logic);
  end component ;
	
begin

   add_instance: Decoder_3x8  
			port map (
			
						--input map
					   A2 => input_vector(3),
				      A1 => input_vector(2),
				      A0 => input_vector(1),
				      E => input_vector(0),

						--output map
						Y7 => output_vector(7),
						Y6 => output_vector(6),
						Y5 => output_vector(5),
						Y4 => output_vector(4),
				      Y3 => output_vector(3),
						Y2 => output_vector(2),
						Y1 => output_vector(1),
						Y0 => output_vector(0)
						
						);

end DutWrap;


