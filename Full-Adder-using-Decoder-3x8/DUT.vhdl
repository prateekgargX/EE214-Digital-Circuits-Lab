library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector : out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
  component Full_Adder_v2  is
   port (A,B,C: in std_logic; S,Cout: out std_logic);
  end component;
	
begin

   add_instance: Full_Adder_v2
			port map (
			
						--input map
					   A => input_vector(2),
				      B => input_vector(1),
				      C => input_vector(0),

						--output map
				
						S => output_vector(1),
						Cout => output_vector(0)
						
						);

end DutWrap;


