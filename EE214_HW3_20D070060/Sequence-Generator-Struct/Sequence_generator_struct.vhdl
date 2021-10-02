
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Flipflops.all;

entity Sequence_generator_struct is
    port (
        reset:   in std_logic;
        clock:   in std_logic;
        Y:   out std_logic_vector(3 downto 0)
    ) ;
end Sequence_generator_struct;

architecture structa of Sequence_generator_struct is

  component dff_reset	is port(
									  D		:in std_logic;
									  clock  :in std_logic;
									  reset  :in std_logic;
									  Q      :out std_logic
									  );
  end component dff_reset;

signal D: std_logic_vector(2 downto 0); 
signal Q: std_logic_vector(2 downto 0);
	 
begin
  dff_0: dff_reset port map(D => D(0) ,clock=>clock ,reset=> reset ,Q=>Q(0));
  dff_1: dff_reset port map(D => D(1) ,clock=>clock ,reset=> reset ,Q=>Q(1));
  dff_2: dff_reset port map(D => D(2) ,clock=>clock ,reset=> reset ,Q=>Q(2));

D(2) <= Q(2) xor (Q(0) and Q(1));
D(1) <= Q(1) xor Q(0);
D(0) <=      not(Q(0));

Y(3 downto 1) <= Q;
Y(0) <= '1';
end structa ;
