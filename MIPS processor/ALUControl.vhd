----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:50:52 05/14/2022 
-- Design Name: 
-- Module Name:    ALUControl - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUControl is
    Port ( funct : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (1 downto 0);
           ALUControlOut : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is


begin

	ALUControlOut(0) <= ALUOP(1) and (((not funct(1)) and (funct(1) xor funct(0))) xor (funct(3)));
	ALUControlOut(1) <=  not ALUOP(1) or not funct(2);
	ALUControlOut(2) <= ALUOP(0) or ( ALUOP(1) and funct(1));
	ALUControlOut(3) <= ALUOP(1) and funct(1) and funct(2) and funct(0);
		

end Behavioral;

