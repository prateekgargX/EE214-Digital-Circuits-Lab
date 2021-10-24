
library ieee;
use ieee.std_logic_1164.all;

entity scrabble is
    port (
        A: in std_logic_vector(3 downto 0);
        Y: out std_logic_vector(0 downto 0)
    ) ;
end  scrabble ;

--architecture bm of scrabble is
              
architecture bm of scrabble is
begin
bm2 : process( A )
begin
	
    if    A = "0000" then
	 Y <= "1";
	 elsif A = "0100" then
	 Y <= "1";
	 elsif A = "1000" then
	 Y <= "1";
	 elsif A = "1110" then
	 Y <= "1"; 
	 else
	 Y <= "0";
	 end if;

end process ; 
end bm ; 
