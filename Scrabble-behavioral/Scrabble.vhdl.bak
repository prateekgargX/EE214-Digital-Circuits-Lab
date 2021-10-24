
library ieee;
use ieee.std_logic_1164.all;

entity bit4_4x1_MUX_1 is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A,B,C,D: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        Y: out std_logic_vector(operand_width-1 downto 0)
    ) ;
end  bit4_4x1_MUX_1 ;

--architecture bm of bit4_4x1_MUX_1 is
              
architecture bm of bit4_4x1_MUX_1 is
begin
bm2 : process( A, B,	C, D, sel )
begin
	
    if    sel = "00" then
	 Y <= A;
	 elsif sel = "01" then
	 Y <= B;
	 elsif sel = "10" then
	 Y <= C; 
	 else
	 Y <= D;
	 end if;

end process ; 
end bm ; 
