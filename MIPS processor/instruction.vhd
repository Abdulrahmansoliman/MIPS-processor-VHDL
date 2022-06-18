----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:56:48 05/14/2022 
-- Design Name: 
-- Module Name:    instruction - Behavioral 
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

entity instruction is
    Port ( ReadAddress: in  STD_LOGIC_VECTOR (31 downto 0);
           instruction: out STD_LOGIC_VECTOR (31 downto 0));
end instruction;

architecture Behavioral of instruction is

	type RAM_16_X_32 is array (0 to 15) of std_logic_vector (31 to 0);

	Signal im RAM_16_X_32 := ( x "01285024", -- and $t2,$t1,$t0
										x "018b6825", -- or $t5,$t4,$t3
										x "01285020", -- add $t2,$t1,$t0
										x "01285022", -- sub $t2,$t1,$t0
										x "0149402a", -- slt $t0,$t2,$t1
										x "1211fffb", -- beq $s0,$s1,L1
										x "01285024", -- and $t2,$t1,$t0
										x "018b6825", -- or $t5,$t4,$t3
										x "01285020", -- add $t2,$t1,$t0
										x "01285022", -- sub $t2,$t1,$t0
										x "0149402a"
										x "08000000", -- j 
										x "00000000",
										x "00000000",
										x "00000000",
										x "00000000",
															)

begin


end Behavioral;

