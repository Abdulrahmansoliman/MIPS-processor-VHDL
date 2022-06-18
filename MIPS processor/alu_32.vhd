
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.all;



entity alu_32b is
port(
		data1 : in std_logic_vector(31 downto 0);
		data2 : in std_logic_vector(31 downto 0);
		aluop : in std_logic_vector(3 downto 0);
		cin : in std_logic;
		dataout: out std_logic_vector(31 downto 0);
		cflag: out std_logic;
		zflag: out std_logic;
		oflag: out std_logic;
 slt : out std_logic_vector(31 downto 0));
end alu_32b;

architecture Behavioral of alu_32b is
component alu_1b is
port(
 data1 : in std_logic;
 data2 : in std_logic;
 aluop : in std_logic_vector(3 downto 0);
 cin : in std_logic;
 dataout: out std_logic;
 cflag: out std_logic;
 zflag: out std_logic;
 oflag: out std_logic);
end component;
signal Cin_1st:std_logic;

signal b0 :std_logic;signal b1 :std_logic;signal b2 :std_logic;signal b3 :std_logic;signal b4 :std_logic;signal b5 :std_logic;
signal b6 :std_logic;signal b7 :std_logic;signal b8 :std_logic;signal b9 :std_logic;signal b10 :std_logic;signal b11 :std_logic;
signal b12 :std_logic;signal b13 :std_logic;signal b14 :std_logic;signal b15 :std_logic;signal b16 :std_logic;signal b17 :std_logic;
signal b18 :std_logic;signal b19 :std_logic;signal b20 :std_logic;signal b21 :std_logic;signal b22 :std_logic;signal b23 :std_logic;
signal b24 :std_logic;signal b25 :std_logic;signal b26 :std_logic;signal b27 :std_logic;signal b28 :std_logic;signal b29 :std_logic;
signal b30 :std_logic;signal b31 :std_logic;
signal zflagarr :std_logic_vector(31 downto 0);
signal temp: std_logic;
signal manipdata2:std_logic_vector(31 downto 0);

signal diffres: std_logic_vector(32 downto 0);
begin

Cin_1st<='1' when aluop="0110" else '0';

manipdata2<=  data2; 
 b0Comp: alu_1b port map(data1=>data1(0),data2=>manipdata2(0),aluop=>aluop,cin=>Cin_1st,cflag=>b0,dataout=>dataout(0),zflag=>zflagarr(0));
 b1Comp: alu_1b port map(data1=>data1(1),data2=>manipdata2(1),aluop=>aluop,cin=>b0,cflag=>b1,dataout=>dataout(1),zflag=>zflagarr(1));
 b2Comp: alu_1b port map(data1=>data1(2),data2=>manipdata2(2),aluop=>aluop,cin=>b1,cflag=>b2,dataout=>dataout(2),zflag=>zflagarr(2));
 b3Comp: alu_1b port map(data1=>data1(3),data2=>manipdata2(3),aluop=>aluop,cin=>b2,cflag=>b3,dataout=>dataout(3),zflag=>zflagarr(3));
 b4Comp: alu_1b port map(data1=>data1(4),data2=>manipdata2(4),aluop=>aluop,cin=>b3,cflag=>b4,dataout=>dataout(4),zflag=>zflagarr(4));
 b5Comp: alu_1b port map(data1=>data1(5),data2=>manipdata2(5),aluop=>aluop,cin=>b4,cflag=>b5,dataout=>dataout(5),zflag=>zflagarr(5));
 b6Comp: alu_1b port map(data1=>data1(6),data2=>manipdata2(6),aluop=>aluop,cin=>b5,cflag=>b6,dataout=>dataout(6),zflag=>zflagarr(6));
 b7Comp: alu_1b port map(data1=>data1(7),data2=>manipdata2(7),aluop=>aluop,cin=>b6,cflag=>b7,dataout=>dataout(7),zflag=>zflagarr(7));
 b8Comp: alu_1b port map(data1=>data1(8),data2=>manipdata2(8),aluop=>aluop,cin=>b7,cflag=>b8,dataout=>dataout(8),zflag=>zflagarr(8));
 b9Comp:  alu_1b port map(data1=>data1(9),data2=>manipdata2(9),aluop=>aluop,cin=>b8,cflag=>b9,dataout=>dataout(9),zflag=>zflagarr(9));
 b10Comp: alu_1b port map(data1=>data1(10),data2=>manipdata2(10),aluop=>aluop,cin=>b9,cflag=>b10,dataout=>dataout(10),zflag=>zflagarr(10));
 b11Comp: alu_1b port map(data1=>data1(11),data2=>manipdata2(11),aluop=>aluop,cin=>b10,cflag=>b11,dataout=>dataout(11),zflag=>zflagarr(11));
 b12Comp: alu_1b port map(data1=>data1(12),data2=>manipdata2(12),aluop=>aluop,cin=>b11,cflag=>b12,dataout=>dataout(12),zflag=>zflagarr(12));
 b13Comp: alu_1b port map(data1=>data1(13),data2=>manipdata2(13),aluop=>aluop,cin=>b12,cflag=>b13,dataout=>dataout(13),zflag=>zflagarr(13));
 b14Comp: alu_1b port map(data1=>data1(14),data2=>manipdata2(14),aluop=>aluop,cin=>b13,cflag=>b14,dataout=>dataout(14),zflag=>zflagarr(14));
 b15Comp: alu_1b port map(data1=>data1(15),data2=>manipdata2(15),aluop=>aluop,cin=>b14,cflag=>b15,dataout=>dataout(15),zflag=>zflagarr(15));
 b16Comp: alu_1b port map(data1=>data1(16),data2=>manipdata2(16),aluop=>aluop,cin=>b15,cflag=>b16,dataout=>dataout(16),zflag=>zflagarr(16));
 b17Comp: alu_1b port map(data1=>data1(17),data2=>manipdata2(17),aluop=>aluop,cin=>b16,cflag=>b17,dataout=>dataout(17),zflag=>zflagarr(17));
 b18Comp: alu_1b port map(data1=>data1(18),data2=>manipdata2(18),aluop=>aluop,cin=>b17,cflag=>b18,dataout=>dataout(18),zflag=>zflagarr(18));
 b19Comp: alu_1b port map(data1=>data1(19),data2=>manipdata2(19),aluop=>aluop,cin=>b18,cflag=>b19,dataout=>dataout(19),zflag=>zflagarr(19));
 b20Comp: alu_1b port map(data1=>data1(20),data2=>manipdata2(20),aluop=>aluop,cin=>b19,cflag=>b20,dataout=>dataout(20),zflag=>zflagarr(20));
 b21Comp: alu_1b port map(data1=>data1(21),data2=>manipdata2(21),aluop=>aluop,cin=>b20,cflag=>b21,dataout=>dataout(21),zflag=>zflagarr(21));
 b22Comp: alu_1b port map(data1=>data1(22),data2=>manipdata2(22),aluop=>aluop,cin=>b21,cflag=>b22,dataout=>dataout(22),zflag=>zflagarr(22));
 b23Comp: alu_1b port map(data1=>data1(23),data2=>manipdata2(23),aluop=>aluop,cin=>b22,cflag=>b23,dataout=>dataout(23),zflag=>zflagarr(23));
 b24Comp: alu_1b port map(data1=>data1(24),data2=>manipdata2(24),aluop=>aluop,cin=>b23,cflag=>b24,dataout=>dataout(24),zflag=>zflagarr(24));
 b25Comp: alu_1b port map(data1=>data1(25),data2=>manipdata2(25),aluop=>aluop,cin=>b24,cflag=>b25,dataout=>dataout(25),zflag=>zflagarr(25));
 b26Comp: alu_1b port map(data1=>data1(26),data2=>manipdata2(26),aluop=>aluop,cin=>b25,cflag=>b26,dataout=>dataout(26),zflag=>zflagarr(26));
 b27Comp: alu_1b port map(data1=>data1(27),data2=>manipdata2(27),aluop=>aluop,cin=>b26,cflag=>b27,dataout=>dataout(27),zflag=>zflagarr(27));
 b28Comp: alu_1b port map(data1=>data1(28),data2=>manipdata2(28),aluop=>aluop,cin=>b27,cflag=>b28,dataout=>dataout(28),zflag=>zflagarr(28));
 b29Comp: alu_1b port map(data1=>data1(29),data2=>manipdata2(29),aluop=>aluop,cin=>b28,cflag=>b29,dataout=>dataout(29),zflag=>zflagarr(29));
 b30Comp: alu_1b port map(data1=>data1(30),data2=>manipdata2(30),aluop=>aluop,cin=>b29,cflag=>b30,dataout=>dataout(30),zflag=>zflagarr(30));
 b31Comp: alu_1b port map(data1=>data1(31),data2=>manipdata2(31),aluop=>aluop,cin=>b30,cflag=>b31,dataout=>dataout(31),zflag=>zflagarr(31));
	
	temp<=not b31;
	
	zflag<='1' when zflagarr="11111111111111111111111111111111" else '0';
	oflag<=b30 xor b31;
	cflag<= not temp when aluop="0110" else
				b31 ;
	diffres<= ('0'&data1)-('0'&data2);
	slt<= "0000000000000000000000000000000"&diffres(31);
end Behavioral;

