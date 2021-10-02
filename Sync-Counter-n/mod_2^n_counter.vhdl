
library ieee;
use ieee.std_logic_1164.all;
use work.Flipflops.all;

entity mod2n_counter is
	generic(
				n: integer:=3
          );
			 
    port(
        reset:   in std_logic;
        clk  :   in std_logic;
        Y    :  out std_logic_vector(n-1 downto 0)
        );
		  
end mod2n_counter;

architecture struct of mod2n_counter is
	 component dff_reset	is port(
		   							  D		:in std_logic;
	   								  clk    :in std_logic;
			   						  reset  :in std_logic;
				   					  Q      :out std_logic
									  );
	 end component dff_reset;
	 
signal L: std_logic_vector(n downto 0); 
signal Q: std_logic_vector(n-1 downto 0);	 	 
signal D: std_logic_vector(n-1 downto 0);	 	 
begin

	L(0) <= '1';
	 
	as: for i in 0 to n-1 generate
		D(i) <= Q(i) xor L(i);
		L(i+1) <= L(i) and Q(i);
   end generate;
	 
	ng : for i in 0 to n-1 generate
   	 dfff: dff_reset port map(D => D(i) ,clk => clk ,reset => reset ,Q => Q(i));
   end generate ; --d
   
	Y <= Q;	 
end struct ;
