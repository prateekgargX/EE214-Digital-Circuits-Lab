library ieee;
use ieee.std_logic_1164.all;

entity Serial_Adder is
	port (reset,a,b: in std_logic; 
			clock:     in std_logic; 
			s: 	    out std_logic
			);

end entity;

architecture BHV of Serial_Adder is

	type state is (C0,C1);    

	signal y_present,y_next: state:=C0;
	
begin

	clock_proc:process(clock,reset)
	begin
		if(clock='1' and clock' event) then
        if(reset='1') then
            y_present<= C0 ;
				
        else
            y_present<= y_next ;
        end if;
		end if;
   end process;

state_transition_proc:process(a,b,y_present)
begin
    case y_present is
        when C0=>
            if(a='1' and b='1') then
                y_next<= C1; 
            else
                y_next <= y_present;
            end if;
		  when C1=>
            if(a='0' and b='0') then
                y_next<= C0; 
            else
                y_next <= y_present;
            end if;
			
		  end case;
		  
end process;
output_proc: process(y_present,a,b)
begin
       if(reset='1') then 
				s <= '0';
		 else
		 case y_present is
        
		  when C0=>
            if((a='1' and b='1') or (a='0' and b='0') ) then   
					s <= '0';
            else
               s <= '1';
            end if;
		  
		  when C1=>
            if((a='1' and b='1') or (a='0' and b='0') ) then   
					s <= '1';
            else
               s <= '0';
            end if;
			
		  end case;
		  end if;
end process;
end BHV;