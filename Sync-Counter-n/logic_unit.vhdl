library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity logic_unit is
    port (
        I:   in std_logic_vector(2 downto 0);
        Y:   out std_logic_vector(3 downto 0)
    ) ;
end logic_unit ;

architecture st of logic_unit is
begin

Y(3 downto 1) <= I; 
Y(0) <= '1';
end st;
