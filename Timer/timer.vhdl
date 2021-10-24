library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_ckt is
	port (
			 clock_1:   in std_logic;
			 clock_50:  in std_logic;
			 reset :    in std_logic;
			 timer_inp: in std_logic_vector(1 downto 0);
			 LED :     out std_logic_vector(3 downto 0)
			 );
			-- timer_inp is State Machine output
end entity timer_ckt ;

architecture rch of timer_ckt  is

		signal timer1 : integer := 0; --5sec
		signal timer2 : integer := 0; --10sec
		signal timer3 : integer := 0; --10sec
begin	  
	process(clock_50)
		-- 500E6 means 500 x 10 ^ 6
		-- the above variable will count the number
		-- of clock pulses till it reaches required
		-- number of seconds
		-- Use similar 2 other variables for timer2, timer3
	begin
		if(clock_50='1' and clock_50' event) then
		if(timer_inp="00") then
			LED(0) <= '0';
			LED(1) <= '0';
			LED(2) <= '0';
			LED(3) <= '1';
			timer1 <= 0;
			timer2 <= 0;
			timer3 <= 0; 
		elsif(timer_inp="01") then
			timer1 <= timer1 + 1;
			if(timer1 <= 250E6+1 ) then
			LED(0) <= clock_1;
			LED(1) <= '0';
			LED(2) <= '0';
			LED(3) <= '0';
			else
			LED   <= "0000";
			end if;
		elsif(timer_inp="10") then
			timer2 <= timer2 + 1;
			if(timer2 <= 500E6+1 ) then
			LED(1) <= clock_1;
			LED(0) <= '0';
			LED(2) <= '0';
			LED(3) <= '0';
			else
			LED   <= "0000";
			end if;
		elsif(timer_inp="11") then
			timer3 <= timer3 + 1;
			if(timer3 <= 750E6+1) then
			LED(2) <= clock_1;
			LED(0) <= '0';
			LED(1) <= '0';
			LED(3) <= '0';
			else
			LED   <= "0000";
			end if;
		end if;
		end if;
	end process;

end rch;