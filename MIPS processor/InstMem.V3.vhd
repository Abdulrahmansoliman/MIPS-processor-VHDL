library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.All;
library STD;
use STD.textio.all;

entity INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 Read_Data: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end INSTRMEMORY;
	


architecture BEHAVIORAL of INSTRMEMORY is
	signal ADDRover4: STD_LOGIC_VECTOR(addresssize-2 -1 downto 0);		                                    
	type MEM is array(0 to words-1) of STD_LOGIC_VECTOR(wordsize-1 downto 0);
	signal MEMORY: MEM := (                  "00000000000000000100000000100101"  ,
                                            "10001100000011010000000000110000"  ,
                                            "10001100000110000000000000110100"  ,
                                            "10001100000110010000000000111000"  ,
                                            "00000000000110000101000000100000"  ,
                                            "10101101000010100000000000000000"  ,
                                            "10101101000010100000000000000100"  ,
                                            "00000001101110000100100000100010"  ,
                                            "00000001001110000100100000100010"  ,
                                            "10001101000010110000000000000000"  ,
                                            "10001101000011000000000000000100"  ,
                                            "00000001011011000101000000100000"  ,
                                            "10101101000010100000000000001000"  ,
                                            "00000001000110010100000000100000"  ,
                                            "00000001001110000100100000100010"  ,
                                            "00000000000010010000100000101010"  ,
                                            "00010000001000000000000000000001"  ,
                                            "00001000000000000000000000001001"  ,
                                            "00000000000001000010000000100100"  ,
                                            "00000000000011010010100000100000"  ,
                                            "00001000000000000000000000010110"  ,
                                            "00000000000110001000000000100010"  ,
                                            "00000001000000000100000000100100"  ,
                                            "00000001000010000100100000100000"  ,
                                            "00000001001010010100100000100000"  ,
                                            "00000000100010010101000000100000"  ,
                                            "10001101010100000000000000000000"  ,
                                            "00000001000110000100000000100000"  ,
                                            "00000001000001010000100000101010"  ,
                                            "00010100001000001111111111111001"  ,
                                            "00000000000000001100000000100111"  ,
                                            "00000010000110001000000000100111"  ,
                                            "00001000000000000000000000010101"  ,
														  others => X"00000000"
														  );
begin



   ADDRover4 <= ADDRESS(31 downto 2) ;
   Read_Data <= MEMORY(to_integer(unsigned(ADDRover4)));
end BEHAVIORAL;



