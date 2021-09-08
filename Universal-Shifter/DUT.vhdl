library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(11 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
  component Universal_Shifter is
   port (
	      I : in std_logic_vector(7 downto 0); 
	      b : in std_logic_vector(2 downto 0);
			L : in std_logic; 
			Y: out std_logic_vector(7 downto 0)
			
			);
   end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Universal_Shifter    
			port map (
					-- order of inputs
					L   => input_vector(11),
					
					b   => input_vector(10 downto 8),
					
					I   => input_vector(7 downto 0),					
					-- order of outputs
					Y   => output_vector(7 downto 0)
					
					);

end DutWrap;
