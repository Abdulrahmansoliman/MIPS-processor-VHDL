--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:58:52 05/16/2022
-- Design Name:   
-- Module Name:   C:/Users/Anas M. Saleh/Downloads/SecondPhase/SecondPhase/addertb.vhd
-- Project Name:  SecondPhase
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_32_bit
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
 
ENTITY addertb IS
END addertb;
 
ARCHITECTURE behavior OF addertb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_32_bit
    PORT(
         input1 : IN  std_logic_vector(31 downto 0);
         input2 : IN  std_logic_vector(31 downto 0);
         output : OUT  std_logic_vector(31 downto 0);
         carryin : IN  std_logic;
         carryout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input1 : std_logic_vector(31 downto 0) := (others => '0');
   signal input2 : std_logic_vector(31 downto 0) := (others => '0');
   signal carryin : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(31 downto 0);
   signal carryout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_32_bit PORT MAP (
          input1 => input1,
          input2 => input2,
          output => output,
          carryin => carryin,
          carryout => carryout
        );

   -- Clock process definitions
 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		input1<="00000000000000000000000000000011";
		input2<="00000000000000000000000000000001";
		wait for 100 ns;
		input1<="00000000000000000000000000000111";
		input2<="00000000000000000000000000000101";
wait for 100 ns;
input1<="0000"&mysignal;
		input2<="00000000000000000000000000001111";
wait for 100 ns;		


      -- insert stimulus here 

      wait;
   end process;

END;
