----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:27:58 04/21/2022 
-- Design Name: 
-- Module Name:    alu_1b - Behavioral 
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

entity alu_1b is
port(
 data1 : in std_logic;
 data2 : in std_logic;
 aluop : in std_logic_vector(3 downto 0);
 cin : in std_logic;
 dataout: out std_logic;
 cflag: out std_logic;
 zflag: out std_logic;
 oflag: out std_logic);
 
end alu_1b;

architecture Behavioral of alu_1b is

component adder_1b is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  S : out  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC
           );
end component;


	signal S: STD_LOGIC;
	signal manipdata2:STD_LOGIC;
	signal LSB:STD_LOGIC;
	signal xorout:STD_LOGIC;
	
	
begin

	LSB<='1' when aluop="0110" else '0';
	xorout<= LSB xor data2;
	
	--xorout is the output of LSB xor data2
	
	adder : adder_1b port map(a=>data1,b=>xorout,S=>S,Cin=>cin,Cout=>cflag);
   
	
	dataout<= data1 and data2 when aluop="0000" else
				 data1 or data2 when aluop="0001" else
				 S when aluop="0010" else
				 S when aluop="0110" else
				 data1 nor data2 when aluop="1100" ;
				 
	
				 
	zflag<= 	 data1 nand data2 when aluop="0000" else
				 data1 nor  data2  when aluop="0001" else
				 not S when aluop="0010" else
				 not S when aluop="0110" else
				 data1 or data2 when aluop="1100" ;
				 
				 
	oflag<= 	(data1 and data2)or(data1 and cin)or(cin and data2);
				 
end Behavioral;

