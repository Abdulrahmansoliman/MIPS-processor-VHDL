----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:41:38 04/23/2022 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
    Port ( 
	 read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
I0 : IN STD_LOGIC_Vector(31 downto 0);
I1 : IN STD_LOGIC_Vector(31 downto 0);
I2 : IN STD_LOGIC_Vector(31 downto 0);
I3 : IN STD_LOGIC_Vector(31 downto 0);
I4 : IN STD_LOGIC_Vector(31 downto 0);
I5 : IN STD_LOGIC_Vector(31 downto 0);
I6 : IN STD_LOGIC_Vector(31 downto 0);
I7 : IN STD_LOGIC_Vector(31 downto 0);
I8 : IN STD_LOGIC_Vector(31 downto 0);
I9 : IN STD_LOGIC_Vector(31 downto 0);
I10 : IN STD_LOGIC_Vector(31 downto 0);
I11 : IN STD_LOGIC_Vector(31 downto 0);
I12 : IN STD_LOGIC_Vector(31 downto 0);
I13 : IN STD_LOGIC_Vector(31 downto 0);
I14 : IN STD_LOGIC_Vector(31 downto 0);
I15 : IN STD_LOGIC_Vector(31 downto 0);
I16 : IN STD_LOGIC_Vector(31 downto 0);
I17 : IN STD_LOGIC_Vector(31 downto 0);
I18 : IN STD_LOGIC_Vector(31 downto 0);
I19 : IN STD_LOGIC_Vector(31 downto 0);
I20 : IN STD_LOGIC_Vector(31 downto 0);
I21 : IN STD_LOGIC_Vector(31 downto 0);
I22 : IN STD_LOGIC_Vector(31 downto 0);
I23 : IN STD_LOGIC_Vector(31 downto 0);
I24 : IN STD_LOGIC_Vector(31 downto 0);
I25 : IN STD_LOGIC_Vector(31 downto 0);
I26 : IN STD_LOGIC_Vector(31 downto 0);
I27 : IN STD_LOGIC_Vector(31 downto 0);
I28 : IN STD_LOGIC_Vector(31 downto 0);
I29 : IN STD_LOGIC_Vector(31 downto 0);
I30 : IN STD_LOGIC_Vector(31 downto 0);
I31 : IN STD_LOGIC_Vector(31 downto 0);

           E1 : out  STD_LOGIC_Vector (31 downto 0));
end mux;

architecture Behavioral of mux is

begin
E1		 <=	I0 WHEN read_sel1="00000" ELSE
				I1 WHEN read_sel1="00001" ELSE
				I2 WHEN read_sel1="00010" ELSE
				I3 WHEN read_sel1="00011" ELSE
				I4 WHEN read_sel1="00100" ELSE
				I5 WHEN read_sel1="00101" ELSE
				I6 WHEN read_sel1="00110" ELSE
				I7 WHEN read_sel1="00111" ELSE
				I8 WHEN read_sel1="01000" ELSE
				I9 WHEN read_sel1="01001" ELSE
				I10 WHEN read_sel1="01010" ELSE
				I11 WHEN read_sel1="01011" ELSE
				I12 WHEN read_sel1="01100" ELSE
				I13 WHEN read_sel1="01101" ELSE
				I14 WHEN read_sel1="01110" ELSE
				I15 WHEN read_sel1="01111" ELSE
				I16 WHEN read_sel1="10000" ELSE
				I17 WHEN read_sel1="10001" ELSE
				I18 WHEN read_sel1="10010" ELSE
				I19 WHEN read_sel1="10011" ELSE
				I20 WHEN read_sel1="10100" ELSE
				I21 WHEN read_sel1="10101" ELSE
				I22 WHEN read_sel1="10110" ELSE
				I23 WHEN read_sel1="10111" ELSE
				I24 WHEN read_sel1="11000" ELSE
				I25 WHEN read_sel1="11001" ELSE
				I26 WHEN read_sel1="11010" ELSE
				I27 WHEN read_sel1="11011" ELSE
				I28 WHEN read_sel1="11100" ELSE
				I29 WHEN read_sel1="11101" ELSE
				I30 WHEN read_sel1="11110" ELSE
				I31 WHEN read_sel1="11111";
end Behavioral;