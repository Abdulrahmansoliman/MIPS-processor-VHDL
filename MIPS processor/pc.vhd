----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:41:06 05/14/2022 
-- Design Name: 
-- Module Name:    pc - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity pc is
    Port ( clk : in  STD_LOGIC;
           pcinput : in  STD_LOGIC_VECTOR (31 downto 0);
			  pcoutput: out  STD_LOGIC_VECTOR (31 downto 0));
end pc;

architecture Behavioral of pc is
signal current_signal : std_logic_vector (31 downto 0):="00000000000000000000000000000000"; 
begin


		pcoutput <= current_signal;
	  
	  
	  current_signal <= pcinput when clk'event and clk='0';
	  


end Behavioral;

