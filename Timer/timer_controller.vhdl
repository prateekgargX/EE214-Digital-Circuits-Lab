library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_controller is
port(
		  inp:        in std_logic_vector(2 downto 0);
        reset:      in std_logic;
		  clock_50:   in std_logic;
		  clock_1:    in std_logic;
        out_LED:   out std_logic_vector(3 downto 0));
end timer_controller ;

architecture rch of timer_controller is

type state is (rst,t1,t2,t3);    

signal y_present,y_next: state:=rst;
signal outp: std_logic_vector(1 downto 0);
signal out_sig: std_logic_vector(3 downto 0);
component timer_ckt is
	port (
			 clock_1:   in std_logic;
			 clock_50:  in std_logic;
			 reset :    in std_logic;
			 timer_inp: in std_logic_vector(1 downto 0);
			 LED :     out std_logic_vector(3 downto 0)
			 );
			 -- timer_inp is State Machine output
end component;

begin

timer_c: timer_ckt port map (
			 clock_1 => clock_1,
			 clock_50 => clock_50,
			 reset => reset,
			 timer_inp => outp,
			 LED => out_sig
			 );

clock_proc:process(clock_50,reset)
begin
    if(clock_50='1' and clock_50' event) then
        if(reset='1') then
            y_present<= rst ; 
        else
            y_present<= y_next ;
        end if;
    end if;
    
end process;

state_transition_proc:process(inp)
begin
    case inp is
        when "001"=>
            y_next<= t1; --timer1
		  when "010"=>
            y_next<= t2; --timer2
		  when "100"	=>
            y_next<= t3; --timer3
		  when others=>
				y_next<= y_present; --same state	
		  end case;
		  
	if(inp="000" and reset = '0') then
	 out_LED<= "0000";
	 else
	 out_LED<= out_sig;
	end if;
end process;

output_proc: process(y_present)
begin
        case y_present is
        
		  when rst=>
					outp <= "00";
		  when t1=>
					outp <= "01";
		  when t2=>
					outp <= "10";
		  when t3=>
               outp <= "11";				
		  end case;
end process;

end rch;