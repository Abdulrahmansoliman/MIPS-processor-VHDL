
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY REG is

PORT( 
		write_data:in std_logic_vector(31 downto 0);
		O:out std_logic_vector(31 downto 0);
		write_ena: in std_logic;
		clr : IN STD_LOGIC; 
		clk : IN STD_LOGIC);
END REG;

ARCHITECTURE BEHAVOIUR OF REG IS
	signal wr : std_logic_vector(31 downto 0);
begin
	O<=wr;
	wr<= write_data when write_ena='1' and clk'event and clk='0' else
					"00000000000000000000000000000000" when clr='1';

END BEHAVOIUR;



