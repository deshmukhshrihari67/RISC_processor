module EXM(clock,WB,M,EX,ALUOut,WriteDataIn,RegRD,imm9_0Pad,PC_Plus1,Z_Flag, C_Flag ,valid, LM_addr, Data_B_SM, opcode, inst,
WB_Reg,M_Reg,EX_Reg,ALUOut_Reg,WriteDataIn_Reg,RegRD_Reg,imm9_0Pad_Reg,PC_Plus1_Reg,Z_Flag_Reg, C_Flag_Reg, valid_Reg, LM_addr_reg, Data_B_SM_reg,opcode_Reg,inst_Reg);
input clock;
input [2:0] WB;
input [2:0] M;
input [15:0] ALUOut,WriteDataIn;
input [2:0] RegRD;
input [15:0] imm9_0Pad;
input [15:0] PC_Plus1;
input Z_Flag, C_Flag ;
//input Z_Flag_set, C_Flag_set ;//
input valid;
input [15:0]LM_addr;
input [15:0] Data_B_SM;
input [3:0] opcode;
input [15:0] inst;
input [8:0] EX;

output [2:0] WB_Reg;
output [2:0] M_Reg;
output [15:0] ALUOut_Reg,WriteDataIn_Reg;
output [2:0] RegRD_Reg;
output [15:0] imm9_0Pad_Reg;
output [15:0] PC_Plus1_Reg;
output Z_Flag_Reg, C_Flag_Reg;
output valid_Reg;
output [15:0]LM_addr_reg;
output [15:0] Data_B_SM_reg;
output [3:0] opcode_Reg;
output [15:0] inst_Reg;
output [8:0] EX_Reg;

reg [2:0] WB_Reg;
reg [2:0] M_Reg;
reg [15:0] ALUOut_Reg,WriteDataIn_Reg;
reg [2:0] RegRD_Reg;
reg [15:0] imm9_0Pad_Reg;
reg [15:0] PC_Plus1_Reg;
reg Z_Flag_Reg, C_Flag_Reg;
reg valid_Reg;
reg [15:0]LM_addr_reg;
reg [15:0] Data_B_SM_reg;
reg [3:0]opcode_Reg;
reg [15:0] inst_Reg;
reg [8:0] EX_Reg;

initial begin
WB_Reg=0;
M_Reg=0;
ALUOut_Reg=0;
WriteDataIn_Reg=0;
RegRD_Reg=0;
imm9_0Pad_Reg=0;
PC_Plus1_Reg=0;
Z_Flag_Reg=0;
C_Flag_Reg=0;
valid_Reg=0;
LM_addr_reg=0;
Data_B_SM_reg=0;
opcode_Reg =0;
inst_Reg=0;
EX_Reg=0;
end
always@(posedge clock)
begin
WB_Reg<=WB;
M_Reg<=M;
ALUOut_Reg<=ALUOut;
WriteDataIn_Reg<=WriteDataIn;
RegRD_Reg<=RegRD;
imm9_0Pad_Reg<=imm9_0Pad;
PC_Plus1_Reg<=PC_Plus1;
Z_Flag_Reg<=Z_Flag; //if ( Z_Flag_set == 1'b1) Z_Flag_Reg<=Z_Flag;
C_Flag_Reg<=C_Flag; //if ( C_Flag_set == 1'b1) C_Flag_Reg<=C_Flag;
valid_Reg<= valid;
LM_addr_reg<=LM_addr;
Data_B_SM_reg<=Data_B_SM;
opcode_Reg<=opcode;
inst_Reg<=inst;
EX_Reg<=EX;
end
endmodule