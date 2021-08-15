module RREX(clock,WB,M,EX,DataA,DataB,RegRD,imm9_0Pad,PC_Plus1,opcode,Inst,imm_value_6,RegRs,RegRt,PC,valid,
WB_Reg,M_Reg,EX_Reg,DataA_Reg,DataB_Reg,RegRD_Reg,imm9_0Pad_Reg,PC_Plus1_Reg,opcode_Reg,Inst_Reg,imm_value_6_Reg,RegRs_Reg,RegRt_Reg,PC_Reg,valid_Reg);
input clock;
input [2:0] WB;
input [2:0] M;
input [8:0] EX;
input [15:0] DataA,DataB;
input [2:0] RegRD;
input [15:0] imm9_0Pad;
input [15:0] PC_Plus1;
input [3:0] opcode;
input [15:0] Inst;
input [15:0] imm_value_6;
input [2:0] RegRs,RegRt;//
input [15:0] PC;
input valid;
output [2:0] WB_Reg;
output [2:0] M_Reg;
output [8:0] EX_Reg;
output [15:0] DataA_Reg,DataB_Reg;
output [2:0] RegRD_Reg;
output [15:0] imm9_0Pad_Reg;
output [15:0] PC_Plus1_Reg;
output [3:0] opcode_Reg;
output [15:0] Inst_Reg;
output [15:0] imm_value_6_Reg;
output [2:0] RegRs_Reg,RegRt_Reg;
output [15:0] PC_Reg;
output valid_Reg;

reg [2:0] WB_Reg;
reg [2:0] M_Reg;
reg [8:0] EX_Reg;
reg [15:0] DataA_Reg,DataB_Reg;
reg [2:0] RegRD_Reg;
reg [15:0] imm9_0Pad_Reg;
reg [15:0] PC_Plus1_Reg;
reg [3:0] opcode_Reg;
reg [15:0] Inst_Reg;
reg [15:0] imm_value_6_Reg;
reg [2:0] RegRs_Reg,RegRt_Reg;
reg [15:0] PC_Reg;
reg valid_Reg;
initial begin
WB_Reg=0;
M_Reg=0;
EX_Reg=0;
DataA_Reg=0;
DataB_Reg=0;
RegRD_Reg=0;
imm9_0Pad_Reg=0;
PC_Plus1_Reg=0;
opcode_Reg=0;
Inst_Reg=0;
imm_value_6_Reg=0;
RegRs_Reg=0;
RegRt_Reg=0;
PC_Reg =0;
valid_Reg=0;
end
always@(posedge clock)
begin
WB_Reg<=WB;
M_Reg<=M;
EX_Reg<=EX;
DataA_Reg<=DataA;
DataB_Reg<=DataB;
RegRD_Reg<=RegRD;
imm9_0Pad_Reg<=imm9_0Pad;
PC_Plus1_Reg<=PC_Plus1;
opcode_Reg<=opcode;
Inst_Reg<=Inst;
imm_value_6_Reg<=imm_value_6;
RegRs_Reg<=RegRs;
RegRt_Reg<=RegRt;
PC_Reg<=PC;
valid_Reg<=valid;

end
endmodule