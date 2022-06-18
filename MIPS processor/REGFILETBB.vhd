--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:47:46 05/18/2022
-- Design Name:   
-- Module Name:   C:/Users/GiraV/Desktop/Phase 2 final - Copy - Copy/SecondPhase (4)/SecondPhase/REGFILETBB.vhd
-- Project Name:  SecondPhase
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterFile
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
 
ENTITY REGFILETBB IS
END REGFILETBB;
 
ARCHITECTURE behavior OF REGFILETBB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterFile
    PORT(
         write_data : IN  std_logic_vector(31 downto 0);
         read_sel1 : IN  std_logic_vector(4 downto 0);
         read_sel2 : IN  std_logic_vector(4 downto 0);
         write_sel : IN  std_logic_vector(4 downto 0);
         write_ena : IN  std_logic;
         CLK : IN  std_logic;
         Data1 : OUT  std_logic_vector(31 downto 0);
         Data2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal write_data : std_logic_vector(31 downto 0) := (others => '0');
   signal read_sel1 : std_logic_vector(4 downto 0) := (others => '0');
   signal read_sel2 : std_logic_vector(4 downto 0) := (others => '0');
   signal write_sel : std_logic_vector(4 downto 0) := (others => '0');
   signal write_ena : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Data1 : std_logic_vector(31 downto 0);
   signal Data2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterFile PORT MAP (
          write_data => write_data,
          read_sel1 => read_sel1,
          read_sel2 => read_sel2,
          write_sel => write_sel,
          write_ena => write_ena,
          CLK => CLK,
          Data1 => Data1,
          Data2 => Data2
        );

   -- Clock process definitions
   CLK_process :process
   begin
		 CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
      -- insert stimulus here 

   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		write_data<=x"00001111";
		write_sel<="00010";
		write_ena<='1';
		read_sel1<="00010";

		 wait for 100 ns;	
		 write_data<=x"0000FFFF";
		write_sel<="00010";
		write_ena<='0';
		read_sel1<="00010";

      wait;
   end process;

END;
