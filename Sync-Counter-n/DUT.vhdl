library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
  component Sequence_Generator_Structural is
    port (
        reset:   in std_logic;
        clk:   in std_logic;
        Y:   out std_logic_vector(3 downto 0)
    ) ;
   end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Sequence_Generator_Structural 
	
			port map (
					-- order of inputs
					reset   => input_vector(1),
					clk   => input_vector(0),
					-- order of outputs
					Y   => output_vector
					
					);

end DutWrap;
