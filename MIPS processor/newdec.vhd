library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity newdec is port ( 
		 sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
       write_ena : IN STD_LOGIC;
       Dout  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end newdec ;

architecture Behavioral of newdec  is

begin

process(sel,write_ena)
  begin
    Dout <= (others => '0');
    if write_ena= '1' then
      Dout(to_integer(unsigned(sel)))<=write_ena;
    end if;
  end process;
	
end Behavioral;
