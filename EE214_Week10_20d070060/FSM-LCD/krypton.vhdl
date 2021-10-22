library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity krypton is
port(
		  inp:        in std_logic_vector(4 downto 0);
        reset:      in std_logic;
		  clock:      in std_logic;
        outp:      out std_logic;
		  out_ascii: out std_logic_vector(55 downto 0));
end krypton;

architecture rch of krypton is
---------------state types----------------------------------------
type state is (rst,s1,s2,s3,s4,s5,s6);    
---------------signals of state type------------------------------
signal y_present,y_next: state:=rst;

begin
clock_proc:process(clock,reset)
begin
    if(clock='1' and clock' event) then
        if(reset='1') then
            y_present<= rst ; 
        else
            y_present<= y_next ;
        end if;
    end if;
    
end process;

state_transition_proc:process(inp,y_present)
begin
    case y_present is
        when rst=>
            if(unsigned(inp)=11) then   --k
                y_next<= s1; 
            else
                y_next <= y_present;
            end if;
		  when s1=>
            if(unsigned(inp)=18) then   --r
                y_next<= s2; 
            else
                y_next <= y_present;
            end if;
		  when s2=>
            if(unsigned(inp)=25) then   --y
                y_next<= s3; 
            else
                y_next <= y_present;
            end if;
		  when s3=>
            if(unsigned(inp)=16) then   --p
                y_next<= s4; 
            else
                y_next <= y_present;
            end if;
		  when s4=>
            if(unsigned(inp)=20) then   --t
                y_next<= s5; 
            else
                y_next <= y_present;
            end if;
		  when s5=>
            if(unsigned(inp)=15) then   --o
                y_next<= s6; 
            else
                y_next <= y_present;
            end if;
		  when s6=>
            if(unsigned(inp)=14) then   --n
                y_next<= rst; 
            else
                y_next <= y_present;
            end if;
			
		  end case;
end process;
output_proc: process(y_present,inp)
begin
        if(unsigned(inp)=14 and y_present=s6) then
            outp<='1';
        else
            outp<='0';
        end if;
			
end process;
output_proc2: process(y_present,inp)
begin
        case y_present is
        
		  when rst=>
            if(unsigned(inp)=11) then   --k
					out_ascii <= x"4B_20_20_20_20_20_20";
            else
               out_ascii <= x"20_20_20_20_20_20_20";
            end if;
		  
		  when s1=>
            if(unsigned(inp)=18) then   --r
               out_ascii <= x"4B_52_20_20_20_20_20";
            else
               out_ascii <= x"4B_20_20_20_20_20_20";
            end if;
		  
		  when s2=>
            if(unsigned(inp)=25) then   --y
               out_ascii <= x"4B_52_59_20_20_20_20";
            else
               out_ascii <= x"4B_52_20_20_20_20_20";
            end if;
		  
		  when s3=>
            if(unsigned(inp)=16) then   --p
               out_ascii <= x"4B_52_59_50_20_20_20";
            else
               out_ascii <= x"4B_52_59_20_20_20_20";
            end if;
		  
		  when s4=>
            if(unsigned(inp)=20) then   --t
               out_ascii <= x"4B_52_59_50_54_20_20";
            else
               out_ascii <= x"4B_52_59_50_20_20_20";
            end if;
		  
		  when s5=>
            if(unsigned(inp)=15) then   --o
               out_ascii <= x"4B_52_59_50_54_4F_20";
            else
               out_ascii <= x"4B_52_59_50_54_20_20";
            end if;
		  
		  when s6=>
            if(unsigned(inp)=14) then   --n
               out_ascii <= x"4B_52_59_50_54_4F_4E";  
            else
               out_ascii <= x"4B_52_59_50_54_4F_20";
            end if;
			
		  end case;
end process;
end rch;