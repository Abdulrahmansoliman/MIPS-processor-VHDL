----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:25:54 05/16/2022 
-- Design Name: 
-- Module Name:    adder_32_bit - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.all;

--use UNISIM.VComponents.all;

entity adder_32_bit is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0);
  
           carryout : out  STD_LOGIC);
end adder_32_bit;

architecture Behavioral of adder_32_bit is
signal temp :std_logic_vector (32 downto 0);
begin
temp <= (input1(31) & input1 ) + (input2(31) & input2 );
output <= temp(31 downto 0);
carryout <= temp(32);

end Behavioral;

