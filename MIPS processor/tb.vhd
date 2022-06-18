--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:57:34 05/16/2022
-- Design Name:   
-- Module Name:   C:/Users/Anas M. Saleh/Downloads/SecondPhase/SecondPhase/tb.vhd
-- Project Name:  SecondPhase
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALUControl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALUControl
    PORT(
         funct : IN  std_logic_vector(5 downto 0);
         ALUOP : IN  std_logic_vector(1 downto 0);
         ALUControlOut : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal funct : std_logic_vector(5 downto 0) := (others => '0');
   signal ALUOP : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal ALUControlOut : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALUControl PORT MAP (
          funct => funct,
          ALUOP => ALUOP,
          ALUControlOut => ALUControlOut
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      
		      


      -- insert stimulus here 

      wait;
   end process;

END;
