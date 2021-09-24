library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(
		  input_vector  : in std_logic_vector(17 downto 0);
        output_vector : out std_logic_vector(3 downto 0)
		 );
end entity;

architecture DutWrap of DUT is
  component bit4_4x1_MUX_1 is
    generic(
        operand_width : integer:=4;
        sel_line      : integer:=2
        );
    port(
        A,B,C,D: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        Y: out std_logic_vector(operand_width-1 downto 0)
		  );
  end component;
	
begin

   add_instance: bit4_4x1_MUX_1  generic map(4,2) 
			port map (
						
						--input map
						D    => input_vector( 17 downto 14),
						C    => input_vector( 13 downto 10),
						B    => input_vector( 9  downto 6),
						A    => input_vector( 5  downto 2),
						sel  => input_vector( 1  downto 0),

						--output map
						Y    => output_vector
						
						);

end DutWrap;
