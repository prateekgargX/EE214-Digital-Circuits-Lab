library ieee;
use ieee.std_logic_1164.all;

entity Serial_comparator is
port (reset, a,b: in std_logic; clock: in std_logic; g, l: out std_logic);
end entity;

architecture BHV of Serial_comparator is
	type state is (rst, gt, eq, lt);

	signal y_present,y_next: state:=rst;
	
begin

	clock_proc:process(clock,reset)
	begin
		if(clock' event and clock ='1') then
        if(reset='1') then
            y_present<= rst ;
				
        else
            y_present<= y_next ;
        end if;
		end if;
   end process;

state_transition_proc:process(a,b,y_present,reset)
begin
       if(reset='1') then 
				l <= '0';
				g <= '0';
				y_next <= rst;
		 else
		 case y_present is
        when rst=> --rst
            if((a='1' and b ='1') or (a='0' and b ='0')) then
                l <= '0';
					 g <= '0';  
					 y_next <= eq;
				elsif(a='0' and b ='1') then
				    l <= '1';
				    g <= '0';
					 y_next <= lt;					 
            elsif(a='1' and b ='0') then
					 l <= '0';
           		 g <= '1';
					 y_next <= gt;  
            end if;
		  when gt=>
            if((a='1' and b ='1') or (a='0' and b ='0')) then
                l <= '0';
					 g <= '1';  
					 y_next <= gt;
				elsif(a='0' and b ='1') then
				    l <= '1';
				    g <= '0';
					 y_next <= lt;					 
            elsif(a='1' and b ='0') then
					 l <= '0';
           		 g <= '1';
					 y_next <= gt;  
            end if;
		  when eq=>  
            if((a='1' and b ='1') or (a='0' and b ='0')) then
                l <= '0';
					 g <= '0';  
					 y_next <= eq;
				elsif(a='0' and b ='1') then
				    l <= '1';
				    g <= '0';
					 y_next <= lt;					 
            elsif(a='1' and b ='0') then
					 l <= '0';
           		 g <= '1';
					 y_next <= gt;  
            end if;
		  when lt=>
            if((a='1' and b ='1') or (a='0' and b ='0')) then
                l <= '0';
					 g <= '0';  
					 y_next <= lt;
				elsif(a='0' and b ='1') then
				    l <= '1';
				    g <= '0';
					 y_next <= lt;					 
            elsif(a='1' and b ='0') then
					 l <= '0';
           		 g <= '1';
					 y_next <= gt;  
            end if;
		  end case;
		  end if;
end process;       
end BHV;
    