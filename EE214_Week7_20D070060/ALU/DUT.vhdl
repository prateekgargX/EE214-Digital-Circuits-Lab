library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(9 downto 0);
       	output_vector : out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
  component alu_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
  end component;
	
begin

   add_instance: alu_beh generic map(4,2) 
			port map (
						
						--input map
					   sel => input_vector( 9 downto 8),
						A => input_vector( 7 downto 4),
						B => input_vector( 3 downto 0),
						--output map
						op => output_vector
						
						);

end DutWrap;



