----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:00:12 05/14/2022 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

library UNISIM;
use UNISIM.VComponents.all;

entity ControlUnit is
    Port ( OpCode : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           Jump : out  STD_LOGIC;
           branch : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemToReg : out  STD_LOGIC;
           ALUOP : out  STD_LOGIC_vector (1 downto 0);
           MemWrite : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
			  is_slt:out std_logic;
			  bne : out std_logic;
			  beq : out std_logic);
end ControlUnit;



 
architecture Behavioral of ControlUnit is


	Signal Rformat:STD_LOGIC;
	Signal lw :STD_LOGIC;
	Signal sw: STD_LOGIC;
	signal j:STD_LOGIC;

begin

	RegDst <= Rformat;
	Jump <= j;
	branch <= '1' when Opcode="000100" or OpCode="000101" else '0';
	MemRead <= lw;
	MemToReg <= lw;
	ALUOP(0)<= '1' when Opcode="000100" or OpCode="000101" else '0';
	ALUOP(1)<= Rformat;
	MemWrite<= sw;
	ALUSrc <= lw or sw;
	RegWrite<= Rformat or lw;
	
	
	Rformat	<= '1' when OpCode= "000000" Else '0';
	lw			<= '1' when OpCode= "100011" Else '0';
	sw			<= '1' when OpCode= "101011" Else '0';
	beq      <= '1' when OpCode= "000100" Else '0';
	bne      <= '1' when OpCode= "000101" Else '0';
	j			<= '1' when OpCode= "000010" Else '0';
	
end Behavioral;

