library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity CPU is
    Port ( START : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RegFileOut1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RegFileOut2 : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUOut : out  STD_LOGIC_VECTOR (31 downto 0);
           PCOut : out  STD_LOGIC_VECTOR (31 downto 0);
           DataMemOut :out  STD_LOGIC_VECTOR (31 downto 0)
			  );
			  
			
			 
end CPU;

architecture Behavioral of CPU is


--*************** 
--Adder Component
--*************** 

component adder_32_bit is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0);
          carryout : out  STD_LOGIC);
end component;



--*************** 
--Sign Extend Component
--*************** 
component SignExtend is
    Port ( input_data : in  STD_LOGIC_VECTOR (15 downto 0);
           out_data : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


--*************** 
--ShiftLeft Component
--*************** 

component ShiftLeft is
    Port (ShiftInput : in  STD_LOGIC_VECTOR (31 downto 0);
           ShiftOut: out  STD_LOGIC_VECTOR (31 downto 0));
end component;


--***************
--Register File Component
--*************** 

component RegisterFile is
	port(
write_data: in std_logic_vector(31 downto 0);
read_sel1,read_sel2 : IN std_logic_vector (4 DOWNTO 0); 
write_sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
write_ena:IN STD_LOGIC;
CLK :IN STD_LOGIC;
Data1,Data2:OUT STD_LOGIC_VECTOR(31 downto 0)
	);
end component;


--***************
--32-bit 2x1 Mux File Component
--*************** 

component Mux2X1 is
    Port ( input0 : in  STD_LOGIC_VECTOR (31 downto 0);
           input1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  selector: in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--*************** 
--Alu Component
--*************** 

component alu_32b is
port(
		data1 : in std_logic_vector(31 downto 0);
		data2 : in std_logic_vector(31 downto 0);
		aluop : in std_logic_vector(3 downto 0);
		cin : in std_logic;
		dataout: out std_logic_vector(31 downto 0);
		cflag: out std_logic;
		zflag: out std_logic;
		oflag: out std_logic;
		
		slt:out std_logic_vector(31 downto 0)
);
end component;




--*************** 
--Data memory Component
--*************** 

component DATAMEMORY is
    Port ( 
			Write_data     : in STD_LOGIC_VECTOR (31 downto 0);
			Read_data    : out STD_LOGIC_VECTOR (31 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (31 downto 0);
			CLK       : in STD_LOGIC;
			loadit: in std_logic);
end component;



--*************** 
--ControlUnit  Component
--*************** 

component ControlUnit is
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
			  bne : out std_logic;
			  beq : out std_logic);
end component;


--*************** 
--ALUControlUnit  Component
--*************** 

component ALUControl is
    Port ( funct : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (1 downto 0);
           ALUControlOut : out  STD_LOGIC_VECTOR (3 downto 0));
			 
end component;

--*************** 
--PC  Component
--*************** 

COMPONENT pc
    PORT(
         clk : in  STD_LOGIC;
           pcinput : in  STD_LOGIC_VECTOR (31 downto 0);
			  pcoutput: out  STD_LOGIC_VECTOR (31 downto 0));

     
    END COMPONENT;

--*************** 
--InstructionMemory  Component
--*************** 

component INSTRMEMORY is
    Port ( Read_Data: out STD_LOGIC_VECTOR(31 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(31 downto 0);
    CLK: in STD_LOGIC;
	 LoadIt:in std_logic);
end component;



--*************** 
--ControlUnit signals
--*************** 

signal ALUOP:std_logic_vector (1 downto 0);
signal Jump:std_logic;
signal branch:std_logic;
signal MemRead:std_logic;
signal MemWrite:std_logic;
signal MemToReg:std_logic;
signal ALUSrc:std_logic;
signal write_ena:std_logic;
signal RegDst:std_logic;


--***************  
--Instruction Memory and PC signals
--*************** 

signal InstrMemReadAddress :std_logic_vector (31 downto 0);
signal pcinput :std_logic_vector (31 downto 0);
signal Instruction:std_logic_vector (31 downto 0);
signal Adder1Plus4:std_logic_vector (31 downto 0);
signal shiftleft28bits:std_logic_vector (27 downto 0);




--*************** 
--Control branching Signal
--*************** 

signal PCSrc:std_logic;
signal JumpFullAddress:std_logic_vector (31 downto 0);
signal ExtendedSign:std_logic_vector (31 downto 0);
signal ShiftLeft2Output:std_logic_vector (31 downto 0);
signal Adder2Output:std_logic_vector (31 downto 0);
signal Adder1Output:std_logic_vector (31 downto 0);
signal ALUControlOut :STD_LOGIC_VECTOR (3 downto 0);
signal beq :std_logic;


--*************** 
--Register signals
--***************

signal regData1:std_logic_vector (31 downto 0);
signal regData2:std_logic_vector (31 downto 0);
signal regDataWrite:std_logic_vector (31 downto 0);
signal read_sel1 :  std_logic_vector(4 downto 0);
signal read_sel2 :  std_logic_vector(4 downto 0);
	
	
--***************
--ALU signals
--***************
signal ALUOutput: std_logic_vector(31 downto 0);
signal cflag :std_logic;
signal zflag :std_logic;
signal is_slt :std_logic;
signal slt :std_logic;

--*************** 
--data Memory signals
--***************
signal MemoryReadData :std_logic_vector (31 downto 0);



--***************
--Muxs outputs
--***************
signal Mux1Output:std_logic_vector (31 downto 0);
signal Mux3Output:std_logic_vector (31 downto 0);
signal Mux4Output:std_logic_vector (31 downto 0);
signal Mux6Output:std_logic_vector(31 downto 0);
signal sltres:std_logic;
signal fullslt:std_logic_vector(31 downto 0);

signal bne: std_logic ;

begin

	is_slt<='1' when Instruction(5 downto 0)="101010" else '0';
	JumpFullAddress(31 downto 28)<=Adder1Plus4(31 downto 28); ----**
		
	
	
	JumpFullAddress(27 downto 0)<=Adder1Output(27 downto 0 );
	ShiftLeft1 :ShiftLeft port map(ShiftInput=>Instruction,ShiftOut=>Adder1Output);
	
	SignExtendA: SignExtend port map(input_data=>Instruction(15 downto 0),out_data=>ExtendedSign);
	ShiftLeft2 :ShiftLeft port map(ShiftInput=>ExtendedSign,ShiftOut=>ShiftLeft2Output);
	
	
	Adder1: adder_32_bit port map (input1=>InstrMemReadAddress,input2=>"00000000000000000000000000000100",output=>Adder1Plus4);
	Adder2: adder_32_bit port map (input1=>Adder1Plus4,input2=>ShiftLeft2Output,output=>Adder2Output);
	
	
	
	--***************
	--Mux5s
	--*************** 
	
	Mux1: Mux2X1 port map (input0=>Adder1Plus4,
											input1=>Adder2Output,
											selector=>PCSrc,
											output=>Mux1Output);
											
	Mux2: Mux2X1 port map (input0=>Mux1Output,
											input1=>JumpFullAddress,
											selector=>Jump,
											output=>pcinput);
											
	Mux3: Mux2X1 port map (input0=>"000000000000000000000000000"&Instruction(20 downto 16),
											input1=>"000000000000000000000000000"&Instruction(15 downto 11),
											selector=>RegDst,
											output=>Mux3Output);
											
	

	
										
	
	Mux4: Mux2X1 port map (input0=>regdata2,
											input1=>ExtendedSign,
											selector=>ALUSrc,
											output=>Mux4Output);	
											
		Mux6: Mux2X1 port map (input0=>regDataWrite,
											 input1=>fullslt,
											 selector=>is_slt,
											 output=>Mux6Output);	
											
	Mux5: Mux2X1 port map (input0=>ALUOutput,
											input1=>MemoryReadData,
											selector=>MemToReg,
											output=>regDataWrite);										
												
											
	MyControlUnit : ControlUnit port map(  Jump=>Jump,
														Branch=>Branch,
														MemRead=>MemRead,
														MemWrite=>MemWrite,
														MemToReg=>MemToReg,
														ALUSrc=>ALUSrc,
														AlUOp=>AlUOp,
														RegWrite=>write_ena,
														RegDst=>RegDst,
														OpCode => Instruction(31 downto 26),
														bne=>bne,
														beq=>beq);
														
												
	MyALUControl: ALUControl 	port map(ALUOP=>ALUOp,
															funct=>Instruction(5 downto 0),
															ALUControlOut=>ALUControlOut
															);
	
	ALU :alu_32b PORT MAP (
          data1 => regData1,
          data2 => Mux4Output,
          aluop => ALUControlOut,
          dataout => ALUOutput,
          cflag => cflag,
          zflag => zflag,
          cin=>'0',
			 slt=>fullslt
        );
	
	MyRegisterFile:RegisterFile PORT MAP (
          read_sel1 => Instruction(25 downto 21),
          read_sel2 => Instruction(20 downto 16),
          write_sel => Mux3Output(4 downto 0),
          write_ena => write_ena,
          clk => clk,
          write_data => Mux6Output,
          data1 => regData1,
          data2 => regData2
        );

	MyDataMemory: DATAMEMORY PORT MAP (
          Address => ALUOutput,
          Write_data => regdata2,
          Mem_Read => MemRead,
          Mem_Write => MemWrite,
          Read_data => MemoryReadData,
			 clk=>clk,
			 loadit=>'1'
        );
		  
		  
	PcUnit: pc port map(clk=>clk,pcinput=>pcinput,pcoutput=>InstrMemReadAddress);
	
	
	MYInstructionMemory :  INSTRMEMORY Port  map(Address => InstrMemReadAddress, Read_Data=>Instruction,clk=>clk,LoadIt=>'1');
		  
		  
	PCSrc <= ((zflag and beq)or( not zflag and bne)) and Branch;
	
		RegFileOut1<= regData1;
		RegFileOut2<= regData2;
		ALUOut<=ALUOutput;
		DataMemOut<=MemoryReadData;
		PCOut<=InstrMemReadAddress;
	
end Behavioral;
