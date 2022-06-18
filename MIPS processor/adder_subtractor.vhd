
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity adder_1b is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  S : out  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC
           );
end adder_1b;

architecture Behavioral of adder_1b is
	
begin
	S<= (a xor b) xor Cin;
	Cout<= ((a xor b) and Cin) or (a and b);
end Behavioral;

