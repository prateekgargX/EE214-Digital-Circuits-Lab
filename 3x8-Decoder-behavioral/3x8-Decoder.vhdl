
library ieee;
use ieee.std_logic_1164.all;

entity decoder_3x8 is
    port (
        A: in  std_logic_vector(2 downto 0);
        E: in  std_logic;
        Y: out std_logic_vector(7 downto 0)
    ) ;
end  decoder_3x8;

--architecture bm of decoder_3x8 is
              
architecture bm of decoder_3x8 is

function rolf(A: in std_logic_vector(2 downto 0); E: in std_logic) return std_logic_vector is
            variable op : std_logic_vector(7 downto 0):= (others=>'0');
            variable k  : integer := 0;
		  begin
    
			if E = '1' then
	 
				if A(2) = '1' then 
					k := k+4;
				end if;
		
				if A(1) = '1' then 
					k := k+2;
				end if;
		
				if A(0) = '1' then 
					k := k+1;
				end if;
		
				op(k) :='1';
		
			end if;
        
		  return op;
    end rolf;

begin
bm2 : process( A, E)
begin
    Y <= rolf(A,E);
end process ; 
end bm ; 
