
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.Flipflops.all;

entity Sequence_generator_struct is
    port (
        reset:   in std_logic;
        clock:   in std_logic;
        Y:   out std_logic_vector(2 downto 0)
    ) ;
end Sequence_generator_struct;

architecture structa of Sequence_generator_struct is
  component dff_set is port(
									  D		:in std_logic;
									  clock  :in std_logic;
									  set    :in std_logic;
									  Q      :out std_logic
									  );
  end component dff_set;
	
  component dff_reset	is port(
									  D		:in std_logic;
									  clock  :in std_logic;
									  reset    :in std_logic;
									  Q      :out std_logic
									  );
  end component dff_reset;

signal D: std_logic_vector(2 downto 0); 
signal Q: std_logic_vector(2 downto 0);
	 
begin
  dff_0: dff_reset port map(D => D(0) ,clock=>clock ,reset=> reset ,Q=>Q(0));
  dff_1: dff_set port map(D => D(1) ,clock=>clock ,set=> reset ,Q=>Q(1));
  dff_2: dff_set port map(D => D(2) ,clock=>clock ,set=> reset ,Q=>Q(2));

D(2) <= Q(2) xnor (Q(1) xor Q(0));
D(1) <= (Q(2) and not(Q(0))) or (not(Q(1)) and not(Q(2)));  
D(0) <= ( ( Q(0) and not(Q(2)) ) or ( Q(2) and Q(1) ));

Y <= Q;

end structa ;
