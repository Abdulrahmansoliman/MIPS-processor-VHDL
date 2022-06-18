----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:31 05/14/2022 
-- Design Name: 
-- Module Name:    ShiftLeft - Behavioral 
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


entity ShiftLeft is
    Port ( ShiftInput : in  STD_LOGIC_VECTOR (31 downto 0);
           ShiftOut : out  STD_LOGIC_VECTOR (31 downto 0));
end ShiftLeft;

architecture Behavioral of ShiftLeft is

begin


ShiftOut <= ShiftInput(29 downto 0) & "00";

end Behavioral;

