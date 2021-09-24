
library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
end alu_beh;

architecture a1 of alu_beh is

    function sub(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            -- declaring and initializing variables using aggregates 
            variable diff : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
            variable inv_B : std_logic_vector(operand_width-1 downto 0):= (others=>'0');
				variable carry : std_logic:= '1';
				variable as : std_logic:= '1';
		  begin
            -- Hint: Use for loop to calculate value of "diff" and "carry" variable
            -- Use aggregates to assign values to multiple bits
				invert: for i in 0 to operand_width-1 loop
					inv_B(i) := B(i) xor as;
				end loop invert;
				
				add: for i in 0 to operand_width*2-1 loop
					if i < operand_width then
						diff(i) := carry xor (A(i) xor inv_B(i));
					   carry := (A(i) and inv_B(i)) or (carry and inv_B(i)) or(A(i) and carry);
					else
						diff(i) := carry xor as;
						--carry := carry;
					end if;
		    	end loop add;
				
            return diff;
    end sub;

     
    function rolf(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            variable shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
            variable tmp : std_logic := '0';
		  begin
            shift(operand_width-1 downto 0):= A;
				
				shift_op : for i in 0 to operand_width-2 loop
				
					if B(i) = '1' then
						
						shift_i: for j in 0 to 2**i-1 loop
							
							tmp :=shift(operand_width*2-1);
							
							single_shift: for k in 0 to operand_width*2-2 loop
									shift(operand_width*2-1-k) := shift(operand_width*2-2-k);
							end loop single_shift;
							
							shift(0) := tmp;
						
						end loop shift_i;
					
					end if;
				
				end loop shift_op;
 

        return shift;
    end rolf;

	 function my_nor(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            variable outp: std_logic_vector(operand_width-1 downto 0):= (others=>'0');
        begin
				oper: for i in 0 to operand_width-1 loop
					outp(i):= A(i) nor B(i);
				end loop oper;
		  
            return outp;
    end my_nor;
	 
begin
alu : process( A, B, sel )
begin
    if sel = "00" then
	 op <= rolf(A,B);
	 elsif sel = "01" then
	 op <= sub(A,B);
	 elsif sel = "10" then
	 op <= "0000"&my_nor(A,B); 
	 else
	 op <=  rolf(A,"0010");
	 end if;
	 
   -- sub function usage :
   --   signal_name <= sub(A,B)
   --   variable_name := sub(A,B)
   --
   -- concatenate operator usage:
   --    "0000"&A 
end process ; --alu
end a1 ; -- a1
