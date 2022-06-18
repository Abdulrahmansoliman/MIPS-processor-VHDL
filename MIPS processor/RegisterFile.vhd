library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
entity RegisterFile is 

PORT(

write_data: in std_logic_vector(31 downto 0);
read_sel1,read_sel2 : IN std_logic_vector (4 DOWNTO 0); 
write_sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
write_ena:IN STD_LOGIC;
CLK :IN STD_LOGIC;
Data1,Data2:OUT STD_LOGIC_VECTOR(31 downto 0) );

end RegisterFile;

architecture Behavioral of RegisterFile is

Signal reg0data : std_logic_vector (31 downto 0);
Signal reg1data : std_logic_vector (31 downto 0);
Signal reg2data : std_logic_vector (31 downto 0);
Signal reg3data : std_logic_vector (31 downto 0);
Signal reg4data : std_logic_vector (31 downto 0);
Signal reg5data : std_logic_vector (31 downto 0);
Signal reg6data : std_logic_vector (31 downto 0);
Signal reg7data : std_logic_vector (31 downto 0);
Signal reg8data : std_logic_vector (31 downto 0);
Signal reg9data : std_logic_vector (31 downto 0);
Signal reg10data : std_logic_vector (31 downto 0);
Signal reg11data : std_logic_vector (31 downto 0);
Signal reg12data : std_logic_vector (31 downto 0);
Signal reg13data : std_logic_vector (31 downto 0);
Signal reg14data : std_logic_vector (31 downto 0);
Signal reg15data : std_logic_vector (31 downto 0);
Signal reg16data : std_logic_vector (31 downto 0);
Signal reg17data : std_logic_vector (31 downto 0);
Signal reg18data : std_logic_vector (31 downto 0);
Signal reg19data : std_logic_vector (31 downto 0);
Signal reg20data : std_logic_vector (31 downto 0);
Signal reg21data : std_logic_vector (31 downto 0);
Signal reg22data : std_logic_vector (31 downto 0);
Signal reg23data : std_logic_vector (31 downto 0);
Signal reg24data : std_logic_vector (31 downto 0);
Signal reg25data : std_logic_vector (31 downto 0);
Signal reg26data : std_logic_vector (31 downto 0);
Signal reg27data : std_logic_vector (31 downto 0);
Signal reg28data : std_logic_vector (31 downto 0);
Signal reg29data : std_logic_vector (31 downto 0);
Signal reg30data : std_logic_vector (31 downto 0);
Signal reg31data : std_logic_vector (31 downto 0);
Signal Dout : std_logic_vector (31 downto 0);



component newdec is port ( 
		 sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
       write_ena : IN STD_LOGIC;
       Dout  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end component ;
 
component REG is
PORT(write_data:in std_logic_vector(31 downto 0);
		O:out std_logic_vector(31 downto 0);
		write_ena: in std_logic;
		clr : IN STD_LOGIC; 
		clk : IN STD_LOGIC);
END component;
component mux is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
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
end component;


begin


register0:REG port map(write_data=>write_data,O=>reg0data, write_ena=>dout(0),clr=>'0',clk=>clk);
register1:REG port map(write_data=>write_data,O=>reg1data, write_ena=>dout(1),clr=>'0',clk=>clk);
register2:REG port map(write_data=>write_data,O=>reg2data, write_ena=>dout(2),clr=>'0',clk=>clk);
register3:REG port map(write_data=>write_data,O=>reg3data, write_ena=>dout(3),clr=>'0',clk=>clk);
register4:REG port map(write_data=>write_data,O=>reg4data, write_ena=>dout(4),clr=>'0',clk=>clk);
register5:REG port map(write_data=>write_data,O=>reg5data, write_ena=>dout(5),clr=>'0',clk=>clk);
register6:REG port map(write_data=>write_data,O=>reg6data, write_ena=>dout(6),clr=>'0',clk=>clk);
register7:REG port map(write_data=>write_data,O=>reg7data, write_ena=>dout(7),clr=>'0',clk=>clk);
register8:REG port map(write_data=>write_data,O=>reg8data, write_ena=>dout(8),clr=>'0',clk=>clk);
register9:REG port map(write_data=>write_data,O=>reg9data, write_ena=>dout(9),clr=>'0',clk=>clk);
register10:REG port map(write_data=>write_data,O=>reg10data, write_ena=>dout(10),clr=>'0',clk=>clk);
register11:REG port map(write_data=>write_data,O=>reg11data, write_ena=>dout(11),clr=>'0',clk=>clk);
register12:REG port map(write_data=>write_data,O=>reg12data, write_ena=>dout(12),clr=>'0',clk=>clk);
register13:REG port map(write_data=>write_data,O=>reg13data, write_ena=>dout(13),clr=>'0',clk=>clk);
register14:REG port map(write_data=>write_data,O=>reg14data, write_ena=>dout(14),clr=>'0',clk=>clk);
register15:REG port map(write_data=>write_data,O=>reg15data, write_ena=>dout(15),clr=>'0',clk=>clk);
register16:REG port map(write_data=>write_data,O=>reg16data, write_ena=>dout(16),clr=>'0',clk=>clk);
register17:REG port map(write_data=>write_data,O=>reg17data, write_ena=>dout(17),clr=>'0',clk=>clk);
register18:REG port map(write_data=>write_data,O=>reg18data, write_ena=>dout(18),clr=>'0',clk=>clk);
register19:REG port map(write_data=>write_data,O=>reg19data, write_ena=>dout(19),clr=>'0',clk=>clk);
register20:REG port map(write_data=>write_data,O=>reg20data, write_ena=>dout(20),clr=>'0',clk=>clk);
register21:REG port map(write_data=>write_data,O=>reg21data, write_ena=>dout(21),clr=>'0',clk=>clk);
register22:REG port map(write_data=>write_data,O=>reg22data, write_ena=>dout(22),clr=>'0',clk=>clk);
register23:REG port map(write_data=>write_data,O=>reg23data, write_ena=>dout(23),clr=>'0',clk=>clk);
register24:REG port map(write_data=>write_data,O=>reg24data, write_ena=>dout(24),clr=>'0',clk=>clk);
register25:REG port map(write_data=>write_data,O=>reg25data, write_ena=>dout(25),clr=>'0',clk=>clk);
register26:REG port map(write_data=>write_data,O=>reg26data, write_ena=>dout(26),clr=>'0',clk=>clk);
register27:REG port map(write_data=>write_data,O=>reg27data, write_ena=>dout(27),clr=>'0',clk=>clk);
register28:REG port map(write_data=>write_data,O=>reg28data, write_ena=>dout(28),clr=>'0',clk=>clk);
register29:REG port map(write_data=>write_data,O=>reg29data, write_ena=>dout(29),clr=>'0',clk=>clk);
register30:REG port map(write_data=>write_data,O=>reg30data, write_ena=>dout(30),clr=>'0',clk=>clk);
register31:REG port map(write_data=>write_data,O=>reg31data, write_ena=>dout(31),clr=>'0',clk=>clk);

write_decoder2: newdec  port map(write_ena=>write_ena,Dout=>dout,sel=>write_sel);

read1_mux: mux port map (read_sel1=>read_sel1, E1=>Data1, I0=>x"00000000",
I1=>reg1data,
I2=>reg2data,
I3=>reg3data,
I4=>reg4data,
I5=>reg5data,
I6=>reg6data,
I7=>reg7data,
I8=>reg8data,
I9=>reg9data,
I10=>reg10data,
I11=>reg11data,
I12=>reg12data,
I13=>reg13data,
I14=>reg14data,
I15=>reg15data,
I16=>reg16data,
I17=>reg17data,
I18=>reg18data,
I19=>reg19data,
I20=>reg20data,
I21=>reg21data,
I22=>reg22data,
I23=>reg23data,
I24=>reg24data,
I25=>reg25data,
I26=>reg26data,
I27=>reg27data,
I28=>reg28data,
I29=>reg29data,
I30=>reg30data,
I31=>reg31data
);
read2_mux: mux port map (read_sel1=>read_sel2, E1=>Data2, I0=>x"00000000",
I1=>reg1data,
I2=>reg2data,
I3=>reg3data,
I4=>reg4data,
I5=>reg5data,
I6=>reg6data,
I7=>reg7data,
I8=>reg8data,
I9=>reg9data,
I10=>reg10data,
I11=>reg11data,
I12=>reg12data,
I13=>reg13data,
I14=>reg14data,
I15=>reg15data,
I16=>reg16data,
I17=>reg17data,
I18=>reg18data,
I19=>reg19data,
I20=>reg20data,
I21=>reg21data,
I22=>reg22data,
I23=>reg23data,
I24=>reg24data,
I25=>reg25data,
I26=>reg26data,
I27=>reg27data,
I28=>reg28data,
I29=>reg29data,
I30=>reg30data,
I31=>reg31data
);
end Behavioral;
